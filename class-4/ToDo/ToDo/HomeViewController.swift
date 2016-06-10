//--Download starter project; create individual files for each class / protocol you created yesterday
//--In HomeViewController find tableView:numberOfRowsInSection: function and return using Store return number of objects it should display
//--In HomeViewController find configureCell: implement it by first getting an object from Store for indexPath.row and set the cell.textLabel.text to item.itemDescription
//--In HomeViewController find tableView:commitEditingStyle… Use Store to remove object for indexPath.row
//--In NewItemViewController find saveButtonSelected: function and create item using description variable. Add the item to the Store
//--Add save function to ObjectStoreProtocol. Provide default implementation for simply writing array of objects to the filesystem
//Create Additions file and extend String and NSURL. String: archivePath -> String; NSURL: documentsDirectory -> NSURL and archiveURL -> NSURL
//Conform your Model class to NSCoding protocol and implement required methods
//Modify Store init {} method to unarchive first. If nil, initialize objects array


import UIKit


class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: Helper Functions
    
    func configureCell(indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("todoCell", forIndexPath: indexPath)
        
        let pathIndex = Store.shared.allObjects()[indexPath.row]
        cell.textLabel?.text = "\(pathIndex.task)"
        
        return cell
    }
    
    // MARK: UITableViewDataSource

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return Store.shared.allObjects().count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        return self.configureCell(indexPath)
    }
    
    // MARK: UITableViewDelegate
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
    {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        if editingStyle == .Delete {
            
            let removing = Store.shared.allObjects()[indexPath.row]
            Store.shared.remove(removing)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Fade)
        }
    }
    
}

