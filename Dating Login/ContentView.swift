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
        
        ZStack{
            
            LinearGradient(gradient: .init(colors: [Color("Color"),Color("Color1"),Color("Color2")]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            Home()
        }
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


