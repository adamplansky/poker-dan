def get_games(file_name, nickname)
  hand_text = ""
  #line_cnt = 0
  File.open(File.dirname(__FILE__) + '/' + file_name, 'r').each_line do |line|

    if line == "\r\n" || line == "\n"
      puts hand_text if hand_text.include? nickname
      hand_text = ""
    end
    hand_text += line
    #line_cnt += 1
  end
end

file_name = ARGV[0]
nick_name = ARGV[1]
get_games(file_name, nick_name)
