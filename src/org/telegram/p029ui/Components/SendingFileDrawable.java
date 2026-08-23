package org.telegram.p029ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes3.dex */
public class SendingFileDrawable extends StatusDrawable {
    Paint currentPaint;
    private float progress;
    private boolean isChat = false;
    private long lastUpdateTime = 0;
    private boolean started = false;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public SendingFileDrawable(boolean z) {
        if (z) {
            Paint paint = new Paint(1);
            this.currentPaint = paint;
            paint.setStyle(Paint.Style.STROKE);
            this.currentPaint.setStrokeCap(Paint.Cap.ROUND);
            this.currentPaint.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
        }
    }

    @Override // org.telegram.p029ui.Components.StatusDrawable
    public void setColor(int i) {
        Paint paint = this.currentPaint;
        if (paint != null) {
            paint.setColor(i);
        }
    }

    @Override // org.telegram.p029ui.Components.StatusDrawable
    public void setIsChat(boolean z) {
        this.isChat = z;
    }

    private void update() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.lastUpdateTime;
        this.lastUpdateTime = jCurrentTimeMillis;
        if (j > 50) {
            j = 50;
        }
        this.progress += j / 500.0f;
        while (true) {
            float f = this.progress;
            if (f > 1.0f) {
                this.progress = f - 1.0f;
            } else {
                invalidateSelf();
                return;
            }
        }
    }

    @Override // org.telegram.p029ui.Components.StatusDrawable
    public void start() {
        this.lastUpdateTime = System.currentTimeMillis();
        this.started = true;
        invalidateSelf();
    }

    @Override // org.telegram.p029ui.Components.StatusDrawable
    public void stop() {
        this.started = false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Paint paint = this.currentPaint;
        if (paint == null) {
            paint = Theme.chat_statusRecordPaint;
        }
        Paint paint2 = paint;
        int i = 0;
        while (i < 3) {
            if (i == 0) {
                paint2.setAlpha((int) (this.progress * 255.0f));
            } else if (i == 2) {
                paint2.setAlpha((int) ((1.0f - this.progress) * 255.0f));
            } else {
                paint2.setAlpha(255);
            }
            float fM1124dp = (AndroidUtilities.m1124dp(5.0f) * i) + (AndroidUtilities.m1124dp(5.0f) * this.progress);
            float f = 8.0f;
            Canvas canvas2 = canvas;
            canvas2.drawLine(fM1124dp, AndroidUtilities.m1124dp(this.isChat ? 3.0f : 4.0f), fM1124dp + AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(this.isChat ? 7.0f : 8.0f), paint2);
            float fM1124dp2 = AndroidUtilities.m1124dp(this.isChat ? 11.0f : 12.0f);
            float fM1124dp3 = fM1124dp + AndroidUtilities.m1124dp(4.0f);
            if (this.isChat) {
                f = 7.0f;
            }
            canvas2.drawLine(fM1124dp, fM1124dp2, fM1124dp3, AndroidUtilities.m1124dp(f), paint2);
            i++;
            canvas = canvas2;
        }
        if (this.started) {
            update();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.m1124dp(18.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m1124dp(14.0f);
    }
}
