require 'rails_helper'

RSpec.describe "statements/index", type: :view do
  before(:each) do
    assign(:statements, [
      Statement.create!(
        body: "MyText"
      ),
      Statement.create!(
        body: "MyText"
      )
    ])
  end

  it "renders a list of statements" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
