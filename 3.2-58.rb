#encoding:utf-8
require './3.2-57.rb'

def main
  report = HTMLReport.new
  report.output_report
end

class HTMLReport < Report
  def output_start
    puts('<html>')
  end

  def output_head
    puts('  <head>')
    puts("    <title>#{@title}</title>")
    puts('  </head>')
  end

  def output_body_start
    puts('  <body>')
  end

  def output_line(line)
    puts("    <p>#{line}</p>")
  end

  def output_body_end
    puts('  </body>')
  end

  def output_end
    puts('</html>')
  end
end

if __FILE__ == $0
  main
end
