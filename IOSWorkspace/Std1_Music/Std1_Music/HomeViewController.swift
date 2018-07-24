//
//  HomeViewController.swift
//  Std1_Music
//
//  Created by EU_ShenJie on 2018/7/17.
//  Copyright © 2018年 EU_ShenJie. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return musics.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.collectionViewCellIdentifier, for: indexPath)
        
        let musicNameLabel = cell.viewWithTag(musicNameTag) as! UILabel
        let musicTimeLabel = cell.viewWithTag(musicTimeTag) as! UILabel
        let musicPlayImage = cell.viewWithTag(musicPalyTag) as! UIImageView
        
        musicNameLabel.text = musics[indexPath.row].musicName
        musicTimeLabel.text = musics[indexPath.row].musicTime
        if (musics[indexPath.row].musicPaly) {
            musicPlayImage.image = UIImage(named: "Suspend")
        }
        else {
            musicPlayImage.image = UIImage(named: "Play")
        }
        
        return cell
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let musicNameTag = 101
    private let musicTimeTag = 102
    private let musicPalyTag = 103
    private let collectionViewCellIdentifier = "collectionViewCellIdentifier"
    
    private let musics = [(musicName:"大鱼",musicTime:"05:13",musicPaly:false),(musicName:"牵丝戏",musicTime:"03:59",musicPaly:false),(musicName:"Star Sky",musicTime:"05:30",musicPaly:false)]
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = UIColor.clear
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setView() {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
