# text2pdf 1.1

This is the latest version of text2pdf, and offers a number of improvements over
version 1.0. As you might be able to guess from the name, text2pdf converts text
files to PDF. You can specify the font, number of lines and columns, paper size
and various other options from the command line. By default, long lines will be
wrapped, and a formfeed character (^L) will cause a page break. I've dumped the
result of text2pdf -h in case you want to see all the options now.

The program is actually very simple to use. All you normally do is
`text2pdf myfile > myfile.pdf`.

A nice little test on UNIX is to get the help in a PDF file:
`text2pdf -h | text2pdf > help.pdf`

## Want it?
A number of precompiled binaries are available:

- [Solaris 2.4](http://www.eprg.org/pdfcorner/text2pdf/text2pdf.solaris2.4.bin)
- [SunOS 4.1.1](http://www.eprg.org/pdfcorner/text2pdf/text2pdf.sunos4.1.1.bin)
- [MS-DOS](http://www.eprg.org/pdfcorner/text2pdf/text2pdf.exe)
- [Windows 95 (and NT?)](http://www.eprg.org/pdfcorner/text2pdf/text2pdf.win95.exe) (Instructions for [desktop operation](http://www.eprg.org/pdfcorner/text2pdf/win95setup.php) also available)
- Some generously donated by Patrick Cunningham from [Karmak, Inc.](http://www.karmak.com/)
  - [Alpha/OpenVMS](http://www.eprg.org/pdfcorner/text2pdf/text2pdf.axp.bin)
  - [VAX/OpenVMS](http://www.eprg.org/pdfcorner/text2pdf/text2pdf.vax.bin)
- [UnixWare](http://www.eprg.org/pdfcorner/text2pdf/text2pdf.unixware.bin) (tested with 1.1 and 2.1). Thanks to Thanh Ma for this.

If you've got something else, here's the source. There's one #define you'll have to change if you're compiling for a PC. Otherwise, it should just work :-).

---

Nelson Beebe has very kindly produced a [GNU-standard Makefile](Makefile). This is particularly useful if you need to install text2pdf on a number of machines.

And many thanks to Bertrand Decouty for [this UNIX man page](text2pdf.1)

You can distribute binaries and source, but please don't change anything without letting me know.

Mail me, [Phil Smith <phil@bagobytes.co.uk>](mailto:phil@bagobytes.co.uk), if you have any comments. If you compile text2pdf for some other platform, I can put it up here.

[Any insults?](http://www.eprg.org/pdfcorner/text2pdf/insults.html)

[PDF Corner](http://www.eprg.org/pdfcorner/)
