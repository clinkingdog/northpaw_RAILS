require 'spec_helper'
include Devise::TestHelpers

describe "Reports Controller", :type => :controller do
  let(:user) {
    FactoryGirl.create(
      :user,
      :email => 'test@test.test',
      :password => 'testtest',
      :confirmed_at => '2000-01-01')
  }

  describe "GET /reports" do
    # TODO check contexts
    # context "when logged out" do
      # it "redirects the user" do
        # get reports_path
        # response.status.should eq(302)
      # end
    # end
    
    before(:each) do
      request.env["devise.mapping"] = Devise.mappings[:user]
      sign_in user
    end
    
    it "returns the page" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get "/reports"
      response.status.should eq(200)
    end
  end
end
