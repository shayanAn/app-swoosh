//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Shayan ansari on 21/05/18.
//  Copyright © 2018 Shayan ansari. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "co-ed")
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let SkillVC = segue.destination as? SkillVC {
            SkillVC.player = player
        }
    }

}
