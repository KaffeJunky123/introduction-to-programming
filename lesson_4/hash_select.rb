def select_fruit(produce)
  selected = {}
  keys = produce.keys
  counter = 0
  loop do
    break if counter==keys.size
    key = keys[counter]
    value = produce[key]
    selected[key] = value if value == 'Fruit'
    counter+=1
  end
  selected
end 

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce)
