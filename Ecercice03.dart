class Compte {
  double _solde;
  final String numeroCompte;
  Compte(this.numeroCompte, [this._solde = 0.0]);
  String get solde => '${_solde.toStringAsFixed(2)} \$';
   void depot(double montant) {
    if (montant > 0) {
      _solde += montant;
    }
  }
}
void main() {
  // 7. Dans main(), créez un compte, effectuez un dépôt, puis affichez le solde.
  var monCompte = Compte('FR123456789');

  print('Compte numéro : ${monCompte.numeroCompte}');
  print('Solde initial : ${monCompte.solde}');

  // Effectuer un dépôt
  monCompte.depot(150.5);

  print('Solde après dépôt : ${monCompte.solde}');
}