args @ { fetchurl, ... }:
rec {
  baseName = ''cl-l10n'';
  version = ''20161204-darcs'';

  parasites = [ "cl-l10n/test" ];

  description = ''Portable CL Locale Support'';

  deps = [ args."alexandria" args."babel" args."bordeaux-threads" args."cl-fad" args."cl-l10n-cldr" args."cl-ppcre" args."closer-mop" args."closure-common" args."cxml" args."cxml-dom" args."cxml-klacks" args."cxml-test" args."cxml-xml" args."flexi-streams" args."iterate" args."local-time" args."metabang-bind" args."puri" args."trivial-features" args."trivial-gray-streams" ];

  src = fetchurl {
    url = ''http://beta.quicklisp.org/archive/cl-l10n/2016-12-04/cl-l10n-20161204-darcs.tgz'';
    sha256 = ''1r8jgwks21az78c5kdxgw5llk9ml423vjkv1f93qg1vx3zma6vzl'';
  };

  packageName = "cl-l10n";

  asdFilesToKeep = ["cl-l10n.asd"];
  overrides = x: x;
}
/* (SYSTEM cl-l10n DESCRIPTION Portable CL Locale Support SHA256
    1r8jgwks21az78c5kdxgw5llk9ml423vjkv1f93qg1vx3zma6vzl URL
    http://beta.quicklisp.org/archive/cl-l10n/2016-12-04/cl-l10n-20161204-darcs.tgz
    MD5 c7cb0bb584b061799abaaaf2bd65c9c5 NAME cl-l10n FILENAME cl-l10n DEPS
    ((NAME alexandria FILENAME alexandria) (NAME babel FILENAME babel)
     (NAME bordeaux-threads FILENAME bordeaux-threads)
     (NAME cl-fad FILENAME cl-fad) (NAME cl-l10n-cldr FILENAME cl-l10n-cldr)
     (NAME cl-ppcre FILENAME cl-ppcre) (NAME closer-mop FILENAME closer-mop)
     (NAME closure-common FILENAME closure-common) (NAME cxml FILENAME cxml)
     (NAME cxml-dom FILENAME cxml-dom) (NAME cxml-klacks FILENAME cxml-klacks)
     (NAME cxml-test FILENAME cxml-test) (NAME cxml-xml FILENAME cxml-xml)
     (NAME flexi-streams FILENAME flexi-streams)
     (NAME iterate FILENAME iterate) (NAME local-time FILENAME local-time)
     (NAME metabang-bind FILENAME metabang-bind) (NAME puri FILENAME puri)
     (NAME trivial-features FILENAME trivial-features)
     (NAME trivial-gray-streams FILENAME trivial-gray-streams))
    DEPENDENCIES
    (alexandria babel bordeaux-threads cl-fad cl-l10n-cldr cl-ppcre closer-mop
     closure-common cxml cxml-dom cxml-klacks cxml-test cxml-xml flexi-streams
     iterate local-time metabang-bind puri trivial-features
     trivial-gray-streams)
    VERSION 20161204-darcs SIBLINGS NIL PARASITES (cl-l10n/test)) */
