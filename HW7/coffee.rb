class Coffee

  def initialize(name)
    @name = name
    @full = true
    @empty = false
    
  end

  def full?
    @full
  end

  def change_fullness
    @full = false
  end

  def empty?
    @empty
  end
end