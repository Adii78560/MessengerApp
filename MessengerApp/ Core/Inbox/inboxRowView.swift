//
//  inboxRowView.swift
//  MessengerApp
//
//  Created by Aditya Rai on 01/09/24.
//

import SwiftUI

struct inboxRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12){
            Image(systemName: "person.circle.fill ")
                .resizable()
                .frame(width: 64, height: 64)
                .foregroundColor(Color(.systemGray4 ))
            VStack(alignment: .leading, spacing: 4){
                Text("Heath Ledger")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("some text message")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .frame(minWidth: UIScreen.main.bounds.width, idealWidth: -100, alignment: .leading)
            }
            HStack{
                Text("Yesterday")
                
                Image(systemName: "chevron.right")
            }
            .font(.footnote)
            .foregroundColor(.gray)
        }
//        .padding(.horizontal)
        .frame(height: 72)
    }
}

#Preview {
    inboxRowView()
}
