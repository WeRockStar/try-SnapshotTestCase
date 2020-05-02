//
//  ViewControllerSnapshotTests.swift
//  try!SnapshotTestCaseTests
//
//  Created by Kotchaphan Muangsan on 2/5/20.
//  Copyright © 2020 Kotchaphan Muangsan. All rights reserved.
//

import Foundation
@testable import try_SnapshotTestCase
import FBSnapshotTestCase

class ViewControllerSnapshotTests: FBSnapshotTestCase {

    override func setUp() {
        super.setUp()
        
        recordMode = false
    }
    
    func testViewController() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(identifier: String(describing: ViewController.self))
    
        FBSnapshotVerifyView(vc.view)
    }

    override func tearDown() {
        super.tearDown()
        
    }
}
