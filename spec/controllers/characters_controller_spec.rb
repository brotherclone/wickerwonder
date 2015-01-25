require 'rails_helper'


RSpec.describe CharactersController, :type => :controller do

  let(:valid_attributes) {
   { "name" => "Senior Testington, Esq."}
  }

  let(:invalid_attributes) {
    { "name" => " "}
  }

  let(:valid_session) { @env }

  describe "GET index" do
    it "assigns all characters as @characters" do
      character = Character.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:characters)).to eq([character])
    end
  end

  describe "GET show" do
    it "assigns the requested character as @character" do
      character = Character.create! valid_attributes
      get :show, {:id => character.to_param}, valid_session
      expect(assigns(:character)).to eq(character)
    end
  end

  describe "GET new" do
    it "assigns a new character as @character" do
      http_login
      get :new, {}, valid_session
      expect(assigns(:character)).to be_a_new(Character)
    end
  end

  describe "GET edit" do
    it "assigns the requested character as @character" do
      character = Character.create! valid_attributes
      http_login
      get :edit, {:id => character.to_param}, valid_session
      expect(assigns(:character)).to eq(character)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Character" do
        expect {
          http_login
          post :create, {:character => valid_attributes}, valid_session
        }.to change(Character, :count).by(1)
      end

      it "assigns a newly created character as @character" do
        http_login
        post :create, {:character => valid_attributes}, valid_session
        expect(assigns(:character)).to be_a(Character)
        expect(assigns(:character)).to be_persisted
      end

      it "redirects to the created character" do
        http_login
        post :create, {:character => valid_attributes}, valid_session
        expect(response).to redirect_to(Character.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved character as @character" do
        http_login
        post :create, {:character => invalid_attributes}, valid_session
        expect(assigns(:character)).to be_a_new(Character)
      end

      it "re-renders the 'new' template" do
        http_login
        post :create, {:character => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested character" do
        character = Character.create! valid_attributes
        http_login
        put :update, {:id => character.to_param, :character => new_attributes}, valid_session
        character.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested character as @character" do
        character = Character.create! valid_attributes
        http_login
        put :update, {:id => character.to_param, :character => valid_attributes}, valid_session
        expect(assigns(:character)).to eq(character)
      end

      it "redirects to the character" do
        character = Character.create! valid_attributes
        http_login
        put :update, {:id => character.to_param, :character => valid_attributes}, valid_session
        expect(response).to redirect_to(character)
      end
    end

    describe "with invalid params" do
      it "assigns the character as @character" do
        character = Character.create! valid_attributes
        http_login
        put :update, {:id => character.to_param, :character => invalid_attributes}, valid_session
        expect(assigns(:character)).to eq(character)
      end

      it "re-renders the 'edit' template" do
        character = Character.create! valid_attributes
        http_login
        put :update, {:id => character.to_param, :character => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested character" do
      character = Character.create! valid_attributes
      expect {
        http_login
        delete :destroy, {:id => character.to_param}, valid_session
      }.to change(Character, :count).by(-1)
    end

    it "redirects to the characters list" do
      character = Character.create! valid_attributes
      http_login
      delete :destroy, {:id => character.to_param}, valid_session
      expect(response).to redirect_to(characters_url)
    end
  end

end
