require 'discordrb'
require "date"

bot = Discordrb::Bot.new token: 'NDc5Mjg2NDM2Mzc4NzA1OTIw.DlXCLQ.fH8nxbrRS5DGwQJReo8pyFUB780', client_id: 479286436378705920

bot.message(with_text: /.+/) do |hello|
  nowTime = DateTime.now

  case nowTime.hour
  when 4..10
    hello.respond 'おはようございます！'
  when 11..17
    hello.respond 'こんにちは！'
  else
    hello.respond 'こんばんは！'
  end
end

bot.message(with_text: /.*占い.*|.*うらない.*|.*運勢.*|.*うんせい.*/) do |uranai|
  unsei = rand(0..4)
  case unsei
  when 0
    uranai.respond '大吉です'
  when 1
    uranai.respond '中吉です'
  when 2
    uranai.respond '小吉です'
  when 3
    uranai.respond '末吉です'
  when 4
    uranai.respond '凶です'
  end
end

bot.message(with_text: /.*時間.*|.*じかん.*/) do |time|
  time.respond %(#{Date.today}  #{DateTime.now.hour}時#{DateTime.now.minute}分#{DateTime.now.second}秒です。)
end

bot.run


# class Car
#   def maker(maker)
#     maker
#   end

#   def engine(engine)
#     engine
#   end

# end

# class Monster
#   def hit_point(hit_point)
#     hit_point
#   end

#   def attack(attack)
#     attack
#   end

# end

# slime = Monster.new
# p slime.hit_point(10)
# slime.attack(5)


# gtr = Car.new
# p gtr.maker('nissan')
# gtr.engine('馬力がでかいの')



# #英小文字 or "_" から始める
# puts msg.length

# VERSION = 1.1
# #英大文字から始める
# puts VERSION.floor

# 警告は出るが、処理はそのまま流れるので注意！

# p 4.8.class
# p 4.8.methods
# p Rational(3,5) + Rational(5,17)
# p 2/5r + 3/7r
# p 52.364.floor

# puts %Q(hel\nlo wor\tld)
# puts %q(hel\nlo wor\tld)

# puts "hello" * 5
# ! 破壊的メソッド

# name = %(taguchi)
# puts name.upcase
# puts name

# puts name.upcase!
# puts name

# p name.empty?
# p name.include?("a")

# colors = %W(red blue yellow green)
# p colors
# p colors[0]
# p colors[-2]
# p colors[0..2]
# p colors[5]

# colors[0..2] = %W(white black orange)
# p colors

# colors << ('pink')
# p colors
# p colors.sort
# p colors.reverse

# name = %(satoshi)
# p name << "hello"

# scores = {taguchi: 200, tanaka: 100,}
# p scores
# p scores[:taguchi]
# p scores.length
# p scores.keys
# p scores.values
# p scores.has_key?(:tanaka)
# p scores.has_value?(200)

# x = 50
# y = "3"

# p x + y.to_i
# p x + y.to_f
# p x.to_s + y

# scores = {taguchi: 200, tanaka: 100,}
# p scores.to_a.to_h
# p scores.to_a[0][1]

# p %(name:%s) % "taguchi"
# p %(name:%10s) % "taguchi"
# p %(name:%-10s) % "taguchi"

# p "id : %d , rate : %f" % [355,423]
# p "id : %05d , rate : %10.2f" % [355,423]

# printf(%(name:%10s),"taguchi")
# printf("id : %05d , rate : %10.2f" , 355,423)

# score = gets.to_i

# puts (score > 80) ? ("great!") : ("so so...")
# signal = gets.chomp

# puts case signal
# when "red"
#   "stop!"
# when "green","blue"
#   "go!"
# when "yellow"
#   "caution!"
# else
#   "oh my god"
# end

# i =  0
# while i < 10 do
#   puts %(#{i}hello)
#   i += 1
# end

# 10.times {|i|
#   puts "#{i}hello"
# }

# (15..20).each do |i|
#   p i
# end

# %W(red blue green).each do |color|
#   p color
# end

# {taguchi: 200, tanaka: 100,}.each { |name,score|
#   p %(#{name} : #{score})
# }

# for i in 15..20 do
#   p i
# end

# for color in %W(red blue green) do
#   p color
# end

# for name,score in {taguchi: 200, tanaka: 100,} do
#   p %(#{name} : #{score})
# end

# (0..10).each do |i|
#   next if i == 7
#   p i
# end

# def sayHi(name = "tom")
#   "Hi! #{name}"
# end

# puts sayHi("satoshi")
# puts sayHi

# class User
#   attr_accessor :namae
#   # setter : name = (value)
#   # getter : name

#   @@count = 0
#   VERSION = 1.1
  
#   def initialize(name)
#     @@count += 1
#     @namae = name
#   end

#   def sayHi
#     p "Hi I'm #{@namae}" 
#     sayPrivate
#   end

#   private
#     def sayPrivate
#       puts "private"
#     end

#   def self.info
#     puts "#{VERSION}User class,#{@@count} instances."
#   end
# end

# class AdminUser < User
#   def sayHello
#     p %(Hello from #{@namae})
#   end
# end

# ninten = AdminUser.new("ninten")
# ninten.sayHello
# p ninten.namae

# loid = User.new("loid")
# loid.sayHi
# p loid.namae

# def movie_encode
# end

# def movie_export
# end

# module Movie
#   VERSION = 1.1

#   def self.encode
#     p "encoding"
#   end
#   def self.export
#     p "exporting"
#   end
# end

# Movie.encode
# Movie.export
# p Movie::VERSION

# module Debug
#   def info
#     p "#{self.class} debug info..."
#   end
# end

# class Player
#   include Debug
# end

# class Monster
#   include Debug
# end

# Player.new.info

# class MyError < StandardError;
# end

# x = gets.to_i

# begin
#   raise MyError if x == 3
#   p 100 / x
# rescue MyError
#   p "not 3!"
# rescue => exception
#   p exception.message
#   p exception.class
#   p "stopped!"
# ensure
#   p "----END----"
# end


# tom = User.new("tom")
# loid = User.new("loid")
# ana = User.new("ana")
# teddy = User.new("teddy")
# tom.name = "tom jr"
# p tom.name
# tom.sayHi

# bob = User.new("bob")
# bob.sayHi
# User.info
# p User::VERSION