package com.example.sopadeletras;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

public class inicio extends AppCompatActivity {
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.inicio);


    }
    public void iniciarJuego(View view){
        Intent intent = new Intent(this,MainActivity.class);
        startActivity(intent);
    }
}
