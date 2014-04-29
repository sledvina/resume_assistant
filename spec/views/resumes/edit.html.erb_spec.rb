require 'spec_helper'
pending do
describe "resumes/edit" do
  before(:each) do
    @resume = assign(:resume, stub_model(Resume,
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :address => "MyString",
      :user => nil
    ))
  end

  it "renders the edit resume form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", resume_path(@resume), "post" do
      assert_select "input#resume_name[name=?]", "resume[name]"
      assert_select "input#resume_email[name=?]", "resume[email]"
      assert_select "input#resume_phone[name=?]", "resume[phone]"
      assert_select "input#resume_address[name=?]", "resume[address]"
      assert_select "input#resume_user[name=?]", "resume[user]"
    end
  end
end
end