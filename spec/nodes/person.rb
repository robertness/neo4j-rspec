class Person
  include Neo4j::ActiveNode
  has_many :in, :posts, origin: :author
  has_many :in, :comments, origin: :author
  has_many :in, :written_things, type: false, model_class: [:Post, :Comment]
  ####
  has_many :out, :students, type: :ADVISES, model_class: :Person
  has_one :in, :advisor, origin: :students
  ####
  has_many :out, :books, type: :PUBLISHED, model_class: :Book
 



  property :nickname, index: :exact
  property :reserved
  index :reserved
end
