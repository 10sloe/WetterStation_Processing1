class Wetterstation
{
  private float aktTemp;
  
  private float temp1;
  private float temp2;
  private float temp3;
  private float temp4;
  private float temp5;
  
  
  private Netzwerk netzwerk;
  
  Wetterstation(Netzwerk n)
  {
    netzwerk = n;
    aktTemp = netzwerk.getAktTemp();
    temp1 = netzwerk.getTemp(1);
    temp2 = netzwerk.getTemp(2);
    temp3 = netzwerk.getTemp(3);
    temp4 = netzwerk.getTemp(4);
    temp5 = netzwerk.getTemp(5);
  } 
  
  void zeichnen()
  {    
    fill(0);
    textSize(16);
    text("Aktuelle Temperatur ",100,100);
    textSize(28);
    text(aktTemp + " °C",100,150);
    textSize(16);
    text("Werte davor ",100,250);
    text(temp1 + " | " + temp2 + " | " + temp3 + " | " + temp4 + " | " + temp5, 100,300);
  }
}
