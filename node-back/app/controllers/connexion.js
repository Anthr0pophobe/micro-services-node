const { prisma } = require('../../services/prismaClient');
const passport = require('passport');
const LocalStrategy = require('passport-local')
var crypto = require('crypto');

//permet de verifier si le nom et mdp sont correct.
const verify = async( req, res ) =>{
  const { body:{
    username,
    password
  } } = req;
};

// Fonction de connexion
const login = async(req, res) =>{
  const { body:{
    username,
    password
  } } = req;
  try{
  const password = await prisma.users.findUnique({
    where: {
      username
    },
  });
  // Effectue le hachage du mot de passe fourni par l'utilisateur
  if(password){
    return res.json({
			succes: true,
      data: {
        id:password.id,
        username: password.username,
        img_url: password.img_url
      },
			message:"Connexion réussi",
			code: 200,
		});
  } else{
    return res.json({
			succes: false,
			message:"Mot de passe incorrect.",
			code: 200,
		});
  }

} catch (error) {
  console.log(error);
  let message;
  if(error == "ReferenceError: user is not defined"){
    message = "nom d'utilisateur incorrect."
  };
  return res.json({
    succes: false,
    message,
    code: 404,
  });
};
}

module.exports = {
  verify,
  login
};
