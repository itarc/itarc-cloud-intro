#encoding: utf-8
require 'yaml'

presentation = %Q(
presentation:
  - slide:
    - text('h3') : INTRODUCTION AU CLOUD COMPUTING, VECTEUR DE L'INNOVATION
    - text('h3') : "POUR INTERAGIR AVEC LA PRESENTATION, CONNECTEZ VOUS SUR :"
    - text('h4') : "http://itarc-cloud-intro.herokuapp.com/attendees"
    - text('h3') : "Actuellement : <span id='number_of_connections'>0</span> connexion"
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: SONDAGE
    - poll:
      - question : Etes vous déjà familier avec le cloud computing ?
      - response : Oui
      - response : Non
      - question : Etes vous dans le domaine informatique ?
      - response : Oui
      - response : Non      
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: RESULTAT SONDAGE
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: HISTOIRE DES ORDINATEURS    
    - evaluation
    - image : machine à calculer
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: HISTOIRE DES ORDINATEURS    
    - evaluation
    - image : charles Babadge
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: HISTOIRE DES ORDINATEURS    
    - evaluation
    - image : "http://ecx.images-amazon.com/images/I/51PxyxwgXrL._SY445_.jpg"
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: COMMENT TRAITER UN GROS VOLUME DE TRANSACTIONS et DE DONNEES (la problématique google en 1998)   
    - evaluation
    - image : "http://ecx.images-amazon.com/images/I/51PxyxwgXrL._SY445_.jpg"    
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: VISITE D'UN DATACENTER CHEZ GOOGLE    
    - video : "https://s3-eu-west-1.amazonaws.com/itarc/videos/GoogleDataCenter.mp4"    
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: SCHEMA D'UN DATACENTER CHEZ GOOGLE    
    - evaluation
    - image : "https://s3-eu-west-1.amazonaws.com/itarc/images/GoogleDataCenterInfrastructure.svg"
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: LOCALISATION DES DATACENTERS CHEZ GOOGLE    
    - evaluation
    - image : "https://s3-eu-west-1.amazonaws.com/itarc/images/GoogleDataCentersLocation.PNG"
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: QUELS AVANTAGES AU DATACENTER POURQUOI NE PAS AVOIR LES MACHINES CHEZ SOI    
    - evaluation
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: LA VIRTUALISATION    
    - evaluation
    - image: processor.jpg
    - image: memory.jpg
    - image: harddrive.jpg
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: RESULTAT DE LA VIRTUALISATION DANS UN DATACENTER (plusieurs instances pour chaque machine physique)
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: "VIRTUALISATION : EXEMPLE VIRTUALBOX"    
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: QUELS AVANTAGES A LA VIRTUALISATION
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: QUELS AVANTAGES A LA VIRTUALISATION
    - text: Pouvoir monter des environnements rapidement à moindre frais 
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: "EXEMPLE : AMAZON WEB SERVICES"
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: CREER UN SITE WEB AVANT LE CLOUD
    - text: installer des machines
    - text: installer les OS
    - text: configurer le réseau
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: CREER UN SITE WEB APRES LE CLOUD
    - text: créer une instance
    - text: déployer le site   
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: "LE PROBLEME DES IAAS : EROSION LOGICIELLE"
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: "LA SOLUTION DES PASS (ex : LA PLATEFORME HEROKU )"
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: QUELS SUJETS PEUVENT VOUS INTERESSER  
    - choice: heroku    
    - choice: bigdata    
  - slide:
    - title: INTRODUCTION AU CLOUD COMPUTING
    - subtitle: POUVEZ EVALUER CETTE PRESENTATION
    - evaluation: le conférencier
    - evaluation: la contenu
    - evaluation: la difficulté
    - form: remarques
)

presentation_model = YAML.load(presentation)

def title(title_content)
	puts title_content
end

def slide(slide_content)
	puts "---SLIDE (DEBUT)"
	slide_content.each do |content_line|
		begin
		eval content_line.keys[0] + content_line(content_line.keys[0])
		rescue NoMethodError #It is an array not a hash
		puts content_line
		end
	end
	puts "---SLIDE (FIN)"	
end

def presentation(presentation_content)
	puts "---PRESENTATION (DEBUT)"	
	presentation_content.each do |content_line|
		slide(content_line["slide"])
	end
	puts "---PRESENTATION (FIN)"
end

def run_throught_tree(tree)
	puts tree["presentation"][0]["slide"][0]["text('h3')"]
	presentation(tree["presentation"])
end

run_throught_tree(presentation_model)
       

