//
//  ContentView.swift
//  puddingDog
//
//  Created by 王昱淇 on 2021/8/8.
//

import SwiftUI
struct DrawView: UIViewRepresentable {
   
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        let puddingImage = UIImage(named: "布丁狗")
        let puddingImageView = UIImageView(image: puddingImage)
        puddingImageView.frame = CGRect(x: 0, y: 0, width: 240, height: 240)
        puddingImageView.alpha = 0.3
        view.addSubview(puddingImageView)
        
        
        
        // 帽子
        let hat = createHat()
        view.layer.addSublayer(hat)
        
        // 身體
        let body = createBody()
        view.layer.addSublayer(body)
        
        
        
        // 眼睛 * 4
        let eye = createEye()
        view.layer.addSublayer(eye)
        
        let eye1 = createEye()
        eye1.setAffineTransform(CGAffineTransform(translationX: 69, y: -30))
        view.layer.addSublayer(eye1)
        
        let eye2 = createEye()
        eye2.setAffineTransform(CGAffineTransform(translationX: 74/0.75, y: 54/0.75).scaledBy(x: 0.75, y: 0.75))
        view.layer.addSublayer(eye2)
        
        let eye3 = createEye()
        eye3.setAffineTransform(CGAffineTransform(translationX: 47/0.75, y: 54/0.75).scaledBy(x: 0.75, y: 0.75))
        view.layer.addSublayer(eye3)
        
        
        return view
    }
    
    
    
    func createBody() -> CALayer {
        let bodyCALayer = CALayer()
        
        let brownPath = UIBezierPath()
        
        brownPath.move(to: CGPoint(x:58 , y:45 ))
        brownPath.addLine(to: CGPoint(x: 46, y: 68))
        brownPath.addLine(to: CGPoint(x: 36, y: 80))
        brownPath.addLine(to: CGPoint(x: 23, y: 98))
        brownPath.addLine(to: CGPoint(x: 16, y: 105))
        brownPath.addLine(to: CGPoint(x: 15, y: 107))
        brownPath.addQuadCurve(to: CGPoint(x: 58, y: 135), controlPoint: CGPoint(x: 8, y: 158))
        
        brownPath.move(to: CGPoint(x: 59, y: 84))
        brownPath.addQuadCurve(to: CGPoint(x: 62, y: 139), controlPoint: CGPoint(x: 51, y: 109))
        brownPath.addQuadCurve(to: CGPoint(x: 87, y: 219), controlPoint: CGPoint(x: 49, y: 183))
        brownPath.addQuadCurve(to: CGPoint(x: 119, y: 219), controlPoint: CGPoint(x: 103, y: 250))
       // brownPath.addLine(to: CGPoint(x: 157, y: 219))
        
        let brownLayer = CAShapeLayer()
        brownLayer.path = brownPath.cgPath
        brownLayer.lineWidth = 5
        brownLayer.strokeColor = CGColor(red: 118/255, green: 51/255, blue: 46/255, alpha: 1)
        brownLayer.fillColor = CGColor(red: 255/255, green: 249/255, blue: 176/255, alpha: 1)
        bodyCALayer.addSublayer(brownLayer)
        
        return bodyCALayer
    }
    
    
    
    func createHat() -> CALayer {
        let brownCALayer = CALayer()
        
        let brownPath = UIBezierPath()
        brownPath.move(to: CGPoint(x: 82, y: 7))
        brownPath.addLine(to: CGPoint(x: 86, y: 10))
        
        brownPath.move(to: CGPoint(x: 86, y: 10))
        brownPath.addQuadCurve(to: CGPoint(x: 91, y: 44), controlPoint: CGPoint(x: 17 , y: 56))
        brownPath.addLine(to: CGPoint(x: 104, y: 41))
        brownPath.addLine(to: CGPoint(x: 117, y: 34))
        brownPath.addQuadCurve(to: CGPoint(x: 86, y: 10), controlPoint: CGPoint(x: 173, y: -9))
        
        brownPath.addLine(to: CGPoint(x: 98, y: 9))
        brownPath.addLine(to: CGPoint(x: 85, y: 2))
        brownPath.addLine(to: CGPoint(x: 79, y: 7))
        brownPath.close()
        
       
        
        let brownLayer = CAShapeLayer()
        brownLayer.path = brownPath.cgPath
        brownLayer.lineWidth = 5
        brownLayer.strokeColor = CGColor(red: 118/255, green: 51/255, blue: 46/255, alpha: 1)
        brownLayer.fillColor = CGColor(red: 118/255, green: 51/255, blue: 46/255, alpha: 1)
        brownCALayer.addSublayer(brownLayer)
        
        return brownCALayer
        
    }
    
    
    func createEye() -> CALayer {
        let eyeCALayer = CALayer()
        
        // 眼睛
        let aDegree = CGFloat.pi / 180
        let eyePath = UIBezierPath()
        eyePath.addArc(withCenter: CGPoint(x: 82, y: 83), radius: 4, startAngle: aDegree * 0, endAngle: aDegree * 360, clockwise: true)
        
        let eyeLayer = CAShapeLayer()
        eyeLayer.path = eyePath.cgPath
        eyeLayer.fillColor = CGColor(red: 118/255, green: 51/255, blue: 46/255, alpha: 1)
        eyeCALayer.addSublayer(eyeLayer)
        
        return eyeCALayer
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
