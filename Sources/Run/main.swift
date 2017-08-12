import App
import Vapor

/// We have isolated all of our App's logic into
/// the App module because it makes our app
/// more testable.
///
/// In general, the executable portion of our App
/// shouldn't include much more code than is presented
/// here.
///
/// We simply initialize our Droplet, optionally
/// passing in values if necessary
/// Then, we pass it to our App's setup function
/// this should setup all the routes and special
/// features of our app
///
/// .run() runs the Droplet's commands,
/// if no command is given, it will default to "serve"

//* **ORIGIANL CODE**
let config = try Config()
try config.setup()

let drop = try Droplet(config)
try drop.setup()

try drop.run()


/*
/// ================================================
let drop = try Droplet()

drop.get { req in
    return try drop.view.make("welcome", [
      "message": drop.localization[req.lang, "welcome", "title"]
    ])
}

//1
drop.get("helloworld") { req in
//test GET
  return try drop.view.make("helloTwo")
}

try drop.resource("posts", PostController())

try drop.run()
*/
