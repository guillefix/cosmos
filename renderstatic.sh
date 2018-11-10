#!/bin/bash

COSMOS="/home/guillefix/cosmos/cosmos"
GUILLEFIX="/home/guillefix/cosmos/guillefix.me"

mv ${COSMOS}/tiddlers/\$__core_modules_macros_3Dmol.js.tid $COSMOS

tiddlywiki $COSMOS --rendertiddlers [!is[system]] $:/core/templates/static.tiddler.html static text/plain

mv ${COSMOS}/\$__core_modules_macros_3Dmol.js.tid ${COSMOS}/tiddlers

#rename  's/%20/\ /g' ${COSMOS}/output/static/* # MESSES UP THE LINKS :P

tiddlywiki $COSMOS --rendertiddler $:/core/templates/static.template.html static.html text/plain

tiddlywiki $COSMOS  --rendertiddler $:/core/templates/static.template.css static/static.css text/plain

tiddlywiki --rendertiddler $:/core/save/all index.html text/plain

cp -r ${COSMOS}/output/* ${GUILLEFIX}/cosmos/
