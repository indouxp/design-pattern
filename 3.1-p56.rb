# encode:utf-8
# Rubyによるデザインパータン、アルゴリズムを変更する:Template Method
# 複雑になってしまったロジック
# これに、さらにフォーマットが追加となり、postscriptが必要になったら

def main
  report = Report.new
  report.output_report(:plain)
end

class Report
  def initialize
    @title = '月次報告'
    @text = [ '順調', '最高の調子' ]
  end

  def output_report(format)
    if format == :plain
      puts("*** #{@title} ***")
    else
      puts('<html>')
      puts('  <head>')
      puts("    <title>#{@title}</title>")
      puts('  </head>')
      puts('  <body>')
    end

    @text.each do |line|
      if format == :plain
        puts(line)
      else
        puts("    <p>#{line}</p>")
      end
    end

    if format == :html
      puts('  </body>')
      puts('</html>')
    end
  end
end

if __FILE__ == $0
  main
end
