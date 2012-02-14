require 'spec_helper'

describe "people/edit.html.erb" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :name => "MyString",
      :level_of_crazy => 1.5,
      :sensitivity_to_smell => 1.5
    ))
  end

  it "renders the edit person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => people_path(@person), :method => "post" do
      assert_select "input#person_name", :name => "person[name]"
      assert_select "input#person_level_of_crazy", :name => "person[level_of_crazy]"
      assert_select "input#person_sensitivity_to_smell", :name => "person[sensitivity_to_smell]"
    end
  end
end
