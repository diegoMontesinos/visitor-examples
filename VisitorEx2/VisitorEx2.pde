import java.util.LinkedList;

void setup() {
  size(600, 600);
  
  LinkedList<Client> clients = new LinkedList<Client>();
  clients.add(new Bank("BBVA", "Coyoacan", 10));
  clients.add(new Resident("Diego", "Ecatepec", "Auto"));
  clients.add(new Bank("Banamex", "Mixcoac", 10));
  clients.add(new Resident("Juan", "Tlalpan", "Vida"));
  
  for (Client client : clients) {
    client.sendMail();
  }
}

void draw() {
}
