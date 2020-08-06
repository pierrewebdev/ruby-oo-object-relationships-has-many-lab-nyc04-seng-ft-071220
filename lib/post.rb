class Post
  attr_accessor :author
  
  
  #class variable
  @@all = []
  
  attr_accessor :title, :author
  
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

end