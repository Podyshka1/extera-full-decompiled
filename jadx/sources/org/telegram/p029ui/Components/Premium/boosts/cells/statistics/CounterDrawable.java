package org.telegram.p029ui.Components.Premium.boosts.cells.statistics;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import androidx.core.content.ContextCompat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;

/* JADX INFO: loaded from: classes7.dex */
public class CounterDrawable extends Drawable {
    private final Paint bgPaint;
    private final RectF bgRoundRect;
    private final Drawable icon;
    private String text;
    private final TextPaint textPaint;
    private float textWith;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public CounterDrawable(Context context) {
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        TextPaint textPaint2 = new TextPaint(1);
        this.bgPaint = textPaint2;
        this.bgRoundRect = new RectF();
        textPaint.setColor(-1);
        textPaint.setTypeface(AndroidUtilities.bold());
        textPaint.setTextSize(AndroidUtilities.m1124dp(12.0f));
        textPaint2.setColor(-6915073);
        this.icon = ContextCompat.getDrawable(context, C2888R.drawable.mini_boost_badge);
    }

    public void setText(String str) {
        this.text = str;
        this.textWith = this.textPaint.measureText(str);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        this.bgRoundRect.set(bounds.left, bounds.top, bounds.right, bounds.bottom);
        canvas.drawRoundRect(this.bgRoundRect, AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f), this.bgPaint);
        this.icon.setBounds(bounds.left + AndroidUtilities.m1124dp(2.0f), bounds.top + AndroidUtilities.m1124dp(1.0f), bounds.left + AndroidUtilities.m1124dp(2.0f) + this.icon.getIntrinsicWidth(), getBounds().top + AndroidUtilities.m1124dp(1.0f) + this.icon.getIntrinsicHeight());
        this.icon.draw(canvas);
        String str = this.text;
        if (str != null) {
            canvas.drawText(str, AndroidUtilities.m1124dp(16.5f) + bounds.left, bounds.top + AndroidUtilities.m1124dp(13.0f), this.textPaint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) (AndroidUtilities.m1124dp(23.0f) + this.textWith);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m1124dp(18.0f);
    }
}
