# This Makefile was generated by the Cake3
# https://github.com/grwlf/cake3

GUARD = .cake3/GUARD_$(1)_$(shell echo $($(1)) | md5sum | cut -d ' ' -f 1)

ifeq ($(MAIN),1)
unexport MAIN

# Main section

URCC = $(shell $(shell urweb -print-ccompiler) -print-prog-name=gcc)
URCPP = $(shell $(shell urweb -print-ccompiler) -print-prog-name=g++)
URINCL = -I$(shell urweb -print-cinclude) 
URVERSION = $(shell urweb -version)
.PHONY: all
all: ./HomePage.db ./HomePage.exe ./HomePage.sql ./Makefile
.PHONY: dropdb
dropdb: ./HomePage.db ./Makefile
./HomePage.db: ./HomePage.exe ./HomePage.sql ./Makefile
	dropdb --if-exists HomePage
	createdb HomePage
	psql -f ./HomePage.sql HomePage
	touch ./HomePage.db
./HomePage.exe: .fix-multy1
./HomePage.urp: ./HomePage.ur ./HomePage.urs ./Makefile ./lib/uru3/Bootstrap/test/B1.urp ./lib/uru3/Bootstrap/test/B2.urp ./lib/uru3/Bootstrap/test/B3_Login.urp ./lib/uru3/Bootstrap/test/Modal.urp ./lib/uru3/Bootstrap/test/Narrow.urp ./lib/urweb-callback/demo/Demo2.urp ./lib/urweb-compet/Compet.urp ./lib/urweb-monad-pack/test/XmlGenDemo.urp .cake3/tmp__HomePage_in autogen/Slides_Minsk_2014_pdf.ur autogen/Slides_Minsk_2014_pdf.urs autogen/Slides_Minsk_2014_pdf_c.h autogen/Slides_Minsk_2014_pdf_c.o
	cat .cake3/tmp__HomePage_in > ./HomePage.urp
.cake3/tmp__HomePage_in: ./Makefile
	-rm -rf .cake3/tmp__HomePage_in
	echo 'debug' >> .cake3/tmp__HomePage_in
	echo 'library ./lib/urweb-monad-pack/test/XmlGenDemo' >> .cake3/tmp__HomePage_in
	echo 'library ./lib/urweb-compet/Compet' >> .cake3/tmp__HomePage_in
	echo 'library ./lib/urweb-callback/demo/Demo2' >> .cake3/tmp__HomePage_in
	echo 'library ./lib/uru3/Bootstrap/test/B1' >> .cake3/tmp__HomePage_in
	echo 'library ./lib/uru3/Bootstrap/test/B2' >> .cake3/tmp__HomePage_in
	echo 'library ./lib/uru3/Bootstrap/test/B3_Login' >> .cake3/tmp__HomePage_in
	echo 'library ./lib/uru3/Bootstrap/test/Modal' >> .cake3/tmp__HomePage_in
	echo 'library ./lib/uru3/Bootstrap/test/Narrow' >> .cake3/tmp__HomePage_in
	echo 'sql ./HomePage.sql' >> .cake3/tmp__HomePage_in
	echo 'database dbname=HomePage' >> .cake3/tmp__HomePage_in
	echo 'rewrite all HomePage/main' >> .cake3/tmp__HomePage_in
	echo 'include autogen/Slides_Minsk_2014_pdf_c.h' >> .cake3/tmp__HomePage_in
	echo 'link autogen/Slides_Minsk_2014_pdf_c.o' >> .cake3/tmp__HomePage_in
	echo 'ffi autogen/Slides_Minsk_2014_pdf_c' >> .cake3/tmp__HomePage_in
	echo 'ffi autogen/Slides_Minsk_2014_pdf_js' >> .cake3/tmp__HomePage_in
	echo 'allow mime application/pdf' >> .cake3/tmp__HomePage_in
	echo 'safeGet Slides_Minsk_2014_pdf/blobpage' >> .cake3/tmp__HomePage_in
	echo 'safeGet Slides_Minsk_2014_pdf/blob' >> .cake3/tmp__HomePage_in
	echo '' >> .cake3/tmp__HomePage_in
	echo 'autogen/Slides_Minsk_2014_pdf' >> .cake3/tmp__HomePage_in
	echo './HomePage' >> .cake3/tmp__HomePage_in
./lib/urweb-compet/Compet.exe: .fix-multy3
./lib/urweb-compet/Compet.urp: ./Makefile ./lib/uru3/Bootstrap/lib.urp ./lib/urweb-compet/src/Compet.ur ./lib/urweb-compet/src/Compet.urs ./lib/urweb-compet/src/DragTable.ur ./lib/urweb-compet/src/StyleSoup.ur ./lib/urweb-compet/src/XmlGen.ur ./lib/urweb-monad-pack/lib.urp ./lib/urweb-prelude/lib.urp .cake3/tmp__liburweb-competCompet_in autogen/Compet_css.ur autogen/Compet_css.urs autogen/Compet_css_c.h autogen/Compet_css_c.o
	cat .cake3/tmp__liburweb-competCompet_in > ./lib/urweb-compet/Compet.urp
