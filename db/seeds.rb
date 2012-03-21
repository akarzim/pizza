# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Ingredient.delete_all
tomates = Ingredient.create(
 :name => "tomates"
)
thon = Ingredient.create(
 :name => "thon"
)
epaule = Ingredient.create(
  :name => "épaule"
)
chorizo = Ingredient.create(
  :name => "chorizo"
)
artichaut = Ingredient.create(
  :name => "artichaut"
)
champignons = Ingredient.create(
  :name => "champignons"
)
mozzarella = Ingredient.create(
  :name => "mozzarella"
)
oignons = Ingredient.create(
  :name => "oignons"
)
olives = Ingredient.create(
  :name => "olives"
)
gruyere = Ingredient.create(
  :name => "gruyère"
)
fdm = Ingredient.create(
  :name => "assortiment de fruits de mer"
)
capres = Ingredient.create(
  :name => "câpres"
)
anchois = Ingredient.create(
  :name => "anchois"
)
poivrons = Ingredient.create(
  :name => "poivrons"
)
gorgonzola = Ingredient.create(
  :name => "gorgonzola"
)
merguez = Ingredient.create(
  :name => "merguez"
)
oeuf = Ingredient.create(
  :name => "oeuf "
)
fromage = Ingredient.create(
  :name => "fromage"
)
sb = Ingredient.create(
  :name => "sauce bolognaise"
)
parmesan = Ingredient.create(
  :name => "parmesan"
)
cf = Ingredient.create(
  :name => "crème fraîche"
)
pdt = Ingredient.create(
  :name => "pommes de terre"
)
reblochon = Ingredient.create(
  :name => "reblochon"
)
lardons = Ingredient.create(
  :name => "lardons"
)
maroilles = Ingredient.create(
  :name => "maroilles"
)
vl = Ingredient.create(
  :name => "vieux Lille"
)
ananas = Ingredient.create(
  :name => "ananas"
)
stj = Ingredient.create(
  :name => "st jacques"
)
saumon = Ingredient.create(
  :name => "saumon"
)

chevre = Ingredient.create(
  :name => "chèvre"
)

peperoni = Ingredient.create(
  :name => "peperoni"
)

Pizz.delete_all
pino = Pizz.create(
  :name => "pino", 
  :ingredients => [tomates, thon, epaule, chorizo, artichaut, champignons, mozzarella]
)

reine = Pizz.create(
  :name => "reine",
  :ingredients => [tomates, champignons, epaule, mozzarella]
)

marcquoise = Pizz.create(
  :name => "marcquoise",
  :ingredients => [tomates, epaule, champignons, oignons, olives, gruyere]
)

sicilienne = Pizz.create(
  :name => "siciliene",
  :ingredients => [tomates, poivrons, chorizo, mozzarella]
)

calabrese = Pizz.create(
  :name => "calabrese",
  :ingredients => [tomates, thon, capres, anchois, mozzarella]
)

p_oignon = Pizz.create(
  :name => "oignon",
  :ingredients => [tomates, oignons, gruyere]
)

jambon = Pizz.create(
  :name => "jambon",
  :ingredients => [tomates, epaule, mozzarella]
)

margherita = Pizz.create(
  :name => "margherita",
  :ingredients => [tomates, mozzarella]
)

p_fdm = Pizz.create(
  :name => "fruits de mer",
  :ingredients => [tomates, fdm, gruyere]
)

napolitaine = Pizz.create(
  :name => "napolitaine",
  :ingredients => [tomates, olives, capres, anchois, mozzarella]
)

europeenne = Pizz.create(
  :name => "europeenne",
  :ingredients => [tomates, thon, champignons, epaule, artichaut, oignons, chorizo, poivrons, mozzarella]
)

p_gorgonzola = Pizz.create(
  :name => "gorgonzola",
  :ingredients => [tomates, gorgonzola, gruyere]
)

capri = Pizz.create(
  :name => "capri",
  :ingredients => [tomates, chorizo, oignons, oeuf, mozzarella]
)

p_merguez = Pizz.create(
  :name => "merguez",
  :ingredients => [tomates, merguez, oignons, fromage]
)

hellemmoise = Pizz.create(
  :name => "hellemmoise",
  :ingredients => [tomates, epaule, champignons, oignons, oeuf, gruyere]
)

