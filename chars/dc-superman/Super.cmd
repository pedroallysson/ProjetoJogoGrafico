; -| CPU Commands |------

[Command]
name = "IA1"
command = D, D, U, U, D, U
time = 1

[Command]
name = "IA2"
command = D, U, U, D, D, U
time = 1

[Command] 
name = "IA3"
command = D, D, D, U, U, U
time = 1

;---------------------------------
[Command]
name = "QCB2_X"
command = ~D, DB, B, D, DB, B, x
time = 22


[Command]
name = "QCB2_Y"
command = ~D, DB, B, D, DB, B, y
time = 22


[Command]
name = "QCB2_Z"
command = ~D, DB, B, D, DB, B, z
time = 22


[Command]
name = "QCF2_X"
command = ~D, DF, F, D, DF, F, x
time = 22


[Command]
name = "QCF2_Y"
command = ~D, DF, F, D, DF, F, y
time = 22


[Command]
name = "QCF2_Z"
command = ~D, DF, F, D, DF, F, z
time = 22


[Command]
name = "QCF2_K"
command = ~D, DF, F, D, DF, F, a 
time = 22


[Command]
name = "QCF2_K"
command = ~D, DF, F, D, DF, F, b
time = 22


[Command]
name = "QCF2_K"
command = ~D, DF, F, D, DF, F, c
time = 22

[Command]
name = "QCF2_P"
command = ~D, DF, F, D, DF, F, x 
time = 22


[Command]
name = "QCF2_P"
command = ~D, DF, F, D, DF, F, y
time = 22


[Command]
name = "QCF2_P"
command = ~D, DF, F, D, DF, F, z
time = 22

[Command]
name = "Amalgam"
command = ~B, DB, D, DF, F, z+c
time = 25

[Command]
name = "2_Kick"
command = a+b

[Command]
name = "QCB_A"
command = ~D, DB, B, a


[Command]
name = "QCB_B"
command = ~D, DB, B, b


[Command]
name = "QCB_C"
command = ~D, DB, B, c


[Command]
name = "HCB_A"
command = ~D, DF, F, a


[Command]
name = "HCB_B"
command = ~D, DF, F, b


[Command]
name = "HCB_C"
command = ~D, DF, F, c


[Command]
name = "HCF_X"
command = ~D, DF, F, x
time = 25


[Command]
name = "HCF_Y"
command = ~D, DF, F, y
time = 25


[Command]
name = "HCF_Z"
command = ~D, DF, F, z
time = 25

[Command]
name = "Slide_Punch_Z"
command = ~30$B, F, z
time = 10

[Command]
name = "Slide_Kick_C"
command = ~30$B, F, c
time = 10

[Command]
name = "Freeze_X"
command = ~D, DB, B, x
time = 15

[Command]
name = "Freeze_Y"
command = ~D, DB, B, y
time = 15

[Command]
name = "Freeze_Z"
command = ~D, DB, B, z
time = 15

[Command]
name = "Impact"
command = U, x

[Command]
name = "Impact"
command = U, y

[Command]
name = "Impact"
command = U, z

[Command]
name = "DRILL_A"
command = ~D, DB, B, a

[Command]
name = "DRILL_B"
command = ~D, DB, B, b

[Command]
name = "DRILL_C"
command = ~D, DB, B, c

[Command]
name = "Helper1"
command = a+x
time = 1

[Command]
name = "Helper2"
command = b+y
time = 1

[Command]
name = "S_Helper"
command = z+c  
time = 1

[Command]
name = "QCF_X"
command = ~D, DB, B, x

[Command]
name = "QCF_Y"
command = ~D, DB, B, y

[Command]
name = "QCF_Z"
command = ~D, DB, B, z


