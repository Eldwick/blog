class Post < ActiveRecord::Base
  has_many :comments
  has_and_belongs_to_many :categories

  def time_format(dbTime)
      time = Time.at(dbTime)
      time.to_formatted_s(:long)
  end
end
