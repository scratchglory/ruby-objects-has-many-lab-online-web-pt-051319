=begin
  Author
  #new
    is initialized with a name (FAILED - 1)
  #name
    has an attr_accessor for name (FAILED - 2)
  #posts
    has many posts (FAILED - 3)
  #add_post
    takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author (FAILED - 4)
  #add_post_by_title
    takes in an argument of a post title, creates a new post with it and associates the post and author (FAILED - 5)
  .post_count
    is a class method that returns the total number of posts associated to all existing authors (FAILED - 6)
=end



class Author 
  attr_accessor :name, :posts # has many posts
  
  def initialize(name)
    @@name = name
    @name = name
    @posts = []           # has many posts
  end
  
  def add_post(article)
    @posts << article
    article.author = self
  end
  
  def add_post_by_title(article)
    new_post = Post.new(article)      # creating a new post, calling upon the Post, naming new article
    @posts << new_post               #push the new_post into the collection 
    new_post.author = self
  end
  
  def self.post_count
    Post.all.length 
  end
  
end


