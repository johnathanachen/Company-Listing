//
//  UIViewController+Helper.swift
//  CompanyListing
//
//  Created by Johnathan Chen on 2/9/18.
//  Copyright © 2018 JCSwifty. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func setupPlusButtonInNavBar(selector: Selector) {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "plus"), style: .plain, target: self, action: selector)
    }
    
    func setupCancelButton() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(handleCanleModal))
    }
    
    @objc func handleCanleModal() {
        dismiss(animated: true, completion: nil)
    }
}
