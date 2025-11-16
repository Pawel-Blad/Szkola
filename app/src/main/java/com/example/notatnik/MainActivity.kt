package com.example.notatnik

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import android.widget.Button
import android.widget.EditText
import androidx.core.content.edit


class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.glowne)


        val prefs = getSharedPreferences("notes", MODE_PRIVATE)
        val noteEditText = findViewById<EditText>(R.id.noteEditText)
        val saveButton = findViewById<Button>(R.id.saveButton)



        noteEditText.setText(prefs.getString("note", ""))



        saveButton.setOnClickListener {
            prefs.edit {
                putString("note", noteEditText.text.toString())
            }
    }
}}

