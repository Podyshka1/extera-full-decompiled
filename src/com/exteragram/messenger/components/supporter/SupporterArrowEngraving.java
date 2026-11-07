package com.exteragram.messenger.components.supporter;

import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.text.TextPaint;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes4.dex */
public final class SupporterArrowEngraving {
    private int enabledHandle;
    private volatile Bitmap pending;
    private boolean ready;
    private int samplerHandle;
    private int texture;

    public static Bitmap createMask(String str) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(1024, 1024, Bitmap.Config.ALPHA_8);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        TextPaint textPaint = new TextPaint(1);
        textPaint.setTypeface(AndroidUtilities.bold());
        textPaint.setTextSize(59.392f);
        textPaint.setLetterSpacing(0.12f);
        textPaint.setTextAlign(Paint.Align.CENTER);
        textPaint.setMaskFilter(new BlurMaskFilter(1.2288f, BlurMaskFilter.Blur.NORMAL));
        Paint.FontMetrics fontMetrics = textPaint.getFontMetrics();
        canvas.rotate(19.49f, 509.5424f, 288.0512f);
        canvas.drawText(str, 509.5424f, 288.0512f - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), textPaint);
        return bitmapCreateBitmap;
    }

    public void init(int i) {
        this.enabledHandle = GLES20.glGetUniformLocation(i, "engraving");
        this.samplerHandle = GLES20.glGetUniformLocation(i, "u_Engraving");
    }

    public void set(Bitmap bitmap) {
        this.pending = bitmap;
    }

    public void apply() {
        Bitmap bitmap = this.pending;
        if (bitmap != null) {
            this.pending = null;
            if (this.texture == 0) {
                int[] iArr = new int[1];
                GLES20.glGenTextures(1, iArr, 0);
                this.texture = iArr[0];
            }
            int[] iArr2 = new int[1];
            GLES20.glGetIntegerv(34016, iArr2, 0);
            GLES20.glActiveTexture(33987);
            GLES20.glBindTexture(3553, this.texture);
            GLES20.glTexParameteri(3553, 10241, 9729);
            GLES20.glTexParameteri(3553, 10240, 9729);
            GLES20.glTexParameteri(3553, 10242, 33071);
            GLES20.glTexParameteri(3553, 10243, 33071);
            GLUtils.texImage2D(3553, 0, bitmap, 0);
            GLES20.glUniform1i(this.samplerHandle, 3);
            GLES20.glActiveTexture(iArr2[0]);
            this.ready = true;
        }
        GLES20.glUniform1f(this.enabledHandle, this.ready ? 1.0f : 0.0f);
    }

    public void destroy() {
        int i = this.texture;
        if (i != 0) {
            GLES20.glDeleteTextures(1, new int[]{i}, 0);
            this.texture = 0;
        }
        this.ready = false;
    }
}
