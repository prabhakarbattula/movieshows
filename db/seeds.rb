Cast.create!([
  {hero: "sharukh khan", heroine: "priyanka chopra", movie_id: 1},
  {hero: "ram charan tej", heroine: "tamanna", movie_id: 2},
  {hero: "sharukh khan", heroine: "deepika padukone", movie_id: 3},
  {hero: "nagarjuna", heroine: "madhu bala", movie_id: 4},
  {hero: "mahesh babu", heroine: "charmee", movie_id: 5},
  {hero: "salman khan", heroine: "deepika padukone", movie_id: 6},
  {hero: "pawan kalyan", heroine: "anushka", movie_id: 7},
  {hero: "chiranjeevi", heroine: "charmee", movie_id: 8},
  {hero: "bala krishna", heroine: "madhu bala", movie_id: 9},
  {hero: "siddharth", heroine: "kajal", movie_id: 11},
  {hero: "ram charan tej", heroine: "madhu bala", movie_id: 12}
])
Crew.create!([
  {category: "Hero", name: "pawan kalyan"},
  {category: "Hero", name: "chiranjeevi"},
  {category: "Hero", name: "ram charan tej"},
  {category: "Hero", name: "bala krishna"},
  {category: "Heroine", name: "charmee"},
  {category: "Heroine", name: "anushka"},
  {category: "Heroine", name: "tamanna"},
  {category: "Heroine", name: "kajal"},
  {category: "Hero", name: "mahesh babu"},
  {category: "Hero", name: "siddharth"},
  {category: "Hero", name: "sharukh khan"},
  {category: "Hero", name: "salman khan"},
  {category: "Heroine", name: "deepika padukone"},
  {category: "Heroine", name: "priyanka chopra"},
  {category: "Heroine", name: "madhu bala"},
  {category: "Hero", name: "nagarjuna"}
])
Movie.create!([
  {name: "jab tak hai jaan", language: "hindi"},
  {name: "nayak", language: "telugu"},
  {name: "ra-one", language: "hindi"},
  {name: "manmadudu", language: "telugu"},
  {name: "despicable me", language: "english"},
  {name: "frozen", language: "english"},
  {name: "raja rani", language: "telugu"},
  {name: "paisa", language: "telugu"},
  {name: "lava kusha", language: "telugu"},
  {name: "Aashique", language: "hindi"},
  {name: "maya bazar", language: "telugu"}
])
Show.create!([
  {morning: "1", matinee: "8", first: "1", second: "5", theatre_id: 1, movie_id: nil},
  {morning: "2", matinee: "2", first: "4", second: "4", theatre_id: 2, movie_id: nil},
  {morning: "3", matinee: "5", first: "2", second: "3", theatre_id: 4, movie_id: nil},
  {morning: "6", matinee: "2", first: "9", second: "2", theatre_id: 3, movie_id: nil},
  {morning: "2", matinee: "1", first: "1", second: "5", theatre_id: 5, movie_id: nil}
])
Theatre.create!([
  {name: "devi", place: "rtc x roads"},
  {name: "konark", place: "dilsukhnagar"},
  {name: "vijaya lakshmi", place: "l b nagar"},
  {name: "shiva ganga", place: "dilsukh nagar"},
  {name: "sushma", place: "vanasthali puram"},
  {name: "rajya lakshmi", place: "uppal"},
])
