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

RSpec.describe ConjointExperimentsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # ConjointExperiment. As you add validations to ConjointExperiment, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ConjointExperimentsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all conjoint_experiments as @conjoint_experiments" do
      conjoint_experiment = ConjointExperiment.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:conjoint_experiments)).to eq([conjoint_experiment])
    end
  end

  describe "GET #show" do
    it "assigns the requested conjoint_experiment as @conjoint_experiment" do
      conjoint_experiment = ConjointExperiment.create! valid_attributes
      get :show, {:id => conjoint_experiment.to_param}, valid_session
      expect(assigns(:conjoint_experiment)).to eq(conjoint_experiment)
    end
  end

  describe "GET #new" do
    it "assigns a new conjoint_experiment as @conjoint_experiment" do
      get :new, {}, valid_session
      expect(assigns(:conjoint_experiment)).to be_a_new(ConjointExperiment)
    end
  end

  describe "GET #edit" do
    it "assigns the requested conjoint_experiment as @conjoint_experiment" do
      conjoint_experiment = ConjointExperiment.create! valid_attributes
      get :edit, {:id => conjoint_experiment.to_param}, valid_session
      expect(assigns(:conjoint_experiment)).to eq(conjoint_experiment)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new ConjointExperiment" do
        expect {
          post :create, {:conjoint_experiment => valid_attributes}, valid_session
        }.to change(ConjointExperiment, :count).by(1)
      end

      it "assigns a newly created conjoint_experiment as @conjoint_experiment" do
        post :create, {:conjoint_experiment => valid_attributes}, valid_session
        expect(assigns(:conjoint_experiment)).to be_a(ConjointExperiment)
        expect(assigns(:conjoint_experiment)).to be_persisted
      end

      it "redirects to the created conjoint_experiment" do
        post :create, {:conjoint_experiment => valid_attributes}, valid_session
        expect(response).to redirect_to(ConjointExperiment.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved conjoint_experiment as @conjoint_experiment" do
        post :create, {:conjoint_experiment => invalid_attributes}, valid_session
        expect(assigns(:conjoint_experiment)).to be_a_new(ConjointExperiment)
      end

      it "re-renders the 'new' template" do
        post :create, {:conjoint_experiment => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested conjoint_experiment" do
        conjoint_experiment = ConjointExperiment.create! valid_attributes
        put :update, {:id => conjoint_experiment.to_param, :conjoint_experiment => new_attributes}, valid_session
        conjoint_experiment.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested conjoint_experiment as @conjoint_experiment" do
        conjoint_experiment = ConjointExperiment.create! valid_attributes
        put :update, {:id => conjoint_experiment.to_param, :conjoint_experiment => valid_attributes}, valid_session
        expect(assigns(:conjoint_experiment)).to eq(conjoint_experiment)
      end

      it "redirects to the conjoint_experiment" do
        conjoint_experiment = ConjointExperiment.create! valid_attributes
        put :update, {:id => conjoint_experiment.to_param, :conjoint_experiment => valid_attributes}, valid_session
        expect(response).to redirect_to(conjoint_experiment)
      end
    end

    context "with invalid params" do
      it "assigns the conjoint_experiment as @conjoint_experiment" do
        conjoint_experiment = ConjointExperiment.create! valid_attributes
        put :update, {:id => conjoint_experiment.to_param, :conjoint_experiment => invalid_attributes}, valid_session
        expect(assigns(:conjoint_experiment)).to eq(conjoint_experiment)
      end

      it "re-renders the 'edit' template" do
        conjoint_experiment = ConjointExperiment.create! valid_attributes
        put :update, {:id => conjoint_experiment.to_param, :conjoint_experiment => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested conjoint_experiment" do
      conjoint_experiment = ConjointExperiment.create! valid_attributes
      expect {
        delete :destroy, {:id => conjoint_experiment.to_param}, valid_session
      }.to change(ConjointExperiment, :count).by(-1)
    end

    it "redirects to the conjoint_experiments list" do
      conjoint_experiment = ConjointExperiment.create! valid_attributes
      delete :destroy, {:id => conjoint_experiment.to_param}, valid_session
      expect(response).to redirect_to(conjoint_experiments_url)
    end
  end

end