p_thon = Pizz.create(
  :name => "thon",
  :ingredients => [tomates, thon, gruyere]
)

bolognaise = Pizz.create(
  :name => "bolognaise",
  :ingredients => [sb, mozzarella]
)

tourquenoise = Pizz.create(
  :name => "tourquenoise",
  :ingredients => [thon, chorizo, gorgonzola, gruyere, oignons, tomates]
)

tf = Pizz.create(
  :name => "trois fromages",
  :ingredients => [gruyere, gorgonzola, mozzarella, tomates]
)

p_chevre = Pizz.create(
  :name => "chevre", 
  :ingredients => [gruyere, tomates, chevre]
)

toscana = Pizz.create(
  :name => "toscana",
  :ingredients => [epaule, champignons, parmesan, cf]
)

savoiardi = Pizz.create(
  :name => "savoiardi",
  :ingredients => [cf, gruyere, oignons, pdt, reblochon, lardons]
)

sa = Pizz.create(
  :name => "saint aygulf",
  :ingredients => [tomates, chorizo, gruyere, epaule, champignons, merguez, oeuf]
)

dm = Pizz.create(
  :name => "del maestro",
  :ingredients => [tomates, chorizo, epaule, champignons, mozzarella, chevre, poivrons]
)

zio = Pizz.create(
  :name => "zio",
  :ingredients => [tomates, lardons, oignons, mozzarella, oeuf, olives, poivrons]
)

p_maroilles = Pizz.create(
  :name => "maroilles",
  :ingredients => [tomates, gruyere, maroilles]
)

carbonara = Pizz.create(
  :name => "carbonara",
  :ingredients => [cf, lardons, mozzarella]
)

lilloise = Pizz.create(
  :name => "lilloise",
  :ingredients => [vl, lardons, oignons, gruyere, oeuf, cf]
)

loossoise = Pizz.create(
  :name => "loossoise",
  :ingredients => [tomates, oeuf, oignons, gorgonzola, champignons, gruyere]
)

lommoise = Pizz.create(
  :name => "lommoise",
  :ingredients => [sb, gruyere, oeuf, oignons, merguez]
)

hawai = Pizz.create(
  :name => "hawaï",
  :ingredients => [tomates, gruyere, epaule, ananas, cf]
)

wattignisienne = Pizz.create(
  :name => "wattignisienne",
  :ingredients => [cf, champignons, chorizo, gruyere, oignons, gorgonzola, oeuf]
)

villeneuveoise = Pizz.create(
  :name => "villeneuveoise",
  :ingredients => [tomates, chorizo, merguez, oeuf, gruyere, oignons]
)

armentieroise = Pizz.create(
  :name => "armentieroise",
  :ingredients => [cf, epaule, champignons, gruyere, oignons, chevre, oeuf]
)

andresienne = Pizz.create(
  :name => "andresienne",
  :ingredients => [cf, gruyere, gorgonzola, chevre, lardons, oeuf]
)

p_stj = Pizz.create(
  :name => "saint jacques",
  :ingredients => [tomates, stj, gruyere, cf]
)

p_saumon = Pizz.create(
  :name => "saumon",
  :ingredients => [tomates, saumon, gruyere, cf ]
)

p_peperoni = Pizz.create(
  :name => "peperoni",
  :ingredients => [tomates, peperoni, gruyere, oignons]
)

annappoise = Pizz.create(
  :name => "annappoise",
  :ingredients => [tomates, epaule, chorizo, parmesan, gorgonzola, oeuf, merguez]
)

vegetarienne = Pizz.create(
  :name => "vegetarienne",
  :ingredients => [tomates, oignons, artichaut, poivrons, olives, champignons, mozzarella]
)

sta = Pizz.create(
  :name => "Saint Adrien",
  :ingredients => [cf, epaule, mozzarella, parmesan, chorizo, merguez, gorgonzola, poivrons]
)

wattrelosienne = Pizz.create(
  :name => "wattrelosienne",
  :ingredients => [tomates, chorizo, thon, gruyere, oignons, lardons, merguez, gorgonzola]
)

puts sta
puts "nb pizz " + Pizz.all.count.to_s


Size.delete_all
petit = Size.create(
  :label => "petite"
)

