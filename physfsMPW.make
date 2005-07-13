#   File:       PhysicsFS.make
#   Target:     PhysicsFS
#   Created:    Saturday, November 20, 2004 09:37:58 PM


MAKEFILE        = PhysicsFS.make
�MondoBuild�    = {MAKEFILE}  # Make blank to avoid rebuilds when makefile is modified

ObjDir          = :obj:
Includes        = -i : �
				  -i ":zlib122:"

Sym-PPC         = -sym on

PPCCOptions     = {Includes} {Sym-PPC} -prefix ":Mac Classic Support:codewarrior_predefs.h" -enum int -alloca


### Source Files ###

SrcFiles        =  �
				  :archivers:dir.c �
				  :archivers:grp.c �
				  :archivers:hog.c �
				  :archivers:mix.c �
				  :archivers:mvl.c �
				  :archivers:qpak.c �
				  :archivers:wad.c �
				  :archivers:zip.c �
				  physfs.c �
				  physfs_byteorder.c �
				  :platform:macclassic.c �
				  :zlib122:adler32.c �
				  :zlib122:compress.c �
				  :zlib122:crc32.c �
				  :zlib122:deflate.c �
				  :zlib122:gzio.c �
				  :zlib122:infback.c �
				  :zlib122:inffast.c �
				  :zlib122:inflate.c �
				  :zlib122:inftrees.c �
				  :zlib122:trees.c �
				  :zlib122:uncompr.c �
				  :zlib122:zutil.c


### Object Files ###

ObjFiles-PPC    =  �
				  "{ObjDir}dir.c.x" �
				  "{ObjDir}grp.c.x" �
				  "{ObjDir}hog.c.x" �
				  "{ObjDir}mix.c.x" �
				  "{ObjDir}mvl.c.x" �
				  "{ObjDir}qpak.c.x" �
				  "{ObjDir}wad.c.x" �
				  "{ObjDir}zip.c.x" �
				  "{ObjDir}physfs.c.x" �
				  "{ObjDir}physfs_byteorder.c.x" �
				  "{ObjDir}macclassic.c.x" �
				  "{ObjDir}adler32.c.x" �
				  "{ObjDir}compress.c.x" �
				  "{ObjDir}crc32.c.x" �
				  "{ObjDir}deflate.c.x" �
				  "{ObjDir}gzio.c.x" �
				  "{ObjDir}infback.c.x" �
				  "{ObjDir}inffast.c.x" �
				  "{ObjDir}inflate.c.x" �
				  "{ObjDir}inftrees.c.x" �
				  "{ObjDir}trees.c.x" �
				  "{ObjDir}uncompr.c.x" �
				  "{ObjDir}zutil.c.x"


### Libraries ###

LibFiles-PPC    =  �
				  "{SharedLibraries}InterfaceLib" �
				  "{SharedLibraries}StdCLib" �
				  "{SharedLibraries}MathLib" �
				  "{PPCLibraries}StdCRuntime.o" �
				  "{PPCLibraries}PPCCRuntime.o" �
				  "{PPCLibraries}PPCToolLibs.o"


### Default Rules ###

.c.x  �  .c  {�MondoBuild�}
	{PPCC} {depDir}{default}.c -o {targDir}{default}.c.x {PPCCOptions}


### Build Rules ###

PhysicsFS  ��  {ObjFiles-PPC} {LibFiles-PPC} {�MondoBuild�}
	PPCLink �
		-o {Targ} �
		{ObjFiles-PPC} �
		{LibFiles-PPC} �
		{Sym-PPC} �
		-@export ":Mac Classic Support:physfs.exp" �
		-t 'shlb' �
		-c '????' �
		-xm s



### Required Dependencies ###

"{ObjDir}dir.c.x"  �  :archivers:dir.c
"{ObjDir}grp.c.x"  �  :archivers:grp.c
"{ObjDir}hog.c.x"  �  :archivers:hog.c
"{ObjDir}mix.c.x"  �  :archivers:mix.c
"{ObjDir}mvl.c.x"  �  :archivers:mvl.c
"{ObjDir}qpak.c.x"  �  :archivers:qpak.c
"{ObjDir}wad.c.x"  �  :archivers:wad.c
"{ObjDir}zip.c.x"  �  :archivers:zip.c
"{ObjDir}physfs.c.x"  �  physfs.c
"{ObjDir}physfs_byteorder.c.x"  �  physfs_byteorder.c
"{ObjDir}macclassic.c.x"  �  :platform:macclassic.c
"{ObjDir}adler32.c.x"  �  :zlib122:adler32.c
"{ObjDir}compress.c.x"  �  :zlib122:compress.c
"{ObjDir}crc32.c.x"  �  :zlib122:crc32.c
"{ObjDir}deflate.c.x"  �  :zlib122:deflate.c
"{ObjDir}gzio.c.x"  �  :zlib122:gzio.c
"{ObjDir}infback.c.x"  �  :zlib122:infback.c
"{ObjDir}inffast.c.x"  �  :zlib122:inffast.c
"{ObjDir}inflate.c.x"  �  :zlib122:inflate.c
"{ObjDir}inftrees.c.x"  �  :zlib122:inftrees.c
"{ObjDir}trees.c.x"  �  :zlib122:trees.c
"{ObjDir}uncompr.c.x"  �  :zlib122:uncompr.c
"{ObjDir}zutil.c.x"  �  :zlib122:zutil.c


### Optional Dependencies ###
### Build this target to generate "include file" dependencies. ###

Dependencies  �  $OutOfDate
	MakeDepend �
		-append {MAKEFILE} �
		-ignore "{CIncludes}" �
		-objdir "{ObjDir}" �
		-objext .x �
		{Includes} �
		{SrcFiles}


