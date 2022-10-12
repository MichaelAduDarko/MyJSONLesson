//
//  Model.swift
//  MyJSONLesson
//
//  Created by MICHAEL ADU DARKO on 10/9/22.
//

import Foundation

struct Root: Codable {
    let pokemon : [Pokemon]

}

struct Pokemon: Codable {
    let name: String
    let img: String
}
