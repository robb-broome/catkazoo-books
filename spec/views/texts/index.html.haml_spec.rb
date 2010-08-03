require 'spec_helper'

describe "texts/index.html.haml" do
  before(:each) do
    assign(:texts, [
      stub_model(Text,
        :title => "Title",
        :edition => "Edition"
      ),
      stub_model(Text,
        :title => "Title",
        :edition => "Edition"
      )
    ])
  end

  it "renders a list of texts" do
    render
    rendered.should have_selector("tr>td", :content => "Title".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Edition".to_s, :count => 2)
  end
end
