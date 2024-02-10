["Ruby", "Python", "Ruby on Rails", "React", "Vue.js", "Angular", "Node.js", "Express.js", "Django", "Flask"].each do |name|
  Tag.find_or_create_by!(name: name)
end