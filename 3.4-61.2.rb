#encoding:utf-8
require './3.4-61.rb'

def main
  report = PlainTextReport.new
  report.output_report
end

class PlainTextReport < Report
  def output_start
  end

  def output_head
    puts("****#{@title}****")
  end

  def output_body_start
  end

  def output_line(line)
    puts(line)
  end

  def output_body_end
  end

  def output_end
  end
end

if __FILE__ == $0
  main
end
