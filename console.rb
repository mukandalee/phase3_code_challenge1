require_relative 'config/environment.rb'

def reload
  load 'config/environment.rb'
end


author_1= Author.new("leonard")
author_2 = Author.new('sifuna')
author_3 = Author.new('mukanda')

magazine_1=Magazine.new("standard","fashion")
magazine_2=Magazine.new("peoples","money")
magazine_3=Magazine.new("nation","business")

art1=Article.new(author_2,magazine_1,"title_one")
art2=Article.new(author_3,magazine_2,"title_two")
art3=Article.new(author_1,magazine_3,"title_three")
art4=Article.new(author_2,magazine_3, "title_four")

author_2.add_article(magazine_1,"title_three")
author_1.add_article(magazine_2,"title_four")
author_3.add_article(magazine_3,"title_five")


binding.pry

