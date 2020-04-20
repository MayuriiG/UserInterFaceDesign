//
//  ViewController.swift
//  Task_tech_api
//
//  Created by Mayurii Gajbhiye on 06/03/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit

//AIzaSyDIEky5KltdS5fw28w0EhJMeOB5bvFdUuU
//AIzaSyBRxvUO0CrZgfQRNDqm9NTQDjjLEZsSbX8


class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var collectnViewContent: UICollectionView!
    
    @IBOutlet weak var collectnView: UICollectionView!
    
    var responseData = [[String:String]]()
    
        var eventName = [String]()
       //   var time = [String]()
        
    override func viewDidLoad() {
            super.viewDidLoad()
          
           // ServerData.delegateDatas.loginDetails()
        
         dataFunc()
//            collectnViewContent.delegate = self
//            collectnViewContent.dataSource = self
//            collectnView.isUserInteractionEnabled = true

        
        }

        
    func dataFunc(){
    
    let data = JsonSerialize.delegateDatas.loginDetails()
                                          //print(data)
            
            responseData = data["response"] as! [[String : String]]
            print(responseData.count)
           
            for i in 0..<responseData.count{
                 
     // var events = responseData[i]["event_name"]
        var events = responseData[i]["event_name"]
                                 //print(events!)
            eventName.append(events!)
    
                
            }
      //  collectnView.reloadData()
            
        }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            
              return eventName.count
          }
          
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

                    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as!CollectionViewCell
                    
                    cell.lbl.text = eventName[indexPath.row]
                     cell.layer.cornerRadius = 30
        //collectionView.reloadData()
               return cell
        }

    //...............CollectionViewDelegateFlowLayout...............

          
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let collectionWidth = collectionView.bounds.width
               // print(collectionWidth)
            return CGSize(width: collectionWidth/3-3, height: 70)
    }
            
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 3
    }
  
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
            


    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
                    
//        let NV2 = self.storyboard?.instantiateViewController(identifier: "NextViewController")as! NextViewController
            ////
////             NV2.arraReload = arrRepo //arrAY Formation
            ////
    //   present(NV2, animated: true, completion: nil) //present<#code#>
                  
        print("xxx")
                  }


}
