class Restaurant
  attr_reader :opening_time, :name, :dishes

def initialize (opening_time, name)
  @opening_time = opening_time
  @name = name
  @dishes = []
end

def closing_time(time)

time_open =  @opening_time.chop.chop.chop.to_i + time
time_open.to_s.concat(":00")
end

def add_dish(dish)
  @dishes << dish
end

def open_for_lunch?
  if
      @opening_time.chop.chop.chop.to_i  < 12
    true
  else
    false
  end
end
end
