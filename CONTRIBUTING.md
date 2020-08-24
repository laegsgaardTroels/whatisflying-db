# Contribution guidelines

## Requirements

You will need [jpegoptim](https://github.com/tjko/jpegoptim) and [svgo](https://github.com/svg/svgo) to process image files. For Debian based GNU/Linux systems, you can install both components by running the following commands:

```bash
sudo apt install jpegoptim nodejs npm
sudo npm -i -g svgo
```

## Photographs

Photographs must be in ***JPEG*** format and must not exceed **3000x2000** pixels. When adding or replacing photographs, do not forget to run the optimization script by executing the `./optimize.sh` command within the project directory.

Most important, photographs must be published under an open license that allows reusing and redistributing them. [Creative Commons](https://creativecommons.org/licenses/) licenses are highly preferred over other licenses, because they are well known and widely used among photographers.

## Logos

Airline logos must be in **SVG** format, **without background**, except when the background color is part of the logo. When adding or replacing logos, do not forget to run the optimization script by executing the `./optimize.sh` command within the project directory.

## CSV files

Files must be encoded in **UTF-8 without BOM** and use the **Unix line break** character.

All values are quoted, except for the null value which is represented by the keyword NULL without quotes. The boolean values "true" and "false" are represented respectively by the numeric values "1" and "0".
