Rails.application.routes.draw do
  get "/" => "home#show"
  get "validate_rocket_chat_user" => "home#api"
  get "validate_rocket_chat_user_for_iframe" => "home#iframe"
end
