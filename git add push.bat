@echo off
echo Bu otomatik komut dosyasi ilgli reponuza commit adi mevcut tarih saat olacak sekilde push islemi yapmaktadir.
@echo off
git add .
git commit -m "%DATE%_%TIME%"
git push
echo islem tamam :)
pause