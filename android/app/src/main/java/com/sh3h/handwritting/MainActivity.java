package com.sh3h.handwritting;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;

import com.getcapacitor.BridgeActivity;
import com.getcapacitor.Plugin;
import com.sh3h.tang.handwrite.Handwrite;

import java.util.ArrayList;

public class MainActivity extends BridgeActivity {
  @Override
  public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    // Initializes the Bridge
    this.init(savedInstanceState, new ArrayList<Class<? extends Plugin>>() {{
      // Additional plugins you've installed go here
      // Ex: add(TotallyAwesomePlugin.class);
      // add();
      add(Handwrite.class);
    }});
  }

  @Override
  public boolean onCreateOptionsMenu(Menu menu) {
    MenuInflater inflater=new MenuInflater(this);
    inflater.inflate(R.menu.menu_normal,menu);
    return super.onCreateOptionsMenu(menu);
  }
}
