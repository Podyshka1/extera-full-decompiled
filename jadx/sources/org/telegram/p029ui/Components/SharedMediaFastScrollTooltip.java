package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import java.util.Random;
import okhttp3.internal.p025ws.WebSocketProtocol;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes7.dex */
public class SharedMediaFastScrollTooltip extends FrameLayout {
    public SharedMediaFastScrollTooltip(Context context) {
        super(context);
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString(C2888R.string.SharedMediaFastScrollHint));
        textView.setTextSize(1, 14.0f);
        textView.setMaxLines(3);
        textView.setTextColor(Theme.getColor(Theme.key_chat_gifSaveHintText));
        setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(6.0f), Theme.getColor(Theme.key_chat_gifSaveHintBackground)));
        addView(textView, LayoutHelper.createFrame(-2, -2.0f, 16, 46.0f, 8.0f, 8.0f, 8.0f));
        addView(new TooltipDrawableView(context), LayoutHelper.createFrame(29, 32.0f, 0, 8.0f, 8.0f, 8.0f, 8.0f));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.m1124dp(300.0f), View.MeasureSpec.getSize(i) - AndroidUtilities.m1124dp(32.0f)), Integer.MIN_VALUE), i2);
    }

    private class TooltipDrawableView extends View {
        Paint fadePaint;
        Paint fadePaintBack;
        float fromProgress;
        Paint paint;
        Paint paint2;
        float progress;
        Random random;
        float toProgress;

        public TooltipDrawableView(Context context) {
            super(context);
            this.random = new Random();
            this.paint = new Paint(1);
            this.paint2 = new Paint(1);
            this.progress = 1.0f;
            this.fromProgress = 0.0f;
            Paint paint = this.paint;
            int i = Theme.key_chat_gifSaveHintText;
            paint.setColor(ColorUtils.setAlphaComponent(Theme.getColor(i), 76));
            this.paint2.setColor(Theme.getColor(i));
            this.fadePaint = new Paint();
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.fadePaint.setShader(new LinearGradient(0.0f, AndroidUtilities.m1124dp(4.0f), 0.0f, 0.0f, new int[]{0, -1}, new float[]{0.0f, 1.0f}, tileMode));
            Paint paint2 = this.fadePaint;
            PorterDuff.Mode mode = PorterDuff.Mode.DST_OUT;
            paint2.setXfermode(new PorterDuffXfermode(mode));
            this.fadePaintBack = new Paint();
            this.fadePaintBack.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, AndroidUtilities.m1124dp(4.0f), new int[]{0, -1}, new float[]{0.0f, 1.0f}, tileMode));
            this.fadePaintBack.setXfermode(new PorterDuffXfermode(mode));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            canvas.saveLayerAlpha(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), 255, 31);
            int measuredWidth = (getMeasuredWidth() / 2) - AndroidUtilities.m1124dp(3.0f);
            int iM1124dp = ((AndroidUtilities.m1124dp(1.0f) + measuredWidth) * 7) + AndroidUtilities.m1124dp(1.0f);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT;
            float f = this.progress;
            float interpolation = cubicBezierInterpolator.getInterpolation(f > 0.4f ? (f - 0.4f) / 0.6f : 0.0f);
            float f2 = (this.fromProgress * (1.0f - interpolation)) + (this.toProgress * interpolation);
            canvas.save();
            canvas.translate(0.0f, (-(iM1124dp - (getMeasuredHeight() - AndroidUtilities.m1124dp(4.0f)))) * f2);
            int i = 0;
            for (int i2 = 7; i < i2; i2 = 7) {
                int iM1124dp2 = AndroidUtilities.m1124dp(3.0f) + ((AndroidUtilities.m1124dp(1.0f) + measuredWidth) * i);
                RectF rectF = AndroidUtilities.rectTmp;
                float f3 = iM1124dp2;
                float f4 = iM1124dp2 + measuredWidth;
                rectF.set(0.0f, f3, measuredWidth, f4);
                canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(2.0f), this.paint);
                rectF.set(AndroidUtilities.m1124dp(1.0f) + measuredWidth, f3, AndroidUtilities.m1124dp(1.0f) + measuredWidth + measuredWidth, f4);
                canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(2.0f), this.paint);
                i++;
            }
            canvas.restore();
            canvas.drawRect(0.0f, 0.0f, getMeasuredWidth(), AndroidUtilities.m1124dp(4.0f), this.fadePaint);
            canvas.translate(0.0f, getMeasuredHeight() - AndroidUtilities.m1124dp(4.0f));
            canvas.drawRect(0.0f, 0.0f, getMeasuredWidth(), AndroidUtilities.m1124dp(4.0f), this.fadePaintBack);
            canvas.restore();
            float fM1124dp = AndroidUtilities.m1124dp(3.0f) + ((getMeasuredHeight() - AndroidUtilities.m1124dp(21.0f)) * f2);
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.set(getMeasuredWidth() - AndroidUtilities.m1124dp(3.0f), fM1124dp, getMeasuredWidth(), AndroidUtilities.m1124dp(15.0f) + fM1124dp);
            canvas.drawRoundRect(rectF2, AndroidUtilities.m1124dp(1.5f), AndroidUtilities.m1124dp(1.5f), this.paint2);
            float fCenterY = rectF2.centerY();
            float fM1124dp2 = measuredWidth + AndroidUtilities.m1124dp(0.5f);
            rectF2.set(fM1124dp2 - AndroidUtilities.m1124dp(8.0f), fCenterY - AndroidUtilities.m1124dp(3.0f), fM1124dp2 + AndroidUtilities.m1124dp(8.0f), fCenterY + AndroidUtilities.m1124dp(3.0f));
            canvas.drawRoundRect(rectF2, AndroidUtilities.m1124dp(3.0f), AndroidUtilities.m1124dp(3.0f), this.paint2);
            float f5 = this.progress + 0.016f;
            this.progress = f5;
            if (f5 > 1.0f) {
                this.fromProgress = this.toProgress;
                float fAbs = Math.abs(this.random.nextInt() % WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY) / 1000.0f;
                this.toProgress = fAbs;
                if (fAbs > this.fromProgress) {
                    this.toProgress = fAbs + 0.3f;
                } else {
                    this.toProgress = fAbs - 0.3f;
                }
                this.toProgress = Math.max(0.0f, Math.min(1.0f, this.toProgress));
                this.progress = 0.0f;
            }
            invalidate();
        }
    }
}
