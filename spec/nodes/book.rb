class Book
  include Neo4j::ActiveNode

  property :title
  property :description, type: String
  property :published, type: Boolean
  include Neo4j::Timestamps
  has_one :in, :author, origin: :books
end
