//
//  ContentView.swift
//  Dating Login
//
//  Created by Daval Cato on 5/5/20.
//  Copyright © 2020 Daval Cato. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    
    var body: some View{
        
        VStack{
            Image("logo")
            .resizable()
            .frame(width: 200, height: 180)
        }
    }
}


