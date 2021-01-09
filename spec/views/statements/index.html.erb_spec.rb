require "rails_helper"

RSpec.describe "statements/index", type: :view do
  before do
    assign(
      :statements,
      [
        Statement.create!(body: "Statement #1"),
        Statement.create!(body: "Statement #2"),
      ]
    )
    assign(:statement, Statement.new)
  end

  it "renders a list of statements" do
    render
    assert_select ".card>.card-body", count: 3
  end
end
