require './item'

class List
  attr_writer :items

  def initialize
    @items = Array.new()
  end

  def add_item(text)
    item = Item.new(text)
    @items << item
  end

  def del_item(index)
    @items.delete_at(index)
  end

  def check_item(index)
    @items[index].checked = true
  end

  def remove_all
    @items.clear
  end

  def show_all
    if @items.empty?
      puts "No hay articulos en la lista."
    else
      @items.each_index do |i|
        puts i.to_s + " - " + @items[i].to_s
      end
    end
  end
end