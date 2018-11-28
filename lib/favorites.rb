class Item
  @@list = []
  attr_accessor :name
  attr_reader :id
  attr_reader :rank


  def initialize(name, rank)
    @name = name
    @id = @@list.length + 1
    @rank = rank.to_i
  end

  def self.all()
    @@list
  end

  def self.find(id)
    item_id = id.to_i()
    @@list.each do |item|
      if item.id == item_id
        return item
      end
    end
  end

  def self.find_rank(rank)
    item_rank = rank
    @@list.each do |item|
      if item.rank == item_rank
        return item
      end
    end
  end

  def save()
    @@list.push(self)
  end

  def self.clear()
    @@list = []
  end
end
