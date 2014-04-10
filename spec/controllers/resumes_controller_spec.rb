require 'spec_helper'

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

describe ResumesController do

  # This should return the minimal set of attributes required to create a valid
  # Resume. As you add validations to Resume, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ResumesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all resumes as @resumes" do
      resume = Resume.create! valid_attributes
      get :index, {}, valid_session
      assigns(:resumes).should eq([resume])
    end
  end

  describe "GET show" do
    it "assigns the requested resume as @resume" do
      resume = Resume.create! valid_attributes
      get :show, {:id => resume.to_param}, valid_session
      assigns(:resume).should eq(resume)
    end
  end

  describe "GET new" do
    it "assigns a new resume as @resume" do
      get :new, {}, valid_session
      assigns(:resume).should be_a_new(Resume)
    end
  end

  describe "GET edit" do
    it "assigns the requested resume as @resume" do
      resume = Resume.create! valid_attributes
      get :edit, {:id => resume.to_param}, valid_session
      assigns(:resume).should eq(resume)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Resume" do
        expect {
          post :create, {:resume => valid_attributes}, valid_session
        }.to change(Resume, :count).by(1)
      end

      it "assigns a newly created resume as @resume" do
        post :create, {:resume => valid_attributes}, valid_session
        assigns(:resume).should be_a(Resume)
        assigns(:resume).should be_persisted
      end

      it "redirects to the created resume" do
        post :create, {:resume => valid_attributes}, valid_session
        response.should redirect_to(Resume.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved resume as @resume" do
        # Trigger the behavior that occurs when invalid params are submitted
        Resume.any_instance.stub(:save).and_return(false)
        post :create, {:resume => { "name" => "invalid value" }}, valid_session
        assigns(:resume).should be_a_new(Resume)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Resume.any_instance.stub(:save).and_return(false)
        post :create, {:resume => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested resume" do
        resume = Resume.create! valid_attributes
        # Assuming there are no other resumes in the database, this
        # specifies that the Resume created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Resume.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => resume.to_param, :resume => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested resume as @resume" do
        resume = Resume.create! valid_attributes
        put :update, {:id => resume.to_param, :resume => valid_attributes}, valid_session
        assigns(:resume).should eq(resume)
      end

      it "redirects to the resume" do
        resume = Resume.create! valid_attributes
        put :update, {:id => resume.to_param, :resume => valid_attributes}, valid_session
        response.should redirect_to(resume)
      end
    end

    describe "with invalid params" do
      it "assigns the resume as @resume" do
        resume = Resume.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Resume.any_instance.stub(:save).and_return(false)
        put :update, {:id => resume.to_param, :resume => { "name" => "invalid value" }}, valid_session
        assigns(:resume).should eq(resume)
      end

      it "re-renders the 'edit' template" do
        resume = Resume.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Resume.any_instance.stub(:save).and_return(false)
        put :update, {:id => resume.to_param, :resume => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested resume" do
      resume = Resume.create! valid_attributes
      expect {
        delete :destroy, {:id => resume.to_param}, valid_session
      }.to change(Resume, :count).by(-1)
    end

    it "redirects to the resumes list" do
      resume = Resume.create! valid_attributes
      delete :destroy, {:id => resume.to_param}, valid_session
      response.should redirect_to(resumes_url)
    end
  end

end
