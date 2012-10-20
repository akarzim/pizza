# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Topping.delete_all
tomates = Topping.create(
 :name => "tomates"
)
thon = Topping.create(
 :name => "thon"
)
epaule = Topping.create(
  :name => "épaule"
)
chorizo = Topping.create(
  :name => "chorizo"
)
artichaut = Topping.create(
  :name => "artichaut"
)
champignons = Topping.create(
  :name => "champignons"
)
mozzarella = Topping.create(
  :name => "mozzarella"
)
oignons = Topping.create(
  :name => "oignons"
)
olives = Topping.create(
  :name => "olives"
)
gruyere = Topping.create(
  :name => "gruyère"
)
fdm = Topping.create(
  :name => "assortiment de fruits de mer"
)
capres = Topping.create(
  :name => "câpres"
)
anchois = Topping.create(
  :name => "anchois"
)
poivrons = Topping.create(
  :name => "poivrons"
)
gorgonzola = Topping.create(
  :name => "gorgonzola"
)
merguez = Topping.create(
  :name => "merguez"
)
oeuf = Topping.create(
  :name => "oeuf "
)
fromage = Topping.create(
  :name => "fromage"
)
sb = Topping.create(
  :name => "sauce bolognaise"
)
parmesan = Topping.create(
  :name => "parmesan"
)
cf = Topping.create(
  :name => "crème fraîche"
)
pdt = Topping.create(
  :name => "pommes de terre"
)
reblochon = Topping.create(
  :name => "reblochon"
)
lardons = Topping.create(
  :name => "lardons"
)
maroilles = Topping.create(
  :name => "maroilles"
)
vl = Topping.create(
  :name => "vieux Lille"
)
ananas = Topping.create(
  :name => "ananas"
)
stj = Topping.create(
  :name => "st jacques"
)
saumon = Topping.create(
  :name => "saumon"
)

chevre = Topping.create(
  :name => "chèvre"
)

peperoni = Topping.create(
  :name => "peperoni"
)

Pizz.delete_all
pino = Pizz.create(
  :name => "pino",
  :toppings => [tomates, thon, epaule, chorizo, artichaut, champignons, mozzarella]
)

reine = Pizz.create(
  :name => "reine",
  :toppings => [tomates, champignons, epaule, mozzarella]
)

marcquoise = Pizz.create(
  :name => "marcquoise",
  :toppings => [tomates, epaule, champignons, oignons, olives, gruyere]
)

sicilienne = Pizz.create(
  :name => "siciliene",
  :toppings => [tomates, poivrons, chorizo, mozzarella]
)

calabrese = Pizz.create(
  :name => "calabrese",
  :toppings => [tomates, thon, capres, anchois, mozzarella]
)

p_oignon = Pizz.create(
  :name => "oignon",
  :toppings => [tomates, oignons, gruyere]
)

jambon = Pizz.create(
  :name => "jambon",
  :toppings => [tomates, epaule, mozzarella]
)

margherita = Pizz.create(
  :name => "margherita",
  :toppings => [tomates, mozzarella]
)

p_fdm = Pizz.create(
  :name => "fruits de mer",
  :toppings => [tomates, fdm, gruyere]
)

napolitaine = Pizz.create(
  :name => "napolitaine",
  :toppings => [tomates, olives, capres, anchois, mozzarella]
)

europeenne = Pizz.create(
  :name => "europeenne",
  :toppings => [tomates, thon, champignons, epaule, artichaut, oignons, chorizo, poivrons, mozzarella]
)

p_gorgonzola = Pizz.create(
  :name => "gorgonzola",
  :toppings => [tomates, gorgonzola, gruyere]
)

capri = Pizz.create(
  :name => "capri",
  :toppings => [tomates, chorizo, oignons, oeuf, mozzarella]
)

p_merguez = Pizz.create(
  :name => "merguez",
  :toppings => [tomates, merguez, oignons, fromage]
)

hellemmoise = Pizz.create(
  :name => "hellemmoise",
  :toppings => [tomates, epaule, champignons, oignons, oeuf, gruyere]
)

