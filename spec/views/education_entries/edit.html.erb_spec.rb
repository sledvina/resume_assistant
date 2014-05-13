require 'spec_helper'

describe "education_entries/edit" do
  before(:each) do
    @education_entry = assign(:education_entry, stub_model(EducationEntry,
      :school => "MyString",
      :graduation_date => "MyString",
      :degree => "MyString",
      :major => "MyString",
      :gpa => "MyString",
      :accolades => "MyString",
      :id => 1
    ))
  end

 
end
