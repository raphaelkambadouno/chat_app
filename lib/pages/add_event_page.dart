import 'package:flutter/material.dart';

class AddEventPage extends StatefulWidget {
  const AddEventPage({super.key});

  @override
  State<AddEventPage> createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  final _formkey = GlobalKey<FormState>();

  final confNameController = TextEditingController();
  final speakerNameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    confNameController.dispose();
    speakerNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Nom Conference',
                    hintText: 'Entrer le Nom de la conference',
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Tu dois completer ce texte";
                  }
                  return null;
                },
                controller: confNameController,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Nom du Speacker',
                    hintText: 'Entrer le Nom du Speacker',
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Tu dois completer ce texte";
                  }
                  return null;
                },
                controller: speakerNameController,
              ),
            ),
            
            Container(
              child: DropdownButtonFormField(
                items: [
                  const DropdownMenuItem(value: 'talk', child: Text("Talk show")),
                  DropdownMenuItem(value: 'demo', child: Text("Demo code")),
                  DropdownMenuItem(value: 'Partener', child: Text("Partener"),)
                ],
                decoration: InputDecoration(
                  labelText: 'Type de la conf',
                  border: const OutlineInputBorder()
                ),
                value: 'talk',
                 onChanged: (values){}
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {

                      final confName = confNameController.text;
                      final speakerName =speakerNameController.text; 
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Envoi en cours...")));
                      FocusScope.of(context).requestFocus(FocusNode());

                      print("Ajout de la conf $confName par le speaker $speakerName");
                    }
                  },
                  child: Text("Envoyer")),
            )
          ],
        ),
      ),
    );
  }
}
