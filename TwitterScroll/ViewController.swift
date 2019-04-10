//
//  ViewController.swift
//  TwitterScroll
//
//  Created by Abdoelrahman on 4/5/19.
//  Copyright © 2019 Abdeen labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var text = """
        In just over ten days, HBO will unleash the final season of Game of Thrones — a season we’ve been anxiously awaiting for almost two years. As HBO’s Game of Thrones marketing efforts intensified in the past few weeks, we got to read more and more interviews with cast and crew, which revealed a few interesting details about the main battle scene of the season and the show’s finale. And some of the stars may have inadvertently dropped a few spoilers along the way.

        But we still have no idea what will happen in season 8, which is excellent news for Game of Thrones fans looking to avoid significant spoilers at all costs. Fans, meanwhile, are coming up with plenty of theories about the show, and we’re about to show you an incredible write up from a Game of Thrones enthusiast who thinks she has figured out what Dany’s fate is. But before we proceed, we have to warn you that potential spoilers follow below.

        DON'T MISS
        Save $200 on one of Bose’s best sound bars
        When we last checked up on Daenerys, she was getting very friendly with a particular relative of hers, Jon Snow, although they still have no idea they’re part of the same family. They were heading north to prepare Winterfell for the upcoming invasion, hoping that the other houses will follow suit and send their armies to defend the north. Dany, of course, has two dragons left, which may prove to be great weapons against the Night King and his gang of undead soldiers.

        However, this being Game of Thrones, a TV show where nobody is safe — well, maybe except for Jon Snow — there are no guarantees that Dany will enjoy a happy ending once the fight with the White Walkers is done. Redditor marisaann26 believes she found a massive clue while rewatching the past Game of Thrones seasons that suggests Dany will actually switch sides when this is all over:



        It’s all based on a vision she had back in season 2 (see video above). Dany visited a devastated King’s Landing during winter, with snow falling in the throne room. Just as she was about to reach the throne, she was drawn beyond The Wall, into the tent with Drogo and their son. She almost stays there, but she then hears the cries of her baby dragons, and she leaves to be reunited with them.

        marisaann26 thinks two parts of the vision have already come true in season 7, and the final part of this prophecy will be proven true in the last season:

        S2 vision: Dany going towards the throne, but is drawn beyond the wall = when, in S7, Dany was going to go attack King’s Landing and take the throne by force, but she was told Jon and company beyond The Wall need rescuing – goes beyond the wall.

        S2 vision: Dany hearing the dragon cries = S7 the dragons crying beyond the wall after Viserion was killed by the NK.

        In the upcoming season, Daenerys might choose to leave Jon Snow — and their baby — behind to be with her dragons. If that’s the case, it means that both her dragons will be killed while fighting the White Walkers, and they’ll join the Night King. The only way for Dany to be with them is to switch sides and join him. A warlock did tell her during her vision that “you’ll be with your dragons through winter, summer, and winter again.”

        The Redditor offered us additional clues that point to a not-so-happy end for Dany:

        Well, in an interview with the actor that plays the NK, he said that “we will learn WHO the Night King is after” in an interview with Emilia Clarke (Dany), she talks about the final season and said “it fucked me up- knowing that is going to be a lasting flavor in someone’s mouth of what Daenerys is” and that Dany is doing really weird stuff.

        I believe that the Night King is after Dany to be either his new queen or to take over as queen (him wanting peace=death). One way or another, both living dragons will die in battle. Distraught by losing her dragons, Dany [will] be persuaded to join the Night King to be reunited with her dragons = she gets her ICE THRONE.

        Yes, it all sounds incredibly wild and dark, and Dany’s fans may not like this particular outcome. But if you’re still not convinced, then you should watch the following video, posted on YouTube in early December 2017, that draws almost the same connection between Daenerys and the Night King (via Cosmopolitan):
        """
    @IBOutlet weak var blurview: UIVisualEffectView!
    
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset.y)
        let current = scrollView.contentOffset.y
        let fixedCurrent = current + 44
        let percentage = abs(fixedCurrent.rounded()) / 200
        blurview.alpha = percentage
        if percentage == 1 {
            textLabel.text = text
        }
    }
}