.cake3/tmp__liburweb-competCompet_in: ./Makefile
	-rm -rf .cake3/tmp__liburweb-competCompet_in
	echo 'allow mime text/javascript' >> .cake3/tmp__liburweb-competCompet_in
	echo 'allow mime text/css' >> .cake3/tmp__liburweb-competCompet_in
	echo 'allow mime image/jpeg' >> .cake3/tmp__liburweb-competCompet_in
	echo 'allow mime image/png' >> .cake3/tmp__liburweb-competCompet_in
	echo 'allow mime image/gif' >> .cake3/tmp__liburweb-competCompet_in
	echo 'allow mime application/octet-stream' >> .cake3/tmp__liburweb-competCompet_in
	echo 'allow url /Compet/*' >> .cake3/tmp__liburweb-competCompet_in
	echo 'allow url http://github.com*' >> .cake3/tmp__liburweb-competCompet_in
	echo 'allow url http://impredicative.com*' >> .cake3/tmp__liburweb-competCompet_in
	echo 'allow url http://hit.msk.ru*' >> .cake3/tmp__liburweb-competCompet_in
	echo 'database dbname=Compet' >> .cake3/tmp__liburweb-competCompet_in
	echo 'safeGet Compet/main' >> .cake3/tmp__liburweb-competCompet_in
	echo 'safeGet Compet/init' >> .cake3/tmp__liburweb-competCompet_in
	echo 'sql ../.././lib/urweb-compet/Compet.sql' >> .cake3/tmp__liburweb-competCompet_in
	echo 'library ../.././lib/uru3/Bootstrap' >> .cake3/tmp__liburweb-competCompet_in
	echo 'library ../.././lib/urweb-monad-pack' >> .cake3/tmp__liburweb-competCompet_in
	echo 'library ../.././lib/urweb-prelude' >> .cake3/tmp__liburweb-competCompet_in
	echo 'include ../../autogen/Compet_css_c.h' >> .cake3/tmp__liburweb-competCompet_in
	echo 'link ../../autogen/Compet_css_c.o' >> .cake3/tmp__liburweb-competCompet_in
	echo 'ffi ../../autogen/Compet_css_c' >> .cake3/tmp__liburweb-competCompet_in
	echo 'ffi ../../autogen/Compet_css_js' >> .cake3/tmp__liburweb-competCompet_in
	echo 'allow mime text/css' >> .cake3/tmp__liburweb-competCompet_in
	echo 'safeGet Compet_css/blobpage' >> .cake3/tmp__liburweb-competCompet_in
	echo 'safeGet Compet_css/blob' >> .cake3/tmp__liburweb-competCompet_in
	echo '' >> .cake3/tmp__liburweb-competCompet_in
	echo '$$/list' >> .cake3/tmp__liburweb-competCompet_in
	echo '$$/string' >> .cake3/tmp__liburweb-competCompet_in
	echo '$$/option' >> .cake3/tmp__liburweb-competCompet_in
	echo '../.././lib/urweb-compet/src/XmlGen' >> .cake3/tmp__liburweb-competCompet_in
	echo '../../autogen/Compet_css' >> .cake3/tmp__liburweb-competCompet_in
	echo '../.././lib/urweb-compet/src/StyleSoup' >> .cake3/tmp__liburweb-competCompet_in
	echo '../.././lib/urweb-compet/src/DragTable' >> .cake3/tmp__liburweb-competCompet_in
	echo '../.././lib/urweb-compet/src/Compet' >> .cake3/tmp__liburweb-competCompet_in
./lib/urweb-prelude/lib.urp: ./Makefile ./lib/urweb-prelude/src/Prelude.ur .cake3/tmp__liburweb-preludelib_in
	cat .cake3/tmp__liburweb-preludelib_in > ./lib/urweb-prelude/lib.urp
.cake3/tmp__liburweb-preludelib_in: ./Makefile
	-rm -rf .cake3/tmp__liburweb-preludelib_in
	echo '' >> .cake3/tmp__liburweb-preludelib_in
	echo '$$/list' >> .cake3/tmp__liburweb-preludelib_in
	echo '../.././lib/urweb-prelude/src/Prelude' >> .cake3/tmp__liburweb-preludelib_in
./lib/uru3/Bootstrap/test/Narrow.exe: ./Makefile ./lib/uru3/Bootstrap/test/Narrow.urp $(call GUARD,URVERSION)
	urweb -dbms sqlite ./lib/uru3/Bootstrap/test/Narrow
./lib/uru3/Bootstrap/test/Narrow.urp: ./Makefile ./lib/uru3/Bootstrap/lib.urp ./lib/uru3/Bootstrap/test/Narrow.ur .cake3/tmp__liburu3BootstraptestNarrow_in autogen/Narrow_css.ur autogen/Narrow_css.urs autogen/Narrow_css_c.h autogen/Narrow_css_c.o
	cat .cake3/tmp__liburu3BootstraptestNarrow_in > ./lib/uru3/Bootstrap/test/Narrow.urp
.cake3/tmp__liburu3BootstraptestNarrow_in: ./Makefile
	-rm -rf .cake3/tmp__liburu3BootstraptestNarrow_in
	echo 'library ../../../.././lib/uru3/Bootstrap' >> .cake3/tmp__liburu3BootstraptestNarrow_in
	echo 'include ../../../../autogen/Narrow_css_c.h' >> .cake3/tmp__liburu3BootstraptestNarrow_in
	echo 'link ../../../../autogen/Narrow_css_c.o' >> .cake3/tmp__liburu3BootstraptestNarrow_in
	echo 'ffi ../../../../autogen/Narrow_css_c' >> .cake3/tmp__liburu3BootstraptestNarrow_in
	echo 'ffi ../../../../autogen/Narrow_css_js' >> .cake3/tmp__liburu3BootstraptestNarrow_in
	echo 'allow mime text/css' >> .cake3/tmp__liburu3BootstraptestNarrow_in
	echo 'safeGet Narrow_css/blobpage' >> .cake3/tmp__liburu3BootstraptestNarrow_in
	echo 'safeGet Narrow_css/blob' >> .cake3/tmp__liburu3BootstraptestNarrow_in
	echo 'ffi ../../../.././lib/uru3/Bootstrap/NavTag' >> .cake3/tmp__liburu3BootstraptestNarrow_in
	echo '' >> .cake3/tmp__liburu3BootstraptestNarrow_in
	echo '$$/list' >> .cake3/tmp__liburu3BootstraptestNarrow_in
	echo '../../../../autogen/Narrow_css' >> .cake3/tmp__liburu3BootstraptestNarrow_in
	echo '../../../.././lib/uru3/Bootstrap/test/Narrow' >> .cake3/tmp__liburu3BootstraptestNarrow_in
./lib/uru3/Bootstrap/lib.urp: ./Makefile ./lib/uru3/Bootstrap/../JQuery/lib.urp ./lib/uru3/Bootstrap/../Uru/lib.urp ./lib/uru3/Bootstrap/Bootstrap.ur ./lib/uru3/Bootstrap/Bootstrap.urs ./lib/uru3/Bootstrap/FormSignin.ur .cake3/tmp__liburu3Bootstraplib_in autogen/Bootstrap_css.ur autogen/Bootstrap_css.urs autogen/Bootstrap_css_c.h autogen/Bootstrap_css_c.o autogen/Bootstrap_min_js.ur autogen/Bootstrap_min_js.urs autogen/Bootstrap_min_js_c.h autogen/Bootstrap_min_js_c.o autogen/Bootstrap_theme_css.ur autogen/Bootstrap_theme_css.urs autogen/Bootstrap_theme_css_c.h autogen/Bootstrap_theme_css_c.o autogen/FormSignin_css.ur autogen/FormSignin_css.urs autogen/FormSignin_css_c.h autogen/FormSignin_css_c.o autogen/Glyphicons_halflings_regular_eot.ur autogen/Glyphicons_halflings_regular_eot.urs autogen/Glyphicons_halflings_regular_eot_c.h autogen/Glyphicons_halflings_regular_eot_c.o autogen/Glyphicons_halflings_regular_svg.ur autogen/Glyphicons_halflings_regular_svg.urs autogen/Glyphicons_halflings_regular_svg_c.h autogen/Glyphicons_halflings_regular_svg_c.o autogen/Glyphicons_halflings_regular_ttf.ur autogen/Glyphicons_halflings_regular_ttf.urs autogen/Glyphicons_halflings_regular_ttf_c.h autogen/Glyphicons_halflings_regular_ttf_c.o autogen/Glyphicons_halflings_regular_woff.ur autogen/Glyphicons_halflings_regular_woff.urs autogen/Glyphicons_halflings_regular_woff_c.h autogen/Glyphicons_halflings_regular_woff_c.o
	cat .cake3/tmp__liburu3Bootstraplib_in > ./lib/uru3/Bootstrap/lib.urp
