//
//  LocalFileManager.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 9.08.2024.
//

import Foundation
import SwiftUI

class LocalFileManager{
    
    static let instance = LocalFileManager()
    private init(){ }
    
    func saveImage(image: UIImage){
     
        guard let data  = image.pngData(),
        let url = URL(string: "")
        else { return }
        
        do{
            try data.write(to: url)
        } catch let error{
            print(error)
        }
        
    }
}
