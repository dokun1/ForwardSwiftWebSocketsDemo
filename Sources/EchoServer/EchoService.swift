import Foundation

import KituraWebSocket
import LoggerAPI

class EchoService: WebSocketService {
    var messageCounter = 0
    public func connected(connection: WebSocketConnection) {}

    public func disconnected(connection: WebSocketConnection, reason: WebSocketCloseReasonCode) {}

    public func received(message: Data, from: WebSocketConnection) {}

    public func received(message: String, from: WebSocketConnection) {
        messageCounter += 1
        Log.info("Got message #\(messageCounter): \(message)... sending it back")
        from.send(message: "\(messageCounter) - \(message)")
    }
}

