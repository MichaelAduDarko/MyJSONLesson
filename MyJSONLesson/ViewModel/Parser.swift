//
//  Parser.swift
//  MyJSONLesson
//
//  Created by MICHAEL ADU DARKO on 10/9/22.
//

import Foundation

import UIKit

struct Parser {
    
    func parse(comp: @escaping ([Pokemon]) -> ()) {
        let api = URL(string: "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json")
        
        URLSession.shared.dataTask(with: api!) { data, response, error in
            if error != nil {
                print(error?.localizedDescription)
                return
            }
            do {
             let results = try JSONDecoder().decode(Root.self, from: data!)
                comp(results.pokemon)
            } catch {
                
            }
        }
        .resume()
    }
    
}
