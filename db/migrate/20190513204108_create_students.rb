class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :profile_img
      t.string :location
      t.string :github_link
      t.string :uid 
      t.string :password_digest

      t.timestamps
    end
  end
end
