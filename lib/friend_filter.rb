class FriendFilter

 def initialize(friends)
   @friends = friends
 end

 def born_before_1988
   @friends.select {|friend| friend[:birth_date] < Date.new(1988, 1, 1)}
 end

 def grabbing_friends
   @friends.map {|friend| friend[:first_name] + " " + friend[:last_name] + " (" + friend[:status] + ") " + "- " + friend[:birth_date].strftime("%-m/%d/%Y")}
  # @friends[0].values.join(" ") + ", " + @friends[1].values.join(" ")
 end

end
