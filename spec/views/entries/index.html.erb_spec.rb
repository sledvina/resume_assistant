require 'spec_helper'

describe "entries/index" do
  before(:each) do
    assign(:entries, [
      stub_model(Entry,
        :resume => nil
      ),
      stub_model(Entry,
        :resume => nil
      )
    ])
  end

  
end
