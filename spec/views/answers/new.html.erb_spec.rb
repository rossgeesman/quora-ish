require 'rails_helper'

RSpec.describe "answers/new", type: :view do
  before(:each) do
    assign(:answer, Answer.new(
      :body => "MyText",
      :question_id => 1
    ))
  end

  it "renders new answer form" do
    render

    assert_select "form[action=?][method=?]", answers_path, "post" do

      assert_select "textarea[name=?]", "answer[body]"

      assert_select "input[name=?]", "answer[question_id]"
    end
  end
end
