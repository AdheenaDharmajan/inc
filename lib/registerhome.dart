import 'package:flutter/material.dart';
import 'package:inc/botnav.dart';
import 'package:inc/snaphome.dart';

class Reghome extends StatefulWidget {
  @override
  _ReghomeState createState() => _ReghomeState();
}

class _ReghomeState extends State<Reghome> {
  String username = "adheena";
  String email = "adheena@gmail.com";
  String password = "abcdefg";
  String confirmpassword = "abcdefg";

  final uname = TextEditingController();
  final mail = TextEditingController();
  final pass = TextEditingController();
  final confim = TextEditingController();

  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.centerLeft,end: Alignment.centerRight,colors: [const Color.fromARGB(0, 180, 116, 116),Color.fromARGB(224, 248, 67, 1)])),
      child: 
       Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 5),
            child: Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9ZD3Y1ddjHlDq-W19lIxedBrxtcU7w2XYLbKkxtMk16mM28AW3clMH0mpQBXSPnBfS9M&usqp=CAU",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: uname,
                    decoration: InputDecoration(
                      hintText: "Username must be characters",
                      labelText: "Username",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: mail,
                    decoration: InputDecoration(
                      hintText: "Enter a valid email",
                      labelText: "Email",
                      prefixIcon: Icon(Icons.mail_outline),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: pass,
                    decoration: InputDecoration(
                      hintText: "Password must contain 7 characters",
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                        icon: Icon(
                          _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                      border: OutlineInputBorder(),
                    ),
                    obscureText: !_isPasswordVisible,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: confim,
                    decoration: InputDecoration(
                      hintText: "Re enter password",
                      labelText: "Confirm password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                          });
                        },
                        icon: Icon(
                          _isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                      border: OutlineInputBorder(),
                    ),
                    obscureText: !_isConfirmPasswordVisible,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (uname.text != "" &&
                        mail.text != "" &&
                        pass.text != "" &&
                        confim.text != "") {
                      if (uname.text == username &&
                          mail.text == email &&
                          pass.text == password &&
                          confim.text == confirmpassword) {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => bottomnav()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Username/Email/Password is incorrect"),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Fields must not be empty"),
                          backgroundColor: Colors.red,
                        )
                      );
                    }
                  },
                  child: Text("Register"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SnapHome()),
                    );
                  },
                  child: const Text("If you are a User!!!!!! Login Here..."),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}





// import 'package:flutter/material.dart';
// import 'package:inc/botnav.dart';
// import 'package:inc/snaphome.dart';

// class Reghome extends StatelessWidget {
//   String username="adheena";
//   String email="adheena@gmail.com";
//   String password="abcdefg";
//   String confirmpassword="abcdefg";
    
//     final uname = TextEditingController();
//     final mail = TextEditingController();
//     final pass = TextEditingController();
//     final confim = TextEditingController();

//     bool _isPasswordVisible=false;
//     bool _isConfirmPasswordVisible=false;


//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       body: 
//       Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 30,right: 30,top: 5),
//             child: Container(
//               height: 120,
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9ZD3Y1ddjHlDq-W19lIxedBrxtcU7w2XYLbKkxtMk16mM28AW3clMH0mpQBXSPnBfS9M&usqp=CAU"),fit: BoxFit.cover)),
//             ),
//           ),
//               Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   controller: uname,
//                   decoration: InputDecoration(
//                     hintText: "Username must be characters",
                   
//                     labelText: "Username",
//                     prefixIcon: Icon(Icons.person),
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                
//                   ),
//                 ),
//               ),
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: TextField(
//                   controller: mail,
//                   decoration: InputDecoration(
//                     hintText: "Enter a valid email",
                  
//                     labelText: "Email",
//                     prefixIcon: Icon(Icons.mail_outline),
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                 
//                   ),
//                            ),
//                ),
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: TextField(
//                   // obscureText: true,
//                   obscuringCharacter: "*",
               
//                   controller: pass,
//                   decoration: InputDecoration(
//                     hintText: "Password must contain 7 characters",
//                     labelText: "Password",
//                     prefixIcon: Icon(Icons.lock),
//                     suffixIcon: IconButton(
//                       onPressed: (){
                     
//                     },
//                      icon:Icon(_isPasswordVisible? Icons.visibility : Icons.visibility_off),),
//                     border: OutlineInputBorder()
                 
//                   ),
//                   obscureText: !_isPasswordVisible,
                 
                  
//                            ),
//                ),
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: TextField(
//                 //  obscureText: true,
//                  obscuringCharacter: "*",
//                   controller: confim,
//                   decoration: InputDecoration(
//                     hintText: "Re enter password",
//                     labelText: "Confirm password",
//                     prefixIcon: Icon(Icons.lock),
//                     suffixIcon: IconButton(onPressed: (){
                      
//                     }, icon: Icon(_isConfirmPasswordVisible? Icons.visibility : Icons.visibility_off)),
//                     border: OutlineInputBorder()
                 
//                   ),
//                   obscureText: !_isConfirmPasswordVisible,
                 
//                   ), 
//                ),
//                SizedBox(height: 32,),
//                ElevatedButton(onPressed: (){
//                if (uname.text != "" && mail.text != "" && pass.text !="" && confim.text !="") {
//                 if(uname.text == username && mail.text == email && pass.text == password && confim.text == confirmpassword){
//                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => bottomnav()));
//                } else {
//                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Username/Email/Password is incorrect"),
//                  backgroundColor: Colors.red,
//                  ));
//                }}
//                else{
//                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Fields must not be empty"),
//                  backgroundColor: Colors.red,));
//                }
                
//                }, child: Text("Register")),
//                TextButton(
//               onPressed: () {
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (context) => SnapHome()));
//               },
//               child: const Text("If you are a User!!!!!! Login Here..."))
//             ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }