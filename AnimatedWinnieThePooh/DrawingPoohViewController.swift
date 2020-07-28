//
//  DrawingPoohViewController.swift
//  AnimatedWinnieThePooh
//
//  Created by tantsunsin on 2020/7/25.
//  Copyright © 2020 tantsunsin. All rights reserved.
//

import UIKit

class DrawingPoohViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        backgroundAnamation()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DrawingPooh()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var PoohView: UIView!
    
    @IBOutlet var backgroundView: UIView!
    
    func DrawingPooh(){
        let view = PoohView
        let basicDegree = CGFloat.pi/180
           
           //臉部輪廓
        let FacePath = UIBezierPath(arcCenter: CGPoint(x: 47, y: 31), radius: 29, startAngle: basicDegree*100, endAngle: basicDegree*350, clockwise: true)
        FacePath.addQuadCurve(to: CGPoint(x: 189, y: 26), controlPoint: CGPoint(x: 135, y: 0))
        FacePath.addArc(withCenter: CGPoint(x: 220, y: 30), radius: 29, startAngle: basicDegree*189, endAngle: basicDegree*80, clockwise: true)
        FacePath.addQuadCurve(to: CGPoint(x: 242, y: 143), controlPoint: CGPoint(x: 250, y: 104))
        FacePath.addCurve(to: CGPoint(x: 132, y: 265), controlPoint1: CGPoint(x: 280, y: 184), controlPoint2: CGPoint(x: 220, y: 264))
        FacePath.addCurve(to: CGPoint(x: 20, y: 138), controlPoint1: CGPoint(x: 44, y: 264), controlPoint2: CGPoint(x: -18, y: 184))
        FacePath.addQuadCurve(to: CGPoint(x: 40, y: 60), controlPoint: CGPoint(x: 15, y: 100))
           
           //眉毛、嘴巴
        let leftEyeBrowPath = UIBezierPath()
        leftEyeBrowPath.move(to:CGPoint(x: 56, y: 100))
        leftEyeBrowPath.addQuadCurve(to: CGPoint(x: 76, y: 91), controlPoint: CGPoint(x: 62, y: 89))
        let rightEyeBrowPath = UIBezierPath()
        rightEyeBrowPath.move(to:CGPoint(x: 208, y: 102))
        rightEyeBrowPath.addQuadCurve(to: CGPoint(x: 191, y: 93), controlPoint: CGPoint(x: 195, y: 89))
        let mouthPath = UIBezierPath()
        mouthPath.move(to:CGPoint(x: 105, y: 214))
        mouthPath.addQuadCurve(to: CGPoint(x: 157, y: 214), controlPoint: CGPoint(x: 131, y: 240))
           


           //臉部線條、著色
        let FaceLayer = CAShapeLayer()
        FaceLayer.path = FacePath.cgPath
        FaceLayer.fillColor = CGColor(srgbRed: 246/255, green: 211/255, blue: 85/255, alpha: 255)
        FaceLayer.strokeColor = CGColor(srgbRed: 56/255, green: 24/255, blue: 4/255, alpha: 255)
        FaceLayer.lineWidth = 3
           
        let leftEyeBrowLayer = CAShapeLayer()
        leftEyeBrowLayer.path = leftEyeBrowPath.cgPath
        leftEyeBrowLayer.fillColor = UIColor.clear.cgColor
        leftEyeBrowLayer.strokeColor = CGColor(srgbRed: 56/255, green: 24/255, blue: 4/255, alpha: 255)
        leftEyeBrowLayer.lineWidth = 3
           
        let rightEyeBrowLayer = CAShapeLayer()
        rightEyeBrowLayer.path = rightEyeBrowPath.cgPath
        rightEyeBrowLayer.fillColor = UIColor.clear.cgColor
        rightEyeBrowLayer.strokeColor = CGColor(srgbRed: 56/255, green: 24/255, blue: 4/255, alpha: 255)
        rightEyeBrowLayer.lineWidth = 3
           
        let mouthLayer = CAShapeLayer()
        mouthLayer.path = mouthPath.cgPath
        mouthLayer.fillColor = UIColor.clear.cgColor
        mouthLayer.strokeColor = CGColor(srgbRed: 56/255, green: 24/255, blue: 4/255, alpha: 255)
        mouthLayer.lineWidth = 3
           
           
           
           //眼睛、鼻子
        let leftEyePath = UIBezierPath(ovalIn: CGRect(x: 59, y: 134, width: 18, height: 23))
        let rightEyePath = UIBezierPath(ovalIn: CGRect(x: 185, y: 136, width: 17, height: 26))
        let nosePath = UIBezierPath()
        nosePath.move(to: CGPoint(x: 109, y: 167))
        nosePath.addQuadCurve(to: CGPoint(x: 153, y: 167), controlPoint: CGPoint(x: 130, y: 156))
        nosePath.addArc(withCenter: CGPoint(x: 131, y: 170), radius: 22, startAngle: basicDegree*0, endAngle: basicDegree*180, clockwise: true)
    
           
        leftEyePath.append(rightEyePath)
        leftEyePath.append(nosePath)
           
        let EyesNoseLayer = CAShapeLayer()
        EyesNoseLayer.path = leftEyePath.cgPath
           
           
           //身體
        let BodyPath = UIBezierPath()
        BodyPath.move(to: CGPoint(x: 52, y: 240))
        BodyPath.addQuadCurve(to: CGPoint(x: 49, y: 322), controlPoint: CGPoint(x: -26, y: 309))
        BodyPath.addQuadCurve(to: CGPoint(x: 62, y: 404), controlPoint: CGPoint(x: 37, y: 370))
        BodyPath.addCurve(to: CGPoint(x: 111, y: 382), controlPoint1: CGPoint(x: 80, y: 415), controlPoint2: CGPoint(x: 132, y: 400))
        BodyPath.addLine(to: CGPoint(x: 111, y: 365))
        BodyPath.addQuadCurve(to: CGPoint(x: 144, y: 365), controlPoint: CGPoint(x: 127, y: 371))
        BodyPath.addLine(to: CGPoint(x: 145, y: 382))
        BodyPath.addCurve(to: CGPoint(x: 192, y: 404), controlPoint1: CGPoint(x: 124, y: 400), controlPoint2: CGPoint(x: 176, y: 415))
        BodyPath.addQuadCurve(to: CGPoint(x: 209, y: 322), controlPoint: CGPoint(x:221, y: 370))
        BodyPath.addQuadCurve(to: CGPoint(x: 206, y: 240), controlPoint: CGPoint(x:284, y: 309))
        BodyPath.close()
           
           //身體線條、著色
           let BodyLayer = CAShapeLayer()
        BodyLayer.path = BodyPath.cgPath
        BodyLayer.fillColor = CGColor(srgbRed: 246/255, green: 211/255, blue: 85/255, alpha: 255)
        BodyLayer.strokeColor = CGColor(srgbRed: 56/255, green: 24/255, blue: 4/255, alpha: 255)
        BodyLayer.lineWidth = 3
           
           //衣服
        let clothPath = UIBezierPath()
        clothPath.move(to: CGPoint(x: 44, y: 235))
        clothPath.addQuadCurve(to: CGPoint(x: 14, y: 267), controlPoint: CGPoint(x: 29, y: 249))
        clothPath.addQuadCurve(to: CGPoint(x: 46, y: 300), controlPoint: CGPoint(x: 25, y: 287))
        clothPath.addLine(to: CGPoint(x: 50, y: 288))
          clothPath.addLine(to: CGPoint(x: 36, y: 328))
        clothPath.addQuadCurve(to: CGPoint(x: 220, y: 332), controlPoint: CGPoint(x: 135, y: 350))
        clothPath.addLine(to: CGPoint(x: 209, y: 292))
        clothPath.addLine(to: CGPoint(x: 211, y: 299))
        clothPath.addQuadCurve(to: CGPoint(x: 246, y: 270), controlPoint: CGPoint(x: 226, y: 300))
        clothPath.addQuadCurve(to: CGPoint(x: 210, y: 240), controlPoint: CGPoint(x: 229, y: 250))
        clothPath.close()
           
           //衣服線條、著色
        let clothLayer = CAShapeLayer()
        clothLayer.path = clothPath.cgPath
        clothLayer.fillColor = CGColor(srgbRed: 218/255, green: 37/255, blue: 28/255, alpha: 255)
        clothLayer.strokeColor = CGColor(srgbRed: 56/255, green: 24/255, blue: 4/255, alpha: 255)
        clothLayer.lineWidth = 3
        
           //最後疊起來
        FaceLayer.addSublayer(EyesNoseLayer)
        FaceLayer.addSublayer(mouthLayer)
        FaceLayer.addSublayer(rightEyeBrowLayer)
        FaceLayer.addSublayer(leftEyeBrowLayer)

        BodyLayer.addSublayer(clothLayer)
        BodyLayer.addSublayer(FaceLayer)
        
        // 動畫
        let SlowAnimation = CABasicAnimation(keyPath: "strokeEnd")
        SlowAnimation.fromValue = 0
        SlowAnimation.toValue = 1
        SlowAnimation.duration = 3
        SlowAnimation.repeatCount = .greatestFiniteMagnitude
        
        let fastAnimation = CABasicAnimation(keyPath: "strokeEnd")
        fastAnimation.fromValue = 0
        fastAnimation.toValue = 1
        fastAnimation.duration = 1
        fastAnimation.repeatCount = .greatestFiniteMagnitude
        
        BodyLayer.add(SlowAnimation, forKey: nil)
        FaceLayer.add(SlowAnimation, forKey: nil)
        clothLayer.add(SlowAnimation, forKey: nil)
        leftEyeBrowLayer.add(fastAnimation, forKey: nil)
        rightEyeBrowLayer.add(fastAnimation, forKey: nil)
        mouthLayer.add(fastAnimation, forKey: nil)


        //加入view
        view!.layer.addSublayer(BodyLayer)
        view!.backgroundColor = UIColor.clear
        



        
    }
    
    // View動畫
    func backgroundAnamation(){
        let backgroundAnimation = UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 3, delay: 0, options: [ .repeat, .autoreverse] , animations: {
            self.backgroundView.backgroundColor = UIColor.systemPink
        }, completion: nil)
        
        backgroundAnimation.startAnimation()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
