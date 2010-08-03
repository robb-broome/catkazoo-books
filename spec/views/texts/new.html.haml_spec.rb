require 'spec_helper'

describe "texts/new.html.haml" do
  before(:each) do
    assign(:text, stub_model(Text,
      :new_record? => true,
      :title => "MyString",
      :edition => "MyString"
    ))
  end

  it "renders new text form" do
    render

    rendered.should have_selector("form", :action => texts_path, :method => "post") do |form|
      form.should have_selector("input#text_title", :name => "text[title]")
      form.should have_selector("input#text_edition", :name => "text[edition]")
    end
  end
end
