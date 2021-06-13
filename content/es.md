+++
title = "ESAD | Ein Konzept"
date = 2020-06-13
+++

Ich konnte mir vor einigen Jahren ein Konzept aneignen, dass mir
seit heute weiterhilft. Es lautet **ESAD**.

Einziffert soll es dir helfen dein Leben und die Aufgabenflut besser bewältigen zu
können.

Nun also im Detail:

E steht für **Eliminate** ziemlich einfach.. Was muss nun überhaupt getan werden um das Ziel zu erreichen.
  Kennt man. Vegisst, oder verdrängt man aber sehr oft.

S steht für **Simplify** Kannnst du es dir vlcht ein wenig einfacher machen. Versuche es. Auch wenn du
  es dir sehr gerne schwer machst.. Ich kenne das sehr gut.

A  steht für **Automate** Kannst du Dinge automatisieren. Hier bitte nicht übertreiben.

D stehet für **Delegate**. Nun auch wenn es in deiner Art liegt. Du musst nicht alles selbst erledigen.
  wenn du die Mittel dazu hast, versuche Aufgaben abzugeben


```python


def pi_nks(limit: int) -> float:
    pi: float = 3.0
    s: int =  1
    for i in range(2, limit, 2):
        pi += (s*4/(i*(i+1)*(i+2)))
        s = s*(-1)
    return pi

def pi_gls(limit: int) -> float:
    pi: float = 0.0
    s: int =  1
    for i in range(1, limit, 2):
        pi += (s*(4/i))
        s = s*(-1)
    return pi

if __name__ == "__main__":
    LIMIT: int = 100
    print(f"NKS: {pi_nks(limit=LIMIT):.13f}")
    print(f"GLS: {pi_gls(limit=LIMIT):.13f}")


```
