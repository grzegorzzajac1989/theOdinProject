#!/usr/bin/ruby

planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter",
    "Saturn", "Uranus", "Neptune"]

planets.each do |planet| 

    puts planet
end

#with for

planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter",
    "Saturn", "Uranus", "Neptune"]

for i in 0...planets.length

    puts planets[i]
end