require 'spec_helper'

describe "education_entries/show" do
  before(:each) do
    @education_entry = assign(:education_entry, stub_model(EducationEntry,
      :school => "School",
      :graduation_date => "Graduation Date",
      :degree => "Degree",
      :major => "Major",
      :gpa => "Gpa",
      :accolades => "Accolades"
    ))
  end


end
