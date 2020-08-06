class Author
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
  end
  
  def posts
    #binding.pry
    self.posts = Post.all.select{|single_post|single_post.author == self}
  end
  
  def add_post(new_post)
    new_post = Post.new(new_post)
    binding.pry
    new_post.author = self
  end
  
  
end