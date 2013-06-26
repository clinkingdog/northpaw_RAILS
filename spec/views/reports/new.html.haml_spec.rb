require 'spec_helper'

describe "reports/new" do
  before(:each) do
    assign(:report, stub_model(Report,
      :title => "MyString",
      :body => "MyString"
    ).as_new_record)
  end

  it "renders new report form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reports_path, "post" do
      assert_select "input#report_title[name=?]", "report[title]"
      assert_select "input#report_body[name=?]", "report[body]"
    end
  end
end
