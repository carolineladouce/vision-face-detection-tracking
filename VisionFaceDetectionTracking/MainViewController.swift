//
//  ViewController.swift
//  VisionFaceDetectionTracking
//
//  Created by Caroline LaDouce on 1/9/22.
//

import UIKit
import AVFoundation

class MainViewController: UIViewController {
    
    private let captureSession = AVCaptureSession()
    
    private func addCaeraInput() {
        guard let device = AVCaptureDevice.DiscoverySession(deviceTypes: [.builtInWideAngleCamera, .builtInDualCamera, .builtInTrueDepthCamera], mediaType: .video, position: .front).devices.first else {
            fatalError("No back camera device found")
        }
        
        let cameraInput = try! AVCaptureDeviceInput(device: device)
        self.captureSession.addInput(cameraInput)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
    }


}

