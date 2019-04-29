//
//  MenuCaretaker.swift
//  RabbleWabble
//
//  Created by Nicholai Cascio on 4/25/19.
//  Copyright © 2019 Travis Szabolcska. All rights reserved.
//

import Foundation
public final class MenuCaretaker{
    
    public static let decoder = JSONDecoder()
    public static let encoder = JSONEncoder()
    private let fileName = "Data"
    //private let fileName = "MiniMenu"
    public var items: [Item] = []
    
    // 1 - Retrive via file name
    public static func retrieve<T: Decodable>(_ type: T.Type, from fileName: String) throws -> T{
        let url = createDocumentURL(withFileName: fileName)
        return try retrieve(T.self, from: url)
        
    }
    
    // 2 - Retrieve via URL
    public static func retrieve<T: Decodable>(_ type: T.Type, from url:URL) throws -> T{
        do{
            // 3 - Create data from the url.
            let data = try Data(contentsOf: url)
            
            // 4 - decode the data.
            return try decoder.decode(T.self, from: data)
            
        } catch(let error){
            // 5 - catch error on decode.
            print ("Retrieve failed: URL: '\(url)', Error: '\(error)'")
            throw error
            
        }
        
    }
    
    public static func createDocumentURL(withFileName fileName: String) -> URL{
        let fileManager = FileManager.default
        let url = fileManager.urls(for: .documentDirectory,
                                   in: .userDomainMask).first!
        
        return url.appendingPathComponent(fileName).appendingPathExtension("json")
    }
    
    public init(){
        // 3 - Load the group questions on initilization.
        loadMenu()
    }
    
    // 4 - Perform the retrieve action.  On first run, we'll get a nil because the file doesn't exist.
    //     In that case, load question groups from Bundle.main, then save it.
    private func loadMenu(){
        let bundle = Bundle.main
        let url = bundle.url(forResource: fileName,
                             withExtension: "json")!
        self.items = try! MenuCaretaker.retrieve([Item].self, from: url)

    }
}
