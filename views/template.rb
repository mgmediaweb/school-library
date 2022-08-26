def header
  system('cls')
  print "\n╔═══════════════════════════════════════════════════════════╗"
  print "#{blankline}\n║                  School Library System                    ║"
  print "#{blankline}\n╠═══════════════════════════════════════════════════════════╣"
end

def footer
  print "\n║                                                           ║"
  print "\n╠═══════════════════════════════════════════════════════════╣"
  print "#{blankline}\n║           Press any key to return to main menu            ║"
  print "#{blankline}\n╚═══════════════════════════════════════════════════════════╝\n\n"
end

def blankline
  print "\n║                                                           ║"
end

def whitespace(line)
  whiteline = ''
  (0..(@width - line - 1)).each do |_i|
    whiteline += ' '
  end
  whiteline
end
