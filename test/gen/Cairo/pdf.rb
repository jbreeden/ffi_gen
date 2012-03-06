# Generated by ffi_gen. Please do not change this file by hand.

require 'ffi'

module Cairo
  extend FFI::Library
  ffi_lib 'cairo'
  
  # (Not documented)
  # 
  # <em>This entry is only for documentation and no real method. The FFI::Enum can be accessed via #enum_type(:pdf_version).</em>
  # 
  # === Options:
  # :_4 ::
  #   
  # :_5 ::
  #   
  # 
  # @method _enum_pdf_version_
  # @return [Symbol]
  # @scope class
  enum :pdf_version, [
    :_4,
    :_5
  ]
  
  # (Not documented)
  # 
  # <em>This entry is only for documentation and no real method. The FFI::Enum can be accessed via #enum_type(:pdf_version_t).</em>
  # 
  # === Options:
  # :_4 ::
  #   
  # :_5 ::
  #   
  # 
  # @method _enum_pdf_version_t_
  # @return [Symbol]
  # @scope class
  enum :pdf_version_t, [
    :_4,
    :_5
  ]
  
  # (Not documented)
  # 
  # @method pdf_surface_create(filename, width_in_points, height_in_points)
  # @param [String] filename 
  # @param [Float] width_in_points 
  # @param [Float] height_in_points 
  # @return [FFI::Pointer(*SurfaceT)] 
  # @scope class
  attach_function :pdf_surface_create, :cairo_pdf_surface_create, [:string, :double, :double], :pointer
  
  # (Not documented)
  # 
  # @method pdf_surface_create_for_stream(write_func, closure, width_in_points, height_in_points)
  # @param [FFI::Pointer(WriteFuncT)] write_func 
  # @param [FFI::Pointer(*Void)] closure 
  # @param [Float] width_in_points 
  # @param [Float] height_in_points 
  # @return [FFI::Pointer(*SurfaceT)] 
  # @scope class
  attach_function :pdf_surface_create_for_stream, :cairo_pdf_surface_create_for_stream, [:pointer, :pointer, :double, :double], :pointer
  
  # (Not documented)
  # 
  # @method pdf_surface_restrict_to_version(surface, version)
  # @param [FFI::Pointer(*SurfaceT)] surface 
  # @param [Symbol from _enum_pdf_version_t_] version 
  # @return [nil] 
  # @scope class
  attach_function :pdf_surface_restrict_to_version, :cairo_pdf_surface_restrict_to_version, [:pointer, :pdf_version_t], :void
  
  # (Not documented)
  # 
  # @method pdf_get_versions(versions, num_versions)
  # @param [FFI::Pointer(**PdfVersionT)] versions 
  # @param [FFI::Pointer(*Int)] num_versions 
  # @return [nil] 
  # @scope class
  attach_function :pdf_get_versions, :cairo_pdf_get_versions, [:pointer, :pointer], :void
  
  # (Not documented)
  # 
  # @method pdf_version_to_string(version)
  # @param [Symbol from _enum_pdf_version_t_] version 
  # @return [String] 
  # @scope class
  attach_function :pdf_version_to_string, :cairo_pdf_version_to_string, [:pdf_version_t], :string
  
  # (Not documented)
  # 
  # @method pdf_surface_set_size(surface, width_in_points, height_in_points)
  # @param [FFI::Pointer(*SurfaceT)] surface 
  # @param [Float] width_in_points 
  # @param [Float] height_in_points 
  # @return [nil] 
  # @scope class
  attach_function :pdf_surface_set_size, :cairo_pdf_surface_set_size, [:pointer, :double, :double], :void
  
end
