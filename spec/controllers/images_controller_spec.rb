require 'rails_helper'

RSpec.describe ImagesController, :type => :controller do

  let(:valid_attributes) {
    FactoryGirl.attributes_for(:image)
  }
  let(:valid_session) { @env }

  describe "GET index" do
    it "assigns all images as @images" do
      http_login
      image = Image.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:images)).to eq([image])
    end
  end

  describe "GET show" do
    it "assigns the requested image as @image" do
      http_login
      image = Image.create! valid_attributes
      get :show, {:id => image.to_param}, valid_session
      expect(assigns(:image)).to eq(image)
    end
  end

  describe "GET new" do
    it "assigns a new image as @image" do
      http_login
      get :new, {}, valid_session
      expect(assigns(:image)).to be_a_new(Image)
    end
  end

  describe "GET edit" do
    it "assigns the requested image as @image" do
      http_login
      image = Image.create! valid_attributes
      get :edit, {:id => image.to_param}, valid_session
      expect(assigns(:image)).to eq(image)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Image" do
        http_login
        expect {
          post :create, {:image => valid_attributes}, valid_session
        }.to change(Image, :count).by(1)
      end

      it "assigns a newly created image as @image" do
        http_login
        post :create, {:image => valid_attributes}, valid_session
        expect(assigns(:image)).to be_a(Image)
        expect(assigns(:image)).to be_persisted
      end

      it "redirects to the created image" do
        http_login
        post :create, {:image => valid_attributes}, valid_session
        expect(response).to redirect_to(Image.last)
      end
    end

  end

  describe "PUT update" do
    describe "with valid params" do

      let(:new_attributes) {
        FactoryGirl.attributes_for(:image)
      }
      #Todo - make factory gen new image for this test
=begin
      it "updates the requested image" do
        image = Image.create! valid_attributes
        put :update, {:id => image.to_param, :image => new_attributes}, valid_session
        image.reload
        skip("Add assertions for updated state")
      end
=end

      it "assigns the requested image as @image" do
        http_login
        image = Image.create! valid_attributes
        put :update, {:id => image.to_param, :image => valid_attributes}, valid_session
        expect(assigns(:image)).to eq(image)
      end

      it "redirects to the image" do
        http_login
        image = Image.create! valid_attributes
        put :update, {:id => image.to_param, :image => valid_attributes}, valid_session
        expect(response).to redirect_to(image)
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested image" do
      http_login
      image = Image.create! valid_attributes
      expect {
        delete :destroy, {:id => image.to_param}, valid_session
      }.to change(Image, :count).by(-1)
    end

    it "redirects to the images list" do
      http_login
      image = Image.create! valid_attributes
      delete :destroy, {:id => image.to_param}, valid_session
      expect(response).to redirect_to(images_url)
    end
  end

end