.cake3/tmp__liburu3Bootstraplib_in: ./Makefile
	-rm -rf .cake3/tmp__liburu3Bootstraplib_in
	echo 'rewrite style Bootstrap/bs3_table table' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'rewrite style Bootstrap/* [-]' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'library ../../.././lib/uru3/Bootstrap/../Uru' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'library ../../.././lib/uru3/Bootstrap/../JQuery' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'include ../../../autogen/Glyphicons_halflings_regular_eot_c.h' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'link ../../../autogen/Glyphicons_halflings_regular_eot_c.o' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'ffi ../../../autogen/Glyphicons_halflings_regular_eot_c' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'ffi ../../../autogen/Glyphicons_halflings_regular_eot_js' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'allow mime application/vnd.ms-fontobject' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'safeGet Glyphicons_halflings_regular_eot/blobpage' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'safeGet Glyphicons_halflings_regular_eot/blob' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'include ../../../autogen/Glyphicons_halflings_regular_svg_c.h' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'link ../../../autogen/Glyphicons_halflings_regular_svg_c.o' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'ffi ../../../autogen/Glyphicons_halflings_regular_svg_c' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'ffi ../../../autogen/Glyphicons_halflings_regular_svg_js' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'allow mime image/svg+xml' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'safeGet Glyphicons_halflings_regular_svg/blobpage' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'safeGet Glyphicons_halflings_regular_svg/blob' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'include ../../../autogen/Glyphicons_halflings_regular_ttf_c.h' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'link ../../../autogen/Glyphicons_halflings_regular_ttf_c.o' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'ffi ../../../autogen/Glyphicons_halflings_regular_ttf_c' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'ffi ../../../autogen/Glyphicons_halflings_regular_ttf_js' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'allow mime application/x-font-ttf' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'safeGet Glyphicons_halflings_regular_ttf/blobpage' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'safeGet Glyphicons_halflings_regular_ttf/blob' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'include ../../../autogen/Glyphicons_halflings_regular_woff_c.h' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'link ../../../autogen/Glyphicons_halflings_regular_woff_c.o' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'ffi ../../../autogen/Glyphicons_halflings_regular_woff_c' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'ffi ../../../autogen/Glyphicons_halflings_regular_woff_js' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'allow mime application/font-woff' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'safeGet Glyphicons_halflings_regular_woff/blobpage' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'safeGet Glyphicons_halflings_regular_woff/blob' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'include ../../../autogen/Bootstrap_css_c.h' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'link ../../../autogen/Bootstrap_css_c.o' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'ffi ../../../autogen/Bootstrap_css_c' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'ffi ../../../autogen/Bootstrap_css_js' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'allow mime text/css' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'safeGet Bootstrap_css/blobpage' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'safeGet Bootstrap_css/blob' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'include ../../../autogen/Bootstrap_theme_css_c.h' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'link ../../../autogen/Bootstrap_theme_css_c.o' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'ffi ../../../autogen/Bootstrap_theme_css_c' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'ffi ../../../autogen/Bootstrap_theme_css_js' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'allow mime text/css' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'safeGet Bootstrap_theme_css/blobpage' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'safeGet Bootstrap_theme_css/blob' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'include ../../../autogen/Bootstrap_min_js_c.h' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'link ../../../autogen/Bootstrap_min_js_c.o' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'ffi ../../../autogen/Bootstrap_min_js_c' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'ffi ../../../autogen/Bootstrap_min_js_js' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'allow mime text/javascript' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'safeGet Bootstrap_min_js/blobpage' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'safeGet Bootstrap_min_js/blob' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'include ../../../autogen/FormSignin_css_c.h' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'link ../../../autogen/FormSignin_css_c.o' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'ffi ../../../autogen/FormSignin_css_c' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'ffi ../../../autogen/FormSignin_css_js' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'allow mime text/css' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'safeGet FormSignin_css/blobpage' >> .cake3/tmp__liburu3Bootstraplib_in
	echo 'safeGet FormSignin_css/blob' >> .cake3/tmp__liburu3Bootstraplib_in
	echo '' >> .cake3/tmp__liburu3Bootstraplib_in
	echo '../../../autogen/Glyphicons_halflings_regular_eot' >> .cake3/tmp__liburu3Bootstraplib_in
	echo '../../../autogen/Glyphicons_halflings_regular_svg' >> .cake3/tmp__liburu3Bootstraplib_in
	echo '../../../autogen/Glyphicons_halflings_regular_ttf' >> .cake3/tmp__liburu3Bootstraplib_in
	echo '../../../autogen/Glyphicons_halflings_regular_woff' >> .cake3/tmp__liburu3Bootstraplib_in
	echo '../../../autogen/Bootstrap_css' >> .cake3/tmp__liburu3Bootstraplib_in
	echo '../../../autogen/Bootstrap_theme_css' >> .cake3/tmp__liburu3Bootstraplib_in
	echo '../../../autogen/Bootstrap_min_js' >> .cake3/tmp__liburu3Bootstraplib_in
	echo '../../.././lib/uru3/Bootstrap/Bootstrap' >> .cake3/tmp__liburu3Bootstraplib_in
	echo '../../../autogen/FormSignin_css' >> .cake3/tmp__liburu3Bootstraplib_in
	echo '../../.././lib/uru3/Bootstrap/FormSignin' >> .cake3/tmp__liburu3Bootstraplib_in
./lib/uru3/Bootstrap/test/Modal.exe: ./Makefile ./lib/uru3/Bootstrap/test/Modal.urp $(call GUARD,URVERSION)
	urweb -dbms sqlite ./lib/uru3/Bootstrap/test/Modal
