//
//  HomeViewController.swift
//  Std1_Music
//
//  Created by EU_ShenJie on 2018/7/17.
//  Copyright © 2018年 EU_ShenJie. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var contentTextView: UITextView!
    @IBOutlet weak var collectionMarginTop: NSLayoutConstraint!
    
    @IBOutlet weak var widthView: UIView!
    private let musicNameTag = 101
    private let musicTimeTag = 102
    private let musicPalyTag = 103
    private let collectionViewCellIdentifier = "collectionViewCellIdentifier"
    
    private let musics = [(musicName:"大鱼",musicTime:"05:13",musicPaly:false),(musicName:"牵丝戏",musicTime:"03:59",musicPaly:false),(musicName:"Star Sky",musicTime:"05:30",musicPaly:false)]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setView()
    }

    private func setView() {
        //设置CollectionView背景色为透明
        collectionView.backgroundColor = UIColor.clear
        
        //获取contentTextView的文本高度
        let height = getUITextViewContentHeight(textView: contentTextView)
        //设置文本高度
        let frame = contentTextView.frame
        let rect:CGRect = CGRect(origin: frame.origin, size: CGSize(width: frame.width, height: height))
        contentTextView.frame = rect

        //设置CollectionView的约束的高度
        collectionMarginTop.constant = height
    }
    
    private func getUITextViewContentHeight(textView:UITextView)->CGFloat {
        return textView.sizeThatFits(CGSize(width: textView.bounds.width, height: CGFloat(MAXFLOAT))).height
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: CollectionView代理方法
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.collectionViewCellIdentifier, for: indexPath)

        let frame = cell.frame
        let rect = CGRect(origin: frame.origin, size: CGSize(width: widthView.frame.width, height: frame.height))
        cell.bounds = rect
        
        let musicNameLabel = cell.viewWithTag(musicNameTag) as! UILabel
        let musicTimeLabel = cell.viewWithTag(musicTimeTag) as! UILabel
        let musicPlayImage = cell.viewWithTag(musicPalyTag) as! UIImageView

        musicNameLabel.text = musics[0].musicName
        musicTimeLabel.text = musics[0].musicTime
        if (musics[0].musicPaly) {
            musicPlayImage.image = UIImage(named: "Suspend")
        }
        else {
            musicPlayImage.image = UIImage(named: "Play")
        }

        return cell
    }
}
