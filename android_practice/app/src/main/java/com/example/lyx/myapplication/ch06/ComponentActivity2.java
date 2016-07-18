package com.example.lyx.myapplication.ch06;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

import com.example.lyx.myapplication.R;

/**
 * Created by lyx on 2016/7/17.
 */
public class ComponentActivity2 extends Activity {
    private TextView tv;
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_colors);
        Intent intent = getIntent();
        ComponentName cn = intent.getComponent();
        String packageName = cn.getPackageName();
        String className = cn.getClassName();

        tv = (TextView)findViewById(R.id.TextView01);
        tv.setText("Package Name:" + packageName + "\n" + "Class Name:" + className);
    }
}
