class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def validate_rocket_chat_user
    p "!!!!!!!!!!!!!!!!"

    render json: {loginToken: "bXSpwjKAyGuZtevxPwIcGDTh8Wi4zkqJMf8hc3ak9IP"}
    # render html: '<script>
    # window.parent.postMessage({
    #   event: "login-with-token",
    #   loginToken: "bXSpwjKAyGuZtevxPwIcGDTh8Wi4zkqJMf8hc3ak9IP"
    # }, "https://rocket.pathfactory-development.com")
    # </script>'.html_safe
  end

  def validate_rocket_chat_user_for_iframe
    p "!!!!!!!!!!!!!!!!"

    # render json: {loginToken: "bXSpwjKAyGuZtevxPwIcGDTh8Wi4zkqJMf8hc3ak9IP"}
    render html: '<script>
    window.parent.postMessage({
      event: "login-with-token",
      loginToken: "bXSpwjKAyGuZtevxPwIcGDTh8Wi4zkqJMf8hc3ak9IP"
    }, "https://rocket.pathfactory-development.com")
    </script>'.html_safe
  end
end
