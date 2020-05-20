//export * from './definitions';
export * from './web';
import { Plugins } from '@capacitor/core';
//const { handWritePlugin } = Plugins.;

export class CustomSuperPlugin {
 constructor() {
  }
  handWrite(path:string):Promise<any>{
   // console.log('plugins',Plugins);
   // console.log('handWritePlugin',handWritePlugin);   
   console.log('plugins',);
    return  Plugins.Handwrite.handWrite({path:path});
 }
}