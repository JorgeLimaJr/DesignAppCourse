//
//  FragmentListCity.swift
//  AppTravel
//
//  Created by Jorge Lima on 01/09/16.
//  Copyright © 2016 Jorge Lima. All rights reserved.
//

import UIKit

@IBDesignable class FragmentListCity: UIView {

    @IBOutlet weak var titleLabel: UILabel!
   
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!

    @IBOutlet weak var myButton: UIButton!
    
    
    var view: UIView!
    
    
    @IBInspectable var myTitleLabelText: String?{
        
        get{
            return titleLabel.text
        }
        
        set(myTitleLabelText){
            titleLabel.text = myTitleLabelText
        }
        
    }
    
    @IBInspectable var myDescriptionLabelText: String?{
        
        get{
            return descriptionLabel.text
        }
        
        set(myDescriptionLabelText){
            descriptionLabel.text = myDescriptionLabelText
        }
        
    }
    
    
    @IBInspectable var myCustomImage:UIImage?{
        
        get{
            return myImage.image
        }
        
        set(myCustomImage){
            myImage.image = myCustomImage
        }
        
    }
    
    var nibName: String = "ViewFragment"
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        setup()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setup()
    }
    
    func setup() {
        
        view = loadViewFromNib()
        
        view.frame = bounds
        view.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        
        addSubview(view)
        
    }
    
    func loadViewFromNib() -> UIView{
        
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
        
        
    }
    

}
