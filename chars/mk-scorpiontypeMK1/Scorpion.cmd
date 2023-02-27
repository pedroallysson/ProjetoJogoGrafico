;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;                           ||||||||||||||||||||||||||||||||||||                              ;
;                           ||                                ||                              ;
;                           ||           SCORPION CMD         ||                              ;
;                           ||                                ||                              ;
;                           ||||||||||||||||||||||||||||||||||||                              ;

;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

[Command]
name = "friendship"    
command = ~F,B,D,b
time = 100

[Command]
name = "babality"    
command = ~F,F,B,b
time = 100

[Command]
name = "brutality"    
command = D,B,z
time = 100

[Command]
name = "animality"    
command = ~B,D,F,a
time = 100

[Command]
name = "BlackAxe"    
command =  ~B,D,B, y
time = 100

[Command]
name = "Toasty"    
command = ~F, D, F, x
time = 100


;----------| SUPER COMANDOS |-----------

[Command]
name =  "raging Scorpion"
command = ~D,DF,F,x+a
time = 40

[Command]
name = "SuperSpear"    
command = ~D,DF,F,x+y
time = 100

[Command]
name = "Hell Flame"
command = ~D,DF,F,y+z
time = 30

[command]
name = "Ninjitsu Thrust"
command = ~D,DB,B,y+z
time = 30

[command]
name = "Scorpion Stinger"
command = ~D, DB ,B ,x+y
time = 30
;----------| ESPECIAL COMANDOS |-----------
[Command]
name = "Scorpion kicks "
command = ~D,DF,F,c
time = 20


[Command]
name = "Flame Ball"
command = ~D,DF,F,b
time = 20

[Command]
name = "Spear"    
command = ~D,DF,F,x
time = 20

[Command]
name = "SpearDiagonal"    
command = ~D,DB,B,x
time = 20

[Command]
name = "TeleportPunch"    
command = ~D,DB,B,y
time = 20

[Command]
name = "TeleportPunchAereo"    
command = ~D,DB,B,y
time = 20

;---------| NORMAL COMANDOS |-----------


; Dir + Button 

[Command]
name = "fwd_x"
command = /F,x

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "df_y"
command = /DF, y
time = 1

[Command]
name = "df_a"
command = /DF, a
time = 1

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "DU" ;Pulo alto
command = D, $U
time = 11

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[command]
name = "Fierce Kick"
command = c
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[command]
name = "Fierce Punch"
command = z
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "DU"
command = D, U
time = 18

[Command]
name = "DU"
command = DB, UF
time = 18

[Command]
name = "DU"
command = DF, UB
time = 18

[Command]
name = "DU"
command = $D, UF
time = 18

[Command]
name = "DU"
command = $D, UB
time = 18

[Statedef -1]
[State -1, super jump ]
type = ChangeState
value = 7777777
trigger1 = command = "DU"
trigger1 = ctrl ; these means that you can make the move when you control the char
trigger1 = statetype != A ; these is to make that you cant use the superjump while you are in the air
; If you want to make a launcher you can use these
trigger2 = (stateno = 410) && (movehit) && (command = "holdup") ;yyy right here is the stateno for your launcher

;Flame Ball
[State -1, Flame Ball]
type = Changestate
value = 44444
triggerall = command = "Flame Ball"
trigger1 = (statetype = S) && ctrl
trigger2 = MoveContact && stateno = 3000


[State -1, Scorpion kicks ]
type = Changestate
value = 1700
triggerall = command = "Scorpion kicks "
trigger1 = (statetype = s) && ctrl


[State -1, raging Scorpion  ]
type = Changestate
value = 73850
triggerall = power >= 3000
triggerall = command = "raging Scorpion"
trigger1 = (statetype = s) && ctrl

;Scorpion Stinger
[State -1, Scorpion Stinger]
type = ChangeState
value = 34466
triggerall = power >= 2000
triggerall = (Command = "Scorpion Stinger") && (Power >= 2000)
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 22999 || stateno = 23003 || stateno = 34466 || stateno = 22999 || stateno = 23003
trigger2 = movecontact
trigger3 = stateno = 23003 || stateno = 22999 || stateno = 23003 || stateno = 23003 || stateno = 34466
trigger3 = movecontact


;Ninjitsu Thrust
[State -1, Ninjitsu Thrust]
type = ChangeState
value = 23003
triggerall = command = "Ninjitsu Thrust"
triggerall = power >= 3000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 23003 || stateno = 22999 || stateno = 23003 || stateno = 23003 || stateno = 22999
trigger2 = movecontact
trigger3 = stateno = 34466 || stateno = 22999 || stateno = 34466 || stateno = 34466 || stateno = 22999
trigger3 = movecontact

