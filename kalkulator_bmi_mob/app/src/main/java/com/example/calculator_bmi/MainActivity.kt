package com.example.calculator_bmi

import android.os.Bundle
import androidx.activity.ComponentActivity
import android.widget.EditText
import android.widget.TextView
import android.widget.Button


class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.layout);
        val podana_waga = findViewById<EditText>(R.id.liczba1);
        val podany_wzrost = findViewById<EditText>(R.id.liczba2);
        val button = findViewById<Button>(R.id.oblicz);
        val wynik = findViewById<TextView>(R.id.wynik);



        button.setOnClickListener {
            val waga = podana_waga.text.toString().toFloat()
            val wzrost = podany_wzrost.text.toString().toFloat() / 100
            val bmi = waga / (wzrost * wzrost)
            wynik.text = bmi.toString()
        }


    }
}

