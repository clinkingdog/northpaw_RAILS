require 'spec_helper'
include Devise::TestHelpers

describe ReportsController, :type => :controller do

  describe "GET /reports" do
    # TODO check contexts
    # context "when logged out" do
      # it "redirects the user" do
        # get reports_path
        # response.status.should eq(302)
      # end
    # end
    
    # before(:each) do
    # end
    
    it "returns the page" do
      # QQ PROBABLY REMOVE @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryGirl.create(:user, :email => 'test2@test.test', :password => 'testtest', :confirmed_at => Time.now)
      sign_in :user, user
      # QQ DEBUG REMOVE
      p subject.current_user

      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get "/reports"

      response.status.should eq(200)
      # QQ response.should be_success
    end
  end
end
