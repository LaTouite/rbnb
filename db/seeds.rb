# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
#Users
User.destroy_all
Activity.destroy_all


puts 'Creating users...'
users_attributes = [
{
email: "sophie@gmail.com",
password: "8Lalasoso",
first_name: "Sophie",
last_name: "Legrand",
username: "soso2000",
address: "14 rue des abbés, 75012 Paris",
phone_number: "0603020105"
},
{
email: "alex@gmail.com",
password: "1208Alex",
first_name: "Sophie",
last_name: "Legrand",
username: "alexdu33",
address: "28 rue des douaniers, 33000 Bordeaux",
phone_number: "0601021122"
}
]
User.create!(users_attributes)

puts 'Creating activities...'
activities_attributes = [
  {
  title: "Découvrez le Ski Nautique",
  description: "Faire du ski nautique à 30 de Paris vous en rêviez ? Et bien, cela devient possible grâce à notre centre !
Venez découvrir deux offres de ski : le ski classique, avec son stade de slalom et perfect pass et le ski de figure.
Découvrez également les plaisirs du bi-skis : initiation ludique vous permettant d'accéder rapidement au mono-ski et au ski de figure.
Alors qu'attendez-vous ?
En premier lieu, des conseils pédagogiques vous seront donnés afin d'assurer votre sécurité.
Une fois la combinaison mise, vous pouvez vivre votre activité à fond et découvrir le ski nautique !",
  unit_price: 50,
  category: "sports nautiques",
  schedule: "Du lundi au vendredi : 12h à 20h. Attention, centre fermé le mardi. Le week-end : 10h - 20h30.",
  min_number_of_participants: 1,
  max_number_of_participants: 4,
  min_age: 16,
  duration: 20,
  max_sessions: 24,
  remote_main_photo_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1566450821/di1xrktli5uruhznfl7l.jpg",
  remote_second_photo_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1566450827/aeefv1ej0siup8behzoz.jpg",
  address: "15 Boulevard Charles Livon, 13007 Marseille",
  user: User.first
  },

    {
  title: "Location de jet ski",
  description: "La plus grande base nautique de Vendée, et la SEULE BASE SABLAISE de location de JET SKI, vous accueille pour vous faire découvrir les joies de la glisse. Une expérience unique, des émotions fortes, des souvenirs inoubliables, un 'cocktail' idéal pour repartir avec des souvenirs plein la tête. Faites vous plaisir ! Dès 16 ans, pilotez seul votre jet ski ! Naviguez en toute sécurité. Pour ceux qui connaissent pas encore : l'expérience est unique ! Pour ceux qui connaissent déjà : plus rien à dire ! ils sont convaincus. Accompagné d'un éducateur sportif diplômé d'Etat et passionné, vous naviguerez au gré des vagues de la côté Vendéenne. Sur un jet ski (ou scooter des mers), vous irez à toute allure sur les eaux turquoises de l'Atlantique. Même sans permis bateau, c'est vous qui piloterez votre jet ski, et pourrez même avoir un passager arrière, tant que celui fait au minimum 1m40. Vous aurez le choix de plusieurs jet ski, tous de la marque Yamaha. Possibilité de naviguer seul à partir de 16 ans si vous détenez un permis bateau.",
  unit_price: 75,
  category: "sports nautiques",
  schedule: "Du 1e avril au 30 septembre (7/7j)",
  min_number_of_participants: 1,
  max_number_of_participants: 2,
  min_age: 18,
  duration: 45,
  max_sessions: 15,
  remote_main_photo_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1566450598/f00mwt26scwrle8z1pld.jpg",
  remote_second_photo_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1566451161/gjbkqnojbpg1vwgbuzez.jpg",
  address: "56 Corniche Président John Fitzgerald Kennedy, 13007 Marseille",
  user: User.last
  },

  {
  title: "Rafting",
  description: "Le raft est une embarcation constituée de plusieurs caissons gonflable extrêmement solide assurant l'insubmersibilité du bateau. Un guide diplômé d'Etat expliquant toutes les manœuvres et consignes aux occupants avant le départ pour le plaisir. C'est une activité accessible à tous, notre parcours se situe en Haute Savoie et permet de naviguer en toute sécurité sur nos torrents alpins, pour le plaisir des yeux, pour le goût de l’effort partagé ou pour la découverte des paysages sauvages et des histoires de nos vallées (métiers d'antan, castors, pont Eiffel...).",
  unit_price: 40,
  category: "sports nautiques",
  schedule: "Lundi, Mardi, Mercredi, Jeudi, Vendredi, Samedi",
  min_number_of_participants: 4,
  max_number_of_participants: 8,
  min_age: 8,
  duration: 120,
  max_sessions: 4,
  remote_main_photo_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1566450800/t6q4ibpu57cyfwbmk2sd.jpg",
  remote_second_photo_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1566450791/cibgdfpcnqhwdx487oni.jpg",
  address: "30 Cours Honoré d'Estienne d'Orves, 13001 Marseille",
  user: User.last
  },

    {
  title: "Laser Game Xmax",
  description: "LE PREMIER Laser Game DU 92 ! Un labyrinthe de 480 m2 sur 3 niveaux où vous serez au coeur du jeu ! Le Laser Game vous propose aussi un bar lounge, une salle de jeux (avec baby-foot, palets, basket,…) et une salle « after game ». En équipe, en solo, découvrez toutes nos formules de jeu, pour les plus jeunes fantassins comme pour les plus aguerris des vétérans. Un seul mot d’ordre : plaisir, adrénaline, stratégie, adresse, coopération, … bon ok, ça fait un peu plus d’un mot …",
  unit_price: 12,
  category: "ludique",
  schedule: "ouvert du lundi au dimanche sur réservation",
  min_number_of_participants: 4,
  max_number_of_participants: 40,
  min_age: 8,
  duration: 20,
  max_sessions: 50,
  remote_main_photo_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1566450732/vplp1tvkrzfbgwyho3xe.jpg",
  remote_second_photo_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1566450739/zlqyf7awp58e6tqptphq.jpg",
  address: "47 Avenue de l'Europe, 92400 Courbevoie",
  user: User.last
  },

      {
  title: "Jeu de piste connecté",
  description: "Voici une activité atypique à la croisé entre un escape game et un jeu de piste connecté !
Constituez votre équipe de 2 à 6 joueurs puis tentez de réussir le plus de challenges et de résoudre le maximum d'énigmes dans Bordeaux.

Vous aurez 60 minutes pour récolter le plus de points possible. Que la meilleure équipe gagne !

Pourquoi choisir cette activité ?

Un challenge inédit
Une visite de la ville autrement
Une activité parfaite pour les team building et les grand groupes",
  unit_price: 16,
  category: "ludique",
  schedule: "Ouvert le Samedi de de 12h à 18h",
  min_number_of_participants: 2,
  max_number_of_participants: 6,
  min_age: 12,
  duration: 90,
  max_sessions: 20,
  remote_main_photo_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1566450704/mx4nvu153sa17feh4tsv.jpg",
  remote_second_photo_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1566451143/ymc9hcoprjix5gvztonf.jpg",
  address: "2 rue de la Boétie, Paris",
  user: User.first
  },

      {
  title: "Stage de pilotage",
  description: "Grande championne à 5 reprises des 24 Heures du Mans, l'Audi R8 avec son design unique est considéré comme le haut de gamme d'Audi.

Des lignes à en faire saliver plus d'un, un bruit unique grâce à son moteur V8 FSI et 420 chevaux. La marque allemande, historiquement réputée pour sa discrétion a cassé tous les codes pour créer ce bijou technologique.

Un volant en cuir à base plate (à tenir fermement) : L'Audi R8 peut atteindre les 100 km/h en 4,6 secondes !
Prêt à dompter l'aboutissement d'une marque ?",
  unit_price: 149,
  category: "mécanique",
  schedule: "Ouvert le Samedi de de 9h à 18h",
  min_number_of_participants: 1,
  max_number_of_participants: 1,
  min_age: 18,
  duration: 25,
  max_sessions: 12,
  remote_main_photo_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1566450753/jr5rxd3hjxgxmugzwzbv.jpg",
  remote_second_photo_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1566450760/yvfgmzn8ogt4kugkvjxs.jpg",
  address: "28 Avenue des Frères Lumière, 78190 Trappes",
  user: User.first
  },

      {
  title: "Location et randonnée en quad",
  description: "Si vous êtes à a recherche de loisirs en nature, locations et randonnées en quad à Deauville sont ce qu'il vous faut ! Des sensations fortes et de l'adrénaline vous attendent lors de cette balade en plein air !

Rejoignez-nous en plein cœur de la forêt de Deauville sur un domaine de 16 hectares au volant d'un de nos 5 quatre-roues tout terrain monoplace équipés de moteurs 700cm3. Le parcours est composé d'obstacles tels les dévers, bourbiers ou autres champs d’ornières. Un parcours magnifique à tester sur ces engins motorisés, en toute sécurité !

Vous avez aussi la possibilité de vous offrir une balade en quad dans un autre endroit, dans le cadre d'un de nos programmes itinérants.",
  unit_price: 43,
  category: "mécanique",
  schedule: "Sur réservation",
  min_number_of_participants: 1,
  max_number_of_participants: 8,
  min_age: 16,
  duration: 45,
  max_sessions: 6,
  remote_main_photo_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1566450781/ouzdziimj6lujcijaxyv.jpg",
  remote_second_photo_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1566450775/v3dzo9jfdptmfbk8qyce.jpg",
  address: "3 Avenue Pierre Brossolette, Saint-Maur-des-Fossés",
  user: User.first
  }
]
Activity.create!(activities_attributes)
puts 'Finished!'
