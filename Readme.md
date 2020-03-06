
# Symbioz-2.38
Symbioz est un émulateur pour DOFUS version 2.38 compatible avec le [CMS Azuriom](https://azuriom.com/), programmé en C# .NET 4.5.

## Prérequis

- Avoir le CMS Azuriom installé et fonctionnel
- Visual Studio 2015/2017
- DOFUS 2.38 : https://1fichier.com/?fj0fiha9tb

## Installation

- Télécharger le [Serveur Auth](https://github.com/Javdu10/Symbioz-2.38/releases/latest/download/Auth.zip), le [Serveur World](https://github.com/Javdu10/Symbioz-2.38/releases/latest/download/World.zip) ainsi que la [base de donnée world](https://github.com/Javdu10/Symbioz-2.38/releases/latest/download/symbioz_world.sql.gz)

Dans Auth\auth.xml configurez ces champs :
```xml
  <DatabaseHost>127.0.0.1</DatabaseHost>
  <DatabaseUser>root</DatabaseUser>
  <DatabasePassword></DatabasePassword>
  <DatabaseName>final_azuriom</DatabaseName>  /!\ Faites attention au nom de votre BDD Azuriom
  <Port>5555</Port>
  <ShowProtocolMessages>True</ShowProtocolMessages>
  <Host>127.0.0.1</Host>
```

Dans World\world.xml configurez ces champs :
```xml
  <Host>127.0.0.1</Host>
  <DatabaseHost>127.0.0.1</DatabaseHost>
  <DatabaseUser>root</DatabaseUser>
  <DatabasePassword></DatabasePassword>
  <DatabaseName>symbioz_world</DatabaseName>
```
- Connectez vous a votre base de donnée, créez une nouvelle base de données, nommez la "symbioz_world" puis importez le script symbioz_world.sql.gz

- Connectez vous à votre panel Admin Azuriom puis installez le plugin Dofus qui se trouve dans la section "Plugins"

Vous pouvez à présent vous connecter avec votre addresse email et mot de passe du CMS in-game !

Si vous avez le moindre problème n'hesitez pas à demander dans le channel #support du [serveur discord](https://azuriom.com/discord)


## Auteurs

Skinz ([https://github.com/Skinz3](https://github.com/Skinz3))

## Remerciments

LuaxY - [https://github.com/LuaxY](https://github.com/LuaxY)
Taykyue - Profiad
