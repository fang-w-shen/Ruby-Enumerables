require 'date'
zodiac = {
    :aquarius => {
        :element => "Air",
        :start_date => "January 20",
        :end_date => "February 18"
    },
    :pisces => {
        :element => "Water",
        :start_date => "February 19",
        :end_date => "March 20"
    },
    :aries => {
        :element => "Fire",
        :start_date => "March 21",
        :end_date => "April 19"
    },
    :taurus => {
        :element => "Earth",
        :start_date => "April 20",
        :end_date => "May 20"
    },
    :gemini => {
        :element => "Air",
        :start_date => "May 21",
        :end_date => "June 20"
    },
    :cancer => {
        :element => "Water",
        :start_date => "June 21",
        :end_date => "July 22"
    },
    :leo => {
        :element => "Fire",
        :start_date => "July 23",
        :end_date => "August 22"
    },
    :virgo => {
        :element => "Earth",
        :start_date => "August 23",
        :end_date => "September 22"
    },
    :libra => {
        :element => "Air",
        :start_date => "September 23",
        :end_date => "October 22"
    },
    :scorpio => {
        :element => "Water",
        :start_date => "October 23",
        :end_date => "November 21"
    },
    :sagittarius => {
        :element => "Fire",
        :start_date => "November 22",
        :end_date => "December 21"
    },
    :capricorn => {
        :element => "Earth",
        :start_date => "December 22",
        :end_date => "January 19"
    }
}

chinese_animal_zodiac = ["Rat", "Ox","Tiger", "Rabbit", "Dragon", "Snake", "Horse", "Goat", "Monkey","Rooster", "Dog", "Pig"]

p "1.)"
p keys = zodiac.keys
p "2.)"
keys.each{|a|
    zodiac[a][:start_date] = DateTime.parse(zodiac[a][:start_date]).to_date.to_s
    zodiac[a][:end_date] = DateTime.parse(zodiac[a][:end_date]).to_date.to_s
}
puts zodiac
p "3.)"
zodiac_elements = Hash.new
zodiac_elements[:fire]=[]
zodiac_elements[:water]=[]
zodiac_elements[:earth]=[]
zodiac_elements[:air]=[]

keys.each{|a|
    if zodiac[a][:element] == "Fire"
        zodiac_elements[:fire].push(a.to_s)
    elsif zodiac[a][:element] == "Water"
        zodiac_elements[:water].push(a.to_s)
    elsif zodiac[a][:element] == "Earth"
        zodiac_elements[:earth].push(a.to_s)
    elsif zodiac[a][:element] == "Air"
        zodiac_elements[:air].push(a.to_s)
    end
}
p zodiac_elements
p "4.)"
zodiac_elements.each{|a,b| b.map!{|b| b.capitalize}}
p zodiac_elements
p "5.)"
zodiac.each{|a,b|
    puts "The #{a.capitalize}, from #{zodiac[a][:start_date]} to #{zodiac[a][:end_date]}, is a(n) #{zodiac[a][:element]} sign."
}
p "6.)"
zodiac.each{|a,b|
    month = DateTime.parse(zodiac[a][:start_date]).to_date.month
    if month >= 4 && month <=9
        puts "#{a.capitalize}"
    end
}
p "7.)"
p less_than_m =chinese_animal_zodiac.find_all{|i| i[0] < "M"}.sort
p more_than_m =chinese_animal_zodiac.find_all{|i| i[0] > "M"}.sort

p "8.)"
array = chinese_animal_zodiac.map{|a| a.length}
p array.reduce{|a,b| a+b}

p "9.)"
p chinese_animal_zodiac.sort_by{|word| word.length}

p "10.)"
p chinese_animal_zodiac.find_all{|i| i[0] == "R"}.sort