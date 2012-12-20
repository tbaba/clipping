require 'spec_helper'

describe "webpages/edit" do
  before(:each) do
    @webpage = assign(:webpage, stub_model(Webpage,
      :title => "MyString",
      :url => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit webpage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => webpages_path(@webpage), :method => "post" do
      assert_select "input#webpage_title", :name => "webpage[title]"
      assert_select "input#webpage_url", :name => "webpage[url]"
      assert_select "textarea#webpage_description", :name => "webpage[description]"
    end
  end
end
