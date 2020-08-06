class Author
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    @posts << Post.all.select {|post|post.author == self}
    binding.pry
  end
  
  def add_post
  end
end