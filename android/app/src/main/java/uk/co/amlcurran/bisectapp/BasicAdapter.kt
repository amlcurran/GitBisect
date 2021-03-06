package uk.co.amlcurran.bisectapp

import android.graphics.Color
import android.support.v7.widget.RecyclerView
import android.support.v7.widget.RecyclerView.Adapter
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import java.util.*

class BasicAdapter(fruits: ArrayList<Fruit>, val highPrice: Int) : Adapter<BasicAdapter.BasicViewHolder>() {

    private var items: MutableList<Fruit> = fruits

    override fun onBindViewHolder(holder: BasicViewHolder?, position: Int) {
        holder?.bind(items[position])
    }

    override fun onCreateViewHolder(parent: ViewGroup?, viewType: Int): BasicViewHolder {
        val inflated = LayoutInflater.from(parent!!.context).inflate(R.layout.list_item, parent, false)
        return BasicViewHolder(inflated, highPrice)
    }

    override fun getItemCount(): Int {
        return items.size
    }

    class BasicViewHolder(view: View, val highPrice: Int): RecyclerView.ViewHolder(view) {

        val titleText: TextView = view.findViewById(R.id.list_title) as TextView
        val colorText: TextView = view.findViewById(R.id.list_color) as TextView

        fun bind(fruit: Fruit) {
            titleText.text = fruit.name
            colorText.text = fruit.color
            if (fruit.price > highPrice) {
                titleText.setTextColor(Color.RED)
            } else {
                titleText.setTextColor(Color.BLACK)
            }
        }

    }

    fun addFruits(newFruits: Array<Fruit>) {
        items = newFruits.toMutableList()
        notifyDataSetChanged()
    }

}
