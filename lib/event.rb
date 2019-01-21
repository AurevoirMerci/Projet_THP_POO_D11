require 'pry'
require 'time'

class Event
  attr_accessor :start_date, :lenght, :title, :attendees
  @@event_infos = []
  @@event_infos2 = []
  @@event_infos3 = ""
  @@event = ""

  def initialize(date, durée, titre, invités)
    @start_date = date
    @lenght = durée
    @title = titre
    @attendees = invités
    date = Time.parse("#{date}")
    @@event_infos << date << durée << titre << invités
    @@event_infos2 << durée << titre << invités
    postpone_24h(date, durée)
    end_date(date, durée)
    is_past(date)
    is_future(date)
    is_soon(date)
    to_string(date, durée, titre, invités)
  end

  def postpone_24h(date, durée)
  	date2 = date + 60 * 60 * 24
    @@event_infos2 << date2
    end_of_date2 = date2 + durée
    @@event_infos2 << end_of_date2

  end

  def end_date(date, durée)
    end_of_date = date + durée
    @@event_infos << end_of_date
  end

  def is_past(date)
    date2 = date + 60 * 60 * 24
    if date < Time.now then @@event_infos3 = "t dans le passé" else @@event_infos3 = "event dans le turf" end
    if date2 < Time.now then @@event_infos3 = "t dans le passé" else @@event_infos3 = "event dans le turf" end
  end

  def is_future(date)
    date2 = date + 60 * 60 * 24
    if date > Time.now then @@event_infos3 = "t dans le turf" else @@event_infos3 = "event dans le passé" end
    if date2 > Time.now then @@event_infos3 = "t dans le turf" else @@event_infos3 = "event dans le passé" end
  end

  def is_soon(date)
    date2 = date + 60 * 60 * 24
    if date - Time.now < 30 * 60 then @@event_infos3 = "depeche toi t a la bourre lol" else @@event_infos3 = "tu peux chillax" end
    if date2 - Time.now < 30 * 60 then @@event_infos3 = "depeche toi t a la bourre lol" else @@event_infos3 = "tu peux chillax" end
end

  def to_string(date, durée, titre, invités)
    @@event = "Titre = #{titre} & Date de début = #{date} & Durée = #{durée} & Invités = #{invités}" 
  end

  def self.all
    return @@event_infos
  end

  def self.postpone_24h
    return @@event_infos2
  end

  def self.is_past
    return @@event_infos3
  end

  def self.is_future
    return @@event_infos3
  end

   def self.is_soon
    return @@event_infos3
  end

  def self.to_string
    return @@event
  end

end


binding.pry