//
//  ContentView.swift
//  OscSound
//
//  Created by teo on 20/05/2020.
//  Copyright © 2020 teos. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let myUnit = ToneOutputUnit()
    
    @State var audiOn = false
    
    var body: some View {
        Text("Hello, World!")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .onTapGesture {
                if self.audiOn == true {
                    self.myUnit.stop()
                } else {
                    self.myUnit.setFrequency(freq: 500)
                    self.myUnit.setToneVolume(vol: 8000)
                    self.myUnit.enableSpeaker()
                    self.myUnit.setToneTime(t: 1)
                }
                
                self.audiOn.toggle()
                print("audio on is \(self.audiOn)")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