;Hell Flame
[State -1, Hell Flame]
type = Changestate
value = 22999
triggerall = command = "Hell Flame"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 23003 || stateno = 22999 || stateno = 23003 || stateno = 23003 || stateno = 22999
trigger2 = movecontact
trigger3 = stateno = 34466 || stateno = 22999 || stateno = 34466 || stateno = 34466 || stateno = 22999
trigger3 = movecontact

;Fierce Kick
[State -1, Fierce Kick]
type = ChangeState
value = 243
triggerall = command = "Fierce Kick"
triggerall = command != "holddown"
triggerall= anim != 6504
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 260 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 30 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 230 && movecontact
trigger10 = stateno = 450 && movecontact
trigger11 = stateno = 250 && movecontact
trigger12 = stateno = 445 && movecontact
trigger13 = stateno = 460 && movecontact
trigger14 = stateno = 400 && movecontact
trigger15 = stateno = 410 && movecontact
trigger16 = stateno = 430 && movecontact
trigger17 = stateno = 440 && movecontact
trigger18 = stateno = 260 && movecontact

;Fierce Punch
[State -1, Fierce Punch]
type = ChangeState
value = 30
triggerall = command = "Fierce Punch"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall= anim != 6504
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 260 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 243 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 230 && movecontact
trigger10 = stateno = 450 && movecontact
trigger11 = stateno = 250 && movecontact
trigger12 = stateno = 445 && movecontact
trigger13 = stateno = 460 && movecontact
trigger14 = stateno = 400 && movecontact
trigger15 = stateno = 410 && movecontact
trigger16 = stateno = 430 && movecontact
trigger17 = stateno = 440 && movecontact
trigger18 = stateno = 260 && movecontact
;=======================================================================

;----------- Finish Him ------------

[State -1]
type = Changestate
trigger1 = ctrl 
trigger1 = P2Life <= 1 
trigger1 = NumHelper(9010) = 0
trigger1 = P2StateNo != 003
trigger1 = RoundNo != 1
trigger1 = var(58) >= 1
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)
value = 9000 

;=========================================================================
;-------------------------------
;            Fatalitys         :
;-------------------------------

[State -1,FRIENDSHIP]
type = Changestate
value = 8700
triggerall = P2Life = 1
triggerall = NumHelper(9010) = 1
triggerall = enemy(0), stateno = 003
triggerall = RoundNo != 1
triggerall = var(58) >= 1
trigger1 = command = "friendship"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = P2BodyDist X >= 60
trigger1 = p2Dist X <= 300

[State -1,BABALITY]
type = Changestate
value = 8600
triggerall = P2Life = 1
triggerall = NumHelper(9010) = 1
triggerall = enemy(0), stateno = 003
triggerall = RoundNo != 1
triggerall = var(58) >= 1
trigger1 = command = "babality"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = P2BodyDist X >= 60
trigger1 = p2Dist X <= 300

[State -1,BRUTALITY]
type = Changestate
value = 8500
triggerall = P2Life = 1
triggerall = NumHelper(9010) = 1
triggerall = enemy(0), stateno = 003
triggerall = RoundNo != 1
triggerall = var(58) >= 1
trigger1 = command = "brutality"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = P2BodyDist X >= 60
trigger1 = p2Dist X <= 300

[State -1,ANIMALITY]
type = Changestate
value = 8400
triggerall = P2Life = 1
triggerall = NumHelper(9010) = 1
triggerall = enemy(0), stateno = 003
triggerall = RoundNo != 1
triggerall = var(58) >= 1
trigger1 = command = "animality"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = P2BodyDist X >= 60
trigger1 = p2Dist X <= 300

[State -1, BLACK AXE]
type = Changestate
value = 8100
triggerall = P2Life = 1
triggerall = NumHelper(9010) = 1
triggerall = enemy(0), stateno = 003
triggerall = RoundNo != 1
triggerall = var(58) >= 1
triggerall = P2BodyDist X >= 80&&P2BodyDist X <= 120
trigger1 = command = "BlackAxe"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)

[State -1, TOASTY]
type = Changestate
value = 8000
triggerall = P2Life = 1
triggerall = NumHelper(9010) = 1
triggerall = enemy(0), stateno = 003
triggerall = RoundNo != 1
triggerall = var(58) >= 1
triggerall = P2BodyDist X >= 80&&P2BodyDist X <= 120
trigger1 = command = "Toasty"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)


;-------------------------------
;         Golpes Supers        :
;-------------------------------

