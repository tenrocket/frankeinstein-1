class UserImageUploader < CarrierWave::Uploader::Base

  storage :file
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url
    ActionController::Base.helpers.asset_path("default_images/" + ["profile.png"].compact.join('_'))
  end

  # version :thumb do
  #   process resize_to_fill: [280, 280]
  # end

  # version :small_thumb, :from_version => :thumb do
  #   process resize_to_fill: [20, 20]
  # end   

end
