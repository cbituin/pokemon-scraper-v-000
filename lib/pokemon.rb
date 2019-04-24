class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(id: nil, name:, type:, db:)

  end

  def self.save(name, type, db)
    sql = "INSERT INTO pokemon (name, type) VALUES (?, ?)"

    db.execute(sql, name, type)
  end

  def self.find(id, db)
    sql = "SELECT * FROM ? WHERE id = ?"

    db.execute(sql, db, id).each do |row|
      Pokemon.new(row[0], row[1], row[2], db)
    end
  end

end
#  pokemon