[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10


[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "zc"
command = z+c
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
name = "down_c"
command = /$D,c
time = 1


[Command]
name = "down_x"
command = /$D,x
time = 1


[Command]
name = "down_y"
command = /$D,y
time = 1


[Command]
name = "down_z"
command = /$D,z
time = 1


[Command]
name = "fwd_y"
command = /F,y
time = 1


[Command]
name = "fwd_z"
command = /F,z
time = 1


[Command]
name = "a"
command = a
time = 1


[Command]
name = "b"
command = b
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


[Command]
name = "z"
command = z
time = 1


[Command]
name = "s"
command = s
time = 1


[Command]
name = "SuperJump"
command = ~D, U
time = 10


[Command]
name = "holdfwd"
command = /$F
time = 1


[Command]
name = "holdback"
command = /$B
time = 1


[Command]
name = "holdup"
command = /$U
time = 1


[Command]
name = "holddown"
command = /$D
time = 1


[Command]
name = "holdx"
command = /$x
time = 10

[Command]
name = "holdy"
command = /$y
time = 10



;------------------------------------------------
[Statedef -1]
[State -1,-1]
type = NotHitBy
triggerall = IsHelper = 0
trigger1 = Var(1) > 0
value = SCA, HTP


[State -1,0]
type = VarAdd
trigger1 = Var(1) > 0
V = 1
value = -1


[State -1,1]
type = VarAdd
trigger1 = Var(5) > 0
V = 5
value = -1


[State -1,2]
type = VarSet
triggerall = P2StateNo = 1080
trigger1 = NumHelper(040) = 1
trigger2 = NumHelper(050) = 1
trigger3 = NumHelper(060) = 1
trigger4 = NumHelper(070) = 1
V = 3
Value = 1


[State -1,3]
type = VarSet
triggerall = Var(3) = 1
trigger1 = NumHelper(040) = 0
trigger1 = NumHelper(050) = 0
trigger1 = NumHelper(060) = 0
trigger1 = NumHelper(070) = 0
V = 3
Value = 0


[State -1,4]
type = VarAdd
trigger1 = Var(4) > 0
V = 4
value = -1



[State -1,5]
type = ChangeState
value = 3001
trigger1 = command = "QCB2_Z"
trigger1 = power = 3000 ;Level 3
trigger1 = var(3) = 0
trigger1 = statetype = S
trigger1 = Var(1) = 0
trigger1 = ctrl = 1

[State -1,6]
type = ChangeState
value = 71001
trigger1 = command = "QCB2_Z"
trigger1 = power >= 3000 ;Level 2
trigger1 = var(3) != 0
trigger1 = statetype = S
trigger1 = Var(1) = 0
trigger1 = ctrl = 1

[State -1,7]
type = ChangeState
value = 3011
trigger1 = command = "QCB2_X"
trigger1 = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = Var(1) = 0
trigger1 = ctrl = 1

[State -1,8]
type = ChangeState
value = 741
trigger1 = command = "QCB2_X"
trigger1 = power >= 1000 ;Level 1
trigger1 = statetype = A
trigger1 = Var(1) = 0
trigger1 = ctrl = 1

[State -1,9]
type = ChangeState
value = 7001
trigger1 = command = "QCB2_Y"
trigger1 = power >= 2000 ;Level 2
trigger1 = var(3) = 0
trigger1 = statetype = S
trigger1 = Var(1) = 0
trigger1 = ctrl = 1

[State -1,10]
type = ChangeState
value = 31142
trigger1 = command = "QCB2_Y"
trigger1 = power >= 2000 ;Level 2
trigger1 = var(3) != 0
trigger1 = statetype = S
trigger1 = Var(1) = 0
trigger1 = ctrl = 1

[State -1,11]
type = Changestate
value = 31009
triggerall = command = "QCF2_X"
triggerall = power >= 1000 ;Level 1
triggerall = statetype != A
trigger1 = var(3) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,12]
type = Changestate
value = 31135
triggerall = command = "QCF2_X"
triggerall = power >= 1000 ;Level 1
triggerall = statetype != A
trigger1 = var(3) != 0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,13]
type = ChangeState
value = 31008
triggerall = command = "QCF2_Z"
triggerall = power >= 3000 ;Level 3
triggerall = statetype != A
trigger1 = var(3) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,14]
type = ChangeState
value = 31136
triggerall = command = "QCF2_Z"
triggerall = power >= 3000 ;Level 3
triggerall = statetype != A
trigger1 = var(3) != 0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,15]
type = ChangeState
value = 3100
triggerall = command = "QCF2_Y"
triggerall = power >= 2000 ;Level 2
triggerall = statetype != A
trigger1 = var(3) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,16]
type = ChangeState
value = 31137
triggerall = command = "QCF2_Y"
triggerall = power >= 2000 ;Level 2
triggerall = statetype != A
trigger1 = var(3) != 0
trigger1 = statetype = S
trigger1 = ctrl = 1



