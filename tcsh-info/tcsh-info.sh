#!/bin/tcsh
# Özet:  Bu tcsh  betiği tcsh başlangıcında
# çalıştırılan ayar dosyalarının olup olmadığına bakar 
# ve bulduklarının dökümünü verir.
# Yazar. Umit Kabuli
# Tarih: Temmuz 2018
# Lisans. GPL
# Kaynak: http://www.tutorialspoint.com/unix_commands/tcsh.htm
#çalıştırma sırasıyla
set cshrc="/etc/csh.cshrc"
# /etc/csh.login versiyona, duruma bağlı
set cshlogin="/etc/csh.login"
set hometcshrc="~/.tcshrc"
# ~/tschrc bulunamazsa aşağıdaki
set homecshrc="~/.cshrc"
#  ~/.cshrc bulunamazsa aşağıdaki veya histfile kabuk değişkenin değeri
set homehistory="~/.history"
# login olmamış kabuk sadece rc ile bitenleri okur.
set notfound=" dosyası bulunamadı."
if (-e $cshrc) then	
	echo "\n$cshrc dosyası:" 
	cat $cshrc
else	
	echo "\n$cshrc $notfound"
endif
if (-e $cshlogin) then
	echo "\n$cshlogin dosyası:"
	cat $cshlogin
else
	echo "\n$cshlogin $notfound"
endif
if(-e $hometcshrc) then
	echo " \n$hometcshrc dosyası:"
	cat $hometcshrc
else
	echo  "\n$hometcshrc $notfound"
endif
if (-e $homecshrc) then
	echo "\nhomecshrc dosyası:"
	cat $homecshrc
else
	echo "\n$homecshrc $notfound"
