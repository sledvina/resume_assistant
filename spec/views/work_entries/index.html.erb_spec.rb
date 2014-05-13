require 'spec_helper'

describe "work_entries/index" do
  before(:each) do
    assign(:work_entries, [
      stub_model(WorkEntry,
        :Position => "Position",
        :Company => "Company",
        :start_date => "Start Date",
        :end_date => "End Date",
        :description => "Description"
      ),
      stub_model(WorkEntry,
        :Position => "Position",
        :Company => "Company",
        :start_date => "Start Date",
        :end_date => "End Date",
        :description => "Description"
      )
    ])
  end

  it "renders a list of work_entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Start Date".to_s, :count => 2
    assert_select "tr>td", :text => "End Date".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
