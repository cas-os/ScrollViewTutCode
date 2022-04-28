//
//  ContentView.swift
//  ScrollViewTutCode
//
//  Created by HAL-9001 on 28/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack {
                            ForEach(0..<15) { index in
                                RoundedRectangle(cornerRadius: 7)
                                    .fill(Color.white)
                                    .frame(width: 150, height: 100)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                            
                        }

                    })
                                        //Text("Rectangle :: \(index)")
                    
                }
                
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
