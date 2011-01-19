require 'spec_helper'

describe "courses/new.html.haml" do
  before(:each) do
    assign(:course, stub_model(Course,
      :new_record? => true
    ))
  end

  it "renders new course form" do
    render

    rendered.should have_selector("form", :action => courses_path, :method => "post") do |form|
    end
  end
end
