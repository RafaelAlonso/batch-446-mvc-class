class Stack

  def initialize
    @items = []
  end

  def insert_item(item)
    @items << item
  end

  def remove_item
    @items.pop
  end
end

class Queue
  def initialize
    @items = []
  end

  def insert_item(item)
    @items << item
  end

  def remove_item
    @items.delete_at(0)
  end
end

nova_pilha = Stack.new
nova_pilha.insert_item("gabriel")
nova_pilha.insert_item("cris")
nova_pilha.insert_item("ed")

nova_pilha.remove_item # => ed

# ==========================================

nova_fila = Queue.new

nova_fila.insert_item("gabriel")
nova_fila.insert_item("cris")
nova_fila.insert_item("ed")

nova_fila.remove_item # => gabriel

