unit KennlinienStandardDefault;

interface

const //Konstanten für Drahtdurchmesser
  D_06					= '0,6mm';		//Drahtdurchmesser 0,6
  D_08					= '0,8mm';		//Drahtdurchmesser 0,8
  D_09					= '0,9mm';		//Drahtdurchmesser 0,9
  D_10					= '1,0mm';		//Drahtdurchmesser 1,0
  D_12					= '1,2mm';		//Drahtdurchmesser 1,2
  D_14					= '1,4mm';		//Drahtdurchmesser 1,4
  D_16					= '1,6mm';		//Drahtdurchmesser 1,6
  D_20					= '2,0mm';		//Drahtdurchmesser 2,0
  D_24					= '2,4mm';		//Drahtdurchmesser 2,4
  D_SPEZIAL			= 'Spezial';	//Drahtdurchmesser Spezial


//Konstanten für Gas
  G_82A18CO		  	= '82Ar/18CO';		    //Gas 82%Ar 	18%CO
  G_98A2CO			  = '98Ar/2CO';		      //Gas 98%Ar 	2%CO
  G_100A			    = '100Ar';		        //Gas 100%Ar
  G_100CO			    = '100CO';	  	      //Gas 100%CO
  G_92A8CO			  = '92Ar/8CO';		      //Gas 92%Ar 	8%CO
  G_99A1O			    = '99Ar/1O2';		      //Gas 99%Ar 	1%O2
  G_98A2O		  	  = '98Ar/2O2';		      //Gas 98%Ar 	2%O2
  G_97A3O			    = '97Ar/3O2'; 	  	  //Gas 97%Ar 	3%O2
  G_92A8O			    = '92Ar/8O2'; 	  	  //Gas 92%Ar 	8%O2
  G_90A5O5CO			= '90Ar/5O2/5CO';	  	//Gas 90%Ar 	5%O2 		5%CO
  G_100HE			    = '100He';	  	      //Gas 100%He
  G_80A20HE		  	= '80Ar/20He';	  	  //Gas 80%Ar 	20%He
  G_69A30HE1O	  	= '69Ar/30He/1O2'; 		//Gas 69%Ar 	30%He		1%O2
  G_50A50HE		  	= '50Ar/50He'; 		    //Gas 50%Ar 	50%He
  G_98A2H		  	  = '98Ar/2H2'; 		    //Gas 98%Ar 	2%H2
  G_94A6H			    = '94Ar/6H2'; 		    //Gas 94%Ar 	6%H2
  G_50A50H			  = '50Ar/50H2'; 		    //Gas 50%Ar 	50%H2
  G_30A70H			  = '30Ar/70H2'; 		    //Gas 30%Ar 	70%H2
  G_SPEZIAL		  	= 'Spezial'; 		      //Gas Spezial


