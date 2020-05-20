declare module "@capacitor/core" {
    interface PluginRegistry {
        handwrite: handwritePlugin;
    }
}
export interface handwritePlugin {
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
    handwrite(options: {
        value: string;
    }): Promise<any>;
}
