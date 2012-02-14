require 'spec_helper'

describe "cats/new.html.erb" do
  before(:each) do
    assign(:cat, stub_model(Cat,
      :name => "MyString",
      :healthy => false,
      :age => 1,
      :color => "MyString",
      :person_id => 1
    ).as_new_record)
  end

  it "renders new cat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cats_path, :method => "post" do
      assert_select "input#cat_name", :name => "cat[name]"
      assert_select "input#cat_healthy", :name => "cat[healthy]"
      assert_select "input#cat_age", :name => "cat[age]"
      assert_select "input#cat_color", :name => "cat[color]"
      assert_select "input#cat_person_id", :name => "cat[person_id]"
    end
  end
end
