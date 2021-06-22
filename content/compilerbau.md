+++
title = "Compilerbau - Einführung und Struktur"
date = 2021-06-19
draft = true
+++

Ein Intro in die Welt des Compilerbaus

Nun wie bau ich nun so ein Ding?


Zuerst eine Compiler ist kein Interpreter

Compilder -> code -> package binary
interpreter -> exec


Willst du also einen Interpreter bauen,
sowas wie bash, python, oder ruby dann ist die herangehensweise ziemlich anders..


Nun also zum Compilerbau

Was ich immer gerne mache, bevor ich mir überlege wie ich es baue, ist, zu überlegen wie ich es nutzen
möchte..

mein compilder soll ein cli interface haben, um code files dem compilder zu geben
das soll am besten mit einem Ring buffer loading approach getan werden..
warum weil alles in memory einfach scheisses iss.
Auch wenn es für den Zweck warscheinlich reichen würde..



Ok nun wissen wir, wie wir dem Compiler Daten/ Source Files geben wollen.

Was ist nun ein Compiler überhaupt genau?

Ein Compiler ist ein übersetzer. Erw ueberstätzt vordefiniertes sogenntes grammar
in ein binary oder kompelat..


Wie genau passiert das?

Aufbau:
- Parser
  - Parst den Code, sucht nach syntax Fehlern..
  - liefert uns AST's zurück.. also Abstract Syntax Trees..

- Optimizer
  - Optimiert den Code anhand der AST's
  - können wir infinitive lơops usw erkennen.

- Linker (das ist warscheinlich nicht so interessant für uns)
 - kombiniert anderen source code, libs usw mit unserem binary




