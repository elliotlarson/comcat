require "rails_helper"

RSpec.describe "/statements", type: :request do
  let(:valid_attributes) { { body: "Statement" } }
  let(:invalid_attributes) { { body: "" } }

  describe "GET /index" do
    it "renders a successful response" do
      Statement.create! valid_attributes
      get statements_url
      expect(response).to be_successful
    end
  end

  # describe "GET /new" do
  #   it "renders a successful response" do
  #     get new_statement_url
  #     expect(response).to be_successful
  #   end
  # end

  # describe "GET /edit" do
  #   it "render a successful response" do
  #     statement = Statement.create! valid_attributes
  #     get edit_statement_url(statement)
  #     expect(response).to be_successful
  #   end
  # end

  # describe "POST /create" do
  #   context "with valid parameters" do
  #     it "creates a new Statement" do
  #       expect {
  #         post statements_url, params: { statement: valid_attributes }
  #       }.to change(Statement, :count).by(1)
  #     end

  #     it "redirects to the created statement" do
  #       post statements_url, params: { statement: valid_attributes }
  #       expect(response).to redirect_to(statement_url(Statement.last))
  #     end
  #   end

  #   context "with invalid parameters" do
  #     it "does not create a new Statement" do
  #       expect {
  #         post statements_url, params: { statement: invalid_attributes }
  #       }.to change(Statement, :count).by(0)
  #     end

  #     it "renders a successful response (i.e. to display the 'new' template)" do
  #       post statements_url, params: { statement: invalid_attributes }
  #       expect(response).to be_successful
  #     end
  #   end
  # end

  # describe "PATCH /update" do
  #   context "with valid parameters" do
  #     let(:new_attributes) {
  #       skip("Add a hash of attributes valid for your model")
  #     }

  #     it "updates the requested statement" do
  #       statement = Statement.create! valid_attributes
  #       patch statement_url(statement), params: { statement: new_attributes }
  #       statement.reload
  #       skip("Add assertions for updated state")
  #     end

  #     it "redirects to the statement" do
  #       statement = Statement.create! valid_attributes
  #       patch statement_url(statement), params: { statement: new_attributes }
  #       statement.reload
  #       expect(response).to redirect_to(statement_url(statement))
  #     end
  #   end

  #   context "with invalid parameters" do
  #     it "renders a successful response (i.e. to display the 'edit' template)" do
  #       statement = Statement.create! valid_attributes
  #       patch statement_url(statement), params: { statement: invalid_attributes }
  #       expect(response).to be_successful
  #     end
  #   end
  # end

  # describe "DELETE /destroy" do
  #   it "destroys the requested statement" do
  #     statement = Statement.create! valid_attributes
  #     expect {
  #       delete statement_url(statement)
  #     }.to change(Statement, :count).by(-1)
  #   end

  #   it "redirects to the statements list" do
  #     statement = Statement.create! valid_attributes
  #     delete statement_url(statement)
  #     expect(response).to redirect_to(statements_url)
  #   end
  # end
end
