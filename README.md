
# AISE-Projet

    Notre projet est un programme qui permet d'analyser un processus en cours d'exécution.
# Installation du projet

    
    $ git clone https://github.com/aisetop/dtop.git
    

# Installation de la bibliothèque libunwind

    $ sudo apt-get update
    $ sudo apt-get install libunwind-dev
    
# Compilation

    $ make all
    
# Execution de notre programme:
 
    $ ./main_prog

# Liste des fonctionnalités:
 
    1. Informations de bases du processus (PID, PPID, GID et la localisation du programme)
    2. L’état de la mémoire
    3. Les bibliothèques chargées
    4. les variables globales disponibles et la liste complète des fonctions disponibles
    0. Pour lancer l'éxecution du programme (faire les breakPoint, Backtrace et gestionnaire des signaux)
# Diffcultés reconcontrés
    Les fonctionnalités de 1 à 4 affichent ce qui est attendu
    La fonctionnalité 0 execute le reste du main, dans le quelle il y'a une fonction backtrace pour remonter la pile
    Les fonctions relatives au BreakPoint ainsi que le gestionnaire du signal.
    Le BreakPoint est fonctionnel sur certain OS mais pas le notre (Linux Mint), ceci est du à un decalage entre les adresses mémoires obtenues à l'aide
    des commandes " objdump " et " readelf " et les adresses mapées se trouvant dans le dossier : " /proc/<PID>/maps " .
    Malgré tout les efforts pour remedier à ce problème, notament, l'implémentation de la fonction " getTracedRAMAddress ",  nous n'avons pas réussi a remédier à ce problème.
    Aillant rencontré des difficultés dans les BreakPoint, le BackTrace appelé " my_backtrace() " n'est pas toujours fonctionnel. 
