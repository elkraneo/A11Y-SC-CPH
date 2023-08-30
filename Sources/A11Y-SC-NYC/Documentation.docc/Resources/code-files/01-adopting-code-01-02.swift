import SwiftUI

struct PresentationView: View {
  @Environment(OnboardingFeatureModel.self)
  private var model

  var body: some View {
    TabView(selection: $model.currentSlide) {
      // ...
    }
    .tabViewStyle(.page(indexDisplayMode: .never))
    .animation(.default, value: model.currentSlide)
    .overlay(alignment: .bottom) {
      VStack {
        // ...
      }
      .foregroundColor(.white)
      .padding(.horizontal)
#if os(visionOS)
      .padding(.bottom)
#elseif os(iOS)
      .padding(.bottom, 60)
#endif
    }
  }
}
