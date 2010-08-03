require 'spec_helper'

describe "texts/show.html.haml" do
  before(:each) do
    @text = assign(:text, stub_model(Text,
      :title => "Title",
      :edition => "Edition"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Title".to_s)
    rendered.should contain("Edition".to_s)
  end
end
