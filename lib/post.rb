=begin
Post
  #new
    is initialized with an argument of a title (FAILED - 5)
    pushes new instances into a class variable called @@all upon initialization(FAILED - 6)
  @@all
    is a class variable set to an array (FAILED - 7)
  .all
    is a class method that returns an array of all post instances that have been created (FAILED - 8)
  #title
    has a title (FAILED - 9)
  #author
    belongs to an author (FAILED - 10)
  #author_name
    knows the name of its author (FAILED - 11)
    returns nil if the post does not have an author (FAILED - 12)
=end
 require 'pry'
class Post 
  attr_accessor :title, :author
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self      # need this to collect the posts and put in @@all collection
  end
  
  def self.all
    @@all
  end
  
  def author_name
    author.name unless author == nil
  end
  
  # binding.pry
end