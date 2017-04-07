//
//  ImageTableViewController.swift
//  ImageReviewer
//
//  Created by 劉洧熏 on 2017/4/7.
//  Copyright © 2017年 伍智瑋. All rights reserved.
//

import UIKit

class ImageTableViewController: UITableViewController {

    let cellID = "ImageTableViewCell"

    override func viewDidLoad() {

        super.viewDidLoad()
        setUpView()

    }

    func setUpView() {

        let imageCell = UINib.init(nibName: cellID, bundle: nil)

        self.tableView.register(imageCell, forCellReuseIdentifier: cellID)

        setBarButtonItem()

    }

    func setBarButtonItem() {

        let barButton = UIBarButtonItem.init(title: "My Journals", style: .plain, target: nil, action: nil)

        barButton.isEnabled = false

        let font = UIFont.systemFont(ofSize: 20, weight: UIFontWeightSemibold)

        print(font)

        barButton.setTitleTextAttributes([

            NSFontAttributeName: font,
            NSForegroundColorAttributeName: UIColor(red: 67/255, green: 87/255, blue: 97/255, alpha: 1.0)

            ],
                                         for: .normal)

        self.navigationItem.leftBarButtonItem = barButton

    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 3

    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? ImageTableViewCell else { return UITableViewCell(style: .default, reuseIdentifier: "Cell") }

        cell.userImage.image = #imageLiteral(resourceName: "flower")

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return 212

    }
}
