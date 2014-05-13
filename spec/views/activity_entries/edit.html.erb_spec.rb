require 'spec_helper'

describe "activity_entries/edit" do
  before(:each) do
    @activity_entry = assign(:activity_entry, stub_model(ActivityEntry,
      :position => "MyString",
      :organization => "MyString",
      :start_date => "MyString",
      :end_date => "MyString",
      :description => "MyString",
      :resume => ""
    ))
  end

  it "renders the edit activity_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", activity_entry_path(@activity_entry), "post" do
      assert_select "input#activity_entry_position[name=?]", "activity_entry[position]"
      assert_select "input#activity_entry_organization[name=?]", "activity_entry[organization]"
      assert_select "input#activity_entry_start_date[name=?]", "activity_entry[start_date]"
      assert_select "input#activity_entry_end_date[name=?]", "activity_entry[end_date]"
      assert_select "input#activity_entry_description[name=?]", "activity_entry[description]"
      assert_select "input#activity_entry_resume[name=?]", "activity_entry[resume]"
    end
  end
end