[State -1, Super Spear]
type = ChangeState
value = 3000
triggerall = command = "SuperSpear"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno =[ 200,440]
trigger3 = MoveContact && stateno = 44444

;-------------------------------
;        Golpes especiais      :
;-------------------------------
[State -1, SPEAR]
type = ChangeState
value = 1000
triggerall = P2Stateno != 003&&P2life != 1
triggerall = command = "Spear"&&P2Stateno !=100000
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl
trigger2 =  (stateno = [200,440]) && (stateno !=[600,640]) 
trigger2 = movecontact

[State -1, SPEAR DIAGONAL]
type = ChangeState
value = 1100
triggerall = P2Stateno != 003&&P2life != 1
triggerall = command = "SpearDiagonal"&&P2Stateno !=100000
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl
trigger2 =  (stateno = [200,440]) && (stateno !=[600,640]) 
trigger2 = movecontact

[State -1, TELEPORT PUNCH]
type = ChangeState
value = 2000
triggerall = P2Stateno != 003&&P2life != 1
triggerall = command = "TeleportPunch"
trigger1 = NumHelper(1000)= 0&&NumHelper(1100)= 0 
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl
trigger2 =  (stateno = [200,440]) && (stateno !=[600,640]) 
trigger2 = movecontact

[State -1, TELEPORT PUNCH AEREO]
type = ChangeState
value = 2050
triggerall = P2Stateno != 003&&P2life != 1
triggerall = command = "TeleportPunchAereo"
trigger1 = NumHelper(1000)= 0&&NumHelper(1100)= 0 
trigger1 = statetype != S
trigger1 = statetype = A
trigger1 = ctrl
trigger2 =  (stateno =[600,640]) 
trigger2 = movecontact

;-------------------------------
;         Golpes Normais       :
;-------------------------------

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall= anim != 6504
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall= anim != 6504
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;Taunt
[State -1, Taunt]
type = ChangeState
value = 199
triggerall= anim != 6504
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------

;-------------------------------
;        Golpes Normais        :
;-------------------------------

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall= anim != 6504
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall= anim != 6504
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;Taunt
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall= anim != 6504
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl

;---------------------------------------------------------

[State -1,Sub-Zero Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S 
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C) 
trigger2 = p2movetype != H

;Punch in Run
[State -1,PR]
type = ChangeState
value = 200
triggerall= anim != 6504
triggerall = command = "x" && Stateno =100 && p2bodydist X < 50
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 460 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 260 && movecontact
trigger8 = stateno = 30 && movecontact
trigger9 = stateno = 230 && movecontact
trigger10 = stateno = 240 && movecontact
trigger11 = stateno = 243 && movecontact
trigger12 = stateno = 250 && movecontact
trigger13 = stateno = 445 && movecontact
trigger14 = stateno = 400 && movecontact
trigger15 = stateno = 410 && movecontact
trigger17 = stateno = 430 && movecontact
trigger18 = stateno = 440 && movecontact
trigger19 = stateno = 450 && movecontact
trigger20 = stateno = 250 && movecontact
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 210
triggerall = p2bodydist X > 50 || Stateno != 100
triggerall= anim != 6504
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 280 && movecontact
trigger5 = stateno = 460 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 260 && movecontact
trigger8 = stateno = 30 && movecontact
trigger9 = stateno = 230 && movecontact
trigger10 = stateno = 240 && movecontact
trigger11 = stateno = 243 && movecontact
trigger12 = stateno = 250 && movecontact
trigger13 = stateno = 445 && movecontact
trigger14 = stateno = 400 && movecontact
trigger15 = stateno = 410 && movecontact
trigger17 = stateno = 430 && movecontact
trigger18 = stateno = 440 && movecontact
trigger19 = stateno = 450 && movecontact
trigger20 = stateno = 250 && movecontact
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall= anim != 6504
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 460 && movecontact
trigger6 = stateno = 260 && movecontact
trigger7 = stateno = 30 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 243 && movecontact
trigger11 = stateno = 250 && movecontact
trigger12 = stateno = 445 && movecontact
trigger13 = stateno = 400 && movecontact
trigger14 = stateno = 410 && movecontact
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 250 && movecontact
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command != "holdback"
triggerall= anim != 6504
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 460 && movecontact
trigger6 = stateno = 260 && movecontact
trigger7 = stateno = 30 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 243 && movecontact
trigger11 = stateno = 250 && movecontact
trigger12 = stateno = 445 && movecontact
trigger13 = stateno = 400 && movecontact
trigger14 = stateno = 410 && movecontact
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 250 && movecontact
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command != "holdback"
triggerall= anim != 6504
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 460 && movecontact
trigger6 = stateno = 260 && movecontact
trigger7 = stateno = 30 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 230 && movecontact
trigger10 = stateno = 243 && movecontact
trigger11 = stateno = 250 && movecontact
trigger12 = stateno = 445 && movecontact
trigger13 = stateno = 400 && movecontact
trigger14 = stateno = 410 && movecontact
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 250 && movecontact
;Rasteira
[State -1]
type = Changestate
value = 250
triggerall = command = "holdback" && command = "b"
triggerall= anim != 6504
trigger1 = command = "b"
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 460 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 30 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 230 && movecontact
trigger10 = stateno = 243 && movecontact
trigger11 = stateno = 250 && movecontact
trigger12 = stateno = 445 && movecontact
trigger13 = stateno = 400 && movecontact
trigger14 = stateno = 410 && movecontact
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 250 && movecontact

