require 'spec_helper'

describe "education_entries/edit" do
  before(:each) do
    @education_entry = assign(:education_entry, stub_model(EducationEntry,
      :school => "MyString",
      :graduation_date => "MyString",
      :degree => "MyString",
      :major => "MyString",
      :gpa => "MyString",
      :accolades => "MyString"
    ))
  end

  it "renders the edit education_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", education_entry_path(@education_entry), "post" do
      assert_select "input#education_entry_school[name=?]", "education_entry[school]"
      assert_select "input#education_entry_graduation_date[name=?]", "education_entry[graduation_date]"
      assert_select "input#education_entry_degree[name=?]", "education_entry[degree]"
      assert_select "input#education_entry_major[name=?]", "education_entry[major]"
      assert_select "input#education_entry_gpa[name=?]", "education_entry[gpa]"
      assert_select "input#education_entry_accolades[name=?]", "education_entry[accolades]"
    end
  end
end
