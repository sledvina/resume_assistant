require 'spec_helper'

describe "work_entries/edit" do
  before(:each) do
    @work_entry = assign(:work_entry, stub_model(WorkEntry,
      :Position => "MyString",
      :Company => "MyString",
      :start_date => "MyString",
      :end_date => "MyString",
      :description => "MyString"
    ))
  end


end
