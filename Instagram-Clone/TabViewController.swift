//
//  TabViewController.swift
//  Social-media-IOS
//
//  Created by Andrei Avram on 16/03/2021.
//


import Foundation
import Tabman
import Pageboy

class TabViewController : TabmanViewController{

    private let viewControllers = [FeedViewController(),SearchViewController()]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        let bar = TMBar.TabBar()
        addBar(bar, dataSource: self, at: .bottom)
    }
}

extension TabViewController : PageboyViewControllerDataSource,TMBarDataSource{


     func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        return viewControllers.count
    }

    func viewController(for pageboyViewController: PageboyViewController, at index: PageboyViewController.PageIndex) -> UIViewController? {
        return viewControllers[index]
    }

    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        return nil
    }

    func barItem(for bar: TMBar, at index: Int) -> TMBarItemable {
        let title = "Page \(index)"
        return TMBarItem(title : title)
    }


}
