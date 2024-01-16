const firebaseConfig = {
    apiKey: "AIzaSyC283qXB1zfaLBXIvKuy7NcGP6lwUKUCmQ",
    authDomain: "edusen-server.firebaseapp.com",
    projectId: "edusen-server",
    storageBucket: "edusen-server.appspot.com",
    messagingSenderId: "811068971049",
    appId: "1:811068971049:web:8d631f21c85cb1adc96438",
    measurementId: "G-DM8SFZGZ9X"
};
firebase.initializeApp(firebaseConfig); //initialize firebase app 
module.exports = { firebase }; //export the app