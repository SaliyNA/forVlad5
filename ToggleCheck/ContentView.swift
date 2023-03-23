//
//  ContentView.swift
//  ToggleCheck
//
//  Created by admin on 22.03.2023.
//

import SwiftUI

//import BottomSheet
//import ResizableSheeet
    

struct ContentView: View {
    @State var isAlert = false
    @State private var vibrateOnRing = false
    @State var isSheet = false
//    @State private var bottomSheetPosition: BottomSheetPosition = .middle
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button("sheet"){
                isSheet = true
            }
            Toggle(isOn: $vibrateOnRing) {
                Text("Vibrate on Ring")
            }
        }.alert(isPresented: $isAlert){
            Alert(title: Text("Ошибка"),dismissButton: .default(Text("OK")))
        }
       
        .padding()
        .sheet(isPresented: $isSheet){
            Text("Content")
               // .presentationDetents([.medium, .large])
                    .presentationDetents([.height(200), .medium, .large])
//                    .presentationDragIndicator(.automatic)
        }
//        .bottomSheet(bottomSheetPosition: self.$bottomSheetPosition, content: {
//                            //The Numbers from 0 to 99 as Main Content in a Scroll View
//                            ScrollView {
//                                ForEach(0..<100) { index in
//                                    Text(String(index))
//                                }
//                                .frame(maxWidth: .infinity)
//                            }
//                            .padding(.top)
//                        })
    }
   
}

//extension View{
//    func halfSheet<SheetView: View>(showSheet: Binding<Bool>,
//      @ViewBuilder SheetView: @escaping()->SheetView)-> some View{
//
//        return self
//            .background(
//             HalfSheetHelper(sheetView: SheetView(), isSheet: showSheet)
//            )
//    }
//}
//
//
//
//struct HalfSheetHelper<SheetView: View>: UIViewControllerRepresentable{
//    var sheetView: SheetView
//    @Binding var isSheet: Bool
//    let controller =  UIViewController()
//
//    func makeUIViewController(context: Context) -> UIViewController {
//        controller.view.backgroundColor = .clear
//        return controller
//    }
//
//    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
//
//    }
//}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
