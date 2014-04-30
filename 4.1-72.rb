#encoding: utf-8

class Formatter
  def output_report(title, text)
    raise 'Abstract method called'
  end
end

class HTMLFormatter < Formatter
  def output_report(title, text)
    result = ""
    result += '<html>\n'
    result += '  <head>\n'
    result += "    <title>#{title}</title>\n"
    result += '  </head>\n'
    result += '  <body>\n'
    text.each do |line|
      result += "    <p>#{line}</p>\n"
    end
    result += '  </body>\n'
    result += '</html>\n'
    return result
  end
end

class TEXTFormatter < Formatter
  def output_report(title, text)
    result = ""
    result += "***** #{title} *****"
    text.each do |line|
      result += line
    end
    return result
  end
end
