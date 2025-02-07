//
//  SecondViewController.swift
//  simulacroFernandoEjercicio02
//
//  Created by Eduardo Segovia Roman on 7/2/25.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var txtNombreVotante: UITextField!
    @IBOutlet weak var lblSeleccionado: UILabel!
    
    var delegate:ViewController?;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func alertError(titulo: String, mensaje: String){
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func btnFinalizarVotacion(_ sender: Any) {
        let votante = txtNombreVotante.text!;
        let personaje = lblSeleccionado.text!;
        if (votante == "" || personaje == "") {
            alertError(titulo: "ERROR!!", mensaje: "Debes escribir tu nombre y seleccionar el personaje!!")
        }else{
            let voto = VotoModel(nombreVotante: votante, nombrePersonaje: personaje);
            delegate?.obetenerVoto(dato: voto);
            navigationController?.popToRootViewController(animated: true);
        }
    }
    @IBAction func btnLeonardo(_ sender: Any) {
        lblSeleccionado.text = "LEONARDO";
    }
    @IBAction func btnRafael(_ sender: Any) {
        lblSeleccionado.text = "RAFAEL";
    }
    @IBAction func btnMiguelAngel(_ sender: Any) {
        lblSeleccionado.text = "MIGUELANGEL";
    }
    @IBAction func btnDonatello(_ sender: Any) {
        lblSeleccionado.text = "DONATELLO";
    }
    
    

}
