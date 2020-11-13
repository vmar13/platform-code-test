# Award = Struct.new(:name, :expires_in, :quality) 

class Award
  attr_reader :name
  attr_accessor :expires_in, :quality
  @@all = []

  def initialize(name, expires_in, quality)
      @name = name
      @expires_in = expires_in
      @quality = quality
      self.class.all << self
  end 

  def self.all
      @@all
  end

  def self.update_quality
    self.all.each do |award|
        if award.name != 'Blue First' && award.name != 'Blue Compare'
            if award.quality > 0
                if award.name != 'Blue Distinction Plus'
                    award.quality -= 1
                        if award.expires_in >= 0
                            award.quality -= 2
                        end
                end
            end
        end
    end 
end

end 

#     def update_normal(award)
#     #   awards.each do |award|
#         if award.name != 'Blue First' && award.name != 'Blue Compare'
#           if award.quality > 0
#             if award.name != 'Blue Distinction Plus'
#               award.quality -= 1
#               if award.expires_in >= 0
#                 award.quality -= 2
#               end
#             end
#           end
#         end
#     #   end
#     end 
    
#     def update_blue_first_and_compare(award)
#     #   awards.each do |award|
#           if award.name == 'Blue First' || award.name == 'Blue Compare'
#               if expires_in <= 10
#                   award.quality += 2
#               elsif 
#                   expires_in <= 5
#                   award.quality += 3
#               else
#                   expires_in > 0
#                   award.quality = 0
#               end 
#           end
#     #   end 
#     end 
    
#     def update_blue_dist_plus(award)
#     #   awards.each do |award|
#           if award.name == 'Blue Distinction Plus'
#               award.quality == 80 ? nil : award.quality = 80
#           end 
#     #   end 
#     end 
    
#     def update_quality
#       update_normal
#       update_blue_first_and_compare
#       update_blue_dist_plus
#     end 
# end 
