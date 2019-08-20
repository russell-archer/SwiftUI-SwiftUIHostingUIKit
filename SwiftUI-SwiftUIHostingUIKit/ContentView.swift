//
//  ContentView.swift
//  SwiftUI-SwiftUIHostingUIKit
//
//  Created by Russell Archer on 19/08/2019.
//  Copyright © 2019 Russell Archer. All rights reserved.
//
// Tested and working with Xcode 11 Beta 6 on Mojave 10.14.6
//

import SwiftUI

/// Wrap a UITextView using UIViewRepresentable to create a TextView that's
/// directly useable in SwiftUI
struct TextView: UIViewRepresentable {
    let text: String

    func makeUIView(context: Context) -> UITextView {
        let tv = UITextView()
        tv.backgroundColor = UIColor.green
        tv.isEditable = true

        return tv
    }

    func updateUIView(_ textView: UITextView, context: Context) {
        textView.text = self.text
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            TextView(text: "Hello!")  // Use our TextView - simple!
            Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
