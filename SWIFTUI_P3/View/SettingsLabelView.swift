//
//  SettingsLabelView.swift
//  SWIFTUI_P3
//
//  Created by Aybatu Kerküklüoğlu on 16/12/2021.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelTitle: String
    var labelImage: String
    var body: some View {
        HStack {
            Text(labelTitle.uppercased())
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelTitle: "fruits", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
    }
}
