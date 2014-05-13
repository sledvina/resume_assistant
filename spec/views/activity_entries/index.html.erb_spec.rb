require 'spec_helper'

describe "activity_entries/index" do
  before(:each) do
    assign(:activity_entries, [
      stub_model(ActivityEntry,
        :position => "Position",
        :organization => "Organization",
        :start_date => "Start Date",
        :end_date => "End Date",
        :description => "Description",
        :resume => ""
      ),
      stub_model(ActivityEntry,
        :position => "Position",
        :organization => "Organization",
        :start_date => "Start Date",
        :end_date => "End Date",
        :description => "Description",
        :resume => ""
      )
    ])
  end

  it "renders a list of activity_entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "Organization".to_s, :count => 2
    assert_select "tr>td", :text => "Start Date".to_s, :count => 2
    assert_select "tr>td", :text => "End Date".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
