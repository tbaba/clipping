require 'spec_helper'

describe "webpages/show" do
  before(:each) do
    @webpage = assign(:webpage, stub_model(Webpage,
      :title => "Title",
      :url => "Url",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Url/)
    rendered.should match(/MyText/)
  end
end
