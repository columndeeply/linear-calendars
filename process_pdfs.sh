#!/usr/bin/env sh
# If you want cells with text run this script with the "-t" option

for f in *.pdf; do
	echo "> Processing $f"

	filename="$(echo "$f" | rev | cut -f 2- -d '.' | rev)"
	convert -density 300 "$f" -scale 2480x3508 -trim calendar-%d.png

	if [ "$1" != "-t" ]; then
		mv calendar-0.png new_calendar-0.png
		mv calendar-2.png new_calendar-1.png
		mv calendar-4.png new_calendar-2.png
		mv calendar-6.png new_calendar-3.png
		mv calendar-1.png new_calendar-4.png
		mv calendar-3.png new_calendar-5.png
		mv calendar-5.png new_calendar-6.png
		mv calendar-7.png new_calendar-7.png
	else
		mv calendar-8.png new_calendar-0.png
		mv calendar-10.png new_calendar-1.png
		mv calendar-12.png new_calendar-2.png
		mv calendar-14.png new_calendar-3.png
		mv calendar-9.png new_calendar-4.png
		mv calendar-11.png new_calendar-5.png
		mv calendar-13.png new_calendar-6.png
		mv calendar-15.png new_calendar-7.png
	fi

	montage new_calendar-[0-7].png -tile 4x2 -geometry +0+0 merged_calendar.png
	convert merged_calendar.png -resize 7680x5120 "$filename"$1.png

	mkdir -p "done"
	mv "$filename"$1.png "done/"
done
