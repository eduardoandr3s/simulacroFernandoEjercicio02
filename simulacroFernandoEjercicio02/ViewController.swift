//
//  ViewController.swift
//  simulacroFernandoEjercicio02
//
//  Created by Eduardo Segovia Roman on 7/2/25.
//

import UIKit

protocol ObtenerVoto {
    func obtener(dato: VotoModel)
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //------TABLA------
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listaVotos.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CELDA", for: indexPath) as! CeldaTableViewCell;
        voto = listaVotos[indexPath.row];
        celda.lblPersonaje.text = voto.nombrePersonaje;
        celda.lblNombreVotante.text = voto.nombreVotante;
        return celda;
    }
    @IBOutlet weak var lblLeonardo: UILabel!
    @IBOutlet weak var lblRafael: UILabel!
    
    @IBOutlet weak var lblMiguelAngel: UILabel!
    @IBOutlet weak var lblDonatello: UILabel!
    
    @IBOutlet weak var tablaVotaciones: UITableView!
    var listaVotos:[VotoModel]!;
    var voto: VotoModel!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listaVotos = [];
        tablaVotaciones.delegate = self;
        tablaVotaciones.dataSource = self;
    }

    
    func obetenerVoto(dato: VotoModel){
        voto = dato;
        listaVotos.append(voto);
        tablaVotaciones.reloadData();
        
        var contadorLeonardo: Int = 0;
        var contadorRafael: Int = 0;
        var contadorMiguelAngel: Int = 0;
        var contadorDonatello: Int = 0;
        
        for voto in listaVotos {
            switch voto.nombrePersonaje {
            case "LEONARDO":
                contadorLeonardo += 1;
                break;
            case "RAFAEL":
                contadorRafael += 1;
                break;
            case "MIGUELANGEL":
                contadorMiguelAngel += 1;
                break;
            case "DONATELLO":
                contadorDonatello += 1;
                break;
            default:
                break;
            }
        }
        
        lblLeonardo.text = "LEONARDO: \(contadorLeonardo)";
        lblRafael.text = "RAFAEL: \(contadorRafael)";
        lblMiguelAngel.text = "MIGUELANGEL \(contadorMiguelAngel)";
        lblDonatello.text = "DONATELLO \(contadorDonatello)";
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if (segue.identifier == "INSERTAR"){
            let destino = segue.destination as! SecondViewController
            destino.delegate = self;
        }
        
    }

}

