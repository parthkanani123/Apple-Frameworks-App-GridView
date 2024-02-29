//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by parth kanani on 24/02/24.
//

import SwiftUI
import SafariServices // framework

// UIViewControllerRepresentable is confirm to view
struct SafariView: UIViewControllerRepresentable
{
    let url: URL
    
    // to confirm SafariView to UIViewControllerRepresentable we have add two below function
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController 
    {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>)
    {
    }
}
