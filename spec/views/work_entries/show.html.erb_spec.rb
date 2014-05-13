require 'spec_helper'

describe "work_entries/show" do
  before(:each) do
    @work_entry = assign(:work_entry, stub_model(WorkEntry,
      :Position => "Position",
      :Company => "Company",
      :start_date => "Start Date",
      :end_date => "End Date",
      :description => "Description"
    ))
  end


end
