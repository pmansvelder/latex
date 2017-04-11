## I.21 verwijder deprecated bridges en queue's bij installatie UIS 2.9.2
Voor Accepatatie
delete bridge source=topic:A.PlanService.3.PlanGewijzigd.Event.1 
target=queue:A.Bijsturing.PlanService.3.PlanGewijzigd.Event.1.UIS.2
delete bridge source=topic:A.Bijsturing.PlanService.3.PlanelementGewijzigd.Event.1 
target=queue:A.Bijsturing.PlanService.3.PlanelementGewijzigd.Event.1.UIS.2
delete queue A.Bijsturing.PlanService.3.PlanGewijzigd.Event.1.UIS.2 
delete queue A.Bijsturing.PlanService.3.PlanelementGewijzigd.Event.1.UIS.2 

Voor Beproeving
delete bridge source=topic:B.PlanService.3.PlanGewijzigd.Event.1 
target=queue:B.Bijsturing.PlanService.3.PlanGewijzigd.Event.1.UIS.2
delete bridge source=topic:B.Bijsturing.PlanService.3.PlanelementGewijzigd.Event.1 
target=queue:B.Bijsturing.PlanService.3.PlanelementGewijzigd.Event.1.UIS.2
delete queue B.Bijsturing.PlanService.3.PlanGewijzigd.Event.1.UIS.2 
delete queue B.Bijsturing.PlanService.3.PlanelementGewijzigd.Event.1.UIS.2 

Voor Productie
delete bridge source=topic:P.PlanService.3.PlanGewijzigd.Event.1 
target=queue:P.Bijsturing.PlanService.3.PlanGewijzigd.Event.1.UIS.2
delete bridge source=topic:P.Bijsturing.PlanService.3.PlanelementGewijzigd.Event.1 
target=queue:P.Bijsturing.PlanService.3.PlanelementGewijzigd.Event.1.UIS.2
delete queue P.Bijsturing.PlanService.3.PlanGewijzigd.Event.1.UIS.2 
delete queue P.Bijsturing.PlanService.3.PlanelementGewijzigd.Event.1.UIS.2 

