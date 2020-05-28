**Configurer un UITableView**

**(En italique : ne s'applique pas pour un UITableViewController)**


* Dans le storyboard
 * *Ajouter UITableView à un viewController*
 * *Ajouter une cellule "prototype" au tableView*
 * Configurer la cellule prototype (design, style, etc.)
 * Ajouter un reuseIdentifier à cette cellule

* Dans le code :
 * *Définir le dataSource du tableView (clic-droit glissé, ou par le code)*
 * Ajouter la conformité au protocole dans l'assistant désigné (souvent le contrôleur)
 * Implémenter les méthodes du dataSource dans la classe de l'assistant désigné

⚠️ Pour créer une cellule, demander au tableView de faire un dequeue de la cell avec son reuseID et son indexPath !

✅ `tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)` 

🚫 `tableView.dequeueReusableCell(withIdentifier: "Cell")` 

