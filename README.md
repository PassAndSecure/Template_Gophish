# Gophish Repository fr version by Kirua6 (Pass And Secure)

Lien du tutoriel associé : [Installation et déploiement de Gophish avec un tenant M365 compatible Debian 12 / AlmaLinux 9.4](https://passandsecure.fr/deploiement_campagne_phishing_gophish_tenant_M365_sur_debian_alma)

Le [fork du code source](https://github.com/PassAndSecure/Template_Gophish/releases/download/gophish-v0.12.1-linux-64bit-fr/gophish-v0.12.1-linux-64bit-fr.zip) existant que j'ai développé est une version française de Gophish, avec quelques améliorations intégrées en plus de la francisation. [Gophish](https://getgophish.com/) est une plateforme open-source de phishing et de sensibilisation à la sécurité.

Les templates fournis sont personnalisés pour des campagnes de phishing se faisant passer pour des services Microsoft ou Google, ainsi que pour y remédier.

Pour plus d'informations et d'autres outils de ethical hacking, visitez notre site web [PassAndSecure](https://passandsecure.fr).

## À propos

Ce dépôt contient 1 fork de Gophish et 6 templates HTML en [différentes](https://github.com/PassAndSecure/Template_Gophish/tree/main/M365-Campagne) [langues](https://github.com/PassAndSecure/Template_Gophish/tree/main/Google-Campagne) pour des emails (nocifs ou de remédiation), des pages de destination Gophish et un script de conversion de CSV M365-Gophish:

- **gophish-v0.12.1-linux-64bit-fr** : Fork français de Gophish.
- **mslogin.html** : Une page de connexion Microsoft 365 simulée partiellement correspondante à l'officielle.
- **mslogin_v2.html** : Une page de connexion Microsoft 365 simulée totalement correspondante à l'officielle.
- **msmail.html** : Un email de vérification de connexion Microsoft 365 simulé.
- **Conversion_CSV_Gophish_M365.ps1** : Un script de conversion CSV passant d'un export utilisateur M365 au format CSV attendu par Gophish
- **googlelogin.html** : Une page de connexion Google simulée.
- **googlemail.html** : Un email de vérification de connexion Google simulé.
- **ms-google-remediation.html** : Un email de remédiation d'après campagne pour sensibilisé vos utilisateurs. (Compatible M365 - Google)

Ces templates peuvent être utilisés pour évaluer la sensibilisation à la sécurité et la réaction des utilisateurs face aux tentatives de phishing.

![Connexion M365](https://github.com/PassAndSecure/Template_Gophish/blob/main/Picture/Connexion_M365-1.png)

![Connexion Google](https://github.com/PassAndSecure/Template_Gophish/blob/main/Picture/Connexion_Google-1.png)

## Utilisation

1. Ouvrez Gophish et allez dans la section "Landing Pages".
2. Créez une nouvelle page de destination et copiez le contenu du fichier `mslogin.html` ou `googlelogin.html` dans l'éditeur.
3. Allez dans la section "Email Templates"
4. Créez une nouvelle page de destination et copiez le contenu du fichier `msmail.html` ou `googlemail.html` dans l'éditeur.
5. Créez une campagne en utilisant les éléments Landing Pages et Email Templates que vous venez de créer et lancer votre campagne.

## Avertissement

Le téléchargement et l'utilisation des ressources ne sont pas garantis par le site Pass And Secure. Le site et ses créateurs ne sont pas responsables des problèmes ou des dommages qui pourraient survenir suite à l'utilisation de ces ressources. Nous fournissons ces ressources sans garantie d'aucune sorte ; utilisez-les à vos propres risques.

L'utilisation de ces templates doit être effectuée de manière éthique et légale, conformément aux politiques de votre organisation et aux lois locales. Assurez-vous d'obtenir les autorisations nécessaires avant de lancer des campagnes de phishing.

## Contribution

Nous accueillons avec plaisir les contributions de la communauté. Si vous souhaitez contribuer, veuillez forker le dépôt et soumettre une pull request avec vos modifications.

## Support

Pour toute question ou problème concernant ces templates, veuillez ouvrir un issue dans ce dépôt. Nous essayerons de vous aider dans les meilleurs délais.

Merci de votre intérêt et de votre participation à la communauté Gophish !


         _ (`-.     ('-.       .-')      .-')             ('-.          .-') _   _ .-') _           .-')       ('-.                             _  .-')      ('-.                                          
        ( (OO  )   ( OO ).-.  ( OO ).   ( OO ).          ( OO ).-.     ( OO ) ) ( (  OO) )         ( OO ).   _(  OO)                           ( \( -O )   _(  OO)                                         
        _.`     \   / . --. / (_)---\_) (_)---\_)         / . --. / ,--./ ,--,'   \     .'_        (_)---\_) (,------.    .-----.   ,--. ,--.    ,------.  (,------.                                        
        (__...--''   | \-.  \  /    _ |  /    _ |          | \-.  \  |   \ |  |\   ,`'--..._)       /    _ |   |  .---'   '  .--./   |  | |  |    |   /`. '  |  .---'                                        
        |  /  | | .-'-'  |  | \  :` `.  \  :` `.        .-'-'  |  | |    \|  | )  |  |  \  '       \  :` `.   |  |       |  |('-.   |  | | .-')  |  /  | |  |  |                                            
        |  |_.' |  \| |_.'  |  '..`''.)  '..`''.)        \| |_.'  | |  .     |/   |  |   ' |        '..`''.) (|  '--.   /_) |OO  )  |  |_|( OO ) |  |_.' | (|  '--.                                         
        |  .___.'   |  .-.  | .-._)   \ .-._)   \         |  .-.  | |  |\    |    |  |   / :       .-._)   \  |  .--'   ||  |`-'|   |  | | `-' / |  .  '.'  |  .--'                                         
        |  |        |  | |  | \       / \       /         |  | |  | |  | \   |    |  '--'  /       \       /  |  `---. (_'  '--'\  ('  '-'(_.-'  |  |\  \   |  `---.                                        
        `--'        `--' `--'  `-----'   `-----'          `--' `--' `--'  `--'    `-------'         `-----'   `------'    `-----'    `-----'     `--' '--'  `------'                                        
         _ .-') _     ('-.     _ (`-.               .-') _         .-. .-')                    .-. .-')                                         ('-.         .-') _  
        ( (  OO) )  _(  OO)   ( (OO  )             (  OO) )        \  ( OO )                   \  ( OO )                                       ( OO ).-.    ( OO ) ) 
         \     .'_ (,------. _.`     \ .-'),-----. /     '._        ;-----.\  ,--.   ,--.      ,--. ,--.  ,-.-')  ,--.      ,--.      ,-.-')   / . --. /,--./ ,--,'  
         ,`'--..._) |  .---'(__...--''( OO'  .-.  '|'--...__)       | .-.  |   \  `.'  /       |  .'   /  |  |OO) |  |.-')  |  |.-')  |  |OO)  | \-.  \ |   \ |  |\  
         |  |  \  ' |  |     |  /  | |/   |  | |  |'--.  .--'       | '-' /_).-')     /        |      /,  |  |  \ |  | OO ) |  | OO ) |  |  \.-'-'  |  ||    \|  | ) 
         |  |   ' |(|  '--.  |  |_.' |\_) |  |\|  |   |  |          | .-. `.(OO  \   /         |     ' _) |  |(_/ |  |`-' | |  |`-' | |  |(_/ \| |_.'  ||  .     |/  
         |  |   / : |  .--'  |  .___.'  \ |  | |  |   |  |          | |  \  ||   /  /\_        |  .   \  ,|  |_.'(|  '---.'(|  '---.',|  |_.'  |  .-.  ||  |\    |   
         |  '--'  / |  `---. |  |        `'  '-'  '   |  |          | '--'  /`-./  /.__)       |  |\   \(_|  |    |      |  |      |(_|  |     |  | |  ||  | \   |   
         `-------'  `------' `--'          `-----'    `--'          `------'   `--'            `--' '--'  `--'    `------'  `------'  `--'     `--' `--'`--'  `--'         

