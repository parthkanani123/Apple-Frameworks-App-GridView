//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by parth kanani on 24/02/24.
//

import SwiftUI

struct FrameworkTitleView: View
{
    let framework: Framework
    
    var body : some View
    {
        VStack
        {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6) // if our text is shrink in small grids it max shrink 60% of orginal size not less than that
                .foregroundColor(Color(.label)) // we change NavigationView to NavigationStack and all the text become blue link so we change color of it to white in dark mode and black in light mode
        }
        .padding()
    }
}


#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
