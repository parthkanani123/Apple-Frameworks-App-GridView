//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by parth kanani on 23/02/24.
//

import SwiftUI

struct FrameworkDetailView: View 
{
    // when you create new model use @StateObject, but when you injecting viewModel use @ObservedObject, here we are injecting viewModel so we have use @ObservedObject. here we declaring the viewModel that is of type FrameworkDetailViewModel, we don't give it a value because we are expecting the value to be passed in when we create FrameworkDetailView. relying on the data from parentView. FrameworkDetailView doesn't own this ObservedObject. it will destroy this ObservedObject every time view get's created and and destroyed. it doesn't care about it. it destroy every time because every time a new FrameworkDetailView gets created, it's getting passed in a brand new viewModel.
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View
    {
        VStack
        {
            Spacer()
            
            FrameworkTitleView(framework: viewModel.framework)
            
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            // Link is of SwiftUi we don't need
            Link(destination:
                    URL(string: viewModel.framework.urlString) ?? URL(string:"www.apple.com")!
                 ,
                 label: {
                AFButton(title: "Learn More")
                    .padding(.bottom)
            })
            
//            Button
//            {
//                viewModel.isShowingSafariView = true // Declarative :- we just chamging the source of truth of data, the UI reacts
//            } label: {
////                AFButton(title: "Learn More")
//                Label("Learn More", systemImage: "book.fill")
//            }
//            .buttonStyle(.bordered)
//            .controlSize(.large)
////            .foregroundColor(.blue)
////            .buttonBorderShape(.roundedRectangle(radius: 20))
//            .tint(.white)
            
        }
//        .sheet(isPresented: $viewModel.isShowingSafariView, content: {
//            SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!)
//        })
    }
}

#Preview {
    FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework))
//        .preferredColorScheme(.dark)
}
