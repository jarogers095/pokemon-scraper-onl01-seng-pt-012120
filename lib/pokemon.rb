class Pokemon
  attr_reader(:id, :name, :type, :db)
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.new_from_db(row, dba)
    Pokemon.new(id: row[0], name: row[1], type: row[2], db: dba)
  end
  
  def self.save(name, type, db)
    sql = "INSERT INTO pokemon (name, type) VALUES (?,?);"
    db.execute(sql, name, type)
  end
  
  def self.find(id, db)
    sql = "SELECT * FROM pokemon WHERE id = ?;"
    found_pokemon = Pokemon.new_from_db(db.execute(sql, id).first, db)
    return found_pokemon
  end
    
end
