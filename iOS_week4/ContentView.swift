//
//  ContentView.swift
//  iOS_week4
//
//  Created by 仲輝 on 2021/11/16.
//

import SwiftUI

struct ContentView: View {
    
    let names = ["tortoise", "hare", "ant", "ladybug", "person"]

    let pictures = ["tortoise.fill", "hare.fill", "ant.fill", "ladybug.fill", "person.fill"]

    let phones = ["0912-345-678", "0298-765-432", "0410-101-010", "0730-502-733", "0510-203-040"]
    
    var body: some View{
        NavigationView{
            List(names.indices){index in
                NavigationLink {
                    DedailView(nousagi: "第200萬隻野兔")
                } label: {ContactRow(name: names[index],image: pictures[index],phone: phones[index])
                }
            }.navigationTitle("佩克島")
            
        }
    }
    /*
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink {
                    DedailView(nousagi: "第87萬隻野兔ぺこ！")
                } label:{
                    HStack{
                        Text("Go!")
                            .font(.title)
                        Image(systemName: "airplane.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30.0, height: 30.0)
                        
                    }
                }
                Text("Chanel follow")
                    .font(.title)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
                    .opacity(1.6)
                    .foregroundColor(Color.white)
                    //.navigationTitle("ぺこらんど")
                    //.navigationBarTitleDisplayMode(.inline)
            }
            .toolbar(content: {
                ToolbarItem(placement: .principal){
                    Text("ぺこらんど")
                        .font(.title)
                        .foregroundColor(Color.cyan)
                }
                ToolbarItem(placement: .navigationBarLeading){
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25.0, height: 25.0)
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: "leaf")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25.0, height: 25.0)
                }

            })
        }
    }
    */
}

struct DedailView: View {
    var nousagi: String
    var body: some View{
        Text(nousagi)
    }
}
struct ContactRow: View {
    var name: String
    var image : String
    var phone: String
    
    
    var body: some View{
        HStack{
            Image(systemName: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40.0, height: 40.0)
                .clipped()
                .cornerRadius(50)
            VStack(alignment: .leading){
                Text(name)
                Text(phone)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
