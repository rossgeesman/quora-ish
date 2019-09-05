require 'rails_helper'

RSpec.describe "answers/index", type: :view do
  before(:each) do
    assign(:answers, [
      Answer.create!(
        :body => "MyText",
        :question_id => 2
      ),
      Answer.create!(
        :body => "MyText",
        :question_id => 2
      )
    ])
  end

  it "renders a list of answers" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
