# Generated by ffi-gen. Please do not change this file by hand.

require 'ffi'

module CEF
  extend FFI::Library
  ffi_lib 'cef'
  
  def self.attach_function(name, *_)
    begin; super; rescue FFI::NotFoundError => e
      (class << self; self; end).class_eval { define_method(name) { |*_| raise e } }
    end
  end
  
  # Allocate a new string multimap.
  # 
  # @method string_multimap_alloc()
  # @return [FFI::Pointer(StringMultimap)] 
  # @scope class
  attach_function :string_multimap_alloc, :cef_string_multimap_alloc, [], :pointer
  
  # Return the number of elements in the string multimap.
  # 
  # @method string_multimap_size(map)
  # @param [FFI::Pointer(StringMultimap)] map 
  # @return [Integer] 
  # @scope class
  attach_function :string_multimap_size, :cef_string_multimap_size, [:pointer], :int
  
  # Return the number of values with the specified key.
  # 
  # @method string_multimap_find_count(map, key)
  # @param [FFI::Pointer(StringMultimap)] map 
  # @param [FFI::Pointer(*String)] key 
  # @return [Integer] 
  # @scope class
  attach_function :string_multimap_find_count, :cef_string_multimap_find_count, [:pointer, :pointer], :int
  
  # Return the value_index-th value with the specified key.
  # 
  # @method string_multimap_enumerate(map, key, value_index, value)
  # @param [FFI::Pointer(StringMultimap)] map 
  # @param [FFI::Pointer(*String)] key 
  # @param [Integer] value_index 
  # @param [FFI::Pointer(*String)] value 
  # @return [Integer] 
  # @scope class
  attach_function :string_multimap_enumerate, :cef_string_multimap_enumerate, [:pointer, :pointer, :int, :pointer], :int
  
  # Return the key at the specified zero-based string multimap index.
  # 
  # @method string_multimap_key(map, index, key)
  # @param [FFI::Pointer(StringMultimap)] map 
  # @param [Integer] index 
  # @param [FFI::Pointer(*String)] key 
  # @return [Integer] 
  # @scope class
  attach_function :string_multimap_key, :cef_string_multimap_key, [:pointer, :int, :pointer], :int
  
  # Return the value at the specified zero-based string multimap index.
  # 
  # @method string_multimap_value(map, index, value)
  # @param [FFI::Pointer(StringMultimap)] map 
  # @param [Integer] index 
  # @param [FFI::Pointer(*String)] value 
  # @return [Integer] 
  # @scope class
  attach_function :string_multimap_value, :cef_string_multimap_value, [:pointer, :int, :pointer], :int
  
  # Append a new key/value pair at the end of the string multimap.
  # 
  # @method string_multimap_append(map, key, value)
  # @param [FFI::Pointer(StringMultimap)] map 
  # @param [FFI::Pointer(*String)] key 
  # @param [FFI::Pointer(*String)] value 
  # @return [Integer] 
  # @scope class
  attach_function :string_multimap_append, :cef_string_multimap_append, [:pointer, :pointer, :pointer], :int
  
  # Clear the string multimap.
  # 
  # @method string_multimap_clear(map)
  # @param [FFI::Pointer(StringMultimap)] map 
  # @return [nil] 
  # @scope class
  attach_function :string_multimap_clear, :cef_string_multimap_clear, [:pointer], :void
  
  # Free the string multimap.
  # 
  # @method string_multimap_free(map)
  # @param [FFI::Pointer(StringMultimap)] map 
  # @return [nil] 
  # @scope class
  attach_function :string_multimap_free, :cef_string_multimap_free, [:pointer], :void
  
end