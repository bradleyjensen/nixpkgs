{ stdenv, fetchFromGitHub, pkgconfig, meson, ninja, python3
, gtk3, desktop-file-utils, gtksourceview, webkitgtk, gtkspell3, pantheon
, libgee, discount, wrapGAppsHook }:

stdenv.mkDerivation rec {
  pname = "quilter";
  version = "1.9.2";

  src = fetchFromGitHub {
    owner = "lainsce";
    repo = pname;
    rev = version;
    sha256 = "10r6d695avxj31yghb82ymgnd7f1dawwbqz3gfy0rycjza9dxvv8";
  };

  nativeBuildInputs = [
    desktop-file-utils
    meson
    ninja
    pantheon.vala
    pkgconfig
    python3
    wrapGAppsHook
  ];

  buildInputs = [
    discount
    gtk3
    gtksourceview
    gtkspell3
    libgee
    pantheon.elementary-icon-theme
    pantheon.granite
    webkitgtk
  ];

  postPatch = ''
    chmod +x meson/post_install.py
    patchShebangs meson/post_install.py
  '';

  meta = with stdenv.lib; {
    description = "Focus on your writing - designed for elementary OS";
    homepage = https://github.com/lainsce/quilter;
    license = licenses.gpl2Plus;
    maintainers = with maintainers; [ worldofpeace ];
    platforms = platforms.linux;
  };
}
