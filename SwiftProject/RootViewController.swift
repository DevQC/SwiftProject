//
//  RootViewController.swift
//  SwiftProject
//
//  Created by warren on 16/1/5.
//  Copyright © 2016年 warren. All rights reserved.
//

import UIKit

class RootViewController: UIViewController,UITableViewDataSource , UITableViewDelegate ,UICollectionViewDelegate,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.blueColor()
        self.layoutUI()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func layoutUI()
    {
       //UIView
       let view1 = UIView(frame: CGRectMake(120, 100, 150, 30))
        view1.backgroundColor = UIColor.redColor()
        view1.userInteractionEnabled = true
        view1.layer.cornerRadius = 10
        view1.layer.masksToBounds = true
        view.addSubview(view1)
        
        let tap = UITapGestureRecognizer(target: self, action: "tapAction")
        view1.addGestureRecognizer(tap)
        
        
       //UIButton
       let button = UIButton(type: .Custom) as UIButton
        button.frame = CGRectMake(20, 100, 100, 30)
        button.backgroundColor = UIColor.greenColor()
        button.setTitle("我是Swifty", forState: .Normal)
        button.setTitleColor(UIColor.blackColor(), forState:.Normal)
        button.addTarget(self, action: "btnAction:", forControlEvents: .TouchUpInside)
        button.setImage(UIImage(named: "test"), forState: .Normal)
        view.addSubview(button)
        
        //UILabel
        let label:UILabel = UILabel(frame: CGRectMake(20,200,100,50))
        label.backgroundColor = UIColor.yellowColor()
        label.textAlignment = NSTextAlignment.Center
        label.text = "我是label我是label我是label我是label"
        label.font = UIFont.systemFontOfSize(12)
        label.textColor = UIColor.blackColor()
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        label.userInteractionEnabled = true
        view .addSubview(label)
        
        //UIImageView
        let imageView = UIImageView(frame: CGRectMake(20, 300, 100, 50))
        imageView.image = UIImage(named: "test")
        imageView.backgroundColor = UIColor.orangeColor()
        imageView.layer.cornerRadius = 20
        imageView.layer.masksToBounds = true
        view.addSubview(imageView)
        
        //UIScrollView
        let scrollV = UIScrollView()
        scrollV.frame = CGRectMake(130,200,100,100)
        scrollV.contentSize = CGSizeMake(200, 100)
        scrollV.pagingEnabled = true
        scrollV.showsHorizontalScrollIndicator = true
        scrollV.showsVerticalScrollIndicator = true
        scrollV.backgroundColor = UIColor.grayColor()
        view.addSubview(scrollV)
        
        
        //UITableView
        let tableView = UITableView()
        tableView.frame = CGRectMake(130, 300, 150, 200)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.yellowColor()
        view.addSubview(tableView)
        
        
        //UICollectionView
        let layout = UICollectionViewFlowLayout()
        let collectionV = UICollectionView(frame: CGRectMake(20, 350, 100, 200), collectionViewLayout: layout)
        collectionV.backgroundColor = UIColor.redColor()
        collectionV.delegate = self
        collectionV.dataSource = self
        collectionV.registerClass(CollectCell.self, forCellWithReuseIdentifier:"CollectCell")
        view.addSubview(collectionV)

    }
   
    func btnAction(btn :UIButton){
        
        let titleStr:String
        titleStr = (btn.titleLabel?.text)!
        print(titleStr)
    }
    
    func tapAction(){
        
        print("是我点的")
    }
    
    //tableView delegate and datasource delegate
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = "我是cell"
        return cell
    }
    
    
    //collection delegate and dataSource delegate
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CollectCell", forIndexPath: indexPath) as! CollectCell
        return cell;
    }
    
}
