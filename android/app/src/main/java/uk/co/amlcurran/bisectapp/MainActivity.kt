package uk.co.amlcurran.bisectapp

import android.os.Bundle
import android.support.v7.app.AppCompatActivity
import android.support.v7.widget.LinearLayoutManager
import android.support.v7.widget.RecyclerView

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val recyclerView = findViewById(R.id.recycler) as RecyclerView
        recyclerView.adapter = BasicAdapter()
        recyclerView.layoutManager = LinearLayoutManager(this)
    }
}
