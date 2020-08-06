class Author
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    #binding.pry
    self.posts.push(Post.all.select{|single_post|single_post.author == self}.flatten)
  end
  
  def add_post
  end
end