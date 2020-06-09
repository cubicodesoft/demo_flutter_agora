import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'config-video.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String title = "Cita médica agendada";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: Text(title),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.lightBlue[600],
                Colors.lightBlue[300].withOpacity(.6),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              children: <Widget>[
                //margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                Text(
                  "Usted tiene una evaluación médica por medio de esta aplicación a las:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 25.0,
                  ),
                  child: Text(
                    "00:00 hrs.",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "lunes 00 de septiembre de 2020",
                  style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0, bottom: 20.0),
                  child: CircleAvatar(
                    radius: 55.0,
                    backgroundImage: AssetImage('assets/images/doctor.png'),
                    backgroundColor: Colors.grey[300],
                  ),
                ),
                Text(
                  "Dr. Luis Adrían Lovo Cepeda",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    "Su evaluación comienza en:",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Text(
                  "00 hrs. 00 min. 00 seg.",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25.0, bottom: 20.0),
                  child: MaterialButton(
                    height: 40.0,
                    padding: EdgeInsets.all(0.0),
                    minWidth: 250.0,
                    color: Colors.white, //Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12.0,
                      ),
                    ),
                    child: Container(
                      width: 250.0,
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Colors.orange,
                            Colors.deepOrangeAccent[200],
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(
                          12.0,
                        ),
                      ),
                      child: Text(
                        "Iniciar",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.upToDown,
                        child: IndexPage(),
                      ),
                    ),
                    splashColor: Colors.redAccent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    "Les pedimos ser puntual con sus citas, tiene un margen de 5 "
                    "minutos antes de que la cita quede anulada y tenga que volver a agendar una.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ),
                Text(
                  "Le recordamos que sin una aprobación por parte del equipo médico, "
                  "usted no podrá laborar el día de hoy u será sujeto a las sanciones que "
                  "sus empleadores hayan acordado con usted en caso de incumplir con su asisntencia.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
