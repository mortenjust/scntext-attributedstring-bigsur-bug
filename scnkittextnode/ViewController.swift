//
//  ViewController.swift
//  scnkittextnode
//
//  Created by Morten Just on 12/8/20.
//

import Cocoa
import SceneKit

class ViewController: NSViewController {

    @IBOutlet weak var scnView: SCNView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let scene = SCNScene(named: "Scene.scn", inDirectory: "Art.scnassets", options: nil)!
        scnView.scene = scene
        scnView.allowsCameraControl = true
        scnView.showsStatistics = true
        scnView.pointOfView?.camera?.zFar = 1000

        let textStr = "abcdefghijklmnopqrstuvwxyz"
        let text = SCNText()
        text.extrusionDepth = 0
        text.string = NSAttributedString(string: textStr,
                                         attributes: [NSAttributedString.Key.font :
                                                        NSFont.systemFont(ofSize: 5)])
        text.flatness = 0.01
        
        let textNode = SCNNode(geometry: text)
        scene.rootNode.addChildNode(textNode)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

