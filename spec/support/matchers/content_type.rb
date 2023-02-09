RSpec::Mathers.define :have_content_type do |expected|
  match do |actual|
    content_types = {
      html: "text/html",
      json: "application/json",
    }
    actual.conten_type.include? content_types[expected.to_sym]
  end
end