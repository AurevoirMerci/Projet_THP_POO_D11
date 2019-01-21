require 'pry'
require 'time'

class Event
  attr_accessor :start_date, :lenght, :title, :attendees

  def initialize(date, durée, titre, invités)
    @start_date = Time.parse("#{date}")
    @lenght = durée
    @title = titre
    @attendees = invités
  end

  def postpone_24h
  	@start_date = @start_date + 60 * 60 * 24
  end

  def end_date
    @start_date = @start_date + @lenght * 60
  end

  def is_past
    @start_date < Time.now
  end

  def is_future
    !self.is_past
  end

  def is_soon
    @start_date < Time.now + 30
  end

  def to_s
    puts "Titre : #{@title}"
    puts "Date de début : #{start_date}"
    puts "Durée : #{lenght}"
    puts "Invités : #{attendees}"
  end

end

binding.pry