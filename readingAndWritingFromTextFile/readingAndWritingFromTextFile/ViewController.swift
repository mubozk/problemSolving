//
//  ViewController.swift
//  readingAndWritingFromTextFile
//
//  Created by Muhammet BOZKURT on 24.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let fileName = "Test"
        let DocumentDirURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        let fileURL = DocumentDirURL.appendingPathComponent(fileName).appendingPathExtension("txt")
        print("filePath\(fileURL.path)")
        let writeString = "Write this text to the file in swift"
        do {
            //Write to the file
            try writeString.write(to: fileURL, atomically: true, encoding: String.Encoding.utf8)
        } catch let error as NSError {
            print("failed to write to URL" )
            print(error)
        }
        var readString = ""
        do  {
            readString = try String(contentsOf: fileURL)
        } catch let error as NSError {
            print("failed to read file")
            print(error)
        }
        print("contens of the file  \(readString)")
        
        
    }
    
}
