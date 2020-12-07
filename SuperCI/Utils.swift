//
//  Utils.swift
//  CITest
//
//  Created by Ацкий Станислав on 06.12.2020.
//

import UIKit

extension UIViewController {
    func parseConfig() -> Config? {
        let url = Bundle.main.url(forResource: "Info", withExtension: "plist")!
        do {
            let data = try Data(contentsOf: url)
            let decoder = PropertyListDecoder()
            return try decoder.decode(Config.self, from: data)
        } catch {
            print(error.localizedDescription)
        }
        return nil
    }
}


