# Présentation du projet

Formatux propose des supports de cours Linux libres de droits à destination des formateurs ou des personnes désireuses d'apprendre à administrer un système Linux en autodidacte.

Les supports de Formatux sont publiés sous licence Creative Commons-BY-SA et sous licence Art Libre. Vous êtes ainsi libre de copier, de diffuser et de transformer librement les œuvres dans le respect des droits de l’auteur.

*BY* : Paternité. Vous devez citer le nom de l’auteur original.

*SA* : Partage des Conditions Initiales à l’Identique.
    
* Licence Creative Commons-BY-SA : https://creativecommons.org/licenses/by-sa/3.0/fr/
* Licence Art Libre : http://artlibre.org/

A partir des sources, vous pouvez générer votre support de formation personnalisé. Nous vous recommandons le logiciel AsciidocFX téléchargeable ici : http://asciidocfx.com/

# Comment contribuer au projet ?

Si vous voulez participer à la rédaction des supports formatux,  **forkez-nous sur [framagit.org](https://framagit.org/alemorvan/formatux.fr-support)**.

Vous pourrez ensuite apporter vos modifications, compiler votre support personnaliser et nous proposer vos modificitions.

Vous êtes les bienvenus pour :

* Compléter le document avec un nouveau chapitre
* Corriger ou compléter les chapitres existants
* Relire le document et corriger l'orthographe, la mise en forme
* Promouvoir le projet

## De votre côté

1. Créer un compte sur [https://framagit.org](https://framagit.org)
1. Créer un fork du projet principal : [Créer le fork](https://framagit.org/alemorvan/formatux.fr-support/forks/new)
1. Créer une branche nommée developpement/[Description]
    * Où [Description] est une description très courte de ce qui va être fait
1. Faire des commits dans votre branche
1. Pusher la branche sur votre fork
1. Demander une merge request

## La suite se passe de notre côté

1. Quelqu'un relira votre travail
    * Essayez de rendre ce travail plus facile en organisant vos commits
1. S'il y a des remarques sur le travail, le relecteur fera des commentaires sur la merge request
1. Si la merge request lui semble correcte il peut merger votre travail avec la branche **developement**

## Corrections suite à une relecture

La relecture de la merge request peut vous amener à faire des corrections.
Vous pouvez faire ces corrections dans votre branche, ce qui aura pour effet de les ajouter à la merge request.

# Comment compiler mon support formatux ?

Après avoir forké notre projet ou l'avoir cloné (git clone https://framagit.org/alemorvan/formatux.fr-support.git), déplacez vous dans le dossier formatux.fr-support nouvellement créé.

Vous avez ensuite plusieurs possibilités : 

* Vous utilisez le logiciel AsciiDocFX (recommandé sous Windows) : lancez le logiciel, ouvrez le fichier .adoc désiré (le fichier Sources/SupportLinux.adoc contient la totalité des documents), et cliquez sur le bouton **PDF**.

* Vous êtes sous Linux et vous avez déjà installé le paquet asciidoctor : déplacez vous dans le dossier bin et exécutez le fichier build-doc.sh.
* Vous êtes sous Linux et vous avez déjà installé le paquet maven : restez à la racine du projet et lancez la commande **mvn**.

