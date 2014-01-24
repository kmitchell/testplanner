class AddTeamMemberAndSpecLinkAndGroupLinkToFeature < ActiveRecord::Migration
  def change
    add_column :features, :team_member, :string
    add_column :features, :spec_link, :string
    add_column :features, :group_link, :string
  end
end
