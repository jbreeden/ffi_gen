require_relative "test_utils"

gtk_include_dirs = Dir.glob('./headers/gtk+/{include,lib}/**/*')
  .select { |f| Dir.exists? f }
  .map { |d| "-I#{d}"}

common_cflags = gtk_include_dirs + [
  "-IC:\\Program Files (x86)\\LLVM\\lib\\clang\\3.5.0\\include"
]

modules = [
  {
    module_name: "Gtk",
    output: "./output/gtk/gtk.rb",
    cflags: ["-DGTK_COMPILATION"],
    ffi_lib: "libgtk-3-0",
    headers: Dir.glob('./headers/gtk+/include/gtk-3.0/gtk/*.h')
  },
  {
    module_name: "Glib",
    output: "./output/gtk/glib.rb",
    cflags: ["-DGLIB_COMPILATION"],
    ffi_lib: "libglib-2.0-0",
    headers: Dir.glob('./headers/gtk+/include/glib-2.0/glib/*.h')
  },
  {
    module_name: "GObject",
    output: "./output/gtk/gobject.rb",
    cflags: ["-DGOBJECT_COMPILATION", "-DGLIB_COMPILATION"],
    ffi_lib: "libgobject-2.0-0",
    headers: Dir.glob('./headers/gtk+/include/glib-2.0/gobject/*.h')
  }
]

modules.each do |mod|
  puts "Generating: #{mod[:output]}"
  FFIGen.generate(
    module_name: mod[:module_name],
    ffi_lib:     mod[:ffi_lib],
    cflags:      common_cflags + mod[:cflags],
    headers:     mod[:headers],
    output:      mod[:output],
    skip_macro_functions: true
  )
end