./lib/uru3/Bootstrap/test/Modal.urp: ./Makefile ./lib/uru3/Bootstrap/lib.urp ./lib/uru3/Bootstrap/test/Modal.ur .cake3/tmp__liburu3BootstraptestModal_in autogen/Modal_css.ur autogen/Modal_css.urs autogen/Modal_css_c.h autogen/Modal_css_c.o
	cat .cake3/tmp__liburu3BootstraptestModal_in > ./lib/uru3/Bootstrap/test/Modal.urp
.cake3/tmp__liburu3BootstraptestModal_in: ./Makefile
	-rm -rf .cake3/tmp__liburu3BootstraptestModal_in
	echo 'library ../../../.././lib/uru3/Bootstrap' >> .cake3/tmp__liburu3BootstraptestModal_in
	echo 'include ../../../../autogen/Modal_css_c.h' >> .cake3/tmp__liburu3BootstraptestModal_in
	echo 'link ../../../../autogen/Modal_css_c.o' >> .cake3/tmp__liburu3BootstraptestModal_in
	echo 'ffi ../../../../autogen/Modal_css_c' >> .cake3/tmp__liburu3BootstraptestModal_in
	echo 'ffi ../../../../autogen/Modal_css_js' >> .cake3/tmp__liburu3BootstraptestModal_in
	echo 'allow mime text/css' >> .cake3/tmp__liburu3BootstraptestModal_in
	echo 'safeGet Modal_css/blobpage' >> .cake3/tmp__liburu3BootstraptestModal_in
	echo 'safeGet Modal_css/blob' >> .cake3/tmp__liburu3BootstraptestModal_in
	echo '' >> .cake3/tmp__liburu3BootstraptestModal_in
	echo '$$/list' >> .cake3/tmp__liburu3BootstraptestModal_in
	echo '../../../../autogen/Modal_css' >> .cake3/tmp__liburu3BootstraptestModal_in
	echo '../../../.././lib/uru3/Bootstrap/test/Modal' >> .cake3/tmp__liburu3BootstraptestModal_in
./lib/uru3/Bootstrap/test/B3_Login.exe: ./Makefile ./lib/uru3/Bootstrap/test/B3_Login.urp $(call GUARD,URVERSION)
	urweb -dbms sqlite ./lib/uru3/Bootstrap/test/B3_Login
./lib/uru3/Bootstrap/test/B3_Login.urp: ./Makefile ./lib/uru3/Bootstrap/lib.urp ./lib/uru3/Bootstrap/test/B3_Login.ur ./lib/uru3/Bootstrap/test/B3_Login.urs .cake3/tmp__liburu3BootstraptestB3_Login_in autogen/B3_Login_css.ur autogen/B3_Login_css.urs autogen/B3_Login_css_c.h autogen/B3_Login_css_c.o
	cat .cake3/tmp__liburu3BootstraptestB3_Login_in > ./lib/uru3/Bootstrap/test/B3_Login.urp
.cake3/tmp__liburu3BootstraptestB3_Login_in: ./Makefile
	-rm -rf .cake3/tmp__liburu3BootstraptestB3_Login_in
	echo 'allow url https://github.com/grwlf/*' >> .cake3/tmp__liburu3BootstraptestB3_Login_in
	echo 'allow url https://camo.githubusercontent.com/*' >> .cake3/tmp__liburu3BootstraptestB3_Login_in
	echo 'rewrite style B3_Login/* [-]' >> .cake3/tmp__liburu3BootstraptestB3_Login_in
	echo 'library ../../../.././lib/uru3/Bootstrap' >> .cake3/tmp__liburu3BootstraptestB3_Login_in
	echo 'include ../../../../autogen/B3_Login_css_c.h' >> .cake3/tmp__liburu3BootstraptestB3_Login_in
	echo 'link ../../../../autogen/B3_Login_css_c.o' >> .cake3/tmp__liburu3BootstraptestB3_Login_in
	echo 'ffi ../../../../autogen/B3_Login_css_c' >> .cake3/tmp__liburu3BootstraptestB3_Login_in
	echo 'ffi ../../../../autogen/B3_Login_css_js' >> .cake3/tmp__liburu3BootstraptestB3_Login_in
	echo 'allow mime text/css' >> .cake3/tmp__liburu3BootstraptestB3_Login_in
	echo 'safeGet B3_Login_css/blobpage' >> .cake3/tmp__liburu3BootstraptestB3_Login_in
	echo 'safeGet B3_Login_css/blob' >> .cake3/tmp__liburu3BootstraptestB3_Login_in
	echo '' >> .cake3/tmp__liburu3BootstraptestB3_Login_in
	echo '$$/list' >> .cake3/tmp__liburu3BootstraptestB3_Login_in
	echo '../../../../autogen/B3_Login_css' >> .cake3/tmp__liburu3BootstraptestB3_Login_in
	echo '../../../.././lib/uru3/Bootstrap/test/B3_Login' >> .cake3/tmp__liburu3BootstraptestB3_Login_in
./lib/uru3/Bootstrap/test/B2.exe: ./Makefile ./lib/uru3/Bootstrap/test/B2.urp $(call GUARD,URVERSION)
	urweb -dbms sqlite ./lib/uru3/Bootstrap/test/B2
./lib/uru3/Bootstrap/test/B2.urp: ./Makefile ./lib/uru3/Bootstrap/lib.urp ./lib/uru3/Bootstrap/test/B2.ur ./lib/uru3/Bootstrap/test/B2.urs .cake3/tmp__liburu3BootstraptestB2_in autogen/B2_css.ur autogen/B2_css.urs autogen/B2_css_c.h autogen/B2_css_c.o autogen/Holder_js.ur autogen/Holder_js.urs autogen/Holder_js_c.h autogen/Holder_js_c.o
	cat .cake3/tmp__liburu3BootstraptestB2_in > ./lib/uru3/Bootstrap/test/B2.urp
