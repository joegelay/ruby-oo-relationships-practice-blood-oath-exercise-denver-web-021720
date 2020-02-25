class BloodOath

    @@all = []

    attr_reader :follower, :cult, :initiation_date

    def initialize follower, cult 
        @initiation_date = "#{Time.now.year}-#{Time.now.month}-#{Time.now.day}"
        @follower = follower 
        @cult = cult 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def self.first_oath
        sorted = all.sort_by { |blood_oath| blood_oath.initiation_date } 
        sorted[0].follower
    end 


end 
