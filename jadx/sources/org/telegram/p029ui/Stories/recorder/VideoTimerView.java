package org.telegram.p029ui.Stories.recorder;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Stories.recorder.FlashViews;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public class VideoTimerView extends View implements FlashViews.Invertable {
    private Paint backgroundPaint;
    private Paint recordPaint;
    private boolean recording;
    private AnimatedFloat recordingT;
    private AnimatedTextView.AnimatedTextDrawable textDrawable;

    public VideoTimerView(Context context) {
        super(context);
        this.backgroundPaint = new Paint(1);
        this.recordPaint = new Paint(1);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.recordingT = new AnimatedFloat(this, 0L, 250L, cubicBezierInterpolator);
        this.recordPaint.setColor(-907224);
        this.backgroundPaint.setColor(1056964608);
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.textDrawable = animatedTextDrawable;
        animatedTextDrawable.setAnimationProperties(0.3f, 0L, 250L, cubicBezierInterpolator);
        this.textDrawable.setTextSize(AndroidUtilities.m1124dp(13.0f));
        this.textDrawable.setTextColor(-1);
        this.textDrawable.setTypeface(AndroidUtilities.bold());
        this.textDrawable.setCallback(this);
        this.textDrawable.setGravity(1);
        setDuration(0L, false);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return this.textDrawable == drawable || super.verifyDrawable(drawable);
    }

    public void setRecording(boolean z, boolean z2) {
        this.recording = z;
        if (!z2) {
            this.recordingT.set(z ? 1.0f : 0.0f, true);
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(45.0f), TLObject.FLAG_30));
    }

    public void setDuration(long j, boolean z) {
        long j2 = j % 60;
        long j3 = (j - j2) / 60;
        StringBuilder sb = new StringBuilder(5);
        if (j3 < 10) {
            sb.append('0');
        }
        sb.append(j3);
        sb.append(':');
        if (j2 < 10) {
            sb.append('0');
        }
        sb.append(j2);
        this.textDrawable.setText(sb, z);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = this.recordingT.set(this.recording ? 1.0f : 0.0f);
        float fM1124dp = AndroidUtilities.m1124dp(12.66f) * f;
        float currentWidth = this.textDrawable.getCurrentWidth() + fM1124dp;
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(((getWidth() - currentWidth) / 2.0f) - AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(18.0f), ((getWidth() + currentWidth) / 2.0f) + AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(40.0f));
        canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(18.0f), AndroidUtilities.m1124dp(18.0f), this.backgroundPaint);
        if (f > 0.0f) {
            this.recordPaint.setAlpha((int) (Utilities.clamp((((float) Math.sin(((double) ((System.currentTimeMillis() % 2000) / 1000.0f)) * 3.141592653589793d)) / 4.0f) + 0.75f, 1.0f, 0.0f) * 255.0f));
            invalidate();
            canvas.drawCircle(rectF.left + AndroidUtilities.m1124dp(10.66f), rectF.centerY(), AndroidUtilities.m1124dp(4.0f) * f, this.recordPaint);
        }
        this.textDrawable.setBounds((int) (rectF.left + fM1124dp), ((int) rectF.top) - AndroidUtilities.m1124dp(1.0f), (int) rectF.right, (int) rectF.bottom);
        this.textDrawable.draw(canvas);
    }

    @Override // org.telegram.ui.Stories.recorder.FlashViews.Invertable
    public void setInvert(float f) {
        this.backgroundPaint.setColor(ColorUtils.blendARGB(1056964608, 268435456, f));
        this.textDrawable.setTextColor(ColorUtils.blendARGB(-1, -16777216, f));
    }
}
