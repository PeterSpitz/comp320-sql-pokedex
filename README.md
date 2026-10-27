# Understanding the Pokedex Database Schema  

The database pokedex.db contains a wealth of information on mulitple generations of pokemons
and the various relationships.

Simply put, a database is made up of **entities**, which are independent concepts. In this case, we have:  

- **`pokemon`** – Represents individual Pokémon, storing details like height, weight, and experience.  
- **`abilities`** – Represents abilities that Pokémon can have, such as "Overgrow" or "Blaze."  

Entities are typically named with a **single word** since they represent distinct concepts.  

To link these entities together, we use **relationship tables**. These describe how entities interact with each other:  

- **`pokemon_abilities`** – Connects Pokémon to their abilities. Since a Pokémon can have multiple abilities, and
an ability can belong to multiple Pokémon, this table establishes the many-to-many relationship.  

Each relationship table usually includes:  
- A **foreign key** for each related entity (e.g., `pokemon_id` and `ability_id`).  
- Additional details about the relationship (e.g., whether an ability is hidden and which slot it occupies).  

By structuring data this way, we keep the database flexible and easy to expand. Instead of diving into
formal database theory, you can learn these patterns by observing how data is organized.  

# Questions

  1. Highest base speed stat, output name and stats.  Make sure
     the pokemon name is in lower case.
  2. Highest base attack stat pokemon that was introduced in version 1.
     Output the pokemon name and stat.  Be sure the pokemon names are in lower case.
  3. Some pokemons have unique ability.  Output pokemon name and
     it's associated unique ability name, sort by lower
     case pokemon name ascending
  4. Pokemon that belong to both 'flying' and 'fighting' types.  Output just the
     lower case names.
  5. The pokemon_evolution table describes how a pokemon can evolve.  Some pokemons
     evolves a multiple ways.  For example, pokemon number 892 evovles via the following:

     | id  | identifer | evolution trigger |
     | --- | ------- | ----------------- |
     | 892 | urshifu | tower-of-darkness |
     | 892 | urshifu | tower-of-waters |

     
     Retrives generation 1 pokemons with more than 1 row in the pokemon_evolution table.
     Representing the pokemon able to evolve into multiple forms.
     Output the lower case names and the number of rows.
  7. Find out all generation 1 pokemon that were evolved from later generations.
     For example, Pikachu is from generation 1, but is evolved from pichu,
     a generation 2 pokemon. Output 2 columns, first column is the gen 1 pokemon
     name, and the second column is the name of pokemon that it evolves from.
  8. Some pokemons can evolve into mulitple species, find out the name of these
     pokemons and how many species they are evolve into.  Output the
     lower case pokemon name in the first column, and the number of species
     in the second column.  Sort by pokemon's identifier.


# Notes

Data generated via https://github.com/veekun/pokedex.  I needed to
download and install the code, then run the `pokedex load` command
and extract the pokedex.sqlite file.
