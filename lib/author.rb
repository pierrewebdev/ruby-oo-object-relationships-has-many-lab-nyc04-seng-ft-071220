class Author
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
  end
  
  def posts
    #binding.pry
    self.posts = Post.all.select{|single_post|single_post.author == self}
  end
  
  def add_post(post_to_add)
    post_to_add.author = self
  end
  
  def add_post_by_title(new_post)
    new_post = Post.new(new_post)
    new_past.author = self
  end
  
  
end