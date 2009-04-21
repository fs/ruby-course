# The Book of Ruby - http://www.sapphiresteel.com

# "double-quoted" heredoc
hdoc1 = <<EODOC
I wandered lonely as a #{"cloud".upcase},
That floats on high o'er vale and hill...
EODOC

# 'single-quoted' heredoc
hdoc2 = <<'EODOC'
I wandered lonely as a #{"cloud".upcase},
That floats on high o'er vale and hill...
EODOC

# heredoc with indented end marker
hdoc3 = <<-EODOC
I wandered lonely as a #{"cloud".upcase},
That floats on high o'er vale and hill...
	EODOC

# heredoc with 'reserved word' end marker
hdoc4 = <<def
I wandered lonely as a #{"cloud".upcase},
That floats on high o'er vale and hill...
def


def printout( doc )
	puts( "'#{doc}'" )
end

def printout2( doc )
	puts( "'#{doc.chomp}'" )
end

printout( hdoc1 )
printout( hdoc2 )
printout( hdoc3 )
printout( hdoc4 )

printout2( hdoc4 )
