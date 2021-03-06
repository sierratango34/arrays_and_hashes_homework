united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

# 1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.
united_kingdom[1][:capital].replace("Cardiff")

p united_kingdom

# 2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array (The capital is Belfast, and the population is 1,811,000).
northern_ireland = {
  name: "Northern Ireland",
  capital: "Belfast",
  population: 1811000,
}

p united_kingdom.push(northern_ireland)
# 3. Use a loop to print the names of all the countries in the UK
for country in united_kingdom
  p "#{country[:name]}"
end

# 4. Use a loop to find the total population of the UK.
def total_population(united_kingdom)
  population_of_uk = 0
    for population in united_kingdom
      population_of_uk += population[:population]
    end
  return population_of_uk
end

uk_population = total_population(united_kingdom)

p uk_population
