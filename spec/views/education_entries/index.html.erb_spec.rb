require 'spec_helper'

describe "education_entries/index" do
  before(:each) do
    assign(:education_entries, [
      stub_model(EducationEntry,
        :school => "School",
        :graduation_date => "Graduation Date",
        :degree => "Degree",
        :major => "Major",
        :gpa => "Gpa",
        :accolades => "Accolades"
      ),
      stub_model(EducationEntry,
        :school => "School",
        :graduation_date => "Graduation Date",
        :degree => "Degree",
        :major => "Major",
        :gpa => "Gpa",
        :accolades => "Accolades"
      )
    ])
  end

  it "renders a list of education_entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "School".to_s, :count => 2
    assert_select "tr>td", :text => "Graduation Date".to_s, :count => 2
    assert_select "tr>td", :text => "Degree".to_s, :count => 2
    assert_select "tr>td", :text => "Major".to_s, :count => 2
    assert_select "tr>td", :text => "Gpa".to_s, :count => 2
    assert_select "tr>td", :text => "Accolades".to_s, :count => 2
  end
end
