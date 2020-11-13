class BlueFirst < Award

    attr_accessor :name, :expires_in, :quality

    def initialize(name, expires_in, quality)
        super(name, expires_in, quality)
    end

    def self.update_quality
        self.all.each do |award|
            if award.name == 'Blue First' 
                if expires_in <= 10
                    award.quality += 2
                elsif 
                    expires_in <= 5
                    award.quality += 3
                else
                    expires_in > 0
                    award.quality = 0
                end 
            end
        end 
    end

end 