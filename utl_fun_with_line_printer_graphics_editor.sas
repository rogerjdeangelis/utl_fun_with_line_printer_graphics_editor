Barchart with super imposed map of the US lower 48 states

Lookd best with the sasfont?

INPUT
=====

Frequency data for five states "Vermont","Oregon","Idaho","Ohio","Texas";

WORK.HAVE total obs=488

 Obs     STATE

   1    Vermont
   2    Vermont
   3    Vermont
 ...
 484    Texas
 485    Texas
 486    Texas
 487    Texas
 488    Texas

data have;

  do state="Vermont","Oregon","Idaho","Ohio","Texas";
     do rec=1 to 200;
       if uniform(5731)<.5 then output;
     end;
  end;
  drop rec;
run;quit;


WANT
====

  http://ascii.co.uk/art/usa

110 +                                110
    |                               *****
    |                               *****
    |                               *****
100 +                               *****                    99
    |        95                     *****        95         *****
    |       *****        92         *****       *****       *****
    |       *****       *****       *****       *****       *****
 90 +       *****       *****       *****       *****       *****
    |       *****       *****       *****       *****       *****
    |       *****       *****       *****       *****       *****
    |       *****       *****       *****       *****       *****
 80 +       *****       *****       *****       *****       *****
    |       *****       *****       *****       *****       *****
    |       *****       *****       *****       *****       *****
    |       *****       *****       *****       *****       *****
 70 +       *****       *****       *****       *****       *****
    |       *****       *****       *****       *****       *****
    |       *****       *****       *****       *****       *****
    |     ________________________                            / \
 60 +      |    ||         |      |------ _  _           ____(  _)
    |     |     |(         |      |    /_/ \// _        / | || /
    |     |_____| \        |------|   /  --\/ / \    __/  |X/|(
    |     |     |  \_------|      |   \_   | (  (   /     |/_|/
 50 +     |  X  | X  |     |______|_____\ _| |   \_/ ___ _|_|/
    |     (_____|____|     |       \     \ \_)------/   ) )
    |     |   |    | |_____|__      )____/  |  | X  |___)/
    |     (   |    |    |     |_____|    \  |  /---/\__  \
 40 +     )   |    |    |     |      \    \ )_/    \ / \_/
    |     \   \    |    |     |       |    ||______//____|
    |      |   \   |____|_____|_______|----|       /      \
    |      )    \  /    |    |___     |    /______/_____  /
 30 +      \     \|     |    |  |     |   |   |   / \   \/
    |       \     \     |    |  |__   |---/   |   \  \  /
    |        \_   /     |    |     ---)   )   |   |   \/
    |          \__\_____|_----        \   |-|_|_---___/
 20 +                      \      X    )__  |   \/\_  \
    |                       \_/\      /   --        )  \
    |                           \    /              \  (
    |                            \  (                |  |
 10 +                             \__\                \_|
    |       *****       *****       *****       *****       *****
    |       *****       *****       *****       *****       *****
    |       *****       *****       *****       *****       *****
    --------------------------------------------------------------------
            Idaho        Ohio      Oregon       Texas      Vermont

                                    STATE

SOLUTION
========

  Goto http://ascii.co.uk/art/usa and copy the map you want to insert into
  a bar chart

  * create the bar chart;

  options ls=80 ps=60;
  proc chart data=have;
  vbar state;
  run;quit;

  * copy and past the YSA map wherever you want it.
  * Mark the states plotted with an X
  * Add heights?


