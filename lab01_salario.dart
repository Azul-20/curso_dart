abstract class EmpleadoTienda {
  String nombre;
  int horasTrabajadas;

  EmpleadoTienda(this.nombre, this.horasTrabajadas);
  
  double calcularSalario();

  void mostrarDetalles() {
    print('Nombre: $nombre');
    print('Horas Trabajadas: $horasTrabajadas');
  }
}

class Vendedor extends EmpleadoTienda {
  double tasaPorHora;

  Vendedor(String nombre, int horasTrabajadas) : tasaPorHora=20.00, super(nombre, horasTrabajadas);

  @override
  double calcularSalario() {
    return horasTrabajadas * tasaPorHora;
  }
}

class Cajero extends EmpleadoTienda {
  double tasaPorHora;

  Cajero(String nombre, int horasTrabajadas, this.tasaPorHora) : super(nombre, horasTrabajadas);

  @override
  double calcularSalario() {
    return horasTrabajadas * tasaPorHora;
  }
}

void main() {
  var vendedor = Vendedor('Carlos Alvarez', 40);
  var cajero = Cajero('Kevin Perez', 40, 45.00);
  vendedor.mostrarDetalles();
  print('Salario: \$${vendedor.calcularSalario()}');
  print('\n');
  cajero.mostrarDetalles();
  print('Salario: \$${cajero.calcularSalario()}');
}