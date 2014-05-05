#encoding: utf-8

class Formatter
  def output_report(title, text)
    raise 'Abstract method called'
  end
end

class HTMLFormatter < Formatter
  def output_report(title, text)
    result = ""
    result += "<html>\n"
    result += "  <head>\n"
    result += "    <title>#{title}</title>\n"
    result += "  </head>\n"
    result += "  <body>\n"
    text.each do |line|
      result += "    <p>#{line}</p>\n"
    end
    result += "  </body>\n"
    result += "</html>\n"
    return result
  end
end

class TEXTFormatter < Formatter
  def output_report(title, text)
    result = ""
    result += "***** #{title} *****\n"
    text.each do |line|
      result += line + "\n"
    end
    return result
  end
end

class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(formatter)
    @title = '月次報告'
    @text = [ '順調', '最高の調子', 'ちょっと悪い' ]
    @formatter = formatter
  end

  def output_report
    return @formatter.output_report(@title, @text)
  end
end

if __FILE__ == $0
  s = Report.new(TEXTFormatter.new).output_report
  puts s
  s = Report.new(HTMLFormatter.new).output_report
  puts s
end
