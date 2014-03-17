class CreateAccessPrivs < ActiveRecord::Migration
  def change
    create_table :access_privs do |t|
      t.ACSSeq :primaryKey
      t.string :ACS_CLIENT_NUM
      t.string :ACS_INITIALS
      t.string :ACS_KEY
      t.integer :ACS_SEE
      t.integer :ACS_EDIT
      t.integer :ACS_DEL
      t.integer :ACS_PRINT

      t.timestamps
    end
  end
end
