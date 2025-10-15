#NACIN INSTALACIJE V MOJ USER DIRECTORY
#dorado sem installala v home directory, v bin sem softlinkala kot dorado
#curl "https://cdn.oxfordnanoportal.com/software/analysis/dorado-1.1.1-linux-arm64.tar.gz" -o dorado-1.1.1-linux-arm64.tar.gz
#tar -xzf dorado-1.1.1-linux-arm64.tar.gz
#dorado-1.1.1-linux-arm64/bin/dorado --version
#error bil na koncu instalacije: -bash: dorado-1.1.1-linux-arm64/bin/dorado: cannot execute binary file: Exec format error

#bila napacna arhitektura:
#uname -m
#output: x86_64

#removam in reinstallam
#curl "https://cdn.oxfordnanoportal.com/software/analysis/dorado-1.1.1-linux-x64.tar.gz" -o dorado-1.1.1-linux-x64.tar.gz
#tar -xzf dorado-1.1.1-linux-x64.tar.gz
#dorado-1.1.1-linux-x64/bin/dorado --version

#ustvarimo softlink, naceloma z ukazom dorado zdaj vedno odprem program, beri spodaj zakaj je path za klicat dorado drugacen
# ln -s ~/dorado-1.1.1-linux-x64/bin/dorado ~/bin/dorado

#path do sekvencnih podatkov:

# cd /DKED/scratch/timg/desiree_seq/desiree_resequencing/


#KAKO POTEM DO DORADA
#path za klicat dorado
#potrebno napisat tega, ker naceloma prioritizira dorado iz drugega patha - to je vidno v zacetku na profile, se da spremeniti
#sicer pa je zdajsnji nov path za dorado tale:

#/users/evakrzisnik/bin/dorado

#lahko v winscp odprem profile in spremenim prioritije pathov, da bo user bin najprej

#/users/evakrzisnik/bin/dorado basecaller --models-directory /DKED/scratch/evakrzisnik/desiree_resequencing/dorado/ -x cuda:all -o /DKED/scratch/evakrzisnik/desiree_resequencing/dorado/ sup /DKED/scratch/timg/desiree_seq/desiree_resequencing/input/library_2/20250812_1139_MN43590_FBD50601_b6985a1a/pod5/ 


#koncna verzija komande za pogon dorada:

#/users/evakrzisnik/bin/dorado basecaller --models-directory /DKED/scratch/evakrzisnik/desiree_resequencing/dorado/ -x cuda:all -o /DKED/scratch/evakrzisnik/desiree_resequencing/dorado/ sup /DKED/scratch/timg/desiree_seq/desiree_resequencing/input/library_2/20250812_1139_MN43590_FBD50601_b6985a1a/pod5/

#backslash kot newline, veliko bolj berljiva koncna verzija komande:
#pisi na ta nacin, ko dobis ta dolga creva od pathov, da vse fita na screen

#/users/evakrzisnik/bin/dorado basecaller \
#--models-directory /DKED/scratch/evakrzisnik/desiree_resequencing/dorado \ 
#-x cuda:all \
#-o /DKED/scratch/evakrzisnik/desiree_resequencing/dorado \ 
#sup \
#/DKED/scratch/timg/desiree_seq/desiree_resequencing/input/library_2/20250812_1139_MN43590_FBD50601_b6985a1a/pod5/
