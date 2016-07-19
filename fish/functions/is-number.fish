function is-number
	expr "$argv" : '^[-+]\?[0-9]*\.\?[0-9]*[0-9]$'
	# printf '%g' "$argv" 2>/dev/null 1>&2
end
