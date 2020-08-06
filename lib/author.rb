class Author
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def posts
    self.posts = Post.all.select {|post|post.author == self}
    #binding.pry
  end
  
  def add_post
  end
end