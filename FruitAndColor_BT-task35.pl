fruit(apple, red).
fruit(banana, yellow).
fruit(grape, green).
fruit(orange, orange).

color_of_fruit(Fruit, Color) :- fruit(Fruit, Color).
