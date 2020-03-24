class Pokemon
  attr_reader(:id, :name, :type)
  
  def initialize(id = nil, name, type)
    @id = id
    @name = name
    @type = type
  end
  
  def self.save(name, type, db)
  end
    
end
