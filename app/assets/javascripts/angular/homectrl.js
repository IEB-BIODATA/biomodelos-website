angular.module('biomodelos')
    .controller('homeCtrl', ['$interval', function ($interval) { 
    var vm = this

    var slides = [
       "url(/assets/background_01.jpg)",
       "url(/assets/background_02.jpg)",
       "url(/assets/background_03.jpg)",
       "url(/assets/background_04.jpg)",
       "url(/assets/background_05.jpg)",
       "url(/assets/background_06.jpg)"
    ];

    vm.slide = slides[0]; 
    $interval(function(){
      if(vm.slide == slides[0])
          vm.slide = slides[1];
      else if(vm.slide == slides[1])
          vm.slide = slides[2];
      else 
      	vm.slide = slides[0];
    }, 6000, 0);

}]);