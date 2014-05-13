require 'spec_helper'

describe "activity_entries/show" do
  before(:each) do
    @activity_entry = assign(:activity_entry, stub_model(ActivityEntry,
      :position => "Position",
      :organization => "Organization",
      :start_date => "Start Date",
      :end_date => "End Date",
      :description => "Description",
    ))
  end

 
end
