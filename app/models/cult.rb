class Cult 

    @@all = []

    attr_reader :name, :location, :founding_year, :slogan

    def initialize name, location, founding_year, slogan 
        @name = name 
        @location = location
        @founding_year = founding_year
        @slogan = slogan

        @@all << self 
    end 

    def self.all 
        @@all
    end 

    def recruit_follower(follower)
        follower.age < minimum_age ? "Come back again when you're older and wiser!" : BloodOath.new(follower, self)
    end 

    def followers 
        blood_oaths = BloodOath.all.select { |bloodoath| bloodoath.cult == self }
        blood_oaths.map(&:follower)
    end 

    def cult_population
        followers.count 
    end 

    def self.find_by_name(name)
        all.find { |cult| cult.name == name }
    end 

    def self.find_by_location(location)
        all.find { |cult| cult.location == location }
    end 

    def self.find_by_founding_year(year)
        all.select { |cult| cult.founding_year == year }
    end 

    def average_age 
        total_age = followers.reduce(0) { |sum, follower| sum + follower.age }.to_f
        (total_age / cult_population)
    end 

    def my_followers_mottos
        followers.map(&:life_motto)
    end 

    def self.least_popular 
        all.min_by { |cult| cult.cult_population }
    end 

    def self.most_common_location
        all.max_by { |cult| cult.location }.location
    end 

    def minimum_age 
        12
    end 


end 
