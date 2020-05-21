//export * from './definitions';
export * from './web';
import { Plugins } from '@capacitor/core';
//const { handWritePlugin } = Plugins.;
export class CustomSuperPlugin {
    constructor() {
    }
    handWrite(path) {
        // console.log('plugins',Plugins);
        // console.log('handWritePlugin',handWritePlugin);   
        console.log('plugins');
        if (!!Plugins.Handwrite) {
            return Plugins.Handwrite.handWrite({ path: path });
        }
        else {
            return Plugins.handwrite.handWrite({ path: path });
        }
    }
}
//# sourceMappingURL=index.js.map