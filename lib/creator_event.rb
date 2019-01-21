require 'pry'
require 'time'

require_relative 'user'
require_relative 'event'

#class Event_creator
 #attr_accessor :name1, :date8, :lenght8, :attendees8
  #@@event_infos = []
  #@@event_infos2 = []
  #@@event_infos3 = ""
  #@@event = ""

  def event_name
  	puts "Salut, tu veux créer un événement ? Cool !"
    puts "Commençons, quel est le nom de l'événement ?"
    titre = gets.chomp
    return titre
  end 

  def event_date
    puts "Super, quand aura-t-il lieu ?"
    date = gets.chomp
    return date 
  end

  def event_lenght
  	puts "Au top, combien de temps en minutes va-t-il durer ?"
  	durée = gets.chomp
  	return durée
  end

  def event_attendees
  	puts "Génial, qui va participer ? Balance leurs emails"
    invités = gets.chomp
    puts "Super, c'est noté, à bientôt !"
    return invités
  end

  def event_all(event_name, event_date, event_lenght, event_attendees)
  	event_name
  	event_date
  	event_lenght
  	event_attendees
  	e = Event.new("#{event_date}", "#{event_lenght}", "#{event_name}", "#{event_attendees}")
  	puts e.inspect

  end
event_all(event_name, event_date, event_lenght, event_attendees)
