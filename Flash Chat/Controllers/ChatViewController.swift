//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
//import Firebase

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
//    let db = Firestore.firestore()
    
    var messages :[Message] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = K.titleName
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
        
        loadMessages()
        
        // to hide back button
        navigationItem.hidesBackButton = true

    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
//        if let messageBody = messageTextfield.text , let sender = Auth.auth().currentUser?.email {
//            db.collection(K.FStore.collectionName).addDocument(data: [
//                    K.FStore.senderField : sender,
//                    K.FStore.bodyField : messageBody,
//                    K.FStore.dateField : Date().timeIntervalSince1970
//                ]) { err in
//                    if let err = err {
//                        let alert = UIAlertController(title: "Error", message: err.localizedDescription, preferredStyle: UIAlertController.Style.alert)
//                        alert.addAction(UIAlertAction(title: "cancle", style: .default, handler: nil))
//                        self.present(alert, animated: true, completion: nil)
//                    } else {
//                        self.messageTextfield.text = ""
//                        print("Document added")
//                    }
//                }
//        }
    }
    
    func loadMessages() {
//        db.collection(K.FStore.collectionName).order(by: K.FStore.dateField)
//            .addSnapshotListener(){ (querySnapshot, err) in
//            self.messages = []
//            if let err = err {
//                print("Error getting documents: \(err)")
//            } else {
//                if let snapshotDocuments = querySnapshot?.documents {
//                    for document in snapshotDocuments {
//                        let data = document.data()
//                        if let sender = data[K.FStore.senderField] as? String , let messageBody = data[K.FStore.bodyField] as? String {
//                            let newMessage = Message(senderName: sender, body: messageBody)
//                            self.messages.append(newMessage)
//                        }
//                    }
//                    DispatchQueue.main.async {
//                        self.tableView.reloadData()
//                        let index = IndexPath(row: self.messages.count-1, section: 0)
//                        self.tableView.scrollToRow(at: index, at: .top, animated: true)
//
//                    }
//                }
//            }
//        }
    }
    
    @IBAction func signOutPressed(_ sender: UIBarButtonItem) {
//        do {
//          try Auth.auth().signOut()
//            navigationController?.popToRootViewController(animated: true)
//        } catch let signOutError as NSError {
//            let alert = UIAlertController(title: "Alert", message: "Error signing out: %@\(signOutError)", preferredStyle: UIAlertController.Style.alert)
//            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
//            self.present(alert, animated: true, completion: nil)
//        }
      
    }
    
}

//MARK:- tableView

extension ChatViewController : UITableViewDataSource , UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let message = messages[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! MessageCell
//        cell.label.text = message.body
//
//        if message.senderName == Auth.auth().currentUser?.email {
//            cell.leftImageView.isHidden = true
//            cell.rightImageView.isHidden = false
//            cell.messageBubble.backgroundColor = UIColor(named: K.BrandColors.lightPurple)
//            cell.label.textColor = UIColor(named: K.BrandColors.purple)
//        }
//        else {
//            cell.leftImageView.isHidden = false
//            cell.rightImageView.isHidden = true
//            cell.messageBubble.backgroundColor = UIColor(named: K.BrandColors.purple)
//            cell.label.textColor = UIColor(named: K.BrandColors.lightPurple)
//        }
        return cell
//    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(messages[indexPath.row].body)
    }
}
