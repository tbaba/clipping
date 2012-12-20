require 'spec_helper'

describe "webpages/new" do
  before(:each) do
    assign(:webpage, stub_model(Webpage,
      :title => "MyString",
      :url => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new webpage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => webpages_path, :method => "post" do
      assert_select "input#webpage_title", :name => "webpage[title]"
      assert_select "input#webpage_url", :name => "webpage[url]"
      assert_select "textarea#webpage_description", :name => "webpage[description]"
    end
  end
end
