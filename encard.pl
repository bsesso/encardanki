while (<>) {
	$line = $_;
	$line =~ s/\n//g;
	$line =~ s/　/ /g;

	@strs = split (/[\s]/, $line);

	$size = @strs;

	$kanji = shift @strs;
	
	$back = shift @strs;

	print $back;

	if (@strs) {
		print "<div>(@strs)</div>";
	}

	print ",\"<font size=\"\"7\"\">$kanji</font>\"\n";



	# がいこう<div>(diplomacia)</div>,"<font size=""7"">外交</font>"
# 外交、がいこう、diplomacia
#　外交　がいこう　diplomacia
}
