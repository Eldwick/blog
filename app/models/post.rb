class Post < ActiveRecord::Base
  has_many :comments
  has_and_belongs_to_many :categories

  def time_format(dbTime)
      time = Time.at(dbTime)
      time.to_formatted_s(:long)
  end

  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("lower(title) like ? OR lower(body) like ?", "%#{query.downcase}%", "%#{query.downcase}%")
  end

end
