require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe AttitudinalSkillsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # AttitudinalSkill. As you add validations to AttitudinalSkill, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AttitudinalSkillsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all attitudinal_skills as @attitudinal_skills" do
      attitudinal_skill = AttitudinalSkill.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:attitudinal_skills)).to eq([attitudinal_skill])
    end
  end

  describe "GET #show" do
    it "assigns the requested attitudinal_skill as @attitudinal_skill" do
      attitudinal_skill = AttitudinalSkill.create! valid_attributes
      get :show, {:id => attitudinal_skill.to_param}, valid_session
      expect(assigns(:attitudinal_skill)).to eq(attitudinal_skill)
    end
  end

  describe "GET #new" do
    it "assigns a new attitudinal_skill as @attitudinal_skill" do
      get :new, {}, valid_session
      expect(assigns(:attitudinal_skill)).to be_a_new(AttitudinalSkill)
    end
  end

  describe "GET #edit" do
    it "assigns the requested attitudinal_skill as @attitudinal_skill" do
      attitudinal_skill = AttitudinalSkill.create! valid_attributes
      get :edit, {:id => attitudinal_skill.to_param}, valid_session
      expect(assigns(:attitudinal_skill)).to eq(attitudinal_skill)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new AttitudinalSkill" do
        expect {
          post :create, {:attitudinal_skill => valid_attributes}, valid_session
        }.to change(AttitudinalSkill, :count).by(1)
      end

      it "assigns a newly created attitudinal_skill as @attitudinal_skill" do
        post :create, {:attitudinal_skill => valid_attributes}, valid_session
        expect(assigns(:attitudinal_skill)).to be_a(AttitudinalSkill)
        expect(assigns(:attitudinal_skill)).to be_persisted
      end

      it "redirects to the created attitudinal_skill" do
        post :create, {:attitudinal_skill => valid_attributes}, valid_session
        expect(response).to redirect_to(AttitudinalSkill.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved attitudinal_skill as @attitudinal_skill" do
        post :create, {:attitudinal_skill => invalid_attributes}, valid_session
        expect(assigns(:attitudinal_skill)).to be_a_new(AttitudinalSkill)
      end

      it "re-renders the 'new' template" do
        post :create, {:attitudinal_skill => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested attitudinal_skill" do
        attitudinal_skill = AttitudinalSkill.create! valid_attributes
        put :update, {:id => attitudinal_skill.to_param, :attitudinal_skill => new_attributes}, valid_session
        attitudinal_skill.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested attitudinal_skill as @attitudinal_skill" do
        attitudinal_skill = AttitudinalSkill.create! valid_attributes
        put :update, {:id => attitudinal_skill.to_param, :attitudinal_skill => valid_attributes}, valid_session
        expect(assigns(:attitudinal_skill)).to eq(attitudinal_skill)
      end

      it "redirects to the attitudinal_skill" do
        attitudinal_skill = AttitudinalSkill.create! valid_attributes
        put :update, {:id => attitudinal_skill.to_param, :attitudinal_skill => valid_attributes}, valid_session
        expect(response).to redirect_to(attitudinal_skill)
      end
    end

    context "with invalid params" do
      it "assigns the attitudinal_skill as @attitudinal_skill" do
        attitudinal_skill = AttitudinalSkill.create! valid_attributes
        put :update, {:id => attitudinal_skill.to_param, :attitudinal_skill => invalid_attributes}, valid_session
        expect(assigns(:attitudinal_skill)).to eq(attitudinal_skill)
      end

      it "re-renders the 'edit' template" do
        attitudinal_skill = AttitudinalSkill.create! valid_attributes
        put :update, {:id => attitudinal_skill.to_param, :attitudinal_skill => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested attitudinal_skill" do
      attitudinal_skill = AttitudinalSkill.create! valid_attributes
      expect {
        delete :destroy, {:id => attitudinal_skill.to_param}, valid_session
      }.to change(AttitudinalSkill, :count).by(-1)
    end

    it "redirects to the attitudinal_skills list" do
      attitudinal_skill = AttitudinalSkill.create! valid_attributes
      delete :destroy, {:id => attitudinal_skill.to_param}, valid_session
      expect(response).to redirect_to(attitudinal_skills_url)
    end
  end

end
