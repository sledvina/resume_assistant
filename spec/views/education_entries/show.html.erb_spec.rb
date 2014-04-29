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

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/School/)
    rendered.should match(/Graduation Date/)
    rendered.should match(/Degree/)
    rendered.should match(/Major/)
    rendered.should match(/Gpa/)
    rendered.should match(/Accolades/)
  end
end
