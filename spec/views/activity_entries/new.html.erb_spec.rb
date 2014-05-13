require 'spec_helper'

describe "activity_entries/new" do
  before(:each) do
    assign(:activity_entry, stub_model(ActivityEntry,
      :position => "MyString",
      :organization => "MyString",
      :start_date => "MyString",
      :end_date => "MyString",
      :description => "MyString",
    ).as_new_record)
  end

  
end
