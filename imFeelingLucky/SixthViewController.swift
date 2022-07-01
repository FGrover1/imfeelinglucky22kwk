//
//  SixthViewController.swift
//  imFeelingLucky
//
//  Created by Scholar on 7/1/22.
//

import UIKit

class SixthViewController: UIViewController {

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
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM"
        let month = dateFormatter.string(from: datePicker.date)
        dateFormatter.dateFormat = "dd"
        let day = dateFormatter.string(from: datePicker.date)
        
        
        let sign = getZodiac(month:Int(month)!, day:Int(day)!)
        zodiacLabel.text = sign
       }
        
    func getZodiac (month:Int, day:Int) -> String {
        if(month==1 && day > 19 || month==2 && day < 20) {
                return("♒️ Aquarius")
              }
              else if(month==2 && day > 19 || month==3 && day < 21)
              {
                return ("♓️ Pisces")
              }
              else if(month==3 && day > 20 || month==4 && day < 21){
                return ("♈️ Aries")
              }
              else if (month==4 && day > 19 || month==5 && day < 21){
                return ("♉️ Taurus")
              }
              else if(month==5 && day > 20 || month==6 && day < 22){
                return ("♊️ Gemini")
              }
              else if(month==6 && day > 21 || month==7 && day < 23){
                return ("♋️ Cancer")
              }
              else if(month==7 && day > 22 || month==8 && day < 23){
                return ("♌️ Leo")
              }
              else if(month==8 && day > 22 || month==9 && day < 23){
                return ("♍️ Virgo")
              }
              else if(month==9 && day < 24 || month==10 && day < 24){
                return ("♎️ Libra")
              }
              else if(month==10 && day < 25 || month==11 && day < 22){
                return ("♏️ Scorpio")
              }
              else if(month==11 && day < 23 || month==12 && day < 22){
                return ("♐️ Sagittarius")
              }
              else if (month==12 && day < 23 || month==1 && day > 20){
                return ("♑️ Capricorn")
              }
              return("no.")
  //    ♈️ Aries (Ram): March 21–April 19
  //    ♉️ Taurus (Bull): April 20–May 20
  //    ♊️ Gemini (Twins): May 21–June 21
  //    ♋️ Cancer (Crab): June 22–July 22
  //    ♌️ Leo (Lion): July 23–August 22
  //    ♍️ Virgo (Virgin): August 23–September 22
  //    ♎️ Libra (Balance): September 23–October 23
  //    ♏️ Scorpius (Scorpion): October 24–November 21
  //    ♐️ Sagittarius (Archer): November 22–December 21
  //    ♑️ Capricornus (Goat): December 22–January 19
  //    ♒️ Aquarius (Water Bearer): January 20–February 18
  //    ♓️ Pisces (Fish): February 19–March 20
        
    }
    

}
