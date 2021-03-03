//
//  ViewController.swift
//  IconRain
//
//  Created by huang weiqiang on 2021/3/3.
//  Copyright © 2021 huangweiqiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var resultView: UIView! //抢红包结果
    /// 背景按钮
    var bkgBtn: UIButton!
    var redpacketLayer: CAEmitterLayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //背景按钮 蒙层
        self.view.backgroundColor = UIColor.white
        bkgBtn = UIButton.init(type: UIButton.ButtonType.custom)
        bkgBtn.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        bkgBtn.backgroundColor =  UIColor.init(red: 0, green: 0, blue: 0, alpha: 0)
        self.view .addSubview(bkgBtn)
        self.redpacketRain()
        
    }
    
    func redpacketRain(){
        self.redpacketLayer = CAEmitterLayer.init()
        self.bkgBtn.layer.addSublayer(self.redpacketLayer)
        
        // 1. 设置CAEmitterLayer
        self.redpacketLayer.emitterShape = CAEmitterLayerEmitterShape.line  // 发射源的形状 是枚举类型
        self.redpacketLayer.emitterMode = CAEmitterLayerEmitterMode.surface // 发射模式 枚举类型
        self.redpacketLayer.emitterSize = self.bkgBtn.frame.size // 发射源的size 决定了发射源的大小
        self.redpacketLayer.emitterPosition = CGPoint.init(x: self.view.frame.size.width/2, y: -80) // 发射源的位置
        self.redpacketLayer.birthRate = 5.0 // 每秒产生的粒子数量的系数
        self.redpacketLayer.seed = 5
        
        // 2. 配置cell
        let snowCell = CAEmitterCell.init()
        snowCell.contents = UIImage.init(named: "red_a")?.cgImage
        snowCell.birthRate = 0.8 // 每秒产生的粒子数量
        snowCell.lifetime = 14  //粒子的生命周期
        snowCell.velocity = 10  // 粒子的速度
        snowCell.yAcceleration = 180 // 粒子再y方向的加速的
        snowCell.scale = 0.4;
        snowCell.scaleRange = 0.2;  // 粒子的缩放比例
        snowCell.spinRange = 2; //旋转范围
        
        ///缩放
        let snowCell1 = CAEmitterCell.init();
        snowCell1.contents = UIImage.init(named: "red_b")?.cgImage  // 粒子的内容 是CGImageRef类型的
        snowCell1.birthRate = 0.1;  // 每秒产生的粒子数量
        snowCell1.lifetime = 15;  // 粒子的生命周期
        snowCell1.velocity = 12;  // 粒子的速度
        snowCell1.yAcceleration = 100; // 粒子再y方向的加速的
        snowCell1.scale = 0.4;
        snowCell1.scaleRange = 0.2;  // 粒子的缩放比例
        
        let snowCell2 = CAEmitterCell.init();
        snowCell2.contents = UIImage.init(named: "red_b")?.cgImage  // 粒子的内容 是CGImageRef类型的
        snowCell2.birthRate = 0.05;  // 每秒产生的粒子数量
        snowCell2.lifetime = 10;  // 粒子的生命周期
        snowCell2.velocity = 8;  // 粒子的速度
        snowCell2.yAcceleration = 460; // 粒子再y方向的加速的
        snowCell2.scale = 0.4;
        snowCell2.scaleRange = 0.2;  // 粒子的缩放比例
        snowCell2.spinRange = 2; //旋转范围
        snowCell2.xAcceleration = -100;
        
        let snowCell3 = CAEmitterCell.init();
        snowCell3.contents = UIImage.init(named: "red_b")?.cgImage  // 粒子的内容 是CGImageRef类型的
        snowCell3.birthRate = 0.08;  // 每秒产生的粒子数量
        snowCell3.lifetime = 5;  // 粒子的生命周期
        snowCell3.velocity = 8;  // 粒子的速度
        snowCell3.yAcceleration = 360; // 粒子再y方向的加速的
        snowCell3.scale = 0.4;
        snowCell3.scaleRange = 0.2;  // 粒子的缩放比例
        snowCell3.spinRange = 6; //旋转范围
        snowCell3.xAcceleration = 100
        
        let snowCell4 = CAEmitterCell.init();
        snowCell4.contents = UIImage.init(named: "red_b")?.cgImage  // 粒子的内容 是CGImageRef类型的
        snowCell4.birthRate = 0.1;  // 每秒产生的粒子数量
        snowCell4.lifetime = 5;  // 粒子的生命周期
        snowCell4.velocity = 8;  // 粒子的速度
        snowCell4.yAcceleration = 360; // 粒子再y方向的加速的
        snowCell4.scale = 0.8;
        snowCell4.scaleRange = 0.2;  // 粒子的缩放比例
        snowCell4.spinRange = 2; //旋转范围
        snowCell4.xAcceleration = -70;
        
        self.redpacketLayer.emitterCells = [snowCell, snowCell1, snowCell2, snowCell3, snowCell4];  // 粒子添加到CAEmitterLayer上
    }
}

