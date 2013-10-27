require 'omniauth-oauth'
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :kiva, "com.herokuapp.moneygoround", "uzQtwxHsDxviwxlxDxolBrvuyzrDmwnq", :scope => 'access', :redirect_url => "http://www.google.com"
end


