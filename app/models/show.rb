class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def self.highest_rating
    self.all.max_by {|el| el.rating }.rating
  end

  def self.most_popular_show
    self.all.max_by {|el| el.rating }
  end

  def self.lowest_rating
    self.all.min_by {|el| el.rating }.rating
  end

  def self.least_popular_show
    self.all.min_by{|el| el.rating}
  end

  def self.ratings_sum
    self.all.inject(0){ |sum, el| sum += el.rating}
  end

  def self.popular_shows
    self.all.select {|el| el.rating > 5}
  end

  def self.shows_by_alphabetical_order
    self.all.sort_by {|el| el.name}  #co
  end
end
