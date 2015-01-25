require 'rails_helper'

RSpec.describe "Characters", :type => :request do
  describe "it checks that Characters requries authentication" do
    it "Can't see characters without logging in" do
      get characters_path
      expect(response).to have_http_status(401)
    end
  end
end

#ToDo - can't seem to check with http_login



