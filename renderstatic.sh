#!/bin/bash

mv /home/deploy/cosmos.git/tiddlers/\$__core_modules_macros_3Dmol.js.tid /home/deploy/cosmos.git

tiddlywiki /home/deploy/cosmos.git --render "[!is[system]] +[!prefix[$:/]]" "[encodeuricomponent[]addprefix[static/]addsuffix[.html]]" text/plain $:/core/templates/static.tiddler.html

mv /home/deploy/cosmos.git/\$__core_modules_macros_3Dmol.js.tid /home/deploy/cosmos.git/tiddlers

rename  's/%20/\ /g' /home/deploy/cosmos.git/output/static/*

tiddlywiki /home/deploy/cosmos.git --rendertiddler $:/core/templates/static.template.html static.html text/plain

tiddlywiki /home/deploy/cosmos.git --rendertiddler $:/core/templates/static.template.css static/static.css text/plain