//Konstanten für Werkstoff
  W_Fe					= 'Fe';		        //Wekstoff Fe
  W_CR_NI				= 'Cr/Ni';		    //Wekstoff Cr/Ni
  W_AL_MG				= 'Al/Mg';		    //Wekstoff Al/Mg
  W_AL_SI				= 'Al/Si';		    //Wekstoff Al/Si
  W_CU_SI				= 'Cu/Si';		    //Wekstoff Cu/Si
  W_AL_MG3			= 'Al/Mg3';		    //Wekstoff Al/Mg3
  W_AL_MG5			= 'Al/Mg5';		    //Wekstoff Al/Mg5
  W_AL_MG45Mn		= 'Al/Mg4,5Mn';		//Wekstoff Al/Mg4,5Mn
  W_AL_BZ				= 'Al/Bz';		    //Wekstoff Al/Bz
  W_SPEZIAL			= 'Spezial';	    //Wekstoff G_Spezial


 //Konstanten für Verfahren
  V_MAG_NORM			= 'MIG/MAG-Normal';		          //MIG/MAG-Normal
  V_MAG_SYN			  = 'MIG/MAG-Synergie';		        //MIG/MAG-Synergie
  V_MAG_PULS			= 'MIG/MAG-Puls';		            //MIG/MAG-Puls
  V_ELEKTRODE			= 'Elektrode';		              //Elektrode
  V_WIG				    = 'WIG';		                    //WIG
  V_WIG_PLS			  = 'WIG Pulsen';		              //WIG Pulsen
  V_WIG_SPD			  = 'WIG Speed-Pulsen';		        //WIG Speed-Pulsen
  V_WIG_SPD_PLS		= 'WIG Speed-Pulsen + Puls';		//WIG Speed-Pulsen + Puls
  V_MAG_AC			  = 'MIG/MAG-AC';		              //MIG/MAG-AC

 //Konstanten für Regler
  R_PULS_UI			= 'Puls U/I';		    //Regler Puls U/I
  R_PULS_IU			= 'Puls I/U';		    //Regler Puls I/U
  R_PULS_UI_LBR	= 'Puls U/I LBR';		//Regler Puls U/I mit LBR
  R_PULS_II_LBR	= 'Puls I/I LBR';		//Regler Puls I/I mit LBR



