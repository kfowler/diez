// This file was generated with Diez - https://diez.org
// Do not edit this file directly.

package org.diez.stdlibTestStub

import android.content.Context
import android.graphics.Color
import android.graphics.drawable.PaintDrawable
import android.graphics.drawable.shapes.RectShape
import android.util.AttributeSet
import android.widget.LinearLayout
import androidx.core.graphics.ColorUtils

/**
  Provides a simple rectangular panel description.
*/
data class Panel(
    /**
      Panel data.
    */
    val cornerRadius: Float,
    /**
      Panel data.
    */
    val background: Fill,
    /**
      Panel data.
    */
    val elevation: Float
) {
    companion object {}
}

class PanelView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : LinearLayout(context, attrs, defStyleAttr) {
    fun apply(panel: Panel) {
        val background = PaintDrawable()
        background.shape = RectShape()
        background.setCornerRadius(panel.cornerRadius.dpToPx().toFloat())
        background.apply(panel.background)
        this.background = background
        this.elevation = panel.elevation.dpToPx().toFloat()
    }
}

private fun PaintDrawable.apply(fill: Fill) {
    when (fill.type) {
        "Color" -> {
            this.paint.color = fill.color.color
            this.shaderFactory = null
        }
        "LinearGradient" -> {
            this.paint.color = Color.WHITE
            this.shaderFactory = fill.linearGradient.shaderFactory
        }
        else -> {
            this.paint.color = ColorUtils.setAlphaComponent(Color.WHITE, 255)
            this.shaderFactory = null
        }
    }
}