.cake3/tmp__liburu3BootstraptestB2_in: ./Makefile
	-rm -rf .cake3/tmp__liburu3BootstraptestB2_in
	echo 'allow url https://github.com/grwlf/*' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo 'allow url https://camo.githubusercontent.com/*' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo 'rewrite style B2/* [-]' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo 'library ../../../.././lib/uru3/Bootstrap' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo 'include ../../../../autogen/B2_css_c.h' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo 'link ../../../../autogen/B2_css_c.o' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo 'ffi ../../../../autogen/B2_css_c' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo 'ffi ../../../../autogen/B2_css_js' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo 'allow mime text/css' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo 'safeGet B2_css/blobpage' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo 'safeGet B2_css/blob' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo 'include ../../../../autogen/Holder_js_c.h' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo 'link ../../../../autogen/Holder_js_c.o' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo 'ffi ../../../../autogen/Holder_js_c' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo 'ffi ../../../../autogen/Holder_js_js' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo 'allow mime text/javascript' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo 'safeGet Holder_js/blobpage' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo 'safeGet Holder_js/blob' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo '' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo '$$/list' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo '../../../../autogen/B2_css' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo '../../../../autogen/Holder_js' >> .cake3/tmp__liburu3BootstraptestB2_in
	echo '../../../.././lib/uru3/Bootstrap/test/B2' >> .cake3/tmp__liburu3BootstraptestB2_in
./lib/uru3/Bootstrap/test/B1.exe: ./Makefile ./lib/uru3/Bootstrap/test/B1.urp $(call GUARD,URVERSION)
	urweb -dbms sqlite ./lib/uru3/Bootstrap/test/B1
./lib/uru3/Bootstrap/test/B1.urp: ./Makefile ./lib/uru3/Bootstrap/lib.urp ./lib/uru3/Bootstrap/test/B1.ur ./lib/uru3/Bootstrap/test/B1.urs .cake3/tmp__liburu3BootstraptestB1_in autogen/B1_css.ur autogen/B1_css.urs autogen/B1_css_c.h autogen/B1_css_c.o
	cat .cake3/tmp__liburu3BootstraptestB1_in > ./lib/uru3/Bootstrap/test/B1.urp
.cake3/tmp__liburu3BootstraptestB1_in: ./Makefile
	-rm -rf .cake3/tmp__liburu3BootstraptestB1_in
	echo 'rewrite style B1/* [-]' >> .cake3/tmp__liburu3BootstraptestB1_in
	echo 'library ../../../.././lib/uru3/Bootstrap' >> .cake3/tmp__liburu3BootstraptestB1_in
	echo 'include ../../../../autogen/B1_css_c.h' >> .cake3/tmp__liburu3BootstraptestB1_in
	echo 'link ../../../../autogen/B1_css_c.o' >> .cake3/tmp__liburu3BootstraptestB1_in
	echo 'ffi ../../../../autogen/B1_css_c' >> .cake3/tmp__liburu3BootstraptestB1_in
	echo 'ffi ../../../../autogen/B1_css_js' >> .cake3/tmp__liburu3BootstraptestB1_in
	echo 'allow mime text/css' >> .cake3/tmp__liburu3BootstraptestB1_in
	echo 'safeGet B1_css/blobpage' >> .cake3/tmp__liburu3BootstraptestB1_in
	echo 'safeGet B1_css/blob' >> .cake3/tmp__liburu3BootstraptestB1_in
	echo '' >> .cake3/tmp__liburu3BootstraptestB1_in
	echo '$$/list' >> .cake3/tmp__liburu3BootstraptestB1_in
	echo '../../../../autogen/B1_css' >> .cake3/tmp__liburu3BootstraptestB1_in
	echo '../../../.././lib/uru3/Bootstrap/test/B1' >> .cake3/tmp__liburu3BootstraptestB1_in
./lib/urweb-callback/demo/Demo2.exe: .fix-multy2
./lib/urweb-callback/demo/Demo2.urp: ./Makefile ./lib/urweb-callback/demo/Demo2.ur ./lib/urweb-callback/demo/Demo2.urs ./lib/urweb-callback/lib.urp .cake3/tmp__liburweb-callbackdemoDemo2_in
	cat .cake3/tmp__liburweb-callbackdemoDemo2_in > ./lib/urweb-callback/demo/Demo2.urp
.cake3/tmp__liburweb-callbackdemoDemo2_in: ./Makefile
	-rm -rf .cake3/tmp__liburweb-callbackdemoDemo2_in
	echo 'database dbname=Demo2' >> .cake3/tmp__liburweb-callbackdemoDemo2_in
	echo 'safeGet Demo2/main' >> .cake3/tmp__liburweb-callbackdemoDemo2_in
	echo 'safeGet Demo2/monitor' >> .cake3/tmp__liburweb-callbackdemoDemo2_in
	echo 'allow env PING' >> .cake3/tmp__liburweb-callbackdemoDemo2_in
	echo 'sql ../../.././lib/urweb-callback/demo/Demo2.sql' >> .cake3/tmp__liburweb-callbackdemoDemo2_in
	echo 'library ../../.././lib/urweb-callback' >> .cake3/tmp__liburweb-callbackdemoDemo2_in
	echo '' >> .cake3/tmp__liburweb-callbackdemoDemo2_in
	echo '$$/list' >> .cake3/tmp__liburweb-callbackdemoDemo2_in
	echo '$$/char' >> .cake3/tmp__liburweb-callbackdemoDemo2_in
	echo '$$/string' >> .cake3/tmp__liburweb-callbackdemoDemo2_in
	echo '../../.././lib/urweb-callback/demo/Demo2' >> .cake3/tmp__liburweb-callbackdemoDemo2_in
./lib/urweb-callback/lib.urp: ./Makefile ./lib/urweb-callback/Callback.ur ./lib/urweb-callback/Callback.urs ./lib/urweb-callback/CallbackFFI.h ./lib/urweb-callback/CallbackFFI.o ./lib/urweb-callback/CallbackNotify.ur ./lib/urweb-callback/CallbackNotify.urs ./lib/urweb-callback/CallbackNotify2.ur ./lib/urweb-callback/CallbackNotify2.urs .cake3/tmp__liburweb-callbacklib_in
	cat .cake3/tmp__liburweb-callbacklib_in > ./lib/urweb-callback/lib.urp
.cake3/tmp__liburweb-callbacklib_in: ./Makefile
	-rm -rf .cake3/tmp__liburweb-callbacklib_in
	echo 'ffi ../.././lib/urweb-callback/CallbackFFI' >> .cake3/tmp__liburweb-callbacklib_in
	echo 'include ../.././lib/urweb-callback/CallbackFFI.h' >> .cake3/tmp__liburweb-callbacklib_in
	echo 'link ../.././lib/urweb-callback/CallbackFFI.o' >> .cake3/tmp__liburweb-callbacklib_in
	echo 'link -lstdc++' >> .cake3/tmp__liburweb-callbacklib_in
	echo 'safeGet Callback/Default/callback' >> .cake3/tmp__liburweb-callbacklib_in
	echo 'safeGet CallbackNotify/Default/C/callback' >> .cake3/tmp__liburweb-callbacklib_in
	echo '' >> .cake3/tmp__liburweb-callbacklib_in
	echo '$$/list' >> .cake3/tmp__liburweb-callbacklib_in
	echo '../.././lib/urweb-callback/Callback' >> .cake3/tmp__liburweb-callbacklib_in
	echo '../.././lib/urweb-callback/CallbackNotify' >> .cake3/tmp__liburweb-callbacklib_in
	echo '../.././lib/urweb-callback/CallbackNotify2' >> .cake3/tmp__liburweb-callbacklib_in
