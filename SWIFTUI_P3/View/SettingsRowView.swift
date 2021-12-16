//
//  SettingsRowView.swift
//  SWIFTUI_P3
//
//  Created by Aybatu Kerküklüoğlu on 16/12/2021.
//

import SwiftUI

struct SettingsRowView: View {
    var content: String?
    var link: String?
    var linkDestination: String?
    var name: String
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if let contentSafe = content {
                    Text(contentSafe)
                }
                if let linkSafe = link, let linkDestSafe = linkDestination {
                    HStack(spacing: 5) {
                        if let urlString = URL(string: "https://\(linkDestSafe)") {
                            Link(linkSafe, destination: urlString)
                        }
                        Image(systemName: "arrow.up.right.square")
                            .foregroundColor(.pink)
                    }
                }
            }//hstack
        }//vstack
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "iOS Developer")
            .previewLayout(.sizeThatFits)
    }
}
