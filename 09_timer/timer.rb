class Timer
    attr_accessor :seconds
    
    def initialize
        @seconds = 0
    end
    
    def padded(n)
        "0#{n}"
    end
    
    def time_string
        hours = @seconds/3600
        h_minutes = ((@seconds%3600)/60)
        minutes = @seconds/60
        m_seconds = @seconds%60
        second = @seconds
        seconds = ""
        
        if @seconds < 60
            if second < 10
                second = padded(second)
            end
            seconds << "00:00:#{second}"
        elsif @seconds > 3600
            if hours < 10
                hours = padded(hours)
            end
            if h_minutes < 10
                h_minutes = padded(h_minutes)
            end
            if m_seconds < 10
                m_seconds = padded(m_seconds)
            end
            seconds << "#{hours}:#{h_minutes}:#{m_seconds}"
        else
            if minutes < 10
                minutes = padded(minutes)
            end
            if m_seconds < 10
                m_seconds = padded(m_seconds)
            end
            seconds << "00:#{minutes}:#{m_seconds}"
        end
        @seconds = seconds
    end
end