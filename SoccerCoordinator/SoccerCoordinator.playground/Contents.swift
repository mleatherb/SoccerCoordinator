// Creating a collection for each player
let playerOne: [String: Any] = ["name": "Joe Smith", "height": 42, "hasExperience": true, "Guardians": "Jim and Jan Smith"]
let playerTwo: [String: Any] = ["name": "Jill Tanner", "height": 36, "hasExperience": true, "Guardians": "Clara Tanner"]
let playerThree: [String: Any] = ["name": "Bill Bon", "height": 43, "hasExperience": true, "Guardians": "Sara and Jenny Bon"]
let playerFour: [String: Any] = ["name": "Eva Gordon", "height": 45, "hasExperience": false, "Guardians": "Wendy and Mike Gordon"]
let playerFive: [String: Any] = ["name": "Matt Gill", "height": 40, "hasExperience": false, "Guardians": "Charles and Sylvia Gill"]
let playerSix: [String: Any] = ["name": "Kimmy Stein", "height": 41, "hasExperience": false, "Guardians": "Bill and Hillary Stein"]
let playerSeven: [String: Any] = ["name": "Sammy Adams", "height": 45, "hasExperience": false, "Guardians": "Jeff Adams"]
let playerEight: [String: Any] = ["name": "Karl Sagan", "height": 42, "hasExperience": true, "Guardians": "Heather Bledsoe"]
let playerNine: [String: Any] = ["name": "Suzane Greenberg", "height": 44, "hasExperience": true, "Guardians": "Henrietta Dumas"]
let playerTen: [String: Any] = ["name": "Sal Dali", "height": 41, "hasExperience": false, "Guardians": "Gala Dali"]
let playerEleven: [String: Any] = ["name": "Joe Kavalier", "height": 39, "hasExperience": false, "Guardians": "Sam and Elaine Kavalier"]
let playerTwelve: [String: Any] = ["name": "Ben Finkeistein", "height": 44, "hasExperience": false, "Guardians": "Aaron and Jill Finkeistein"]
let playerThirteen: [String: Any] = ["name": "Diego Soto", "height": 41, "hasExperience": true, "Guardians": "Robin and Sarkia Soto"]
let playerFourteen: [String: Any] = ["name": "Chloe Alaska", "height": 47, "hasExperience": false, "Guardians": "David and Jamie Alaska"]
let playerFifteen: [String: Any] = ["name": "Arnold Willis", "height": 43, "hasExperience": false, "Guardians": "Claire Willis"]
let playerSixteen: [String: Any] = ["name": "Phillip Helm", "height": 44, "hasExperience": true, "Guardians": "Thomas Helm and Eva Jones"]
let playerSeventeen: [String: Any] = ["name": "Les Clay", "height": 42, "hasExperience": true, "Guardians": "Wynonna Brown"]
let playerEighteen: [String: Any] = ["name": "Herschel Krustofski", "height": 45, "hasExperience": true, "Guardians": "Hyman and Rachel Krustofski"]


// Adding the players to an array
var players = [playerOne, playerTwo, playerThree,
               playerFour, playerFive, playerSix,
               playerSeven, playerEight, playerNine,
               playerTen, playerEleven, playerTwelve,
               playerThirteen, playerFourteen, playerFifteen,
               playerSixteen, playerSeventeen, playerEighteen
              ]


/* 
   * Creating var to store players with and without experience
   * Looping through the players to sort them into players who have experience and those who dont
   * Turing the KVP for experience into a bool so we can sort them properly
*/
var playersWithExperience: [[String: Any]] = []
var playersWithoutExperience: [[String: Any]] = []


for player in players {
    if player["hasExperience"] as? Bool == true {
        playersWithExperience.append(player)
    } else if player["hasExperience"] as? Bool == false {
        playersWithoutExperience.append(player)
    } else {
        print("You need to ask the player if they have experience.")
    }
    
}


// Creating the teams and adding them to a collection of teams. Then using the # of teams to ensure players with experience is even across teams

var Sharks: [[String: Any]] = []
var Dragons: [[String: Any]] = []
var Raptors: [[String: Any]] = []

let practiceForSharks = "October 8th at 11am"
let practiceForDragons = "October 16th, at 11am"
let practiceForRaptors = "October 23rd, at 11am"

var teams = [Sharks, Dragons, Raptors]

let playersWithoutExperienceCount = players.count / teams.count
let experiencedPlayersCount = playersWithExperience.count / teams.count

// Assigning players to teams 
for experiencedPlayers in playersWithExperience {
    if Sharks.count < experiencedPlayersCount {
        Sharks.append(experiencedPlayers)
    } else if Dragons.count < experiencedPlayersCount {
        Dragons.append(experiencedPlayers)
    } else if Raptors.count < experiencedPlayersCount {
        Raptors.append(experiencedPlayers)
    }
}


for notExperiencedPlayer in playersWithoutExperience {
    if Sharks.count < playersWithoutExperienceCount {
        Sharks.append(notExperiencedPlayer)
    } else if Dragons.count < playersWithoutExperienceCount {
        Dragons.append(notExperiencedPlayer)
    } else if Raptors.count  < playersWithoutExperienceCount {
        Raptors.append(notExperiencedPlayer)
    }
}


// Creating the letters for each players guardians
for players in Sharks {
    print("Hello, \(players["Guardians"]!) We would like to welcome  \(players["name"]!) to the Sharks! Your first practice will be \(practiceForSharks). We look forward to seeing you")
}

for players in Dragons {
    print("Hello, \(players["Guardians"]!) We would like to welcome  \(players["name"]!) to the Dragons! Your first practice will be \(practiceForDragons). We look forward to seeing you")
}

for players in Raptors {
    print("Hello, \(players["Guardians"]!) We would like to welcome  \(players["name"]!) to the Raptors! Your first practice will be \(practiceForRaptors). We look forward to seeing you")
}
















