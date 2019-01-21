require 'pry'
require 'time'

class Event
  attr_accessor :start_date, :lenght, :title, :attendees
  @@event_infos = []

  def initialize(date, durée, titre, invités)
    @start_date = date
    @lenght = durée
    @title = titre
    @attendees = invités
    date = Time.parse("#{date}")
    @@event_infos << date << durée << titre << invités
    postpone_24h(date)
    return date
  end

  def postpone_24h(date)
  	date2 = date + 60 * 60 * 24
  	@@event_infos.delete(date)
  	@@event_infos << date2
  end

  def self.all
  	return @@event_infos
  end

end

binding.pry