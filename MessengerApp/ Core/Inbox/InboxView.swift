//
//  InboxView.swift
//  MessengerApp
//
//  Created by Aditya Rai on 01/09/24.
//
import SwiftUI

struct InboxView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                ActiveNowView()
                List{
                    ForEach(0 ... 10, id: \.self){message in
                        inboxRowView()
                    }
                }
                .listStyle(PlainListStyle())
                .frame(width: UIScreen.main.bounds.height, height: -120)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    HStack{
                        Image(systemName: "person.circle.fill")
                        Text("Chats")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        print("Show new Message View")
                    } label:{
                        Image(systemName: "square.and.pencil.circle.fill")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(.black, Color(.systemGray5))
                    }
                }
            }
        }
    }
}

#Preview {
    InboxView()
}
