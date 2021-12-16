//
//  SettingsView.swift
//  SWIFTUI_P3
//
//  Created by Aybatu Kerküklüoğlu on 16/12/2021.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    //section1
                    GroupBox {
                        HStack(spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                            .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many natrients, including potassium, diatery fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    } label: {
                        SettingsLabelView(labelTitle: "Fruits", labelImage: "info.circle")
                    }//groupbox
                    
                    //section 2
                    GroupBox {
                        Divider().padding(.vertical, 4)
                            Text("If you wish you can reset the application by toggle the switch in this box. This way it will restart onboarding proccess and you will see welcome screen again.")
                                .padding(.vertical, 8)
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            
                            Toggle(isOn: $isOnboarding) {
                                Text("restart".uppercased())
                            }
                            .padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                            )
                        
                        
                    } label: {
                        SettingsLabelView(labelTitle: "Customization", labelImage: "paintbrush")
                        
                    }

                    
                    // section 3
                    GroupBox {
                        SettingsRowView(content: "AYBATU KERKUKLUOGLU", name: "iOS Developer")
                        SettingsRowView(content: "iOS 15.2", name: "Compability")
                        SettingsRowView(content: nil, link: "Linkedin", linkDestination: "www.linkedin.com/in/aybatukerk%C3%BCkl%C3%BCo%C4%9Flu/", name: "Contact")
                        SettingsRowView(content: nil, link: "GitHub", linkDestination: "github.com/aybatu?tab=repositories", name: "Applications")
                        SettingsRowView(content: nil, link: "Instagram", linkDestination: "www.instagram.com/butbatu/", name: "Social Media")
                        SettingsRowView(content: "3.0", name: "SwiftUI")
                    } label: {
                        SettingsLabelView(labelTitle: "Application", labelImage: "apps.iphone")
                    }

                    
                    
                    
                }//vstack
             
            }//scrollview
            .navigationBarTitle(Text("Settings"), displayMode: .large)
            .navigationBarItems(
            trailing:
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                }))
            .padding()
        }//navigationview
        
            
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.light)
.previewInterfaceOrientation(.portrait)
    }
}
