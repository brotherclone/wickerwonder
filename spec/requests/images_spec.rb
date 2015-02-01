require 'rails_helper'

RSpec.describe "Images", :type => :request do
  describe "GET /images" do
    it "can't see images without logging in" do
      get images_path
      expect(response).to have_http_status(401)
    end
  end
end
#ToDo - can't seem to check with http_login