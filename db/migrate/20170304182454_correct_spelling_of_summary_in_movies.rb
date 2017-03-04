class CorrectSpellingOfSummaryInMovies < ActiveRecord::Migration[5.0]
  def change
    rename_column :movies, :sumary, :summary
  end
end
