# Gophish Landing Page Templates

Ces templates de pages de destination sont conçus pour être utilisés avec [Gophish](https://getgophish.com/), une plateforme open-source de phishing et de sensibilisation à la sécurité. Les deux templates fournis sont personnalisés pour des campagnes de phishing se faisant passer pour des services Microsoft.

## À propos

Ce dépôt contient deux templates HTML en [différentes langues](https://github.com/PassAndSecure/Template_Gophish/tree/main/M365-Campagne) pour des pages de destination Gophish et un script de conversion de CSV M365-Gophish:

- **mslogin.html** : Une page de connexion Microsoft 365 simulée.
- **msmail.html** : Un email de vérification de connexion Microsoft 365 simulé.
- **Conversion_CSV_Gophish_M365.ps1** : Un script de conversion CSV passant d'un export utilisateur M365 au format CSV attendu par Gophish

Ces templates peuvent être utilisés pour évaluer la sensibilisation à la sécurité et la réaction des utilisateurs face aux tentatives de phishing.

![Connexion M365](https://github.com/PassAndSecure/Template_Gophish/blob/main/Picture/Connexion_M365-1.png)

## Utilisation

1. Ouvrez Gophish et allez dans la section "Landing Pages".
2. Créez une nouvelle page de destination et copiez le contenu du fichier `mslogin.html` dans l'éditeur.
3. Allez dans la section "Email Templates"
4. Créez une nouvelle page de destination et copiez le contenu du fichier `msmail.html`  dans l'éditeur.
5. Créez une campagne en utilisant les éléments Landing Pages et Email Templates que vous venez de créer et lancer votre campagne.

## Avertissement

L'utilisation de ces templates doit être effectuée de manière éthique et légale, conformément aux politiques de votre organisation et aux lois locales. Assurez-vous d'obtenir les autorisations nécessaires avant de lancer des campagnes de phishing.

## Contribution

Nous accueillons avec plaisir les contributions de la communauté. Si vous souhaitez contribuer, veuillez forker le dépôt et soumettre une pull request avec vos modifications.

## Support

Pour toute question ou problème concernant ces templates, veuillez ouvrir un issue dans ce dépôt. Nous essayerons de vous aider dans les meilleurs délais.

Merci de votre intérêt et de votre participation à la communauté Gophish !
