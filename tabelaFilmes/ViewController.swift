//
//  ViewController.swift
//  tabelaFilmes
//
//  Created by Vitor Henrique Barreiro Marinho on 03/02/22.
//

import UIKit

class ViewController: UITableViewController {
    

    var filmes:[Filme] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        var filme:Filme
        
        
        filme = Filme(titulo: "A Herdeira", descricao: "A Herdeira", imagem: imagem1)
        filmes.append (filme)

        filme = Filme(titulo: "Star Wars", descricao: "Star Wars",imagem:imagem2)
        filmes.append (filme)
        
        filme = Filme(titulo: "Hardcore", descricao: "Hardcore",imagem:imagem3)
        filmes.append (filme)
        
        filme = Filme(titulo: "Caçadores de Emoção", descricao: "Caçadores de Emoção",imagem:imagem4)
        filmes.append (filme)
        
        filme = Filme(titulo: "Regresso do mau", descricao: "Regresso do mau",imagem:imagem5)
        filmes.append (filme)
        
        filme = Filme(titulo: "007 Spectre", descricao: "007 Spectre",imagem:imagem6)
        filmes.append (filme)
        
        filme = Filme(titulo: "Impacto Mortal", descricao: "Impacto Mortal",imagem:imagem7)
        filmes.append (filme)
        
        filme = Filme(titulo: "Filme 8", descricao: "Descrição2",imagem:imagem8)
        filmes.append (filme)
        
        filme = Filme(titulo: "Deadpool", descricao: "Deadpool",imagem:imagem9)
        filmes.append (filme)
        
        filme = Filme(titulo: "Tarzan", descricao: "Tarzan",imagem:imagem10)
        filmes.append (filme)

}
    
    

    var imagem1 = #imageLiteral(resourceName: "filme6")
    var imagem2 = #imageLiteral(resourceName: "filme2")
    var imagem3 = #imageLiteral(resourceName: "filme10")
    var imagem4 = #imageLiteral(resourceName: "filme7")
    var imagem5 = #imageLiteral(resourceName: "filme8")
    var imagem6 = #imageLiteral(resourceName: "filme1")
    var imagem7 = #imageLiteral(resourceName: "filme3")
    var imagem8 = #imageLiteral(resourceName: "filme8")
    var imagem9 = #imageLiteral(resourceName: "filme4")
    var imagem10 = #imageLiteral(resourceName: "filme9")



    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        let indice = filmes [indexPath.row]
        celula.textLabel?.text = indice.titulo
        celula.imageView?.image = indice.imagem
        
        return celula
        
        
    }
    
    
    
    
}

