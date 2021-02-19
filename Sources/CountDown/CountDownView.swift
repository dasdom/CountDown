//  Created by dasdom on 06.02.21.
//  
//

import SwiftUI

struct CountDownView: View {
  
  let remainingSeconds: TimeInterval
  let totalSeconds: TimeInterval
  var formatter: DateComponentsFormatter = {
    let formatter = DateComponentsFormatter()
    formatter.allowedUnits = [.minute, .second]
    formatter.unitsStyle = .positional
    return formatter
  }()
  
  public init(remainingSeconds: TimeInterval,
              totalSeconds: TimeInterval) {
    self.remainingSeconds = remainingSeconds
    self.totalSeconds = totalSeconds
  }
  
  var body: some View {
    GeometryReader { geometry in
      let minWidthHeight = min(geometry.size.width,
                               geometry.size.height)
      ZStack {
        Circle()
          .trim(from: 0.0,
                to: CGFloat(remainingSeconds/totalSeconds))
          .rotation(Angle(degrees: -90))
          .stroke(style: StrokeStyle(
                    lineWidth: minWidthHeight / 20,
                    lineCap: .round))
          .padding()
        Text(formatter.string(from: remainingSeconds) ?? "-:-")
          .font(.system(size: minWidthHeight / 5,
                        weight: .bold,
                        design: .monospaced))
      }
    }
    .aspectRatio(1, contentMode: .fit)
  }
}

struct CountDownView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      CountDownView(remainingSeconds: 123, totalSeconds: 180)
        .previewDevice(
          PreviewDevice(
            rawValue: "iPhone 12 mini"))
      CountDownView(remainingSeconds: 123, totalSeconds: 180)
        .previewDevice(
          PreviewDevice(
            rawValue: "My Mac"))
      CountDownView(remainingSeconds: 123, totalSeconds: 180)
        .previewDevice(
          PreviewDevice(
            rawValue: "Apple Watch Series 6 - 40mm"))
    }
  }
}
