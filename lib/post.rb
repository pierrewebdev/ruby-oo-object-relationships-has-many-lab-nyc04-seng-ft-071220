class Post
  attr_accesor :author
  
  
  #class variable
  @@all = []
  
  def initialize(title,author = nil)
    @title = title
    @author = author
    @@all << self #pushes new instances of this class into the class variable
  end
  
  def self.all
    @@all
  end
  
  def author_name
    if self.author
      self.author.name
  end
end