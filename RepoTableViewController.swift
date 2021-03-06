//
//  RepoTableViewController.swift
//  excusemaker
//
//  Created by ptgms on 14.05.20.
//  Copyright © 2020 ptgms. All rights reserved.
//

import UIKit

class RepoTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.section == 0) {
            switch indexPath.row {
            case 0:
                print("Cydia pressed")
                if let url = URL(string: "cydia://url/https://cydia.saurik.com/api/share#?source=http://ptgms.xyz/repo") {
                    UIApplication.shared.open(url)
                }
            case 1:
                print("Zebra pressed")
                if let url = URL(string: "zbra://sources/add/http://ptgms.xyz/repo") {
                    UIApplication.shared.open(url)
                }
            case 2:
                print("Sileo pressed")
                if let url = URL(string: "sileo://source/http://ptgms.xyz/repo") {
                    UIApplication.shared.open(url)
                }
            default:
                exit(-1)
            }
        } else if (indexPath.section == 1) {
            switch indexPath.row {
            case 0:
                print("Copied to clipboard!")
                let pasteboard = UIPasteboard.general
                pasteboard.string = "http://ptgms.xyz/repo"
            default:
                exit(-1)
            }
        }
        if let indexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
