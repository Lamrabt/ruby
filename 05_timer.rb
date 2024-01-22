def time_string(temps)
    return "%02d:%02d:%02d" % [temps / 3600, temps / 60 % 60, temps % 60]
end