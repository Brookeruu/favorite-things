require 'rspec'
require 'pry'
require 'favorites'

describe("Item") do
  # describe(".all") do
  #   it("is empty at first") do
  #     expect(Item.all()).to(eq([]))
  #   end
  # end

#   describe("#save") do
#     it("saves an item to the list of items") do
#       item = Item.new("tamales", 1)
#       item.save()
#       expect(Item.all()).to(eq([item]))
#     end
#   end
#
#   describe(".clear") do
#   it("clears all items from the list") do
#     item = Item.new("burritos", 1)
#     item.save()
#     Item.clear()
#     expect(Item.all()).to(eq([]))
#   end
# end

  describe(".find") do
      it("finds an item based on its id") do
        item = Item.new("tacos", 1)
        item.save()
        item2 = Item.new("pizza", 1)
        item2.save()
        expect(Item.find(1)).to(eq(item))
        expect(Item.find(2)).to(eq(item2))
      end
    end

    # describe(".find_rank") do
    #     it("finds an item based on its rank") do
    #       item = Item.new("tacos", "1")
    #       item.save()
    #       item2 = Item.new("pizza", "2")
    #       item2.save()
    #       expect(Item.find_rank(1)).to(eq(item))
    #       expect(Item.find_rank(2)).to(eq(item2))
    #     end
    #   end

      # describe(".sort_rank") do
      #     it("makes a new array based on item rank") do
      #       item = Item.new("tacos", "2")
      #       item.save()
      #       item2 = Item.new("pizza", "1")
      #       item2.save()
      #       expect(Item.sort_rank()).to(eq(["pizza", "tacos"]))
      #     end
      #   end


end
