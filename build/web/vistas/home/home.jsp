<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../res/css/snackbar.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
        <title>SNACK EXAMPLE</title>
    </head>
    <body ng-app="app" ng-controller="snackController" ng-init="init()" ng-cloak>
        <h1>Hello World!</h1>
        
        <!-- 8 - SNACKBAR:-->
        <div id="snackbar">Some text some message..</div>
        
        <button ng-click="snack('Hola Mundo..')">
            CREAR MENSAJE
        </button>
    </body>
    <script>
    app = angular.module('app', []);
    app.controller('snackController', function($scope, $http) 
    {
        $scope.snack = function(msg)
        {
            // 1 - GET THE UI COMPONENT:
            var x = document.getElementById("snackbar");

            // 2 - SETEAR EL MENSAJE:
            $("#snackbar").html(msg);

            // 3 - HACER EL COMPONENTE VISIBLE:
            x.className = "show";

            // 4 - DESPUES DE 3 SEGUNDOS, QUETAR LA VISIBILIDAD:
            setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
        }
    });
    </script>
    <style>
        *
        {
            font-family: 'Montserrat', sans-serif;
        }
        #snackbar
        {
            font-family: 'Montserrat', sans-serif;
        }
    </style>
</html>
