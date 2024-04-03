//
//  FrameworkDetailViewModel.swift
//  Apple-Frameworks
//
//  Created by parth kanani on 01/04/24.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject
{
    var framework: Framework
    
    // if we use swiftUI Link we don't require this isShowingSafariView
    //    @Published var isShowingSafariView = false
    
    init(framework: Framework)
    {
        self.framework = framework
    }
}
