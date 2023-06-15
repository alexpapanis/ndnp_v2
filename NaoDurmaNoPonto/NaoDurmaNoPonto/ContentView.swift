//
//  ContentView.swift
//  NaoDurmaNoPonto
//
//  Created by Alexandre Papanis on 14/06/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors:[]) var places: FetchedResults<Place>
    
    var body: some View {
        VStack {
            List(places) { place in
                Text(place.name ?? "")
            }
            
            Button("Add Favorite") {
                let place = Place(context: moc)
                place.id = UUID()
                place.name = "New Place"
                try? moc.save()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
