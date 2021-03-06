//
//  ProjectList.swift
//  App
//
//  Created by Martin Lasek on 15.04.19.
//

struct Project: Encodable {
  let kind: Kind
  let bgColor: BackgroundColor
  
  let name: String
  let description: String
  let url: String
  
  let imageUrl: String
  let secondImageUrl: String?
  
  init(
    kind: Kind,
    bgColor: BackgroundColor,
    name: String,
    description: String,
    url: String,
    imageUrl: String,
    secondImageUrl: String? = nil
  ) {
    self.kind = kind
    self.bgColor = bgColor
    self.name = name
    self.description = description
    self.url = url
    self.imageUrl = imageUrl
    self.secondImageUrl = secondImageUrl
  }
  
  enum Kind: String, Encodable {
    case iosLandscape
    case iosPortrait
    case web
  }
  
  enum BackgroundColor: String, Encodable {
    case red
    case graphit
    case orange
    case peach
    case violet
  }
  
  static func all() -> [Project] {
    return [
      Project(
        kind: .iosPortrait,
        bgColor: .violet,
        name: "Better Workout",
        description: "Work out without any equipment! Try pre-defined workouts or create your own to become the best version of yourself!",
        url: "https://apps.apple.com/at/app/better-workout/id1523173452#?platform=iphone",
        imageUrl: "/images/projects/better-workout-1.png",
        secondImageUrl: "/images/projects/better-workout-2.png"
      ),
      Project(
        kind: .iosLandscape,
        bgColor: .red,
        name: "Momoko IO",
        description: "It is a fast pace hardcore highscore game purely written in Swift using the native SceneKit Library.",
        url: "https://apps.apple.com/de/app/momoko-io/id1371665660",
        imageUrl: "/images/projects/momoko.png"
      ),
      Project(
        kind: .iosPortrait,
        bgColor: .graphit,
        name: "socialdown",
        description: "A personal assistant for Instagram influencer and everyone who wants to grow and become one – organically.",
        url: "https://itunes.apple.com/us/app/socialdown/id1453720895",
        imageUrl: "/images/projects/socialdown-1.png",
        secondImageUrl: "/images/projects/socialdown-2.png"
      ),
      Project(
        kind: .web,
        bgColor: .orange,
        name: "ServerSide.swift",
        description: "Conference Website to buy tickets, read about the talks and see the date and schedule.",
        url: "https://www.serversideswift.info",
        imageUrl: "/images/projects/serversideswift.png"
      ),
      Project(
        kind: .web,
        bgColor: .peach,
        name: "VaporBerlin",
        description: "Meetup Website to vote on topics to influence what talks should be presented on the next meetup.",
        url: "http://vapor.berlin",
        imageUrl: "/images/projects/vaporberlin.png"
      ),
    ]
  }
}
