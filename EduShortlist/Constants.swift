//
//  Constants.swift
//  TravelNurseHousing
//
//  Created by Mitul Nakum on 01/02/18.
//  Copyright © 2018 Trimantra Software Solution LLP. All rights reserved.
//

import UIKit
struct APIConstants {
    static let POST = "POST"
    static let GET = "GET"
    static let BASE_URL = ""
}

struct ColorConstants {
    static let BUTTON_BACKGROUND = Color.init(hexString:"#7DBEB6")
    static let HILIGHTED_BUTTON_BACKGROUND = Color.init(hexString:"#FFAA20")
    static let BUTTON_TEXT = Color.init(hexString:"#FFFFFF")
    static let BUTTON_TINT = Color.init(hexString:"#FFFFFF")
    static let NAVIGATION_BAR_TINT = Color.init(hexString:"#00253F")//
    static let NAVIGATION_TINT = Color.init(hexString:"#FFFFFF")
    static let NORMAL_TEXT = Color.init(hexString:"#000000")
    static let TITLE_COLOR = Color.init(hexString:"#7DBEB6")
    static let TEXT_FIELD_BACKGROUND = Color.init(hexString:"#FFFFFF")
    static let TABLEVIEW_HEADER = Color.init(hexString:"#EDF0F1")
    static let IMAGE_TINT = Color.init(hexString:"#7DBEB6")
    static let HILITED_BACKGROUND = Color.init(hexString:"#7DBEB6")
    static let LABEL_TEXT = Color.init(hexString:"#9A9A9A")
    static let SORE_TABLE_HEADER = Color.init("#E2E2E2")
    
    static let VIEW_BG = Color.init(hexString:"#F4F4F4")
    static let NAVIGATION_BAR = Color.init(hexString:"#94008C")
    static let TAB_BAR_TEXT = Color.init(hexString:"#9F4F99")
    
    static let BUTTON_GRAY_BORDER = Color.init(hexString:"#242327")
    static let BUTTON_WHITE_BORDER = Color.init(hexString:"#ACACAC")
    static let BUTTON_PURPLE_BORDER = Color.init(hexString:"#71006A")
    
    static let BUTTON_PURPLE_TEXT = Color.init(hexString:"#FFFFFF")
    static let BUTTON_WHITE_TEXT = Color.init(hexString:"#000000")
    static let BUTTON_GRAY_TEXT = Color.init(hexString:"#FFFFFF")
    
    static let TEXTFIELD_BORDER = Color.init(hexString:"#C0C1C2")
    static let TEXTFIELD_TEXT = Color.init(hexString:"#000000")
}

struct ViewConstants {
    static let SHADOW_OPACITY : Float = 0.5
    static let BORDER_WIDTH : CGFloat = 1.0
    static let CORNER_RADIUS : CGFloat = 5.0
    static let TEXTFIELD_CORNER_RADIUS : CGFloat = 0.0
    
}
struct UserDefaultConstants {
    static let LOGIN_DATA = "LOGIN_DATA"
    
}


struct DatapickerConstant {
    
     static let STATE : NSArray = []
    
}

class Constants: NSObject {

    func isValidEmail(testStr:String) -> Bool {
        // print("validate calendar: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    
}
