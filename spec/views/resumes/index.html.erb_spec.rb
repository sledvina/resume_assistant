require 'spec_helper'


describe "resumes/index" do
  before(:each) do
    assign(:resumes, [
      stub_model(Resume,
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :address => "Address",
        :user => nil
      ),
      stub_model(Resume,
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :address => "Address",
        :user => nil
      )
    ])
  end

  it "renders a list of resumes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end