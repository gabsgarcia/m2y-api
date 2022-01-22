class CreateNetflixTitles < ActiveRecord::Migration[6.0]
  def change
    create_table :netflix_titles do |t|
      t.string :show_id
      t.string :type
      t.string :title
      t.string :director
      t.string :cast
      t.string :country
      t.string :date_added
      t.string :release_year
      t.string :rating
      t.string :duration
      t.string :listed_in
      t.string :description

      t.timestamps
    end
  end
end
