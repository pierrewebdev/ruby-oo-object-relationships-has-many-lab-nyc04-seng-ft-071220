class Author
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @posts = nil
  end
  
  def posts
    self.posts = Post.all.select{|single_post|single_post.author == self}
    binding.pry
  end
  
  def add_post
  end
end