require 'spec_helper'

describe "work_entries/new" do
  before(:each) do
    assign(:work_entry, stub_model(WorkEntry,
      :Position => "MyString",
      :Company => "MyString",
      :start_date => "MyString",
      :end_date => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new work_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", work_entries_path, "post" do
      assert_select "input#work_entry_Position[name=?]", "work_entry[Position]"
      assert_select "input#work_entry_Company[name=?]", "work_entry[Company]"
      assert_select "input#work_entry_start_date[name=?]", "work_entry[start_date]"
      assert_select "input#work_entry_end_date[name=?]", "work_entry[end_date]"
      assert_select "input#work_entry_description[name=?]", "work_entry[description]"
    end
  end
end
