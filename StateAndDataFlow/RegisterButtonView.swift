//
//  RegisterButtonView.swift
//  StateAndDataFlow
//
//  Created by leogoba on 17.12.2022.
//

import SwiftUI

struct RegisterButtonView: View {
    @State private var name = ""
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        
        Button(action: registerUser) {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
        }
    }
    
    
    private func registerUser() {
        if !name.isEmpty {
            userManager.name = name
            userManager.isRegister.toggle()
        }
    }
}

struct RegisterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterButtonView()
    }
}
