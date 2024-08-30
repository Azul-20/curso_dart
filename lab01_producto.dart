class Producto {
    String nombre;
    double precio;
    String categoria;

    Producto(this.nombre, this.precio, this.categoria);

    void mostrarDetalles() {
        print('Nombre: $nombre');
        print('Precio: $precio');
        print('Categoria: $categoria');
    }
}

class Electronico extends Producto {
  int garantia;

  Electronico(String nombre, double precio, String categoria, this.garantia) : super(nombre, precio, categoria);

  Electronico.soloNombreYPrecio(String nombre, double precio) : garantia= 12, super(nombre, precio, 'Electrónico');

  @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print('Garantía: $garantia meses');
  }
}

void main() {
    var producto1 = Producto('Lavadora', 2.40, 'Electrodoméstico');
    var producto2 = Electronico('Televisor', 1200.00, 'Electrónico', 18);
    var producto3 = Electronico.soloNombreYPrecio('Laptop', 7600.00);
    producto1.mostrarDetalles();
    print('\n');
    producto2.mostrarDetalles();
    print('\n');
    producto3.mostrarDetalles(); 
}


