Map<String, List> users = Map();
int register(String nome, String username, String senha, String email) {
  if (users.containsKey(username)) {
    print(users);
    return 1;
  } else {
    users[username] = ([nome, username, senha, email]);
    print(users);
    return 0;
  }
}

String validate(String username, String password) {
  String _retorno;
  if (users.containsKey(username)) {
    if (password == users[username]?[2]) {
      _retorno = users[username]?[0];
    } else {
      _retorno = "Senha inválida";
    }
  } else {
    _retorno = "Usuário não cadastrado";
  }
  return _retorno;
}

int changePassword(String username, String newPassword) {
  if (users.containsKey(username)) {
    users[username]?[2] = newPassword;
    return 0;
  } else {
    return 1;
  }
}
