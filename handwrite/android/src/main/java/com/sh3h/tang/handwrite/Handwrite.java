package com.sh3h.tang.handwrite;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;

import com.getcapacitor.JSObject;
import com.getcapacitor.NativePlugin;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.sh3h.tang.handwrite.util.GlobalConst;

import static com.sh3h.tang.handwrite.util.GlobalConst.REQUEST_SAVE_IMAGE;

@NativePlugin(
     requestCodes={REQUEST_SAVE_IMAGE}
)
public class Handwrite extends Plugin {


    @PluginMethod()
    public void echo(PluginCall call) {
        String value = call.getString("value");

        JSObject ret = new JSObject();
        ret.put("value", value);
        call.success(ret);
    }

    @PluginMethod()
    public void handWrite(PluginCall call){
       saveCall(call);
       //存放地址
       String path=  call.getString("path");
       Intent intent=new Intent(getActivity(),DrawActivity.class);
       intent.putExtra(GlobalConst.path,path);
       startActivityForResult(call,intent,REQUEST_SAVE_IMAGE);
    }

    /**
     *
     * @param requestCode
     * @param resultCode
     * @param data
     */
    @Override
    protected void handleOnActivityResult(int requestCode, int resultCode, Intent data) {
        super.handleOnActivityResult(requestCode, resultCode, data);
        PluginCall savedCall = getSavedCall();
        if (savedCall == null) {
            return;
        }
        if (requestCode == REQUEST_SAVE_IMAGE) {
            if (Activity.RESULT_OK==resultCode){
                String fileName= data.getStringExtra(GlobalConst.fileName);
                if (TextUtils.isEmpty(fileName)){
                    savedCall.reject("fileName null");
                    return;
                }
                JSObject ret = new JSObject();
                ret.put(GlobalConst.fileName, fileName);
                savedCall.success(ret);
            }else {
               savedCall.reject(data.getStringExtra(GlobalConst.error));
               return;
            }
        }

        notifyListeners();
    }
}
