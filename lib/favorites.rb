class Item
  @@list = []
  attr_accessor :name
  attr_reader :id
  attr_reader :rank




  def initialize(name, rank)
    @name = name
    if @@list.detect { |i| i == nil}
      @id = @@list.find_index{ |i| i == nil} + 1
    else
      @id = @@list.length + 1
    end
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

  def self.sort_rank
    ranked = @@list.sort_by { |item| item.rank }
    return ranked
  end

  def self.delete


  end

end
