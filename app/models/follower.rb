class Follower 

    @@all = []

    attr_reader :name, :age, :life_motto

    def initialize name, age, life_motto
        @name = name 
        @age = age 
        @life_motto = life_motto
        @@all << self 
    end 

    def self.all 
        @@all
    end 

    def self.of_a_certain_age(age)
        all.select { |follower| follower.age >= age }
    end 

    def cults 
        blood_oaths = BloodOath.all.select { |blood_oath| blood_oath.follower == self }
        blood_oaths.map(&:cult)
    end 

    def join_cult(cult)
        self.age < cult.minimum_age ? "Come back again when you're older and wiser!" : BloodOath.new(self, cult)
    end 

    def my_cults_slogans 
        cults.map(&:slogan)
    end 

    def self.most_active
        all.max_by { |follower| follower.cults.length }
    end 

    def self.top_ten
        sorted = all.sort_by { |follower| follower.cults.length}
        sorted.reverse[0..9]
    end 

    def fellow_cult_members
        all_fellow_members = cults.map(&:followers)
        all_fellow_members.flatten.uniq.reject { |member| member.name == self.name}
    end 

end 
