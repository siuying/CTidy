module Tidy
  module_function

  def XHTML(html, encoding="UTF8")
    error_ptr = Pointer.new(:id)
    diagnostics_ptr = Pointer.new(:object)
    xhtml = CTidy.tidy.tidyString(html, inputFormat:0, outputFormat:2, encoding:encoding, diagnostics:diagnostics_ptr, error:error_ptr)
    raise error_ptr[0].description if error_ptr[0]
    xhtml
  end
end