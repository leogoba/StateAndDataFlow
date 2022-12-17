//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.12.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
        
                
                switch name.count {
                case name.count ..< 3:
                    Text("\(name.count)")
                        .foregroundColor(.red)
                    RegisterButtonView()
                        .disabled(true)
                default:
                    Text("\(name.count)")
                        .foregroundColor(.blue)
                    RegisterButtonView()
                }
                
                //                if name.count < 3 {
                //                    Text("\(name.count)")
                //                        .foregroundColor(.red)
                //                } else {
                //                    Text("\(name.count)")
                //                        .foregroundColor(.blue)
                //                }
                //
                //                Spacer()
                //            }
                //
                //            if name.count < 3 {
                //                RegisterButtonView()
                //                .disabled(true)
                //
                //            } else {
                //                RegisterButtonView()
                //            }
            }
        }
    }
    
    struct RegisterView_Previews: PreviewProvider {
        static var previews: some View {
            RegisterView()
        }
    }
}
