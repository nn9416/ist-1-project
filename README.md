# IST Prvi Projekat

[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://github.com/nn9416/ist-1-project/blob/master/LICENSELICENSE)

## Sadržaj

- [Kako početi](#kako-početi)
- [Testiranje](#testiranje)
- [Zadatak](#zadatak)
  - [XML](#xml)
  - [DTD](#dtd)
  - [XML Schema](#xml-schema)
  - [XSLT](#xslt)
  - [GIT](#git)

## Kako početi

Klonirajte ovaj repozitorijum i otvorite ga uz pomoć Vašeg omiljenog editora (preporučujem VS 2017 ili novije ili VS Code).

```shell
git clone https://github.com/nn9416/ist-1-project.git
```

## Testiranje

Da bi ste testirali fajlove idite na sledeće veb stranice:

- [utilities-online website](http://www.utilities-online.info/xsdvalidation/) Za XSD (XML Schema) fajlove ili validaciju XML fajlova naspram XML šema
- [xmlvalidation webiste](https://www.xmlvalidation.com/) Za DTD fajlove ili validaciju XML fajlova naspram DTD fajlova
- [xslttest website](http://xslttest.appspot.com/) Za XSLT fajlove ili transformisanje XML fajlova

> **Takođe možete koristiti ugrađene XML alate unutar VS 2017**

## Zadatak

### XML

Napisati Adresar u vidu XML dokumenta. U Adresar se smeštaju podaci o Osobama i
Kompanijama. Svaka Osoba i Kompanija ima jedinstvenu šifru u vidu atributa.

Osoba je opisana podelementima u datom redosledu:

- Puno ime koje se sastoji od podelemenata:
  - Ime
  - Srednje ime (jedna osoba ili ima srednje ime ili nema)
  - Prezime (jedna osoba može imati više od jednog prezimena)
- Datum rođenja (element koji se sastoji od podelemenata dan, mesec i godina)
- Adresa (može biti „privremena“ ili „stalna“. U slučaju da nije navedeno, podrazumeva se
  „privremena“. Sastoji se od podelemenata ulica, broj, grad i država gde su ulica, broj i
  grad obavezni elementi dok država nije)
- Telefon (element koji može biti „mobilni“ ili „fiksni“ i ovo je obavezan element)
- Email (element koji može biti „privatni“ ili „službeni“. Jedna osoba može imati jednu ili
  više email adresa)

Kompanija je opisana skupom podelemenata:

- Naziv
- Adresa (isti opis kao za osobu)
- Telefon (isti opis kao za osobu)
- Email (isti opis kao za osobu)

Potrebno je napisati podatke za najmanje 3 osobe i 3 kompanije koji odgovaraju navedenim uslovima iz zadatka.

### DTD

Napraviti eksterni DTD fajl koji će validirati XML dokument po pravilima uz maksimalno primenjena ograničenja.

### XML Schema

Napraviti XML Schema fajl koji će uvesti dodatna ograničenja:

- Element ime mora imati minimum 3 a maksimum 30 karaktera
- Dan i mesec trebaju da budu u odgovarajućem opsegu (mesec 1-12, dan 1-31)
- Ulica, Broj, Grad i Država su tipa Adresa (složen tip)
- Email sadrži izraz koji ima maksimum 20 karaktera pa znak '@', zatim 4 do 8 karaktera i završava se sa '.com'
- Telefon mora biti u formatu XXX/000-000. Vrednosti telefona moraju biti cifre

### XSLT

Napraviti XSLT fajlove koji će izvršiti transformacije na već napravljen XML i prikazati:

- HTML dokument sa tabelom koja prikazuje sve podatke o osobama i kompanijama koje sadrže više od dve email adrese
- HTML doument sa tabelom koja prikazuje sve podatke o osobama i kompanijama čija je:
  - Adresa stalna i datum rođenja u opsegu od 1990 - 2005 godine
  - Prezime počinje sa slovom 'M' i naziv kompanije ima više od 6 karaktera
- XML dokument koji će elemente Adrese: Ulica, Broj i Grad prebaciti da budu atributi elementa

### GIT

Potrebno je inicijalizovati repozitorijum i uraditi sledeće:

- XML deo (uraditi kao jednu ili više verzija)
- Napraviti dodatnu granu i u njoj uraditi DTD deo, takođe u jednoj ili više verzija i istovremeno u XML dokumentu uraditi proizvoljnu izmenu
- U glavnoj grani uraditi XML Schema deo i istovremeno u XML dokumentu uraditi proizvoljnu izmenu
- Uraditi spajanje grana, a zatim uraditi XSLT deo
- Konačnu verziju postaviti na neki mrežni repozitorijum po izboru
