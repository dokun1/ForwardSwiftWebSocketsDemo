## Swift WebSockets Demo

This is the code repo for the WebSockets demo I performed on stage at ForwardSwift in SF on March 2, 2017.

## How-to

Make sure you run `swift build` in the root directory before trying to build. SwiftPM will pull down the requisite dependencies to make your project run.

Run your project locally, and then navigate [here](http://www.websocket.org/echo.html).

Once your Kitura instance is running on your local machine, you'll go into the website and enter `ws://localhost:8090/kitura-echo` into the connection string, and connect. After that, feel free to send a message to it, and see what happens.

For more information, please check out the repo for Kitura WebSockets [here](https://github.com/IBM-Swift/Kitura-WebSocket).