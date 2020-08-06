class HomeController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def show
    cookies[:vid] = "123"
  end

  def api
    p cookies[:vid]
    p "API URL 1"

    params = {user: "pf-admin", password: "Pathfactory1!"}

    response = RestClient.post("https://rocket.pathfactory-development.com/api/v1/login", params)
    data = JSON.parse(response.body)["data"]["authToken"]

    p data

    render json: {loginToken: data}
  end

  def iframe
    @cookie = cookies[:vid]
    params = {user: "pf-user", password: "Pathfactory1!"}

    # response = JSON.parse(RestClient.post("https://rocket.pathfactory-development.com/api/v1/login", params))
    # data = response.data

    # p data

    p "IFRAME URL"
    # render html: '<script>
    # window.parent.postMessage({
    #   event: "login-with-token",
    #   loginToken: "bXSpwjKAyGuZtevxPwIcGDTh8Wi4zkqJMf8hc3ak9IP"
    # }, "https://rocket.pathfactory-development.com")
    # </script>'.html_safe
  end
end
