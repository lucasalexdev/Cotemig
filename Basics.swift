Crud básico 

```swift

import UIKit


class Contact {

    var name: String

    var phoneNumber: String

    

    init(name: String, phoneNumber: String) {

        self.name = name

        self.phoneNumber = phoneNumber

    }

}


class ContactsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    

    @IBOutlet weak var tableView: UITableView!

    

    var contacts: [Contact] = []


    override func viewDidLoad() {

        super.viewDidLoad()

        

        // Carregue os contatos salvos (caso tenha algum) do armazenamento local aqui

        // Exemplo: contacts = loadContacts()

    }


    // Implemente os métodos de UITableViewDataSource para exibir os contatos na tabela

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return contacts.count

    }

    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)

        let contact = contacts[indexPath.row]

        cell.textLabel?.text = contact.name

        cell.detailTextLabel?.text = contact.phoneNumber

        return cell

    }

    

    // Implemente a função para adicionar um novo contato

    @IBAction func addContact(_ sender: UIBarButtonItem) {

        // Implemente um alert controller para capturar os detalhes do novo contato

        // Exemplo: let alertController = UIAlertController(title: "Novo Contato", message: nil, preferredStyle: .alert)

        

        // Adicione campos de texto ao alert controller para nome e número de telefone

        

        // Implemente ação de salvar o novo contato no array

        // Exemplo: let saveAction = UIAlertAction(title: "Salvar", style: .default) { action in

        //     if let nameTextField = alertController.textFields?[0], let phoneTextField = alertController.textFields?[1] {

        //         let newContact = Contact(name: nameTextField.text ?? "", phoneNumber: phoneTextField.text ?? "")

        //         self.contacts.append(newContact)

        //         self.tableView.reloadData()

        //         // Salve os contatos (por exemplo, em UserDefaults)

        //     }

        // }

        

        // Apresente o alert controller

    }

    

    // Implemente a função para editar um contato

    func editContact(at indexPath: IndexPath) {

        // Implemente uma tela de edição ou um alert controller semelhante ao de adicionar, preenchendo os campos com os detalhes atuais do contato

        

        // Quando o usuário salvar as alterações, atualize o contato no array e na interface

    }

    

    // Implemente a função para excluir um contato

    func deleteContact(at indexPath: IndexPath) {

        contacts.remove(at: indexPath.row)

        tableView.reloadData()

        // Atualize o armazenamento local para refletir as mudanças

    }

}

```

