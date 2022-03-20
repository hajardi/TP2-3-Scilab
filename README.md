
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
 
    1. Informations de bases du processus
    2. L’état de la mémoire
    3. Les bibliothèques chargées
    4. les variables globales disponibles et la liste complète des fonctions disponibles
    5. Pour lancer l'éxecution du programme (faire les breakPoint, Backtrace et gestionnaire des signaux)

** Man page

See manpage:
#+BEGIN_SRC bash
$ man ./dtop.1
#+END_SRC

** Help

Using dtop command:
#+BEGIN_SRC bash
$ ./dtop -h
#+END_SRC

It will show:
#+BEGIN_SRC txt
Usage: ./dtop [OPTION] [ARGUMENT]...
Options:
  -h, print this help

  SERVER:
    -s               server service
    -p <port>        select a port
    -u <number>      select the number of max users in server
    -4               use IPv4 only
    -6               use IPv6 only
  Close server with ctrl+c

  CLIENT:
    -c               client service
    -o <filename>    redirect output in the given file
    -l               select loop mode (print in stdout)
    -n               select ncurses mode
    -i <ip>          select the ip address of server
    -p <port>        select the port of server
    -4               use IPv4 only
    -6               use IPv6 only
  Close client with ctrl+c (for loop) and q (for ncurses)
#+END_SRC

* List of fonctionnality
** Base

   | Code | Component                      | Description                               | Implemented |
   |------+--------------------------------+-------------------------------------------+-------------|
   | A1   | Build system                   | Makefile and Git                          | YES         |
   | A2   | Communication sensor/interface | Network (via getaddrinfo / select method) | YES         |
   | A3   | Sensor                         | readproc (procps)                         | YES         |
   | A4   | Interface                      | output (stdout or file)                   | YES         |
   | A5   | Report                         | Format pdf                                | NO          |

** Bonus

   | Code | Component         | Description                                | Implemented |
   |------+-------------------+--------------------------------------------+-------------|
   | B1   | Advanced client   | readproc do this (info by pid)             | YES         |
   | B2   | Multi client      | select method                              | YES         |
   | B3   | CLI               | getopt, help and man                       | YES         |
   | B4   | Plugin            | display plugin                             | NO          |
   | B5   | Interactif        | filtered (come with ncurses support maybe) | NO          |
   | B6   | GUI               | ncurses mode                               | YES         |
   | B7   | Compatibility I/O | json output                                | NO          |

* License

  GNU General Public License v3.0 ([[https://github.com/aisetop/dtop/blob/master/LICENSE][see License]])
