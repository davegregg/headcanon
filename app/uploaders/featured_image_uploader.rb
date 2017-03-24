class FeaturedImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave # Invite Cloudinary over to play.

  process convert: 'png'
  process tags: ['featured_image']

  version :standard do
    process resize_to_fill: [100, 150, :north]
  end

  version :thumbnail do
    resize_to_fit(50, 50)
  end

end
