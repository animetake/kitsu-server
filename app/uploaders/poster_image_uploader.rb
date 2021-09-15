require 'image_processing/vips'

class PosterImageUploader < Shrine
  DERIVATIVES = {
    tiny: ->(vips) {
      vips.resize_to_fill(110, 156).convert(:jpeg).saver(quality: 90, strip: true).call
    },
    small: ->(vips) {
      vips.resize_to_fill(284, 402).convert(:jpeg).saver(quality: 75, strip: true).call
    },
    medium: ->(vips) {
      vips.resize_to_fill(390, 554).convert(:jpeg).saver(quality: 70, strip: true).call
    },
    large: ->(vips) {
      vips.resize_to_fill(550, 780).convert(:jpeg).saver(quality: 60, strip: true).call
    }
  }.freeze

  plugin :validation_helpers
  plugin :store_dimensions
  plugin :blurhash, components: ->(width, height) {
    ratio = width.to_f / height
    # Achieves the following
    # - "component area" <= 15
    # - maintains aspect ratio
    # - clamps in the 2..5 range where it looks nicest
    # Possible outputs are [2, 5], [3, 5], [3, 4], [3, 3], [4, 3], [5, 3], [5, 2]
    x_comp = Math.sqrt(15.to_f / ratio).floor.clamp(2, 5)
    y_comp = (x_comp * ratio).floor.clamp(2, 5)
    [x_comp, y_comp]
  }, on_error: ->(error) { Raven.capture_exception(error) }
  plugin :url_options, Shrine.opts[:url_options].deep_merge(store: { public: true })

  Attacher.derivatives do |original|
    vips = ImageProcessing::Vips.source(original)

    DERIVATIVES.transform_values { |proc| proc.call(vips) }
  end

  Attacher.validate do
    validate_mime_type %w[image/jpg image/jpeg image/png image/webp]
  end
end
