//
//  ContentView.swift
//  MyOkashi
//
//  Created by furuta on 2024/11/24.
//

import SwiftUI

struct ContentView: View {
    var okashiDataList = OkashiData()
    @State var inputText = ""
    
    var body: some View {
        VStack {
            TextField("キーワード", text: $inputText, prompt: Text("キーワードを入力してください"))
                .onSubmit {
                    okashiDataList.searchOkashi(keyword: inputText)
                }
                .submitLabel(.search)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