[State -1,17]
type = ChangeState
value = 3200
triggerall = command = "QCF2_K"
triggerall = power >= 1000 ;Level 1
trigger1 = var(3) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,18]
type = ChangeState
value = 31130
triggerall = command = "QCF2_K"
triggerall = power >= 1000 ;Level 1
triggerall = var(3) != 0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,19]
type = ChangeState
value = 3204
triggerall = command = "QCF2_K"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 202
trigger4 = movecontact = 1
trigger4 = stateno = 204
trigger5 = movecontact = 1
trigger5 = stateno = 201
trigger6 = movecontact = 1
trigger6 = stateno = 203
trigger7 = movecontact = 1
trigger7 = stateno = 205
trigger8 = movecontact = 1
trigger8 = stateno = 400
trigger9 = movecontact = 1
trigger9 = stateno = 402
trigger10 = movecontact = 1
trigger10 = stateno = 404
trigger11 = movecontact = 1
trigger11 = stateno = 401
trigger12 = movecontact = 1
trigger12 = stateno = 403
trigger13 = movecontact = 1
trigger13 = stateno = 405

[State -1,20]
type = ChangeState
value = 738
triggerall = command = "QCF2_P"
trigger1 = power >= 1000 ;Level 1
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1,21]
type = ChangeState
value = 7500
triggerall = command = "Amalgam"
trigger1 = var(3) = 0
trigger1 = power = 3000 ;Level 3
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,22]
type = ChangeState
value = 712
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "HCB_A"

[State -1,23]
type = ChangeState
value = 1030
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "HCB_B"

[State -1,24]
type = ChangeState
value = 710
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "HCB_C"

[State -1,25]
type = ChangeState
value = 9000
triggerall = command = "2_Kick"
trigger1 = ctrl = 1

[State -1,26]
type = ChangeState
value = 4600
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = command = "holdx"
trigger1 = command = "holdy"

[State -1,27]
type = ChangeState
value = 1010
triggerall = command = "HCF_X"
triggerall = ctrl = 1
trigger1 = statetype = S


[State -1,28]
type = ChangeState
value = 1610
triggerall = command = "HCF_X"
triggerall = ctrl = 1
trigger1 = statetype = A


[State -1,29]
type = ChangeState
value = 1012
triggerall = command = "HCF_Y"
triggerall = ctrl = 1
trigger1 = statetype = S


[State -1,30]
type = ChangeState
value = 1612
triggerall = command = "HCF_Y"
triggerall = ctrl = 1
trigger1 = statetype = A


[State -1,31]
type = ChangeState
value = 1014
triggerall = command = "HCF_Z"
triggerall = ctrl = 1
trigger1 = statetype = S


[State -1,32]
type = ChangeState
value = 1614
triggerall = command = "HCF_Z"
triggerall = ctrl = 1
trigger1 = statetype = A


[State -1,33]
type = ChangeState
value = 1033
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "Slide_Punch_Z"

[State -1,34]
type = ChangeState
value = 703
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "Slide_Kick_C"

[State -1,35]
type = ChangeState
value = 720
triggerall = p2stateno != 223
triggerall = p2stateno != 722
triggerall = p2stateno != 723
triggerall = command = "Freeze_X"
triggerall = ctrl = 1
trigger1 = statetype = S

[State -1,36]
type = ChangeState
value = 725
triggerall = command = "Freeze_Y"
triggerall = ctrl = 1
trigger1 = statetype = S

[State -1,37]
type = ChangeState
value = 730
triggerall = command = "Freeze_Z"
triggerall = ctrl = 1
trigger1 = statetype = S