grand = Size.create(
  :label => "grande"
)

Price.delete_all
Price.create(
  :amount=> 6.4,
  :pizz => pino,
  :size => petit
)

Price.create(
  :amount=> 7.6,
  :pizz => pino,
  :size => grand 
)

Price.create(
  :amount=> 4.4,
  :pizz => reine,
  :size => petit
)

Price.create(
  :amount=> 5.6,
  :pizz => reine,
  :size => grand 
)

Price.create(
  :amount=> 4.7,
  :pizz => marcquoise,
  :size => petit
)

Price.create(
  :amount=> 5.9,
  :pizz => marcquoise,
  :size => grand 
)

Price.create(
  :amount=> 4.9,
  :pizz => sicilienne,
  :size => petit
)

Price.create(
  :amount=> 6.1,
  :pizz => sicilienne,
  :size => grand 
)


Price.create(
  :amount=> 5.0,
  :pizz => calabrese,
  :size => petit
)

Price.create(
  :amount=> 6.2,
  :pizz => calabrese,
  :size => grand 
)

Price.create(
  :amount=> 4,
  :pizz => p_oignon,
  :size => petit
)

Price.create(
  :amount=> 5.2,
  :pizz => p_oignon,
  :size => grand 
)

Price.create(
  :amount=> 4.2,
  :pizz => jambon,
  :size => petit
)

Price.create(
  :amount=> 5.4,
  :pizz => jambon,
  :size => grand 
)

Price.create(
  :amount=> 3,
  :pizz => margherita,
  :size => petit
)

Price.create(
  :amount=> 4.2,
  :pizz => margherita,
  :size => grand 
)

Price.create(
  :amount=> 6.4,
  :pizz => p_fdm,
  :size => petit
)

Price.create(
  :amount=> 7.6,
  :pizz => p_fdm,
  :size => grand 
)

Price.create(
  :amount=> 5,
  :pizz => napolitaine,
  :size => petit
)

Price.create(
  :amount=> 6.2,
  :pizz => napolitaine,
  :size => grand 
)

Price.create(
  :amount=> 6.7,
  :pizz => europeenne,
  :size => petit
)

Price.create(
  :amount=> 7.9,
  :pizz => europeenne,
  :size => grand 
)

Price.create(
  :amount=> 6.4,
  :pizz => p_gorgonzola,
  :size => petit
)

Price.create(
  :amount=> 6.4,
  :pizz => p_gorgonzola,
  :size => grand 
)

Price.create(
  :amount=> 5.4,
  :pizz => capri,
  :size => petit
)

Price.create(
  :amount=> 6.6,
  :pizz => capri,
  :size => grand 
)

Price.create(
  :amount=> 5.4,
  :pizz => p_merguez,
  :size => petit
)

Price.create(
  :amount=> 6.6,
  :pizz => p_merguez,
  :size => grand 
)

Price.create(
  :amount=> 5.3,
  :pizz => hellemmoise,
  :size => petit
)

Price.create(
  :amount=> 6.5,
  :pizz => hellemmoise,
  :size => grand 
)

Price.create(
  :amount=> 4.5,
  :pizz => p_thon,
  :size => petit
)

Price.create(
  :amount=> 5.7,
  :pizz => p_thon,
  :size => grand 
)

Price.create(
  :amount=> 4.9,
  :pizz => bolognaise,
  :size => petit
)

Price.create(
  :amount=> 6.1,
  :pizz => bolognaise,
  :size => grand 
)

Price.create(
  :amount=> 6.7,
  :pizz => tourquenoise,
  :size => petit
)

Price.create(
  :amount=> 7.9,
  :pizz => tourquenoise,
  :size => grand 
)

Price.create(
  :amount=> 6.7,
  :pizz => tf,
  :size => petit
)

Price.create(
  :amount=> 7.9,
  :pizz => tf,
  :size => grand 
)

Price.create(
  :amount=> 6.4,
  :pizz => p_chevre,
  :size => petit
)

Price.create(
  :amount=> 7.6,
  :pizz => p_chevre,
  :size => grand 
)

Price.create(
  :amount=> 5.5,
  :pizz => toscana,
  :size => petit
)

Price.create(
  :amount=> 6.7,
  :pizz => toscana,
  :size => grand 
)

