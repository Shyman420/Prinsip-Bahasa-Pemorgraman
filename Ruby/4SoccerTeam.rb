class Tim
    # accessor for teamName & coachName 
    attr_accessor:teamName
    attr_accessor:coachName

    # reader for player, setter using manual method
    attr_reader:player

    # init player array of string
    def initialize
        @player = []    
    end

    def addPlayer(playerName)
        # push object to array
        @player.push(playerName)
    end
    
    def searchPlayer(playerName)

        # look for any that matches with parameter playerName on player array
        @player.any?{|myS|myS.casecmp(playerName)==0}
    end
end

a = Tim.new
a.coachName = "Ronaldinho"
a.teamName = "Persib"
a.addPlayer("Kim Kurniawan")
a.addPlayer("Atep")
a.addPlayer("Hariono")
a.addPlayer("Febri Hariyadi")
a.addPlayer("Supardi Natsir")
a.addPlayer("Wander Luiz")
a.addPlayer("I Made Wirawan")
a.addPlayer("Victor Igbonefo")
a.addPlayer("Beckham Putra")
a.addPlayer("Gian Zola")
a.addPlayer("Zulham Zamrun")
a.addPlayer("Budi Sudarsono")
puts "Team name \t: #{a.teamName}"
puts "Coach name \t: #{a.coachName}"
puts "Player name \t: #{a.player.map{|item| item.to_s + ","}.join(" ").chomp(",")}"
print "Find player name : "

# get the name of the player we are looking for
findPlayer = gets.chomp

# find player name using searchPlayer() method
if a.searchPlayer(findPlayer)
    print "Player '#{findPlayer}' found!" 
else
    print "Player '#{findPlayer}' not found!"
end