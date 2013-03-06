require 'ffi'

require "webp_ffi/version"

module WebpFfi
  extend FFI::Library

  # Try loading in order.
  library = File.dirname(__FILE__) + "/../ext/webp_ffi/webp_ffi"
  candidates = ['.bundle', '.so', '.dylib', ''].map { |ext| library + ext }
  ffi_lib(candidates)

  attach_function :test, [:int], :int
end