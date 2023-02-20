class Author
    attr_accessor :name;
    @@all =[]

    def initialize(name)
      @name = name 
    end

    def self.name
        @@name.uniq! 
    end

    def self.all
        @@all
    end

     def magazines
    all_magazines = articles.map{ |article| article.magazine}
    all_magazines.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    magazines.collect{ |magazine| magazine.category }.uniq
  end
end  

