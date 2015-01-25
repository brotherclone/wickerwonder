require 'yaml'

# based on https://gist.github.com/mattconnolly/4158961

module AuthHelper
  def http_login
    authy= YAML.load_file('config/auth.yml')
    user = authy['uname']
    pw = authy['pword']
    request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(user,pw)
  end
end

module AuthRequestHelper
  #
  # pass the @env along with your request, eg:
  #
  # GET '/labels', {}, @env
  #
  def http_login
    @env ||= {}
    user = 'username'
    pw = 'password'
    @env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(user,pw)
  end
end