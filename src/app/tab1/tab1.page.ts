import { Component, OnInit } from '@angular/core';


//import{ handwritePlugin} from 'handwrite';

import {CustomSuperPlugin} from 'handwrite';

import { Plugins } from '@capacitor/core';


@Component({
  selector: 'app-tab1',
  templateUrl: 'tab1.page.html',
  styleUrls: ['tab1.page.scss']
})
export class Tab1Page  implements OnInit{
  
// constructor(public handwrite:CustomSuperPlugin) {}
 
 constructor(public handwrite:CustomSuperPlugin) {}

 // constructor(){}

  public ngOnInit():void{
   //  this.handwrite.handWrite('1213213');
    // Plugins.handwrite.handWrite()
  }

  showHandle():void{
    console.log('plugins',Plugins);
    this.handwrite.handWrite('sh3h/ordermanager/attachment/images')
    .then(data=>{
      console.log(data);
    })
    .catch(error=>{
      console.log(error);
    });
  }

}
