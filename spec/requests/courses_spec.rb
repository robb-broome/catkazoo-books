require 'spec_helper'
describe "CourseController" do
  describe "Add a course" do
    it "adds a course"do

      course_name = 'some course'
      new_course = Course.new(:name => course_name)

      Course.expects(:new).with("name" => course_name).at_least(1).returns(new_course)
      post "courses",:course => { "name" => course_name}

      controller.response.should be_redirect

    end
  end
end
