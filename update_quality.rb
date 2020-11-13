# require 'award'

# def update_normal(awards)
#   awards.each do |award|
#     if award.name != 'Blue First' && award.name != 'Blue Compare'
#       if award.quality > 0
#         if award.name != 'Blue Distinction Plus'
#           award.quality -= 1
#           if award.expires_in >= 0
#             award.quality -= 2
#           end
#         end
#       end
#     end
#   end
# end 

# def update_blue_first_and_compare(awards)
#   awards.each do |award|
#       if award.name == 'Blue First' || award.name == 'Blue Compare'
#           if expires_in <= 10
#               award.quality += 2
#           elsif 
#               expires_in <= 5
#               award.quality += 3
#           else
#               expires_in > 0
#               award.quality = 0
#           end 
#       end
#   end 
# end 

# def update_blue_dist_plus(awards)
#   awards.each do |award|
#       if award.name == 'Blue Distinction Plus'
#           award.quality == 80 ? nil : award.quality = 80
#       end 
#   end 
# end 

# def update_quality
#   update_normal
#   update_blue_first_and_compare
#   update_blue_dist_plus
# end 




# def update_quality(awards)
#   awards.each do |award|
#     if award.name != 'Blue First' && award.name != 'Blue Compare'
#       if award.quality > 0
#         if award.name != 'Blue Distinction Plus'
#           award.quality -= 1
#         end
#       end
#     else
#       if award.quality < 50
#         award.quality += 1
#         if award.name == 'Blue Compare'
#           if award.expires_in < 11
#             if award.quality < 50
#               award.quality += 1
#             end
#           end
#           if award.expires_in < 6
#             if award.quality < 50
#               award.quality += 1
#             end
#           end
#         end
#       end
#     end
#     if award.name != 'Blue Distinction Plus'
#       award.expires_in -= 1
#     end
#     if award.expires_in < 0
#       if award.name != 'Blue First'
#         if award.name != 'Blue Compare'
#           if award.quality > 0
#             if award.name != 'Blue Distinction Plus'
#               award.quality -= 1
#             end
#           end
#         else
#           award.quality = award.quality - award.quality
#         end
#       else
#         if award.quality < 50
#           award.quality += 1
#         end
#       end
#     end
#   end
# end
