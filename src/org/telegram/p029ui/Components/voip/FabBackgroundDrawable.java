package org.telegram.p029ui.Components.voip;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.Keep;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes7.dex */
public class FabBackgroundDrawable extends Drawable {
    private Paint bgPaint = new Paint(1);
    private Bitmap shadowBitmap;
    private Paint shadowPaint;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public FabBackgroundDrawable() {
        Paint paint = new Paint();
        this.shadowPaint = paint;
        paint.setColor(1275068416);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.shadowBitmap == null) {
            onBoundsChange(getBounds());
        }
        int iMin = Math.min(getBounds().width(), getBounds().height());
        Bitmap bitmap = this.shadowBitmap;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, getBounds().centerX() - (this.shadowBitmap.getWidth() / 2), getBounds().centerY() - (this.shadowBitmap.getHeight() / 2), this.shadowPaint);
        }
        float f = iMin / 2;
        canvas.drawCircle(f, f, r0 - AndroidUtilities.m1124dp(4.0f), this.bgPaint);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        int iMin = Math.min(rect.width(), rect.height());
        if (iMin <= 0) {
            this.shadowBitmap = null;
            return;
        }
        this.shadowBitmap = Bitmap.createBitmap(iMin, iMin, Bitmap.Config.ALPHA_8);
        float f = iMin / 2;
        new Canvas(this.shadowBitmap).drawCircle(f, f, r5 - AndroidUtilities.m1124dp(4.0f), new Paint(1));
    }

    @Keep
    public void setColor(int i) {
        this.bgPaint.setColor(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int iM1124dp = AndroidUtilities.m1124dp(4.0f);
        rect.set(iM1124dp, iM1124dp, iM1124dp, iM1124dp);
        return true;
    }
}
