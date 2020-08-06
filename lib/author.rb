class Author
  attr_accessor :name, :posts
  
  #class variable to store all instances of Author
  @@all = []
  
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
    new_post.author = self
  end
  
  def self.post_count
    total = 0
    @@all.each {|author|total += author.posts.length}
    total
  end
  
  
end