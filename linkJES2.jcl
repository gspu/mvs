//HERC01J JOB 1,'SYS GEN',MSGLEVEL=1,CLASS=A,MSGCLASS=H
//STEP1 EXEC PGM=IEWL,PARM='XREF,LET,LIST,NCAL',REGION=856K
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD UNIT=SYSDA,SPACE=(CYL,(1,1))
//SYSLMOD DD DSN=SYS1.LINKLIB,DISP=SHR
//AOSH3   DD DSN=SYS1.AOSH3,DISP=SHR
//SYSLIN DD   *
 ORDER       HASPNUC
 ORDER       HASPRDR
 ORDER       HASPRDRO
 ORDER       HASPRSCN
 ORDER       HASPXEQ
 ORDER       HASPPRPU
 ORDER       HASPACCT
 ORDER       HASPMISC
 ORDER       HASPCON
 ORDER       HASPRTAM
 ORDER       HASPCOMM
 ORDER       HASPCOMA
 ORDER       HASPINIT(P)
 INCLUDE     AOSH3(HASPNUC)
 INCLUDE     AOSH3(HASPRDR)
 INCLUDE     AOSH3(HASPXEQ)
 INCLUDE     AOSH3(HASPPRPU)
 INCLUDE     AOSH3(HASPACCT)
 INCLUDE     AOSH3(HASPMISC)
 INCLUDE     AOSH3(HASPCON)
 INCLUDE     AOSH3(HASPRTAM)
 INCLUDE     AOSH3(HASPCOMM)
 INCLUDE     AOSH3(HASPINIT)
 PAGE  HASPINIT
 NAME  HASJES20(R)
 INCLUDE     AOSH3(HASPBLKS)
 NAME        HASPBLKS(R)
 INCLUDE     AOSH3(HASPFMT0)
 NAME        HASPFMT0(R)
 INCLUDE     AOSH3(HASPFMT1)
 NAME        HASPFMT1(R)
 INCLUDE     AOSH3(HASPFMT2)
 NAME        HASPFMT2(R)
 INCLUDE     AOSH3(HASPFMT3)
 NAME        HASPFMT3(R)
 INCLUDE     AOSH3(HASPFMT4)
 NAME        HASPFMT4(R)
 INCLUDE     AOSH3(HASPFMT5)
 NAME        HASPFMT5(R)
//STEP2 EXEC PGM=IEWL,PARM='XREF,LET,LIST,NCAL',REGION=556K
//SYSLMOD DD DSN=SYS1.LPALIB,DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD UNIT=SYSDA,SPACE=(CYL,(1,1))
//AOSH3  DD DSN=SYS1.AOSH3,DISP=SHR
//SYSLIN DD *
  INCLUDE AOSH3(HASPSSSM)
  NAME    HASPSSSM(R)
/*
