# Hof University bachelors thesis LaTeX template/documentclass

This latex template is an alternative to the awesome [template](https://github.com/duncanturk/haw-hof-bachelor-latex) by [Christopher Rossbach (duncanturk)](https://github.com/duncanturk). Instead of using separate files for structuring the thesis, it leaves the structure up to you. This allows for more flexibility. Additionally, it only uses a minimal amount of packages, making it compatible with nearly every LaTeX compiler out there. Specifically, i built this template in order to be able to use LuaTeX and XeTeX. This allows you to use packages like [minted](https://ctan.org/pkg/minted) for code highlighting.

As of now, the font is set to Arial by default. You can override this by calling the  `\setmainfont{font}` command provided by fontspec.

## Important commands

The head section is, like in most LaTeX documents, created by calling `\maketitle`.

If you need a blocking note, you can create it by calling `\blockingnote`.

Want a complete block of all important table of content entries (including a list of listings, tables, figures and a glossary)? `\maketoc` will do it for you.

You need a complete header section, including title, ToC and (optionally) a blocking note? call `\makehead`. If you need a blocking note, you can enable it by calling `\setblocked` somewhere in the head section of your TeX file.

You can set all relevant title properties using `\title`, `\subtitle`, `\author`, `\supervisor`, `\company` (for the blocking note), `\faculty` and `\course` (these are optional).

The `thesis.tex` file provides an example of how to use the document class. 

## Included packages (no need to import them again)

- fontspec
- geometry
- glossaries-extra
- hyperref
- listings
- makecell
- soul
- tabular

## Deviations from the specification

The official guide for writing a thesis at Hof University specifies the top border to be 10cm and the bottom border to be 5,5cm. This is pretty hilarious, considering that the A4 paper format is 210mm x 297mm in size. This would leave you with around 14,2cm of usable space.

To mitigate this issue, the current document class does **not** adhere to the specification by default. If you want to use the "correct" format for whatever reason, you can call the `\useborderspec` command anywhere before calling `\maketitle` in order to enforce this behaviour.

## Issues

While all ToC pages will have translated headings by default (they are generated by the babel package found in `thesis.tex` - you do not have to use this though), this is **not** the case for the title page and the blocking note. I might add translation later, but implementing this behaviour is non-trivial.

If you run into problems while working with the template, consider creating a github issue or submit a pull request!

## Disclaimer

Please note that this template has not yet been checked by the university. It might not adhere to their standards. 