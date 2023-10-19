public abstract class Client {
  private final String name;
  private final String address;
  
  public Client(String name, String address) {
    this.name = name;
    this.address = address;
  }
}

public class Bank extends Client {
  private final int branchesInsured;

  public Bank(String name, String address, int branchesInsured) {
    super(name, address);
    this.branchesInsured = branchesInsured;
  }
}

public class Resident extends Client {
  private final String insuranceType;

  public Resident(String name, String address, String insuranceType) {
    super(name, address);
    this.insuranceType = insuranceType;
  }
}
