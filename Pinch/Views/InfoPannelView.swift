//
//  InfoPannelView.swift
//  Pinch
//
//  Created by Developer on 25/08/2022.
//

import SwiftUI

struct InfoPannelView: View {
    var scale:CGFloat
    var offset:CGSize
    @State private var isInfoPannelVisible = false
    
    var body: some View {
        HStack {
        // MARK: - HOTSPOT
            Image(systemName: "circle.circle")
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .frame(width: 30, height: 30)
                .onLongPressGesture(minimumDuration: 1,  perform: {
                    isInfoPannelVisible.toggle()
                })
            Spacer()
            
        // MARK: - INFO PANNEL
            HStack (spacing:2) {
              Image(systemName: "arrow.up.left.and.arrow.down.right")
                Text("\(scale)")
                Spacer()
                
                Image(systemName: "arrow.left.and.right")
                Text("\(offset.width)")
                
                Spacer()
                
                Image(systemName: "arrow.up.and.down")
                Text("\(offset.height)")
            }
            .font(.footnote)
            .padding(8)
            .background(.ultraThinMaterial)
            .cornerRadius(8)
            .frame( maxWidth: 420)
            .opacity(isInfoPannelVisible ? 1:0)
            
            Spacer()
        }
    }
}

struct InfoPannelView_Previews: PreviewProvider {
    static var previews: some View {
        InfoPannelView(scale: 1, offset: .zero)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
