require('pg')

class SqlRunner

  def self.run( sql )
    db = PG.connect({ dbname: 'super_league', host: 'localhost' })
    result = db.exec( sql )
    db.close
    return result
  end

end