p_thon = Pizz.create(
  :name => "thon",
  :toppings => [tomates, thon, gruyere]
)

bolognaise = Pizz.create(
  :name => "bolognaise",
  :toppings => [sb, mozzarella]
)

tourquenoise = Pizz.create(
  :name => "tourquenoise",
  :toppings => [thon, chorizo, gorgonzola, gruyere, oignons, tomates]
)

tf = Pizz.create(
  :name => "trois fromages",
  :toppings => [gruyere, gorgonzola, mozzarella, tomates]
)

p_chevre = Pizz.create(
  :name => "chevre",
  :toppings => [gruyere, tomates, chevre]
)

toscana = Pizz.create(
  :name => "toscana",
  :toppings => [epaule, champignons, parmesan, cf]
)

savoiardi = Pizz.create(
  :name => "savoiardi",
  :toppings => [cf, gruyere, oignons, pdt, reblochon, lardons]
)

sa = Pizz.create(
  :name => "saint aygulf",
  :toppings => [tomates, chorizo, gruyere, epaule, champignons, merguez, oeuf]
)

dm = Pizz.create(
  :name => "del maestro",
  :toppings => [tomates, chorizo, epaule, champignons, mozzarella, chevre, poivrons]
)

zio = Pizz.create(
  :name => "zio",
  :toppings => [tomates, lardons, oignons, mozzarella, oeuf, olives, poivrons]
)

p_maroilles = Pizz.create(
  :name => "maroilles",
  :toppings => [tomates, gruyere, maroilles]
)

carbonara = Pizz.create(
  :name => "carbonara",
  :toppings => [cf, lardons, mozzarella]
)

lilloise = Pizz.create(
  :name => "lilloise",
  :toppings => [vl, lardons, oignons, gruyere, oeuf, cf]
)

loossoise = Pizz.create(
  :name => "loossoise",
  :toppings => [tomates, oeuf, oignons, gorgonzola, champignons, gruyere]
)

lommoise = Pizz.create(
  :name => "lommoise",
  :toppings => [sb, gruyere, oeuf, oignons, merguez]
)

hawai = Pizz.create(
  :name => "hawaï",
  :toppings => [tomates, gruyere, epaule, ananas, cf]
)

wattignisienne = Pizz.create(
  :name => "wattignisienne",
  :toppings => [cf, champignons, chorizo, gruyere, oignons, gorgonzola, oeuf]
)

villeneuveoise = Pizz.create(
  :name => "villeneuveoise",
  :toppings => [tomates, chorizo, merguez, oeuf, gruyere, oignons]
)

armentieroise = Pizz.create(
  :name => "armentieroise",
  :toppings => [cf, epaule, champignons, gruyere, oignons, chevre, oeuf]
)

andresienne = Pizz.create(
  :name => "andresienne",
  :toppings => [cf, gruyere, gorgonzola, chevre, lardons, oeuf]
)

p_stj = Pizz.create(
  :name => "saint jacques",
  :toppings => [tomates, stj, gruyere, cf]
)

p_saumon = Pizz.create(
  :name => "saumon",
  :toppings => [tomates, saumon, gruyere, cf ]
)

p_peperoni = Pizz.create(
  :name => "peperoni",
  :toppings => [tomates, peperoni, gruyere, oignons]
)

annappoise = Pizz.create(
  :name => "annappoise",
  :toppings => [tomates, epaule, chorizo, parmesan, gorgonzola, oeuf, merguez]
)

vegetarienne = Pizz.create(
  :name => "vegetarienne",
  :toppings => [tomates, oignons, artichaut, poivrons, olives, champignons, mozzarella]
)

sta = Pizz.create(
  :name => "Saint Adrien",
  :toppings => [cf, epaule, mozzarella, parmesan, chorizo, merguez, gorgonzola, poivrons]
)

wattrelosienne = Pizz.create(
  :name => "wattrelosienne",
  :toppings => [tomates, chorizo, thon, gruyere, oignons, lardons, merguez, gorgonzola]
)

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
