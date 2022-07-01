//
//  SixthViewController.swift
//  imFeelingLucky
//
//  Created by Scholar on 7/1/22.
//

import UIKit

class SixthViewController: UIViewController {
    
    @IBOutlet weak var imageOne: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var dateLabel: UILabel!
      @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var zodiacLabel: UILabel!
    
    
    
   
    
    @IBAction func datePickerChanged(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short
        let strDate = dateFormatter.string(from: datePicker.date)
        dateLabel.text = strDate
        dateFormatter.dateFormat = "MM"
        let month = dateFormatter.string(from: datePicker.date)
        dateFormatter.dateFormat = "dd"
        let day = dateFormatter.string(from: datePicker.date)
        print (strDate.prefix(4))
        print(getZodiac(month: Int(month)!, day: Int(day)!))
        
     }

    @IBAction func submit(_ sender: Any) {

        
        UIView.animate(withDuration: 1, animations: {
            self.imageOne.frame.origin.x += 250
        }, completion: nil)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM"
        let month = dateFormatter.string(from: datePicker.date)
        dateFormatter.dateFormat = "dd"
        let day = dateFormatter.string(from: datePicker.date)
        
        
        let sign = getZodiac(month:Int(month)!, day:Int(day)!)
        zodiacLabel.text = sign
       }
    func getZodiac (month:Int, day:Int) -> String {
      if(month==1 && day > 19 || month==2 && day < 20){
        return("aquarius:️ you're most likely to become a professional athlete")
      }
      else if(month==2 && day > 19 || month==3 && day < 21){
        return ("pisces: you're most likely to be very compassionate")
      }
      else if(month==3 && day > 20 || month==4 && day < 21){
        return ("aries:️ you're most likely to be punctual")
      }
      else if (month==4 && day > 19 || month==5 && day < 21){
        return ("taurus:️ you are the most likely to be clumsy")
      }
      else if(month==5 && day > 20 || month==6 && day < 22){
        return ("gemini:️ you are the most indecisive sign")
       }
      else if(month==6 && day > 21 || month==7 && day < 23){
         return ("cancer: you are great with money")
       }
      else if(month==7 && day > 22 || month==8 && day < 23){
         return ("leo: you are a great leader")
       }
      else if(month==8 && day > 22 || month==9 && day < 23){
        return ("virgo: you are very efficient")
       }
       else if(month==9 && day < 24 || month==10 && day < 24){
         return ("libra:️ you're most likely to become a millionaire")
       }
       else if(month==10 && day < 25 || month==11 && day < 22){
        return ("scorpius:️ you're most likely to become a world leader, but that might also be due to the fact that you guys are the most common sign")
      }
       else if(month==11 && day < 23 || month==12 && day < 22){
         return ("sagittarius:️ you are very outgoing and known for your enthusiasm")
       }
       else if (month==12 && day < 23 || month==1 && day < 20){
         return ("capricorn:️ congrats :tada: you're the rarest sign!")
       }
        return("no.")
      //    :aries:️ Aries (Ram): March 21–April 19
      //    :taurus:️ Taurus (Bull): April 20–May 20
      //    :gemini:️ Gemini (Twins): May 21–June 21
      //    :cancer:️ Cancer (Crab): June 22–July 22
      //    :leo:️ Leo (Lion): July 23–August 22
      //    :virgo:️ Virgo (Virgin): August 23–September 22
      //    :libra:️ Libra (Balance): September 23–October 23
      //    :scorpius:️ Scorpius (Scorpion): October 24–November 21
      //    :sagittarius:️ Sagittarius (Archer): November 22–December 21
      //    :capricorn:️ Capricornus (Goat): December 22–January 19
      //    :aquarius:️ Aquarius (Water Bearer): January 20–February 18
      //    :pisces:️ Pisces (Fish): February 19–March 20
       
        
        }


}
