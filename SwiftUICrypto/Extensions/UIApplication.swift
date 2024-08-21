//
//  UIApplication.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 22.08.2024.
//

import Foundation
import SwiftUI

extension UIApplication{
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
