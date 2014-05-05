# encode:utf-8
# Rubyによるデザインパータン、アルゴリズムを変更する:Template Method
# 変わるものと変わらないものを分離する。
# これは変わらないもの

class Report
  def initialize
    @title = '月次報告'
    @text = [ '順調', '最高の調子' ]
  end

  def output_report
    output_start
    output_head
    output_body_start
    output_body
    output_body_end
    output_end
  end

  def output_start
    raise 'Called abstract method: output_start'
  end

  def output_head
    raise 'Called abstract method: output_head'
  end
  
  def output_body_start
    raise 'Called abstract method: output_body_start'
  end

  def output_body
    @text.each do |line|
      output_line(line)
    end
  end

  def output_line
    raise 'Called abstract method: output_line'
  end

  def output_body_end
    raise 'Called abstract method: output_body_end'
  end

  def output_end
    raise 'Called abstract method: output_end'
  end

end
