import 'package:flutter/material.dart';
import 'main.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const SizedBox(height: 60.0),

                    const Text(
                      "Inscription",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Crée votre compte",
                      style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Nom",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.blue.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.person)),
                    ),

                    

                    const SizedBox(height: 20),

                    TextField(
                      decoration: InputDecoration(
                          hintText: "Prénom",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.blue.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.assignment_ind)),
                    ),

                    

                    const SizedBox(height: 20),

                    TextField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.blue.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.email)),
                    ),

                    const SizedBox(height: 20),

                    
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Téléphone",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.blue.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.phone_enabled)),
                    ),

                    const SizedBox(height: 20),

                    TextField(
                      decoration: InputDecoration(
                        hintText: "Mot de passe",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none),
                        fillColor: Colors.blue.withOpacity(0.1),
                        filled: true,
                        prefixIcon: const Icon(Icons.password),
                      ),
                      obscureText: true,
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
                Container(
                    padding: const EdgeInsets.only(top: 3, left: 3),

                    child: ElevatedButton(
                      onPressed: () {
                      },
                      child: const Text(
                        "S'inscrire",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: Colors.blue,
                      ),
                    )
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Vous avez déjà un compte ?"),
                    TextButton(
                        onPressed: () {
                        },
                        child: const Text("Se connecter", style: TextStyle(color: Colors.blue),)
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
  }
}

