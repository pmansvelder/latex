## I.19 Commando's voor het creeren van UIS bridges

Controleer eerst op de bridges al bestaan zoals beschreven in I.17. Zo niet maak ze 
aan met de onderstaande commando's

Voor Acceptatie
create bridge 
source=topic:P.Beheersing.TreinPositieService.1.TreinPositieGewijzigd.Event.2 
target=queue:A.ESB.UitvoeringInformatieService.1.TreinPositieService.1.TreinPositieGe
wijzigd.Event.2
create bridge 
source=topic:A.Beheersing.MeetpuntenConfiguratieService.1.MeetpuntenconfiguratieGewij
zigd.Event.2 
target=queue:A.ESB.UitvoeringInformatieService.1.MeetpuntenconfiguratieService.1.Meet
puntenconfiguratieGewijzigd.Event.2
create bridge 
source=topic:A.Bijsturing.UitvoeringsInformatieService.1.UitvoeringGewijzigd.Event.1 
target=queue:A.Bijsturing.UitvoeringsInformatieService.1.UitvoeringGewijzigd.Event.1.
PVB.1
(De onderstaande bridge alleen aanmaken als er geen VOS installatie volgt)
create bridge 
source=topic:A.Bijsturing.UitvoeringsInformatieService.1.UitvoeringGewijzigd.Event.1 
target=queue:A.Bijsturing.UitvoeringsInformatieService.1.UitvoeringGewijzigd.Event.1.
VOS.2

Voor Beproeving
create bridge 
source=topic:P.Beheersing.TreinPositieService.1.TreinPositieGewijzigd.Event.2 
target=queue:B.ESB.UitvoeringInformatieService.1.TreinPositieService.1.TreinPositieGe
wijzigd.Event.2
create bridge 
source=topic:B.Beheersing.MeetpuntenConfiguratieService.1.MeetpuntenconfiguratieGewij
zigd.Event.2 
target=queue:B.ESB.UitvoeringInformatieService.1.MeetpuntenconfiguratieService.1.Meet
puntenconfiguratieGewijzigd.Event.2
(De onderstaande bridge alleen aanmaken als er geen VOS installatie volgt)
create bridge 
source=topic:B.Bijsturing.UitvoeringsInformatieService.1.UitvoeringGewijzigd.Event.1 
target=queue:B.Bijsturing.UitvoeringsInformatieService.1.UitvoeringGewijzigd.Event.1.
VOS.2

Voor Productie
create bridge 
source=topic:P.ESB.T.BewakenUitvoeringService.1.TreinuitvoeringsinformatieGemaakt.Eve
nt.1 
target=queue:P.ESB.UitvoeringInformatieService.1.BewakenUitvoeringService.1.Treinuitv
oeringsinformatieGemaakt.Event.1
create bridge 
source=topic:P.Beheersing.MeetpuntenConfiguratieService.1.MeetpuntenconfiguratieGewij
zigd.Event.2 
target=queue:P.ESB.UitvoeringInformatieService.1.MeetpuntenconfiguratieService.1.Meet
puntenconfiguratieGewijzigd.Event.2
(De onderstaande bridge alleen aanmaken als er geen VOS installatie volgt)
create bridge 
source=topic:P.Bijsturing.UitvoeringsInformatieService.1.UitvoeringGewijzigd.Event.1 
target=queue:P.Bijsturing.UitvoeringsInformatieService.1.UitvoeringGewijzigd.Event.1.
VOS.2

