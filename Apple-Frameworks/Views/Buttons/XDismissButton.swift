//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by parth kanani on 24/02/24.
//

import SwiftUI

struct XDismissButton: View 
{
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View
    {
        HStack
        {
            Spacer()
            
            Button
            {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label)) // label is black in light mode and white in dark mode
                    .imageScale(.large)
                    .frame(width: 44, height: 44) // we apply frame here to make touch target big so if you miss X still you can get it.
            }
        }
        .padding()
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
