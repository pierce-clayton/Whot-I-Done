require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        name: "Name",
        demo: "Demo",
        github: "Github"
      ),
      Project.create!(
        name: "Name",
        demo: "Demo",
        github: "Github"
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Demo".to_s, count: 2
    assert_select "tr>td", text: "Github".to_s, count: 2
  end
end
