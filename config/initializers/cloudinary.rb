Cloudinary.config do |config|
  config.cloud_name = ENV['cloudinary_name']
  config.api_key = ENV['cloudinary_api_key']
  config.api_secret = ENV['cloudinary_api_secret']
  config.static_image_support = ENV['cloudinary_static_image_support']
  config.enhance_image_tag = ENV['cloudinary_enhance_image_tag']
end
