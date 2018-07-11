def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3].sort
  return :invalid unless angles.reduce(:+) == 180
  case
  when angles.include?(90) then :right
  when angles.last > 90 then :obtuse
  else :acute
  end
end

