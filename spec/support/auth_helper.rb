module AuthHelper
  def http_login
    user = 'gabe'
    pw = 'poopington'
    request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(user,pw)
  end
end