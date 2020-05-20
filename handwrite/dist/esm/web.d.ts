import { WebPlugin } from '@capacitor/core';
import { handwritePlugin } from './definitions';
export declare class handwriteWeb extends WebPlugin implements handwritePlugin {
    constructor();
    handwrite(options: {
        value: string;
    }): Promise<any>;
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
}
declare const handwrite: handwriteWeb;
export { handwrite };
