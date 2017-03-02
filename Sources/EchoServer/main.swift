import Foundation
import Kitura
import KituraWebSocket
import HeliumLogger

HeliumLogger.use(.info)

let router = Router()

WebSocket.register(service: EchoService(), onPath: "kitura-echo")
 
let envVars = ProcessInfo.processInfo.environment
let portString = envVars["PORT"] ?? envVars["CF_INSTANCE_PORT"] ?? envVars["VCAP_APP_PORT"] ?? "8090"
let port = Int(portString) ?? 8090

Kitura.addHTTPServer(onPort: port, with: router)
Kitura.run()
