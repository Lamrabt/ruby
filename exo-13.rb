nombre=1
50.times do |i|
    ary= []
    mail="jean.dupont.%02d.@email.com" % [nombre +i]
    ary << mail
    puts ary
    end
    