./HomePage.sql: .fix-multy1
./lib/urweb-callback/CallbackFFI.o: ./Makefile ./lib/urweb-callback/CallbackFFI.cpp $(call GUARD,URCPP) $(call GUARD,URINCL) $(call GUARD,UR_CFLAGS)
	$(URCPP) -c $(UR_CFLAGS) $(URINCL) -std=c++11 -o ./lib/urweb-callback/CallbackFFI.o ./lib/urweb-callback/CallbackFFI.cpp
./lib/urweb-callback/demo/Demo2.sql: .fix-multy2
./lib/urweb-compet/Compet.sql: .fix-multy3
.INTERMEDIATE: .fix-multy1
.fix-multy1: ./HomePage.urp ./Makefile $(call GUARD,URVERSION)
	urweb -dbms postgres ./HomePage
.INTERMEDIATE: .fix-multy2
.fix-multy2: ./Makefile ./lib/urweb-callback/demo/Demo2.urp $(call GUARD,URVERSION)
	urweb -dbms postgres ./lib/urweb-callback/demo/Demo2
.INTERMEDIATE: .fix-multy3
.fix-multy3: ./Makefile ./lib/urweb-compet/Compet.urp $(call GUARD,URVERSION)
	urweb -dbms postgres ./lib/urweb-compet/Compet
autogen/B1_css_c.o: ./Makefile autogen/B1_css_c.c $(call GUARD,URCC) $(call GUARD,URINCL) $(call GUARD,UR_CFLAGS)
	$(URCC) -c $(URINCL) $(UR_CFLAGS)  -o autogen/B1_css_c.o autogen/B1_css_c.c
autogen/B2_css_c.o: ./Makefile autogen/B2_css_c.c $(call GUARD,URCC) $(call GUARD,URINCL) $(call GUARD,UR_CFLAGS)
	$(URCC) -c $(URINCL) $(UR_CFLAGS)  -o autogen/B2_css_c.o autogen/B2_css_c.c
autogen/B3_Login_css_c.o: ./Makefile autogen/B3_Login_css_c.c $(call GUARD,URCC) $(call GUARD,URINCL) $(call GUARD,UR_CFLAGS)
	$(URCC) -c $(URINCL) $(UR_CFLAGS)  -o autogen/B3_Login_css_c.o autogen/B3_Login_css_c.c
autogen/Bootstrap_css_c.o: ./Makefile autogen/Bootstrap_css_c.c $(call GUARD,URCC) $(call GUARD,URINCL) $(call GUARD,UR_CFLAGS)
	$(URCC) -c $(URINCL) $(UR_CFLAGS)  -o autogen/Bootstrap_css_c.o autogen/Bootstrap_css_c.c
autogen/Bootstrap_min_js_c.o: ./Makefile autogen/Bootstrap_min_js_c.c $(call GUARD,URCC) $(call GUARD,URINCL) $(call GUARD,UR_CFLAGS)
	$(URCC) -c $(URINCL) $(UR_CFLAGS)  -o autogen/Bootstrap_min_js_c.o autogen/Bootstrap_min_js_c.c
autogen/Bootstrap_theme_css_c.o: ./Makefile autogen/Bootstrap_theme_css_c.c $(call GUARD,URCC) $(call GUARD,URINCL) $(call GUARD,UR_CFLAGS)
	$(URCC) -c $(URINCL) $(UR_CFLAGS)  -o autogen/Bootstrap_theme_css_c.o autogen/Bootstrap_theme_css_c.c
autogen/Compet_css_c.o: ./Makefile autogen/Compet_css_c.c $(call GUARD,URCC) $(call GUARD,URINCL) $(call GUARD,UR_CFLAGS)
	$(URCC) -c $(URINCL) $(UR_CFLAGS)  -o autogen/Compet_css_c.o autogen/Compet_css_c.c
autogen/FormSignin_css_c.o: ./Makefile autogen/FormSignin_css_c.c $(call GUARD,URCC) $(call GUARD,URINCL) $(call GUARD,UR_CFLAGS)
	$(URCC) -c $(URINCL) $(UR_CFLAGS)  -o autogen/FormSignin_css_c.o autogen/FormSignin_css_c.c
autogen/Glyphicons_halflings_regular_eot_c.o: ./Makefile autogen/Glyphicons_halflings_regular_eot_c.c $(call GUARD,URCC) $(call GUARD,URINCL) $(call GUARD,UR_CFLAGS)
	$(URCC) -c $(URINCL) $(UR_CFLAGS)  -o autogen/Glyphicons_halflings_regular_eot_c.o autogen/Glyphicons_halflings_regular_eot_c.c
autogen/Glyphicons_halflings_regular_svg_c.o: ./Makefile autogen/Glyphicons_halflings_regular_svg_c.c $(call GUARD,URCC) $(call GUARD,URINCL) $(call GUARD,UR_CFLAGS)
	$(URCC) -c $(URINCL) $(UR_CFLAGS)  -o autogen/Glyphicons_halflings_regular_svg_c.o autogen/Glyphicons_halflings_regular_svg_c.c
autogen/Glyphicons_halflings_regular_ttf_c.o: ./Makefile autogen/Glyphicons_halflings_regular_ttf_c.c $(call GUARD,URCC) $(call GUARD,URINCL) $(call GUARD,UR_CFLAGS)
	$(URCC) -c $(URINCL) $(UR_CFLAGS)  -o autogen/Glyphicons_halflings_regular_ttf_c.o autogen/Glyphicons_halflings_regular_ttf_c.c
autogen/Glyphicons_halflings_regular_woff_c.o: ./Makefile autogen/Glyphicons_halflings_regular_woff_c.c $(call GUARD,URCC) $(call GUARD,URINCL) $(call GUARD,UR_CFLAGS)
	$(URCC) -c $(URINCL) $(UR_CFLAGS)  -o autogen/Glyphicons_halflings_regular_woff_c.o autogen/Glyphicons_halflings_regular_woff_c.c