Price.create(
  :amount=> 6.7,
  :pizz => savoiardi,
  :size => petit
)

Price.create(
  :amount=> 7.9,
  :pizz => savoiardi,
  :size => grand 
)

Price.create(
  :amount=> 6.7,
  :pizz => sa,
  :size => petit
)

Price.create(
  :amount=> 7.9,
  :pizz => sa,
  :size => grand 
)

Price.create(
  :amount=> 6.7,
  :pizz => dm,
  :size => petit
)

Price.create(
  :amount=> 7.9,
  :pizz => dm,
  :size => petit
)

Price.create(
  :amount=> 6.4,
  :pizz => zio,
  :size => petit 
)

Price.create(
  :amount=> 7.6,
  :pizz => zio,
  :size => grand
)

Price.create(
  :amount=> 6.4,
  :pizz => p_maroilles,
  :size => petit 
)

Price.create(
  :amount=> 7.6,
  :pizz => p_maroilles,
  :size => grand 
)

Price.create(
  :amount=> 5.5,
  :pizz => carbonara,
  :size => petit
)

Price.create(
  :amount=> 6.7,
  :pizz => carbonara,
  :size => grand 
)

Price.create(
  :amount=> 6.7,
  :pizz => lilloise,
  :size => petit
)

Price.create(
  :amount=> 7.9,
  :pizz => lilloise,
  :size => grand 
)

Price.create(
  :amount=> 5.7,
  :pizz => loossoise,
  :size => petit
)

Price.create(
  :amount=> 6.9,
  :pizz => loossoise,
  :size => grand 
)

Price.create(
  :amount=> 5.9,
  :pizz => lommoise,
  :size => petit
)

Price.create(
  :amount=> 7.1,
  :pizz => lommoise,
  :size => grand 
)

Price.create(
  :amount=> 5.7,
  :pizz => hawai,
  :size => petit
)

Price.create(
  :amount=> 6.9,
  :pizz => hawai,
  :size => grand 
)

Price.create(
  :amount=> 6.7,
  :pizz => wattignisienne,
  :size => petit
)

Price.create(
  :amount=> 7.9,
  :pizz => wattignisienne,
  :size => grand 
)

Price.create(
  :amount=> 6.7,
  :pizz => villeneuveoise,
  :size => petit
)

Price.create(
  :amount=> 7.9,
  :pizz => villeneuveoise,
  :size => grand 
)

Price.create(
  :amount=> 6.7,
  :pizz => armentieroise,
  :size => petit
)

Price.create(
  :amount=> 7.9,
  :pizz => armentieroise,
  :size => grand 
)

Price.create(
  :amount=> 6.7,
  :pizz => andresienne,
  :size => petit
)

Price.create(
  :amount=> 7.9,
  :pizz => andresienne,
  :size => grand 
)

Price.create(
  :amount=> 6.9,
  :pizz => p_stj,
  :size => petit
)

Price.create(
  :amount=> 8.1,
  :pizz => p_stj,
  :size => grand 
)

Price.create(
  :amount=> 6.9,
  :pizz => p_saumon,
  :size => petit
)

Price.create(
  :amount=> 8.1,
  :pizz => p_saumon,
  :size => grand 
)

Price.create(
  :amount=> 5.5,
  :pizz => p_peperoni,
  :size => petit
)

Price.create(
  :amount=> 6.7,
  :pizz => p_peperoni,
  :size => grand 
)

Price.create(
  :amount=> 6.7,
  :pizz => annappoise,
  :size => petit
)

Price.create(
  :amount=> 7.9,
  :pizz => annappoise,
  :size => grand 
)

Price.create(
  :amount=> 5.4,
  :pizz => vegetarienne,
  :size => petit
)

Price.create(
  :amount=> 6.6,
  :pizz => vegetarienne,
  :size => grand 
)

Price.create(
  :amount=> 6.7,
  :pizz => sta,
  :size => petit
)

Price.create(
  :amount=> 7.9,
  :pizz => sta,
  :size => grand 
)

Price.create(
  :amount=> 6.7,
  :pizz => wattrelosienne,
  :size => petit
)

Price.create(
  :amount=> 7.9,
  :pizz => wattrelosienne,
  :size => grand 
)

puts "prices : #{Price.all.count.to_s} " 
