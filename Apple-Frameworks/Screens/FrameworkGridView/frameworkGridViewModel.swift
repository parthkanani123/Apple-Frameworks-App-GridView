//
//  frameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by parth kanani on 23/02/24.
//

import SwiftUI

// everything swiftUI has been struct so far but now we want to hold state so this is going to be class

// if you are not going to subclass make it final
final class FrameworkGridViewModel  // you want to confirm to ObservableObject, this way it can broadcast changes,
{
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),
    ]
}