autogen/Holder_js_c.o: ./Makefile autogen/Holder_js_c.c $(call GUARD,URCC) $(call GUARD,URINCL) $(call GUARD,UR_CFLAGS)
	$(URCC) -c $(URINCL) $(UR_CFLAGS)  -o autogen/Holder_js_c.o autogen/Holder_js_c.c
autogen/Modal_css_c.o: ./Makefile autogen/Modal_css_c.c $(call GUARD,URCC) $(call GUARD,URINCL) $(call GUARD,UR_CFLAGS)
	$(URCC) -c $(URINCL) $(UR_CFLAGS)  -o autogen/Modal_css_c.o autogen/Modal_css_c.c
autogen/Narrow_css_c.o: ./Makefile autogen/Narrow_css_c.c $(call GUARD,URCC) $(call GUARD,URINCL) $(call GUARD,UR_CFLAGS)
	$(URCC) -c $(URINCL) $(UR_CFLAGS)  -o autogen/Narrow_css_c.o autogen/Narrow_css_c.c
autogen/Slides_Minsk_2014_pdf_c.o: ./Makefile autogen/Slides_Minsk_2014_pdf_c.c $(call GUARD,URCC) $(call GUARD,URINCL) $(call GUARD,UR_CFLAGS)
	$(URCC) -c $(URINCL) $(UR_CFLAGS)  -o autogen/Slides_Minsk_2014_pdf_c.o autogen/Slides_Minsk_2014_pdf_c.c
$(call GUARD,URCC):
	rm -f .cake3/GUARD_URCC_*
	touch $@
$(call GUARD,URCPP):
	rm -f .cake3/GUARD_URCPP_*
	touch $@
$(call GUARD,URINCL):
	rm -f .cake3/GUARD_URINCL_*
	touch $@
$(call GUARD,URVERSION):
	rm -f .cake3/GUARD_URVERSION_*
	touch $@
$(call GUARD,UR_CFLAGS):
	rm -f .cake3/GUARD_UR_CFLAGS_*
	touch $@

else

# Prebuild/postbuild section

ifneq ($(MAKECMDGOALS),clean)

.PHONY: all
all: .fix-multy1
.PHONY: dropdb
dropdb: .fix-multy1
.PHONY: ./HomePage.db
./HomePage.db: .fix-multy1
.PHONY: ./HomePage.exe
./HomePage.exe: .fix-multy1
.PHONY: ./HomePage.urp
./HomePage.urp: .fix-multy1
.PHONY: .cake3/tmp__HomePage_in
.cake3/tmp__HomePage_in: .fix-multy1
.PHONY: ./lib/urweb-compet/Compet.exe
./lib/urweb-compet/Compet.exe: .fix-multy1
.PHONY: ./lib/urweb-compet/Compet.urp
./lib/urweb-compet/Compet.urp: .fix-multy1
.PHONY: .cake3/tmp__liburweb-competCompet_in
.cake3/tmp__liburweb-competCompet_in: .fix-multy1
.PHONY: ./lib/urweb-prelude/lib.urp
./lib/urweb-prelude/lib.urp: .fix-multy1
.PHONY: .cake3/tmp__liburweb-preludelib_in
.cake3/tmp__liburweb-preludelib_in: .fix-multy1
.PHONY: ./lib/uru3/Bootstrap/test/Narrow.exe
./lib/uru3/Bootstrap/test/Narrow.exe: .fix-multy1
.PHONY: ./lib/uru3/Bootstrap/test/Narrow.urp
./lib/uru3/Bootstrap/test/Narrow.urp: .fix-multy1
.PHONY: .cake3/tmp__liburu3BootstraptestNarrow_in
.cake3/tmp__liburu3BootstraptestNarrow_in: .fix-multy1
.PHONY: ./lib/uru3/Bootstrap/lib.urp
./lib/uru3/Bootstrap/lib.urp: .fix-multy1
.PHONY: .cake3/tmp__liburu3Bootstraplib_in
.cake3/tmp__liburu3Bootstraplib_in: .fix-multy1
.PHONY: ./lib/uru3/Bootstrap/test/Modal.exe
./lib/uru3/Bootstrap/test/Modal.exe: .fix-multy1
.PHONY: ./lib/uru3/Bootstrap/test/Modal.urp
./lib/uru3/Bootstrap/test/Modal.urp: .fix-multy1
.PHONY: .cake3/tmp__liburu3BootstraptestModal_in
.cake3/tmp__liburu3BootstraptestModal_in: .fix-multy1
.PHONY: ./lib/uru3/Bootstrap/test/B3_Login.exe
./lib/uru3/Bootstrap/test/B3_Login.exe: .fix-multy1
.PHONY: ./lib/uru3/Bootstrap/test/B3_Login.urp
./lib/uru3/Bootstrap/test/B3_Login.urp: .fix-multy1
.PHONY: .cake3/tmp__liburu3BootstraptestB3_Login_in
.cake3/tmp__liburu3BootstraptestB3_Login_in: .fix-multy1
.PHONY: ./lib/uru3/Bootstrap/test/B2.exe
./lib/uru3/Bootstrap/test/B2.exe: .fix-multy1
.PHONY: ./lib/uru3/Bootstrap/test/B2.urp
./lib/uru3/Bootstrap/test/B2.urp: .fix-multy1
.PHONY: .cake3/tmp__liburu3BootstraptestB2_in
.cake3/tmp__liburu3BootstraptestB2_in: .fix-multy1
.PHONY: ./lib/uru3/Bootstrap/test/B1.exe
./lib/uru3/Bootstrap/test/B1.exe: .fix-multy1
.PHONY: ./lib/uru3/Bootstrap/test/B1.urp
./lib/uru3/Bootstrap/test/B1.urp: .fix-multy1
.PHONY: .cake3/tmp__liburu3BootstraptestB1_in
.cake3/tmp__liburu3BootstraptestB1_in: .fix-multy1
.PHONY: ./lib/urweb-callback/demo/Demo2.exe
./lib/urweb-callback/demo/Demo2.exe: .fix-multy1
.PHONY: ./lib/urweb-callback/demo/Demo2.urp
./lib/urweb-callback/demo/Demo2.urp: .fix-multy1
.PHONY: .cake3/tmp__liburweb-callbackdemoDemo2_in
.cake3/tmp__liburweb-callbackdemoDemo2_in: .fix-multy1
.PHONY: ./lib/urweb-callback/lib.urp
./lib/urweb-callback/lib.urp: .fix-multy1
.PHONY: .cake3/tmp__liburweb-callbacklib_in
.cake3/tmp__liburweb-callbacklib_in: .fix-multy1
.PHONY: ./HomePage.sql
./HomePage.sql: .fix-multy1
.PHONY: ./lib/urweb-callback/CallbackFFI.o
./lib/urweb-callback/CallbackFFI.o: .fix-multy1
.PHONY: ./lib/urweb-callback/demo/Demo2.sql
./lib/urweb-callback/demo/Demo2.sql: .fix-multy1
.PHONY: ./lib/urweb-compet/Compet.sql
./lib/urweb-compet/Compet.sql: .fix-multy1
.INTERMEDIATE: .fix-multy1
.fix-multy1: 
	-mkdir .cake3
	$(MAKE) -C ./lib/uru3/Bootstrap/../Uru -f Makefile 
	$(MAKE) -C ./lib/uru3/Bootstrap/../JQuery -f Makefile 
	$(MAKE) -C ./lib/uru3/Bootstrap/../Uru -f Makefile 
	$(MAKE) -C ./lib/uru3/Bootstrap/../JQuery -f Makefile 
	$(MAKE) -C ./lib/uru3/Bootstrap/../Uru -f Makefile 
	$(MAKE) -C ./lib/uru3/Bootstrap/../JQuery -f Makefile 
	$(MAKE) -C ./lib/uru3/Bootstrap/../Uru -f Makefile 
	$(MAKE) -C ./lib/uru3/Bootstrap/../JQuery -f Makefile 
	$(MAKE) -C ./lib/uru3/Bootstrap/../Uru -f Makefile 
	$(MAKE) -C ./lib/uru3/Bootstrap/../JQuery -f Makefile 
	$(MAKE) -C ./lib/uru3/Bootstrap -f Makefile lib
	$(MAKE) -C ./lib/urweb-monad-pack -f Makefile lib
	$(MAKE) -C ./lib/urweb-monad-pack -f Makefile test/XmlGenDemo.urp
	MAIN=1 $(MAKE) -f ./Makefile $(MAKECMDGOALS)
