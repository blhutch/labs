class Coffee

  def initialize(name)
    @name = name
    @full = true
    @empty = false
    @size = 3
  end

  def full?
    @full
  end

  def change_fullness
    @full = false
    @size -= 1
  end
  
  def empty?
    if @size == 0
      @empty = true
    else
      @empty
    end
  end      
end