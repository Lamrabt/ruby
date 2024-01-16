nombre=1
25.times do |i|
    ary= []
    mail="jean.dupont.%02d.@email.com" % [(nombre +i) *2]
    ary << mail
    puts ary
    end
    