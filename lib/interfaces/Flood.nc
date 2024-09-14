
configuration FloodP {
}

implementation {
  components MainC, FloodC, ActiveMessageC;
  FloodC -> ActiveMessageC.AM[AM_FLOODMSG];
  MainC.Boot -> FloodC;
  MainC.SoftwareInit -> FloodC;
}
