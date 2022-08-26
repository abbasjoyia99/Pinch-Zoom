//
//  PageModel.swift
//  Pinch
//
//  Created by Developer on 26/08/2022.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumnailName: String {
        return "thumb-" + imageName
    }
}
