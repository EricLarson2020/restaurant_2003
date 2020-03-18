class Restaurant
  attr_reader :opening_time, :name, :dishes

def initialize (opening_time, name)
  @opening_time = opening_time
  @name = name
  @dishes = []
end

def closing_time(time)
  @opening_time.tr(':00', "").to_i + time
end

def add_dish(dish)
  @dishes << dish
end
end
