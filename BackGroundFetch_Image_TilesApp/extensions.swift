//
//  extensions.swift
//  BackGroundFetch_Image_TilesApp
//
//  Created by Imdad, Suleman on 11/30/15.
//  Copyright © 2015 Rodd Naderzad. All rights reserved.
//

import Foundation

import UIKit


extension UIImageView {
    public func imageFromUrl(urlString: String) {
    if let url = NSURL(string: urlString) {
    let request = NSURLRequest(URL: url)
    NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) {
    (response: NSURLResponse?, data: NSData?, error: NSError?) -> Void in
    if let imageData = data as NSData? {
    self.image = UIImage(data: imageData)
    }
    }
    }
    }
}