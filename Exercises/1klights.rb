def lights_to_toggle(light_count, factor)
  (1..light_count).to_a.reject { |light| light % factor != 0 }
end

def toggle_lights(lights, lights_to_toggle)
  lights.reject { |light| lights_to_toggle.include?(light) } +
    lights_to_toggle.reject { |light| lights.include?(light) }
end

def thousand_lights(light_count)
  lights = []
  1.upto(light_count) do |factor|
    lights = toggle_lights(lights, lights_to_toggle(light_count, factor))
  end
  lights.sort
end

def lazy_lights(light_count)
  lights = []
  factor = 1
  loop do
    light = factor**2
    break lights if light>light_count
    lights<<light
    factor += 1
  end
end
