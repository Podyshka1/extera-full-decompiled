package org.telegram.p029ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes3.dex */
public class RecordStatusDrawable extends StatusDrawable {
    Paint currentPaint;
    private float progress;
    private boolean isChat = false;
    private long lastUpdateTime = 0;
    private boolean started = false;
    private RectF rect = new RectF();
    int alpha = 255;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public RecordStatusDrawable(boolean z) {
        if (z) {
            Paint paint = new Paint(1);
            this.currentPaint = paint;
            paint.setStyle(Paint.Style.STROKE);
            this.currentPaint.setStrokeCap(Paint.Cap.ROUND);
            this.currentPaint.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
        }
    }

    @Override // org.telegram.p029ui.Components.StatusDrawable
    public void setIsChat(boolean z) {
        this.isChat = z;
    }

    @Override // org.telegram.p029ui.Components.StatusDrawable
    public void setColor(int i) {
        Paint paint = this.currentPaint;
        if (paint != null) {
            paint.setColor(i);
        }
    }

    private void update() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.lastUpdateTime;
        this.lastUpdateTime = jCurrentTimeMillis;
        if (j > 50) {
            j = 50;
        }
        this.progress += j / 800.0f;
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
        if (paint2.getStrokeWidth() != AndroidUtilities.m1124dp(2.0f)) {
            paint2.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
        }
        canvas.save();
        canvas.translate(0.0f, (getIntrinsicHeight() / 2) + AndroidUtilities.m1124dp(this.isChat ? 1.0f : 2.0f));
        for (int i = 0; i < 4; i++) {
            if (i == 0) {
                paint2.setAlpha((int) (this.alpha * this.progress));
            } else if (i == 3) {
                paint2.setAlpha((int) (this.alpha * (1.0f - this.progress)));
            } else {
                paint2.setAlpha(this.alpha);
            }
            float fM1124dp = (AndroidUtilities.m1124dp(4.0f) * i) + (AndroidUtilities.m1124dp(4.0f) * this.progress);
            float f = -fM1124dp;
            this.rect.set(f, f, fM1124dp, fM1124dp);
            canvas.drawArc(this.rect, -15.0f, 30.0f, false, paint2);
        }
        canvas.restore();
        if (this.started) {
            update();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.alpha = i;
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
