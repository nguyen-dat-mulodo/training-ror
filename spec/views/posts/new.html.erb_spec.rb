require "rails_helper"

RSpec.describe "posts/new" do
  it "infers the controller action" do
    expect(controller.request.path_parameters[:action]).to eq("new")
  end
end