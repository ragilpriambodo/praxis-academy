class GenericClass<T> {
  T ob;

  GenericClass(T o) {
    ob = o;
  }

  T getob() {
    return ob;
  }

  void showType() {
print("Type of T is  ${ob.runtimeType}");
  }
}
void main() {
    // Create a Gen reference for Integers.
    GenericClass<int> iOb = new GenericClass<int>(88);
    iOb.showType();

    // no cast is needed.
    int v = iOb.getob();
    print("value:  ${v.runtimeType}");

    // Create a Gen object for Strings.
    GenericClass<String> strOb = new GenericClass<String>("Generics Test");
    strOb.showType();

    String str = strOb.getob();
    print("value: ${str.runtimeType}");
  }
