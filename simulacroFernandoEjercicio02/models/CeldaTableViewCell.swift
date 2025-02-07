//
//  CeldaTableViewCell.swift
//  simulacroFernandoEjercicio02
//
//  Created by Eduardo Segovia Roman on 7/2/25.
//

import UIKit

class CeldaTableViewCell: UITableViewCell {
    @IBOutlet weak var lblNombreVotante: UILabel!
    @IBOutlet weak var lblPersonaje: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
