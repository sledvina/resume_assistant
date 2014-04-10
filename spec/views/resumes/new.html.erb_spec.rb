require 'spec_helper'

describe "resumes/new" do
  before(:each) do
    assign(:resume, stub_model(Resume,
      :resume_nane => "MyString",
      :user_name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :address => "MyString",
      :user => nil
    ).as_new_record)
  end

  it "renders new resume form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", resumes_path, "post" do
     assert_select "input#resume_name[name=?]", "resume[name]"
      assert_select "input#resume_email[name=?]", "resume[email]"
      assert_select "input#resume_phone[name=?]", "resume[phone]"
      assert_select "input#resume_address[name=?]", "resume[address]"
      assert_select "input#resume_user[name=?]", "resume[user]"
    end
  end
end
