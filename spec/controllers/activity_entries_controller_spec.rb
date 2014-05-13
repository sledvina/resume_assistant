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

describe ActivityEntriesController do

  # This should return the minimal set of attributes required to create a valid
  # ActivityEntry. As you add validations to ActivityEntry, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "position" => "MyString", "organization" => "MyString", start_date: "MYstring", "end_date" => "Mystring" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ActivityEntriesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all activity_entries as @activity_entries" do
      activity_entry = ActivityEntry.create! valid_attributes
      get :index, {}, valid_session
      assigns(:activity_entries).should eq([activity_entry])
    end
  end

  describe "GET show" do
  
  end

  describe "GET new" do
    it "assigns a new activity_entry as @activity_entry" do
      get :new, {}, valid_session
      assigns(:activity_entry).should be_a_new(ActivityEntry)
    end
  end

  describe "GET edit" do
   
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ActivityEntry" do
        expect {
          post :create, {:activity_entry => valid_attributes}, valid_session
        }.to change(ActivityEntry, :count).by(1)
      end

      it "assigns a newly created activity_entry as @activity_entry" do
        post :create, {:activity_entry => valid_attributes}, valid_session
        assigns(:activity_entry).should be_a(ActivityEntry)
        assigns(:activity_entry).should be_persisted
      end

      it "redirects to the created activity_entry" do
        post :create, {:activity_entry => valid_attributes}, valid_session
        response.should redirect_to(ActivityEntry.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved activity_entry as @activity_entry" do
        # Trigger the behavior that occurs when invalid params are submitted
        ActivityEntry.any_instance.stub(:save).and_return(false)
        post :create, {:activity_entry => { "position" => "invalid value" }}, valid_session
        assigns(:activity_entry).should be_a_new(ActivityEntry)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ActivityEntry.any_instance.stub(:save).and_return(false)
        post :create, {:activity_entry => { "position" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested activity_entry" do
        activity_entry = ActivityEntry.create! valid_attributes
        # Assuming there are no other activity_entries in the database, this
        # specifies that the ActivityEntry created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ActivityEntry.any_instance.should_receive(:update).with({ "position" => "MyString" })
        put :update, {:id => activity_entry.to_param, :activity_entry => { "position" => "MyString" }}, valid_session
      end

      it "assigns the requested activity_entry as @activity_entry" do
        activity_entry = ActivityEntry.create! valid_attributes
        put :update, {:id => activity_entry.to_param, :activity_entry => valid_attributes}, valid_session
        assigns(:activity_entry).should eq(activity_entry)
      end

      it "redirects to the activity_entry" do
        activity_entry = ActivityEntry.create! valid_attributes
        put :update, {:id => activity_entry.to_param, :activity_entry => valid_attributes}, valid_session
        response.should redirect_to(activity_entry)
      end
    end

    describe "with invalid params" do
      it "assigns the activity_entry as @activity_entry" do
        activity_entry = ActivityEntry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ActivityEntry.any_instance.stub(:save).and_return(false)
        put :update, {:id => activity_entry.to_param, :activity_entry => { "position" => "invalid value" }}, valid_session
        assigns(:activity_entry).should eq(activity_entry)
      end

      it "re-renders the 'edit' template" do
        activity_entry = ActivityEntry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ActivityEntry.any_instance.stub(:save).and_return(false)
        put :update, {:id => activity_entry.to_param, :activity_entry => { "position" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested activity_entry" do
      activity_entry = ActivityEntry.create! valid_attributes
      expect {
        delete :destroy, {:id => activity_entry.to_param}, valid_session
      }.to change(ActivityEntry, :count).by(-1)
    end

    it "redirects to the activity_entries list" do
      activity_entry = ActivityEntry.create! valid_attributes
      delete :destroy, {:id => activity_entry.to_param}, valid_session
      response.should redirect_to(activity_entries_url)
    end
  end

end