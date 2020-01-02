#!/bin/bash

COSMOS="/home/deploy/cosmos"
GUILLEFIX="/home/deploy/guillefix.me"
#COSMOS="/home/guillefix/web/cosmos"
#GUILLEFIX="/home/guillefix/web/guillefix.me"

mv ${COSMOS}/tiddlers/\$__core_modules_macros_3Dmol.js.tid $COSMOS

tiddlywiki $COSMOS --rendertiddlers [!is[system]] $:/core/templates/static.tiddler.html static text/plain

mv ${COSMOS}/\$__core_modules_macros_3Dmol.js.tid ${COSMOS}/tiddlers

#rename  's/%20/\ /g' ${COSMOS}/output/static/* # MESSES UP THE LINKS :P

tiddlywiki $COSMOS --rendertiddler $:/core/templates/static.template.html static.html text/plain

tiddlywiki $COSMOS  --rendertiddler $:/core/templates/static.template.css static/static.css text/plain

tiddlywiki --rendertiddler $:/core/save/all index.html text/plain

cp -r ${COSMOS}/output/* ${GUILLEFIX}/cosmos/

mv ${GUILLEFIX}/cosmos/index.html ${GUILLEFIX}/cosmos/cosmos.html
mv ${GUILLEFIX}/cosmos/static.html ${GUILLEFIX}/cosmos/index.html
