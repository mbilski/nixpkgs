{ stdenv, fetchurl }:

stdenv.mkDerivation rec {
  version = "3.4";
  name = "xtermcontrol-${version}";

  src = fetchurl {
    url = "http://thrysoee.dk/xtermcontrol/xtermcontrol-${version}.tar.gz";
    sha256 = "1g81v9gfn08gjn1269j0qx12x36s9j6x39gl91ycay391flgzr5l";
  };

  meta = {
    description = "Enables dynamic control of xterm properties";
    longDescription = ''
      Enables dynamic control of xterm properties.
      It makes it easy to change colors, title, font and geometry of a running xterm, as well as to report the current settings of these properties.
      Window manipulations de-/iconify, raise/lower, maximize/restore and reset are also supported.
      To complete the feature set; xtermcontrol lets advanced users issue any xterm control sequence of their choosing.
    '';
    homepage = http://thrysoee.dk/xtermcontrol;
    license = stdenv.lib.licenses.gpl2;
    platforms = stdenv.lib.platforms.unix;
    maintainers = [ stdenv.lib.maintainers.derchris ];
  };
}
