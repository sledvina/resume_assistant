require 'spec_helper'

describe "resumes/show" do
  before(:each) do
    @resume = assign(:resume, stub_model(Resume,
      :name => "Name",
      :email => "Email",
      :phone => "Phone",
      :address => "Address",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Phone/)
    rendered.should match(/Address/)
    rendered.should match(//)
  end
end
