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
        
      
        let puddingDogArt = puddingDog()
        puddingDogArt.setAffineTransform(CGAffineTransform(rotationAngle: .pi / 180 * 45).translatedBy(x: 30, y: -10))
        view.layer.addSublayer(puddingDogArt)
      
        let puddingDogArt1 = puddingDog()
        puddingDogArt1.setAffineTransform(CGAffineTransform(translationX: -50, y: 180).scaledBy(x: 2, y: 2))
        view.layer.addSublayer(puddingDogArt1)
        
        let puddingDogArt2 = puddingDog()
        puddingDogArt2.setAffineTransform(CGAffineTransform(translationX: 250, y: 520))
        view.layer.addSublayer(puddingDogArt2)
        
        let puddingDogArt3 = puddingDog()
        puddingDogArt3.setAffineTransform(CGAffineTransform(rotationAngle: .pi / 180 * 45).translatedBy(x: 430, y: 350))
        view.layer.addSublayer(puddingDogArt3)
        
        return view
    }
    
    
    
    func puddingDog() -> CALayer {
        let puddingDogCALayer = CALayer()
        
        // 身體
        let body = createBody()
        puddingDogCALayer.addSublayer(body)
        
        // 帽子
        let hat = createHat()
        puddingDogCALayer.addSublayer(hat)
        
        // 貓咪
        let cat = createCat()
        puddingDogCALayer.addSublayer(cat)
        
        let catHand = createCatHand()
        puddingDogCALayer.addSublayer(catHand)
        
        // 手
        let hand = createHand()
        puddingDogCALayer.addSublayer(hand)
        
        // 嘴
        let mouth = createMouth()
        puddingDogCALayer.addSublayer(mouth)
        
        // 鼻子
        let nose = createNose()
        puddingDogCALayer.addSublayer(nose)
        
        // 眼睛 * 4
        let eye = createEye()
        puddingDogCALayer.addSublayer(eye)
        
        let eye1 = createEye()
        eye1.setAffineTransform(CGAffineTransform(translationX: 69, y: -30))
        puddingDogCALayer.addSublayer(eye1)
        
        let eye2 = createEye()
        eye2.setAffineTransform(CGAffineTransform(translationX: 74/0.75, y: 54/0.75).scaledBy(x: 0.75, y: 0.75))
       puddingDogCALayer.addSublayer(eye2)
        
        let eye3 = createEye()
        eye3.setAffineTransform(CGAffineTransform(translationX: 47/0.75, y: 54/0.75).scaledBy(x: 0.75, y: 0.75))
      puddingDogCALayer.addSublayer(eye3)
        
        return puddingDogCALayer
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
        brownPath.addLine(to: CGPoint(x: 157, y: 219))
        brownPath.addQuadCurve(to: CGPoint(x: 189, y: 218), controlPoint: CGPoint(x: 172, y: 250))
        brownPath.addQuadCurve(to: CGPoint(x: 205, y: 83), controlPoint: CGPoint(x: 257, y: 154))
        brownPath.addQuadCurve(to: CGPoint(x: 197, y: 62), controlPoint: CGPoint(x: 203, y: 71))
        
        brownPath.move(to: CGPoint(x: 166, y: 46))
        brownPath.addQuadCurve(to: CGPoint(x: 210, y: 62), controlPoint: CGPoint(x: 191, y: 63))
        brownPath.addQuadCurve(to: CGPoint(x: 211, y: 23), controlPoint: CGPoint(x: 240, y: 50))
        brownPath.addCurve(to: CGPoint(x: 138, y: 12), controlPoint1: CGPoint(x: 205, y: 10), controlPoint2: CGPoint(x: 155, y: 18))
        brownPath.addQuadCurve(to: CGPoint(x: 58, y: 45), controlPoint: CGPoint(x: 107, y: 50))
        
        let yellowPath = UIBezierPath()
        yellowPath.move(to: CGPoint(x: 57, y: 45))
        yellowPath.addLine(to: CGPoint(x: 166, y: 46))
        yellowPath.addLine(to: CGPoint(x: 203, y: 71))
        yellowPath.addLine(to: CGPoint(x: 58, y: 84))
        
        let yellowLayer = CAShapeLayer()
        yellowLayer.path = yellowPath.cgPath
        yellowLayer.fillColor = CGColor(red: 255/255, green: 249/255, blue: 176/255, alpha: 1)
        bodyCALayer.addSublayer(yellowLayer)
        
        
        let brownLayer = CAShapeLayer()
        brownLayer.path = brownPath.cgPath
        brownLayer.lineWidth = 4.5
        brownLayer.strokeColor = CGColor(red: 118/255, green: 51/255, blue: 46/255, alpha: 1)
        brownLayer.fillColor = CGColor(red: 255/255, green: 249/255, blue: 176/255, alpha: 1)
        bodyCALayer.addSublayer(brownLayer)
        
        return bodyCALayer
    }
    
    func createNose() -> CALayer {
        
        //鼻子
        let noseCALayer = CALayer()
        
        let nosePath = UIBezierPath()
        nosePath.move(to: CGPoint(x: 114, y: 71))
        nosePath.addLine(to: CGPoint(x: 124, y: 66))
        nosePath.addQuadCurve(to: CGPoint(x: 121, y: 78), controlPoint: CGPoint(x: 129, y: 73))
        nosePath.addQuadCurve(to: CGPoint(x: 114, y: 71), controlPoint: CGPoint(x: 117, y: 76))
        
        let noseLayer = CAShapeLayer()
        noseLayer.path = nosePath.cgPath
        noseLayer.fillColor = CGColor(red: 118/255, green: 51/255, blue: 46/255, alpha: 1)
        noseCALayer.addSublayer(noseLayer)
        
        
        
        return noseCALayer
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
    
    
    func createMouth() -> CALayer {
        let mouthCALayer = CALayer()
        
        // 嘴巴
        let mouthPath = UIBezierPath()
        mouthPath.move(to: CGPoint(x: 122, y: 76))
        mouthPath.addLine(to: CGPoint(x: 125, y: 82))
        mouthPath.addQuadCurve(to: CGPoint(x: 122, y: 90), controlPoint: CGPoint(x: 126, y: 87))
        mouthPath.addLine(to: CGPoint(x: 117, y: 93))
        mouthPath.addQuadCurve(to: CGPoint(x: 112, y: 85), controlPoint: CGPoint(x: 107, y: 96))
        
        mouthPath.move(to: CGPoint(x: 122, y: 76))
        mouthPath.addQuadCurve(to: CGPoint(x: 140, y: 83), controlPoint: CGPoint(x: 133, y: 91))
        mouthPath.addQuadCurve(to: CGPoint(x: 136, y: 74), controlPoint: CGPoint(x: 147, y: 74))
        
        mouthPath.move(to: CGPoint(x: 135, y: 138))
        mouthPath.addQuadCurve(to: CGPoint(x: 144, y: 139), controlPoint: CGPoint(x: 138, y: 150))
        mouthPath.addQuadCurve(to: CGPoint(x: 153, y: 137), controlPoint: CGPoint(x: 150, y: 148))
        
        
        
        // 貓邊框
        let catPath = UIBezierPath()
        catPath.move(to: CGPoint(x: 118, y: 118))
        catPath.addQuadCurve(to: CGPoint(x: 111, y: 142), controlPoint: CGPoint(x: 108, y: 125))
        
        catPath.addQuadCurve(to: CGPoint(x: 126, y: 152), controlPoint: CGPoint(x: 121, y: 146))
        
        catPath.addQuadCurve(to: CGPoint(x: 124, y: 161), controlPoint: CGPoint(x: 145, y: 167))
        catPath.addQuadCurve(to: CGPoint(x: 116, y: 169), controlPoint: CGPoint(x: 115, y: 166))
        
        catPath.addQuadCurve(to: CGPoint(x: 125, y: 181), controlPoint: CGPoint(x: 116, y: 174))
        
        catPath.addQuadCurve(to: CGPoint(x: 137, y: 180), controlPoint: CGPoint(x: 129, y: 195))
        catPath.addLine(to: CGPoint(x: 146, y: 181))
        catPath.addQuadCurve(to: CGPoint(x: 160, y: 181), controlPoint: CGPoint(x: 153, y: 195))
        catPath.addQuadCurve(to: CGPoint(x: 168, y: 164), controlPoint: CGPoint(x: 169, y: 172))
        catPath.addLine(to: CGPoint(x: 163, y: 163))
        catPath.addQuadCurve(to: CGPoint(x: 160, y: 154), controlPoint: CGPoint(x: 133, y: 167))
        catPath.addQuadCurve(to: CGPoint(x: 173, y: 138), controlPoint: CGPoint(x: 162, y: 140))
        catPath.addQuadCurve(to: CGPoint(x: 168, y: 118), controlPoint: CGPoint(x: 173, y: 124))
        catPath.addQuadCurve(to: CGPoint(x: 150, y: 110), controlPoint: CGPoint(x: 166, y: 93))
        catPath.addQuadCurve(to: CGPoint(x: 133, y: 110), controlPoint: CGPoint(x: 141, y: 107))
        
        catPath.addQuadCurve(to: CGPoint(x: 118, y: 119), controlPoint: CGPoint(x: 116, y: 97))
        
  
        
        let catLayer = CAShapeLayer()
        catLayer.path = catPath.cgPath
        catLayer.lineWidth = 4
        catLayer.fillColor = UIColor.clear.cgColor
        catLayer.strokeColor = CGColor(red: 118/255, green: 51/255, blue: 46/255, alpha: 1)
        mouthCALayer.addSublayer(catLayer)
        
        

        let mouthLayer = CAShapeLayer()
        mouthLayer.path = mouthPath.cgPath
        mouthLayer.lineWidth = 3
        mouthLayer.fillColor = UIColor.clear.cgColor
        mouthLayer.strokeColor = CGColor(red: 118/255, green: 51/255, blue: 46/255, alpha: 1)
        mouthCALayer.addSublayer(mouthLayer)
        
        return mouthCALayer
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
    
    
    func createHand() -> CALayer {
        
        // 布丁狗手
        let handCALayer = CALayer()
        
        let handPath = UIBezierPath()
        handPath.move(to: CGPoint(x: 93, y: 136))
        handPath.addQuadCurve(to: CGPoint(x: 118, y: 145), controlPoint: CGPoint(x: 103, y: 143))
        handPath.addQuadCurve(to: CGPoint(x: 119, y: 162), controlPoint: CGPoint(x: 132, y: 155))
        handPath.addQuadCurve(to: CGPoint(x: 84, y: 160), controlPoint: CGPoint(x: 99, y: 170))
        
        handPath.move(to: CGPoint(x: 186, y: 124))
        handPath.addQuadCurve(to: CGPoint(x: 167, y: 141), controlPoint: CGPoint(x: 177, y: 137))
        handPath.addQuadCurve(to: CGPoint(x: 174, y: 162), controlPoint: CGPoint(x: 155, y: 158))
        handPath.addQuadCurve(to: CGPoint(x: 202, y: 147), controlPoint: CGPoint(x: 183, y: 162))
        
        
        let handLayer = CAShapeLayer()
        handLayer.path = handPath.cgPath
        handLayer.lineWidth = 4.5
        handLayer.strokeColor = CGColor(red: 118/255, green: 51/255, blue: 46/255, alpha: 1)
        handLayer.fillColor = UIColor.clear.cgColor
        handCALayer.addSublayer(handLayer)
        
        return handCALayer
        
    }
    
    
    func createCat() -> CALayer {
 
        // 白色小貓
        let catCALayer = CALayer()
        
        let catPath = UIBezierPath()
        catPath.move(to: CGPoint(x: 118, y: 118))
        catPath.addQuadCurve(to: CGPoint(x: 114, y: 142), controlPoint: CGPoint(x: 110, y: 121))
        catPath.addLine(to: CGPoint(x: 120, y: 145))
        catPath.addLine(to: CGPoint(x: 122, y: 148))
        catPath.addLine(to: CGPoint(x: 127, y: 154))
        catPath.addLine(to: CGPoint(x: 137, y: 158))
        catPath.addLine(to: CGPoint(x: 134, y: 166))
        catPath.addLine(to: CGPoint(x: 123, y: 163))
        
        catPath.addQuadCurve(to: CGPoint(x: 113, y: 167), controlPoint: CGPoint(x: 121, y: 166))
        
   
        
        catPath.addQuadCurve(to: CGPoint(x: 125, y: 181), controlPoint: CGPoint(x: 116, y: 174))
        
        catPath.addQuadCurve(to: CGPoint(x: 137, y: 180), controlPoint: CGPoint(x: 129, y: 195))
        catPath.addLine(to: CGPoint(x: 146, y: 181))
        catPath.addQuadCurve(to: CGPoint(x: 160, y: 181), controlPoint: CGPoint(x: 153, y: 195))
        catPath.addQuadCurve(to: CGPoint(x: 168, y: 164), controlPoint: CGPoint(x: 169, y: 172))
        catPath.addLine(to: CGPoint(x: 163, y: 163))
        catPath.addQuadCurve(to: CGPoint(x: 160, y: 154), controlPoint: CGPoint(x: 133, y: 167))
        catPath.addQuadCurve(to: CGPoint(x: 173, y: 138), controlPoint: CGPoint(x: 162, y: 140))
        catPath.addQuadCurve(to: CGPoint(x: 167, y: 118), controlPoint: CGPoint(x: 173, y: 124))
        catPath.addQuadCurve(to: CGPoint(x: 153, y: 112), controlPoint: CGPoint(x: 166, y: 94))
        catPath.addQuadCurve(to: CGPoint(x: 131, y: 110), controlPoint: CGPoint(x: 141, y: 114))
        
        catPath.addQuadCurve(to: CGPoint(x: 118, y: 118), controlPoint: CGPoint(x: 116, y: 97))
        
        
        let catLayer = CAShapeLayer()
        catLayer.path = catPath.cgPath
        
        catLayer.fillColor = UIColor.white.cgColor
    
        catCALayer.addSublayer(catLayer)
        
        return catCALayer
        
    }
    
    
    func createCatHand() -> CALayer {
        
        // 貓貓手
        let catHandCALayer = CALayer()
        
        let catHandPath = UIBezierPath()
        catHandPath.move(to: CGPoint(x: 127, y: 154))
        catHandPath.addLine(to: CGPoint(x: 131, y: 156))
        catHandPath.addQuadCurve(to: CGPoint(x: 129, y: 164), controlPoint: CGPoint(x: 142, y: 162))
        catHandPath.addLine(to: CGPoint(x: 121, y: 163))
        catHandPath.close()
        
        catHandPath.move(to: CGPoint(x: 160, y: 153))
        catHandPath.addQuadCurve(to: CGPoint(x: 158, y: 166), controlPoint: CGPoint(x: 138, y: 166))
        catHandPath.addLine(to: CGPoint(x: 164, y: 161))
        catHandPath.close()
        
        catHandPath.move(to: CGPoint(x: 150, y: 110))
        catHandPath.addLine(to: CGPoint(x: 138, y: 110))
        catHandPath.addQuadCurve(to: CGPoint(x: 170, y: 123), controlPoint: CGPoint(x: 153, y: 126))
        catHandPath.addLine(to: CGPoint(x: 167, y: 117))
        catHandPath.addQuadCurve(to: CGPoint(x: 152, y: 111), controlPoint: CGPoint(x: 164, y: 97))
        
        
        let catHandLayer = CAShapeLayer()
        catHandLayer.path = catHandPath.cgPath
        catHandLayer.lineWidth = 5
        catHandLayer.fillColor = CGColor(red: 179/255, green: 134/255, blue: 109/255, alpha: 1)
        catHandCALayer.addSublayer(catHandLayer)
        
        return catHandCALayer
        
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
