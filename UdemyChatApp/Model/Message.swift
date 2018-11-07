//
//  Message.swift
//  UdemyChatApp
//
//  Created by Cristian Misael Almendro Lazarte on 10/31/18.
//  Copyright © 2018 Cristian Misael Almendro Lazarte. All rights reserved.
//

class Message {
    var sender : String = ""
    var body : String = ""
    
    init(sender: String, body: String){
        self.sender = sender
        self.body = body
    }
    
    init(){
        sender = "Cristian Misael"
        body = "Esto es un mensaje de prueba para la aplicación del curso de iOS"
    }
}
