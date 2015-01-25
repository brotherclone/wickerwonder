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
  def http_login
    @env ||= {}
    authy= YAML.load_file('config/auth.yml')
    user = authy['uname']
    pw = authy['pword']
    @env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(user,pw)
  end
end