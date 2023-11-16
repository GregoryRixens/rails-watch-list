class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, presence: true, uniqueness: true

  after_destroy :destroy_associated_movies

  private

  def destroy_associated_movies
    movies.destroy_all
  end
end
