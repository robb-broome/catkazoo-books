require 'spec_helper'

describe "courses/edit.html.haml" do
  before(:each) do
    @course = assign(:course, stub_model(Course,
      :new_record? => false
    ))
  end

  it "renders the edit course form" do
    render

    rendered.should have_selector("form", :action => course_path(@course), :method => "post") do |form|
    end
  end
end
