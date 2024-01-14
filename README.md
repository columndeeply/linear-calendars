<p align="center">
  <img src="https://github.com/columndeeply/linear-calendars/blob/main/clean/2024.png" />
</p>

This repo is a collection of full year linear calendars in 1.5:1 aspect ratio. They should fit just fine in a 50x75cm print (20x30 inches).

You can find a clean version [here](https://github.com/columndeeply/linear-calendars/tree/main/clean) and one with text for each day of the week [here](https://github.com/columndeeply/linear-calendars/tree/main/text)

You can modify the ODS template to change colors or mark specific dates. As long as you don't change the row/column sizes everything should still work. To change years just edit the A1 cell with whatever year you want.

Once you've done your changes export it as PDF run the `process_pdfs.sh` script and your calendar should end up in the "done" folder. By default this will create the clean version, if you want text use the "-t" parameter.

A few things to keep in mind:
- The script requires `imagemagick`. Make sure you have it installed.
- The PDF can't have any header/footer. Disable them. If you're using LibreOffice you can follow these steps: https://ask.libreoffice.org/t/how-to-delete-headers-and-footers/32216/2
- It takes quite a while to run the imagemagick commands, testing it on my computer it took around 40s to process a single PDF. If you have an older machine it might take more.
