package uk.co.amlcurran.bisectapp

import android.support.v7.widget.RecyclerView
import android.support.v7.widget.RecyclerView.Adapter
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView

class BasicAdapter : Adapter<BasicAdapter.BasicViewHolder>() {

    private var items: Array<String> = arrayOf("Hello", "How", "Are", "You")

    override fun onBindViewHolder(holder: BasicViewHolder?, position: Int) {
        holder?.bind(items[position])
    }

    override fun onCreateViewHolder(parent: ViewGroup?, viewType: Int): BasicViewHolder {
        val inflated = LayoutInflater.from(parent!!.context).inflate(R.layout.list_item, parent, false)
        return BasicViewHolder(inflated)
    }

    override fun getItemCount(): Int {
        return items.size
    }

    class BasicViewHolder(view: View): RecyclerView.ViewHolder(view) {

        val text: TextView = view.findViewById(R.id.list_title) as TextView

        fun bind(string: String) {
            text.text = string
        }

    }

}
