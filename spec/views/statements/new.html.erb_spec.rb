require "rails_helper"

RSpec.describe "statements/new", type: :view do
  before do
    assign(:statement, Statement.new(body: "MyText"))
  end

  it "renders new statement form" do
    render
    assert_select "form[action=?][method=?]", statements_path, "post" do
      assert_select "textarea[name=?]", "statement[body]"
    end
  end
end
