

class User {
   String _name ;
   String _email ;
   String _phone ;
   String _password;
   String _accountType;

   User(this._name, this._email, this._phone, this._password, this._accountType);

   String get accountType => _accountType;

  String get password => _password;

  String get phone => _phone;

  String get email => _email;

  String get name => _name;
}