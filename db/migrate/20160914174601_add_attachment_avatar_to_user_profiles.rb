class AddAttachmentAvatarToUserProfiles < ActiveRecord::Migration
  def self.up
    change_table :user_profiles do |t|
      t.attachment :avatar
      t.string :username
      t.integer :user_id
    end
  end

  def self.down
    remove_attachment :user_profiles, :avatar
  end
end
