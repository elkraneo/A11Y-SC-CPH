import SwiftUI

@main
struct HelloWurstApp: App {
  
  @State private 
  var model = AppCoreFeatureModel(recipes: Recipe.samples)
  
  @State private 
  var preferences = Preferences()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environment(model)
        .environment(preferences)
    }
  }
}
