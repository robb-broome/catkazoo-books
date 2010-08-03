require 'spec_helper'

describe "texts/edit.html.haml" do
  before(:each) do
    @text = assign(:text, stub_model(Text,
      :new_record? => false,
      :title => "MyString",
      :edition => "MyString"
    ))
  end

  it "renders the edit text form" do
    render

    rendered.should have_selector("form", :action => text_path(@text), :method => "post") do |form|
      form.should have_selector("input#text_title", :name => "text[title]")
      form.should have_selector("input#text_edition", :name => "text[edition]")
    end
  end
end
