void main(List<String> args) {
  Personne Zied = Personne('Boudhib', 'Zied', 28, 'dev')
  ..speak()
  ..nom = 'BOUDHIB'
  ..speak();

  Personne Rymen = Personne.fromJson({'nom': 'Boudhib', 'prenom':'Rymen', 'age': 6}, 'ecoliere')
  ..speak();

  var Joud = Employee('Boudhib', 'Joud', 2, DateTime.now())
  ..speak();
}

class Employee extends Personne {
  final DateTime joinDate;

  Employee(String nom, String prenom, int age, this.joinDate): super(nom, prenom, age);
  @override
  speak() {
    print('my name is Joud. i joined on $joinDate');
  }
}

class Personne {
  String _nom;
  String prenom;
  int age;
  String occupation;

  Personne(this._nom, this.prenom, this.age, [this.occupation]);
  Personne.fromJson(Map json, [this.occupation]){
    _nom = json['nom'];
    prenom = json['prenom'];
    age = json['age'];
  }

  String get nom => _nom;
  void set nom(String updateNom) => _nom = updateNom;

  

  speak(){
    print("my name is $prenom $_nom.I'm $age years old");
  }
}