use @printf[I32](fmt: Pointer[U8] tag, ...)
primitive Print
  fun apply(text: String val) =>
    @printf(text.cstring())

primitive Println
  fun apply(text: String val) =>
    @printf((text + "\n").cstring())
