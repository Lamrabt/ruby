require "pry"
require "time"


class Event
    attr_accessor :start_date, :duration, :title, :attendees

    def initialize(start_date, duration, title, attendees)
        @start_date = Time.parse(start_date)
        @duration = duration * 60
        @title = title
        @attendees = attendees
    end

    def end_date
        end_date = @start_date + @duration
    end

    def is_past
        @start_date < Time.now
    end

    def is_future
        @start_date > Time.now
    end

    def is_soon
        is_soon = @start_date - Time.now
        if is_soon < 1800
            puts "t'est en retard"
        else
            puts "on est large"
        end
    end
    
    def to_s
        puts "> #{@title}"
        puts "> #{@start_date}"
        puts "> #{@duration}"
        puts "> #{@attendees}"
    end

    def postpone
        @start_date = @start_date + 24*60*60
    end
end
