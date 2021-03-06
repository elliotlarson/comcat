require "rails_helper"

RSpec.describe "statements/edit", type: :view do
  before do
    @statement = assign(:statement, Statement.create!(body: "MyText"))
  end

  it "renders the edit statement form" do
    render
    assert_select "form[action=?][method=?]", statement_path(@statement), "post" do
      assert_select "textarea[name=?]", "statement[body]"
    end
  end
end