//Konstantentabelle für Standard-Kennlinien
  STANDARDKENN: array[1..100,1..4] of String = (
	//	Verfahren			Werkstoff		Gas			      Draht
	(	 	V_MAG_SYN,	  W_Fe,	  		G_82A18CO,		D_08			),	//Kennlinie 1
	(	 	V_MAG_SYN,	  W_Fe,	  		G_82A18CO,		D_10	 		),	//Kennlinie 2
	(	 	V_MAG_SYN,	  W_Fe,	  		G_82A18CO,		D_12	 		),	//Kennlinie 3
	(	 	V_MAG_SYN,	  W_Fe,	  		G_82A18CO,		D_16	 		),	//Kennlinie 4
	(	 	V_MAG_SYN,	  W_Fe,	  		G_82A18CO,		D_20	 		),	//Kennlinie 5
	(	 	V_MAG_SYN,	  W_Fe,	 		  G_98A2CO,		  D_08	 		),	//Kennlinie 6
	(	 	V_MAG_SYN,	  W_Fe,	 		  G_98A2CO,		  D_10	 		),	//Kennlinie 7
	(	 	V_MAG_SYN,	  W_Fe,	 		  G_98A2CO,		  D_12	 		),	//Kennlinie 8
	(	 	V_MAG_SYN,	  W_Fe,	 		  G_98A2CO,		  D_16	 		),	//Kennlinie 9
	(	 	V_MAG_SYN,	  W_Fe,	 		  G_98A2CO,		  D_20	 		),	//Kennlinie 10
	//	Verfahren			Werkstoff		Gas			      Draht
	(	 	V_MAG_SYN,	  W_Fe,	  		G_100CO,		  D_08	 		),	//Kennlinie 11
	(	 	V_MAG_SYN,	  W_Fe,	  		G_100CO,		  D_10	 		),	//Kennlinie 12
	(	 	V_MAG_SYN,	  W_Fe,	  		G_100CO,		  D_12	 		),	//Kennlinie 13
	(	 	V_MAG_SYN,	  W_Fe,	  		G_100CO,		  D_16	 		),	//Kennlinie 14
	(	 	V_MAG_SYN,	  W_Fe,	  		G_100CO,		  D_20	 		),	//Kennlinie 15
	(	 	V_MAG_SYN,	  W_Fe,	  		G_SPEZIAL,		D_08	 		),	//Kennlinie 16
	(	 	V_MAG_SYN,	  W_Fe,	  		G_SPEZIAL,		D_10	 		),	//Kennlinie 17
	(	 	V_MAG_SYN,	  W_Fe,	  		G_SPEZIAL,		D_12	 		),	//Kennlinie 18
	(	 	V_MAG_SYN,	  W_Fe,	  		G_SPEZIAL,		D_16	 		),	//Kennlinie 19
	(	 	V_MAG_SYN,	  W_Fe,	  		G_SPEZIAL,		D_20	 		),	//Kennlinie 20
	//	Verfahren			Werkstoff		Gas			      Draht
	(	 	V_MAG_SYN,	  W_CR_NI,	 	G_98A2CO,		  D_08	 		),	//Kennlinie 21
	(	 	V_MAG_SYN,	  W_CR_NI,	 	G_98A2CO,		  D_10	 		),	//Kennlinie 22
	(	 	V_MAG_SYN,	  W_CR_NI,	 	G_98A2CO,		  D_12	 		),	//Kennlinie 23
	(	 	V_MAG_SYN,	  W_CR_NI,	 	G_98A2CO,		  D_16	 		),	//Kennlinie 24
	(	 	V_MAG_SYN,	  W_CR_NI,	 	G_98A2CO,		  D_20	 		),	//Kennlinie 25
	(	 	V_MAG_SYN,	  W_CR_NI, 		G_SPEZIAL,		D_08	 		),	//Kennlinie 26
	(	 	V_MAG_SYN,	  W_CR_NI, 		G_SPEZIAL,		D_10	 		),	//Kennlinie 27
	(	 	V_MAG_SYN,	  W_CR_NI, 		G_SPEZIAL,		D_12	 		),	//Kennlinie 28
	(	 	V_MAG_SYN,	  W_CR_NI, 		G_SPEZIAL,		D_16	 		),	//Kennlinie 29
	(	 	V_MAG_SYN,	  W_CR_NI, 		G_SPEZIAL,		D_20			),	//Kennlinie 30
	//	Verfahren			Werkstoff		Gas			      Draht
	(	 	V_MAG_SYN,	  W_AL_MG,	  G_100A,			  D_08	 		),	//Kennlinie 31
	(	 	V_MAG_SYN,	  W_AL_MG,	  G_100A,			  D_10	 		),	//Kennlinie 32
	(	 	V_MAG_SYN,	  W_AL_MG,	 	G_100A,			  D_12	 		),	//Kennlinie 33
	(	 	V_MAG_SYN,	  W_AL_MG,	  G_100A,			  D_16	 		),	//Kennlinie 34
	(	 	V_MAG_SYN,	  W_AL_MG,	  G_100A,			  D_20	 		),	//Kennlinie 35
	(	 	V_MAG_SYN,	  W_AL_SI,	  G_100A,			  D_08	 		),	//Kennlinie 36
	(	 	V_MAG_SYN,	  W_AL_SI,	  G_100A,			  D_10	 		),	//Kennlinie 37
	(	 	V_MAG_SYN,	  W_AL_SI,	 	G_100A,			  D_12	 		),	//Kennlinie 38
	(	 	V_MAG_SYN,	  W_AL_SI,	  G_100A,			  D_16	 		),	//Kennlinie 39
	(	 	V_MAG_SYN,	  W_AL_SI,	  G_100A,			  D_20	 		),	//Kennlinie 40
	//	Verfahren			Werkstoff		Gas			      Draht
	(	 	V_MAG_SYN,	  W_CU_SI,	  G_100A,			  D_08	 		),	//Kennlinie 41
	(	 	V_MAG_SYN,	  W_CU_SI,	  G_100A,			  D_10	 		),	//Kennlinie 42
	(	 	V_MAG_SYN,	  W_CU_SI,	 	G_100A,			  D_12	 		),	//Kennlinie 43
	(	 	V_MAG_SYN,	  W_CU_SI,	  G_100A,			  D_16	 		),	//Kennlinie 44
	(	 	V_MAG_SYN,	  W_CU_SI,	  G_100A,			  D_20	 		),	//Kennlinie 45
	(	 	V_MAG_SYN,	  W_CU_SI,	  G_98A2CO,		  D_08	 		),	//Kennlinie 46
	(	 	V_MAG_SYN,	  W_CU_SI,	  G_98A2CO,		  D_10	 		),	//Kennlinie 47
	(	 	V_MAG_SYN,	  W_CU_SI,	 	G_98A2CO,		  D_12	 		),	//Kennlinie 48
	(	 	V_MAG_SYN,	  W_CU_SI,	  G_98A2CO,		  D_16	 		),	//Kennlinie 49
	(	 	V_MAG_SYN,	  W_CU_SI,	  G_98A2CO,		  D_20	 		),	//Kennlinie 50
	//	Verfahren			Werkstoff		Gas			      Draht
	(	 	V_MAG_PULS,	  W_Fe,	  		G_82A18CO,		D_08			),	//Kennlinie 51
	(	 	V_MAG_PULS,	  W_Fe,	  		G_82A18CO,		D_10	 		),	//Kennlinie 52
	(	 	V_MAG_PULS,	  W_Fe,	  		G_82A18CO,		D_12	 		),	//Kennlinie 53
	(	 	V_MAG_PULS,	  W_Fe,	  		G_82A18CO,		D_16	 		),	//Kennlinie 54
	(	 	V_MAG_PULS,	  W_Fe,	  		G_82A18CO,		D_20	 		),	//Kennlinie 55
	(	 	V_MAG_PULS,	  W_Fe,	 		  G_98A2CO,		  D_08	 		),	//Kennlinie 56
	(	 	V_MAG_PULS,	  W_Fe,	 		  G_98A2CO,		  D_10	 		),	//Kennlinie 57
	(	 	V_MAG_PULS,	  W_Fe,	 		  G_98A2CO,		  D_12	 		),	//Kennlinie 58
	(	 	V_MAG_PULS,	  W_Fe,	 		  G_98A2CO,		  D_16	 		),	//Kennlinie 59
	(	 	V_MAG_PULS,	  W_Fe,	 		  G_98A2CO,		  D_20	 		),	//Kennlinie 60
	//	Verfahren			Werkstoff		Gas			      Draht
	(	 	V_MAG_PULS,	  W_Fe,		  	G_SPEZIAL,		D_08	 		),	//Kennlinie 61
	(	 	V_MAG_PULS,	  W_Fe,		  	G_SPEZIAL,		D_10	 		),	//Kennlinie 62
	(	 	V_MAG_PULS,	  W_Fe,		 	  G_SPEZIAL,		D_12	 		),	//Kennlinie 63
	(	 	V_MAG_PULS,	  W_Fe,		  	G_SPEZIAL,		D_16			),	//Kennlinie 64
	(	 	V_MAG_PULS,	  W_Fe,		  	G_SPEZIAL,		D_20			),	//Kennlinie 65
	(	 	V_MAG_PULS,	  W_Fe,	  		G_SPEZIAL,		D_08	 		),	//Kennlinie 66
	(	 	V_MAG_PULS,	  W_Fe,	  		G_SPEZIAL,		D_10	 		),	//Kennlinie 67
	(	 	V_MAG_PULS,	  W_Fe,	  		G_SPEZIAL,		D_12	 		),	//Kennlinie 68
	(	 	V_MAG_PULS,	  W_Fe,	  		G_SPEZIAL,		D_16	 		),	//Kennlinie 69
	(	 	V_MAG_PULS,	  W_Fe,	  		G_SPEZIAL,		D_20	 		),	//Kennlinie 70
	//	Verfahren			Werkstoff		Gas			      Draht
	(	 	V_MAG_PULS,	  W_CR_NI,	 	G_98A2CO,		  D_08	 		),	//Kennlinie 71
	(	 	V_MAG_PULS,	  W_CR_NI,	 	G_98A2CO,		  D_10	 		),	//Kennlinie 72
	(	 	V_MAG_PULS,	  W_CR_NI,	 	G_98A2CO,		  D_12	 		),	//Kennlinie 73
	(	 	V_MAG_PULS,	  W_CR_NI,	 	G_98A2CO,		  D_16	 		),	//Kennlinie 74
	(	 	V_MAG_PULS,	  W_CR_NI,	 	G_98A2CO,		  D_20	 		),	//Kennlinie 75
	(	 	V_MAG_PULS,	  W_CR_NI, 		G_SPEZIAL,		D_08	 		),	//Kennlinie 76
	(	 	V_MAG_PULS,	  W_CR_NI, 		G_SPEZIAL,		D_10	 		),	//Kennlinie 77
	(	 	V_MAG_PULS,	  W_CR_NI, 		G_SPEZIAL,		D_12	 		),	//Kennlinie 78
	(	 	V_MAG_PULS,	  W_CR_NI, 		G_SPEZIAL,		D_16	 		),	//Kennlinie 79
	(	 	V_MAG_PULS,	  W_CR_NI, 		G_SPEZIAL,		D_20	 		),	//Kennlinie 80
	//	Verfahren			Werkstoff		Gas		        Draht
	(	 	V_MAG_PULS,	  W_AL_MG,	  G_100A,			  D_08	 		),	//Kennlinie 81
	(	 	V_MAG_PULS,	  W_AL_MG,	  G_100A,			  D_10	 		),	//Kennlinie 82
	(	 	V_MAG_PULS,	  W_AL_MG,	 	G_100A,			  D_12	 		),	//Kennlinie 83
	(	 	V_MAG_PULS,	  W_AL_MG,	  G_100A,			  D_16	 		),	//Kennlinie 84
	(	 	V_MAG_PULS,	  W_AL_MG,	  G_100A,			  D_20	 		),	//Kennlinie 85
	(	 	V_MAG_PULS,	  W_AL_SI,	  G_100A,			  D_08	 		),	//Kennlinie 86
	(	 	V_MAG_PULS,	  W_AL_SI,	  G_100A,			  D_10	 		),	//Kennlinie 87
	(	 	V_MAG_PULS,	  W_AL_SI,	 	G_100A,			  D_12	 		),	//Kennlinie 88
	(	 	V_MAG_PULS,	  W_AL_SI,	  G_100A,			  D_16	 		),	//Kennlinie 89
	(	 	V_MAG_PULS,	  W_AL_SI,	  G_100A,			  D_20	 		),	//Kennlinie 90
	//	Verfahren			Werkstoff		Gas			      Draht
	(	 	V_MAG_PULS,	  W_CU_SI,	  G_100A,			  D_08	 		),	//Kennlinie 91
	(	 	V_MAG_PULS,	  W_CU_SI,	  G_100A,			  D_10	 		),	//Kennlinie 92
	(	 	V_MAG_PULS,	  W_CU_SI,	 	G_100A,			  D_12	 		),	//Kennlinie 93
	(	 	V_MAG_PULS,	  W_CU_SI,	  G_100A,			  D_16	 		),	//Kennlinie 94
	(	 	V_MAG_PULS,	  W_CU_SI,	  G_100A,			  D_20	 		),	//Kennlinie 95
	(	 	V_MAG_PULS,	  W_CU_SI,	  G_98A2CO,		  D_08	 		),	//Kennlinie 96
	(	 	V_MAG_PULS,	  W_CU_SI,	  G_98A2CO,		  D_10	 		),	//Kennlinie 97
	(	 	V_MAG_PULS,	  W_CU_SI,	 	G_98A2CO,		  D_12	 		),	//Kennlinie 98
	(	 	V_MAG_PULS,	  W_CU_SI,	  G_98A2CO,		  D_16	 		),	//Kennlinie 99
	(	 	V_MAG_PULS,	  W_CU_SI,	  G_98A2CO,		  D_20	 		)	  //Kennlinie 100
  );

implementation

end.
