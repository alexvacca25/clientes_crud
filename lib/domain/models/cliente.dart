class Cliente {
  var nombre;
  var apellido;
  var telefono;
  var estado;
  Cliente({this.nombre, this.apellido, this.telefono, this.estado});
}

List<Cliente> listaClientes = [
  Cliente(nombre: "Alex", apellido: "Vacca", telefono: "11111111", estado: "A"),
  Cliente(
      nombre: "Gabriel", apellido: "Diaz", telefono: "222222222", estado: "I"),
  Cliente(nombre: "Maria A", apellido: "Rojas", telefono: "3", estado: "A"),
];
