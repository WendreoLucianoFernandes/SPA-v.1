require 'rails_helper'

RSpec.describe "relationships/edit", type: :view do
  before(:each) do
    @relationship = assign(:relationship, Relationship.create!(
      :attitudinal_skills => nil,
      :specific_skills => nil,
      :verbs => nil,
      :activities => nil
    ))
  end

  it "renders the edit relationship form" do
    render

    assert_select "form[action=?][method=?]", relationship_path(@relationship), "post" do

      assert_select "input#relationship_attitudinal_skills_id[name=?]", "relationship[attitudinal_skills_id]"

      assert_select "input#relationship_specific_skills_id[name=?]", "relationship[specific_skills_id]"

      assert_select "input#relationship_verbs_id[name=?]", "relationship[verbs_id]"

      assert_select "input#relationship_activities_id[name=?]", "relationship[activities_id]"
    end
  end
end
