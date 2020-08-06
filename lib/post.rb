class Post
  
  #class variable
  @@all = []
  
  def initialize(title,author = nil)
    @title = title
    
    @@all << self #pushes new instances of this class into the class variable
  end
end