[State -1,38]
type = ChangeState
value = 1040
triggerall = command = "DRILL_A"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,39]
type = ChangeState
value = 1042
triggerall = command = "DRILL_B"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,40]
type = ChangeState
value = 1044
triggerall = command = "DRILL_C"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,41]
type = ChangeState
value = 1080
triggerall = p2name = "Superman" || p4name = "Superman"
trigger1 = command = "Helper1"
trigger1 = numhelper(2222) != 1
trigger1 = power >= 500 
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,42]
type = ChangeState
value = 1020
triggerAll = command = "Helper1"
triggerall = p2name != "Superman" || p4name = "Superman"
trigger1 = var(3) = 0
trigger1 = numhelper(650) != 1
trigger1 = numhelper(008) = 0
trigger1 = numhelper(010) = 0
trigger1 = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,43]
type = ChangeState
value = 1090
trigger1 = command = "S_Helper"
trigger1 = var (3) != 0
trigger1 = numhelper(1111) = 0
trigger1 = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,44]
type = ChangeState
value = 145
triggerall = Command = "HCB_B"
trigger1 = StateType = A
trigger1 = Ctrl = 1

[State -1,45]
type = ChangeState
value = 713
triggerall = Command = "HCB_A"
trigger1 = StateType = A
trigger1 = Ctrl = 1

[State -1,46]
type = ChangeState
value = 3021
triggerall = command = "Helper2"
triggerall = p2name != "Superman" || p4name = "Superman"
trigger1 = var(3) = 0
trigger1 = numhelper(650) != 1
trigger1 = numhelper(008) = 0
trigger1 = numhelper(010) = 0
trigger1 = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,47]
type = ChangeState
value = 711
triggerall = Command = "HCB_C"
trigger1 = pos y < -10
trigger1 = StateType = A
trigger1 = Ctrl = 1

[State -1,48]
type = ChangeState
value = 9801
triggerall = command = "Impact"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1,49]
type = ChangeState
value = 1000
triggerall = Command = "QCF_X"
trigger1 = StateType = A
trigger1 = Ctrl = 1


[State -1,50]
type = ChangeState
value = 1001
triggerall = Command = "QCF_Y"
trigger1 = StateType = A
trigger1 = Ctrl = 1


[State -1,51]
type = ChangeState
value = 1002
triggerall = Command = "QCF_Z"
trigger1 = StateType = A
trigger1 = Ctrl = 1


[State -1,52]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,53]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1




[State -1,54]
type = ChangeState
value = 210
trigger1 = p2bodydist Y >=-20
trigger1 = p2bodydist X < 20 ;Near P2
trigger1 = command = "fwd_y"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,55]
type = ChangeState
value = 220
triggerall = p2bodydist Y >=-20
triggerall = p2bodydist X < 20 ;Near P2
triggerall = command = "fwd_z"
triggerall = ctrl = 1
triggerall = IsHelper(007) = 0
trigger1 = statetype = S


[State -1,56]
type = ChangeState
value = 620
triggerall = p2bodydist Y <=25
triggerall = p2bodydist Y >=-25
triggerall = p2bodydist X < 20 ;Near P2
triggerall = command = "fwd_z"
triggerall = ctrl = 1
triggerall = IsHelper(007) = 0
trigger1 = statetype = A


[State -1,57]
type = ChangeState
value = 201
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time > 9
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger4 = stateno = 100
trigger5 = stateno = 105


[State -1,58]
type = ChangeState
value = 203
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 201
trigger4 = movecontact = 1
trigger4 = stateno = 401
trigger5 = movecontact = 1
trigger5 = stateno = 400
trigger6 = stateno = 100
trigger7 = stateno = 105


[State -1,59]
type = ChangeState
value = 205
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 201
trigger4 = movecontact = 1
trigger4 = stateno = 400
trigger5 = movecontact = 1
trigger5 = stateno = 401
trigger6 = movecontact = 1
trigger6 = stateno = 402
trigger7 = movecontact = 1
trigger7 = stateno = 403
trigger8 = stateno = 100
trigger9 = stateno = 105


