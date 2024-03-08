import SwiftUI
import shared

struct ContentView: View {
	let greet = Greeting().greet()

	var body: some View {
        Form {
            Text(greet)
            Button("Fatal Error") {
                fatalError()
            }
            Button("Uncaught Exception") {
                let x: String? = nil
                print(x!)
            }
            Section {
                ForEach(0..<100) { i in
                    Text("\(i)")
                }
            }
        }
            
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