;Chutão
[State -1]
type = Changestate
value = 260
triggerall = command = "holdback" && command = "a"
triggerall= anim != 6504
trigger1 = command = "a"
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 460 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 30 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 230 && movecontact
trigger10 = stateno = 243 && movecontact
trigger11 = stateno = 250 && movecontact
trigger12 = stateno = 445 && movecontact
trigger13 = stateno = 400 && movecontact
trigger14 = stateno = 410 && movecontact
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 260 && movecontact


;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 460
triggerall= anim != 6504
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 260 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 30 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 230 && movecontact
trigger10 = stateno = 243 && movecontact
trigger11 = stateno = 250 && movecontact
trigger12 = stateno = 445 && movecontact
trigger13 = stateno = 400 && movecontact
trigger14 = stateno = 410 && movecontact
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 260 && movecontact

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 400
triggerall= anim != 6504
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 260 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 30 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 230 && movecontact
trigger10 = stateno = 243 && movecontact
trigger11 = stateno = 250 && movecontact
trigger12 = stateno = 445 && movecontact
trigger13 = stateno = 460 && movecontact
trigger14 = stateno = 410 && movecontact
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 260 && movecontact

;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall= anim != 6504
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 260 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 30 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 230 && movecontact
trigger10 = stateno = 243 && movecontact
trigger11 = stateno = 250 && movecontact
trigger12 = stateno = 445 && movecontact
trigger13 = stateno = 460 && movecontact
trigger14 = stateno = 400 && movecontact
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 260 && movecontact


;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall= anim != 6504
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 260 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 30 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 230 && movecontact
trigger10 = stateno = 243 && movecontact
trigger11 = stateno = 250 && movecontact
trigger12 = stateno = 445 && movecontact
trigger13 = stateno = 460 && movecontact
trigger14 = stateno = 400 && movecontact
trigger15 = stateno = 410 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 260 && movecontact


;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall= anim != 6504
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 260 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 30 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 230 && movecontact
trigger10 = stateno = 243 && movecontact
trigger11 = stateno = 250 && movecontact
trigger12 = stateno = 445 && movecontact
trigger13 = stateno = 460 && movecontact
trigger14 = stateno = 400 && movecontact
trigger15 = stateno = 410 && movecontact
trigger16 = stateno = 430 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 260 && movecontact

;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall= anim != 6504
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 260 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 30 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 230 && movecontact
trigger10 = stateno = 243 && movecontact
trigger11 = stateno = 250 && movecontact
trigger12 = stateno = 445 && movecontact
trigger13 = stateno = 460 && movecontact
trigger14 = stateno = 400 && movecontact
trigger15 = stateno = 410 && movecontact
trigger16 = stateno = 430 && movecontact
trigger17 = stateno = 440 && movecontact
trigger18 = stateno = 260 && movecontact

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall= anim != 6504
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630 && movecontact
trigger3 = stateno = 447 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 670 && movecontact

;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 447
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630 && movecontact
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 670 && movecontact


;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall= anim != 6504
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630 && movecontact
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 447 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 670 && movecontact

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall= anim != 6504
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 447 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 670 && movecontact

;Jump Medium Kick
[State -1, Jump Medium  Kick]
type = ChangeState
value = 670
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 447 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 630 && movecontact

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall= anim != 6504
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 447 && movecontact
trigger5 = stateno = 670 && movecontact
trigger6 = stateno = 630 && movecontact
;----------------------------------------------------------------------------
[State -1, Launcher]
type=ChangeState
trigger1=Stateno=650
trigger1=movehit
trigger1=Command="holdup"
value=40

[State -1, reseta o pulo]
type=Varset
trigger1=var(20)
trigger1=Stateno!=[40,50]
trigger1=Statetype!=A 
var(20)=0
;---------------------------------------------------------------------------
