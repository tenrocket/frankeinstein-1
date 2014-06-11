OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '477386142396249', '2dc7070388205589c30bf3a8644aa28c', :display => 'popup'
end