//
//  ControlImageView.swift
//  Pinch
//
//  Created by Developer on 25/08/2022.
//

import SwiftUI

struct ControlImageView: View {
    var icon:String
    var body: some View {
        Image(systemName: icon)
             .font(.system(size: 36))
    }
}

struct ControlImageView_Previews: PreviewProvider {
    static var previews: some View {
        ControlImageView(icon: "minus.magnifyingglass")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
