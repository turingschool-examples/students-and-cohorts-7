class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :preferred_name
      t.string :pronouns
      t.string :email
      t.string :github_username
      t.string :slack_username

      t.timestamps
    end
  end
end