[State -1,60]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 9
trigger3 = stateno = 100
trigger4 = stateno = 105

[State -1,61]
type = ChangeState
value = 202
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 201
trigger4 = movecontact = 1
trigger4 = stateno = 401
trigger5 = movecontact = 1
trigger5 = stateno = 400
trigger6 = stateno = 100
trigger7 = stateno = 105


[State -1,62]
type = ChangeState
value = 204
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 201
trigger4 = movecontact = 1
trigger4 = stateno = 203
trigger5 = movecontact = 1
trigger5 = stateno = 400
trigger6 = movecontact = 1
trigger6 = stateno = 401
trigger7 = movecontact = 1
trigger7 = stateno = 402
trigger8 = stateno = 100
trigger9 = stateno = 105


[State -1,63]
type = ChangeState
value = 401
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 401
trigger2 = time > 6
trigger3 = movecontact = 1
trigger3 = stateno = 400
trigger4 = movecontact = 1
trigger4 = stateno = 201
trigger5 = movecontact = 1
trigger5 = stateno = 200


[State -1,64]
type = ChangeState
value = 403
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 401
trigger3 = movecontact = 1
trigger3 = stateno = 400
trigger4 = movecontact = 1
trigger4 = stateno = 201
trigger5 = movecontact = 1
trigger5 = stateno = 200



[State -1,65]
type = ChangeState
value = 405
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 401
trigger3 = movecontact = 1
trigger3 = stateno = 400
trigger4 = movecontact = 1
trigger4 = stateno = 201
trigger5 = movecontact = 1
trigger5 = stateno = 200


[State -1,66]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = time > 9
trigger3 = movecontact = 1
trigger3 = stateno = 200


[State -1,67]
type = ChangeState
value = 402
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 401
trigger3 = movecontact = 1
trigger3 = stateno = 400
trigger4 = movecontact = 1
trigger4 = stateno = 201
trigger5 = movecontact = 1
trigger5 = stateno = 200


[State -1,68]
type = ChangeState
value = 404
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 401
trigger3 = movecontact = 1
trigger3 = stateno = 400
trigger4 = movecontact = 1
trigger4 = stateno = 201
trigger5 = movecontact = 1
trigger5 = stateno = 200


[State -1,69]
type = ChangeState
value = 601
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1
Trigger3 = Stateno = 5400


[State -1,70]
type = ChangeState
value = 603
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 601
trigger3 = movecontact = 1
trigger3 = stateno = 600
trigger4 = movecontact = 1
trigger4 = stateno = 602
Trigger5 = Stateno = 5400


[State -1,71]
type = ChangeState
value = 605
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 601
trigger3 = movecontact = 1
trigger3 = stateno = 600
trigger4 = movecontact = 1
trigger4 = stateno = 603
trigger5 = movecontact = 1
trigger5 = stateno = 602
trigger6 = movecontact = 1
trigger6 = stateno = 604
Trigger7 = Stateno = 5400



[State -1,72]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
Trigger2 = Stateno = 5400


[State -1,73]
type = ChangeState
value = 602
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 601
trigger3 = movecontact = 1
trigger3 = stateno = 600
Trigger4 = Stateno = 5400


[State -1,74]
type = ChangeState
value = 604
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 601
trigger3 = movecontact = 1
trigger3 = stateno = 600
trigger4 = movecontact = 1
trigger4 = stateno = 603
trigger5 = movecontact = 1
trigger5 = stateno = 602
Trigger6 = Stateno = 5400


[State -1,75]
type = ChangeState
value = 197
triggerall = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,76]
Type = Changestate
value = 5400
triggerall = command = "SuperJump"
triggerall = statetype != A
Trigger1 = Ctrl = 1
trigger2 = stateno = 100
trigger3 = stateno = 105


[State -1,77]
Type = Changestate
value = 5400
triggerall = command = "holdup"
trigger1 = movecontact = 1
trigger1 = stateno = 404
trigger2 = movecontact = 1
trigger2 = stateno = 202

