//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by parth kanani on 23/02/24.
//

import SwiftUI

struct FrameworkGridView: View 
{
    // FrameworkGridView is destoyed and recreated all the time but viewModel is going to be held of elsewhere and persist & maintenance data bcz of @StateObject, it's going to stay alive while FrameworkGridView gets destoyed and recreated all the time
    var viewModel = FrameworkGridViewModel()
    
    var body: some View
    {
        NavigationStack
        {
            ScrollView
            {
                LazyVGrid(columns: viewModel.columns)
                {
                    ForEach(MockData.frameworks) { framework in
                        
                        // whatever framework we tap, we are going to navigate to a FrameworkDetailView with that framework
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self){ framework in
                FrameworkDetailView(framework: framework)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

