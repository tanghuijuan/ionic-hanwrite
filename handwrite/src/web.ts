import { WebPlugin } from '@capacitor/core';
import { handwritePlugin } from './definitions';

export class handwriteWeb extends WebPlugin implements handwritePlugin {
  constructor() {
    super({
      name: 'handwrite',
      platforms: ['web']
    });
  }
  handwrite(options: { value: string }): Promise<any> {
    console.log('handWrite', options);
    //throw new Error("Method not implemented.");
    return Promise.resolve(options);
  }

  async echo(options: { value: string }): Promise<{value: string}> {
    console.log('ECHO', options);
    return options;
  }
}

const handwrite = new handwriteWeb();

export { handwrite };

import { registerWebPlugin } from '@capacitor/core';
registerWebPlugin(handwrite);
