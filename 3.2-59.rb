#encoding:utf-8
# Rubyによるデザインパータン、アルゴリズムを変更する:Template Method
# 変わるものと変わらないものを分離する。
# これは変わる部分
require './3.2-57.rb'

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
