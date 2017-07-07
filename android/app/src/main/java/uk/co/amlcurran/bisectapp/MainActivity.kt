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
        val basicAdapter = BasicAdapter(arrayListOf(Fruit("Apple", 20, "Red", 0.1), Fruit("Banana", 25, "Yellow", null)), 35)
        recyclerView.adapter = basicAdapter
        recyclerView.layoutManager = LinearLayoutManager(this)

        basicAdapter.addFruits(arrayOf(Fruit("Peach", 32, "Yellow?", null), Fruit("Grapes", 50, "Green", 0.1)))
    }

}
