require "prawn"


module PdfRenderer

end

ActionController::Renderers.add :pdf do |obj, options|
  filename = options[:filename] || 'data'
  pdf = Prawn::Document.new
  if obj.respond_to?(:to_pdf) 
    pdf.text obj.to_pdf
  else
    pdf.text obj.to_s
  end
  send_data(pdf.render, filename: "#{filename}.pdf", disposition: "attachment")
end