.PHONY: autogen/B1_css_c.o
autogen/B1_css_c.o: .fix-multy1
.PHONY: autogen/B2_css_c.o
autogen/B2_css_c.o: .fix-multy1
.PHONY: autogen/B3_Login_css_c.o
autogen/B3_Login_css_c.o: .fix-multy1
.PHONY: autogen/Bootstrap_css_c.o
autogen/Bootstrap_css_c.o: .fix-multy1
.PHONY: autogen/Bootstrap_min_js_c.o
autogen/Bootstrap_min_js_c.o: .fix-multy1
.PHONY: autogen/Bootstrap_theme_css_c.o
autogen/Bootstrap_theme_css_c.o: .fix-multy1
.PHONY: autogen/Compet_css_c.o
autogen/Compet_css_c.o: .fix-multy1
.PHONY: autogen/FormSignin_css_c.o
autogen/FormSignin_css_c.o: .fix-multy1
.PHONY: autogen/Glyphicons_halflings_regular_eot_c.o
autogen/Glyphicons_halflings_regular_eot_c.o: .fix-multy1
.PHONY: autogen/Glyphicons_halflings_regular_svg_c.o
autogen/Glyphicons_halflings_regular_svg_c.o: .fix-multy1
.PHONY: autogen/Glyphicons_halflings_regular_ttf_c.o
autogen/Glyphicons_halflings_regular_ttf_c.o: .fix-multy1
.PHONY: autogen/Glyphicons_halflings_regular_woff_c.o
autogen/Glyphicons_halflings_regular_woff_c.o: .fix-multy1
.PHONY: autogen/Holder_js_c.o
autogen/Holder_js_c.o: .fix-multy1
.PHONY: autogen/Modal_css_c.o
autogen/Modal_css_c.o: .fix-multy1
.PHONY: autogen/Narrow_css_c.o
autogen/Narrow_css_c.o: .fix-multy1
.PHONY: autogen/Slides_Minsk_2014_pdf_c.o
autogen/Slides_Minsk_2014_pdf_c.o: .fix-multy1

endif
.PHONY: clean
clean: 
	-rm ./HomePage.db ./HomePage.exe ./HomePage.sql ./HomePage.urp ./lib/uru3/Bootstrap/lib.urp ./lib/uru3/Bootstrap/test/B1.exe ./lib/uru3/Bootstrap/test/B1.urp ./lib/uru3/Bootstrap/test/B2.exe ./lib/uru3/Bootstrap/test/B2.urp ./lib/uru3/Bootstrap/test/B3_Login.exe ./lib/uru3/Bootstrap/test/B3_Login.urp ./lib/uru3/Bootstrap/test/Modal.exe ./lib/uru3/Bootstrap/test/Modal.urp ./lib/uru3/Bootstrap/test/Narrow.exe ./lib/uru3/Bootstrap/test/Narrow.urp ./lib/urweb-callback/CallbackFFI.o ./lib/urweb-callback/demo/Demo2.exe ./lib/urweb-callback/demo/Demo2.sql ./lib/urweb-callback/demo/Demo2.urp ./lib/urweb-callback/lib.urp ./lib/urweb-compet/Compet.exe ./lib/urweb-compet/Compet.sql ./lib/urweb-compet/Compet.urp ./lib/urweb-prelude/lib.urp .cake3/tmp__HomePage_in .cake3/tmp__liburu3Bootstraplib_in .cake3/tmp__liburu3BootstraptestB1_in .cake3/tmp__liburu3BootstraptestB2_in .cake3/tmp__liburu3BootstraptestB3_Login_in .cake3/tmp__liburu3BootstraptestModal_in .cake3/tmp__liburu3BootstraptestNarrow_in .cake3/tmp__liburweb-callbackdemoDemo2_in .cake3/tmp__liburweb-callbacklib_in .cake3/tmp__liburweb-competCompet_in .cake3/tmp__liburweb-preludelib_in autogen/B1_css_c.o autogen/B2_css_c.o autogen/B3_Login_css_c.o autogen/Bootstrap_css_c.o autogen/Bootstrap_min_js_c.o autogen/Bootstrap_theme_css_c.o autogen/Compet_css_c.o autogen/FormSignin_css_c.o autogen/Glyphicons_halflings_regular_eot_c.o autogen/Glyphicons_halflings_regular_svg_c.o autogen/Glyphicons_halflings_regular_ttf_c.o autogen/Glyphicons_halflings_regular_woff_c.o autogen/Holder_js_c.o autogen/Modal_css_c.o autogen/Narrow_css_c.o autogen/Slides_Minsk_2014_pdf_c.o
	-rm -rf .cake3

endif
