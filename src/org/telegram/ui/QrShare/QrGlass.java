package org.telegram.ui.QrShare;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.GlassOutlineStyle;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes7.dex */
public abstract class QrGlass {
    private static Bitmap sheenRamp;
    private static BitmapShader sheenShader;
    private static final Paint sheenPaint = new Paint(2);
    private static final Paint sheenRoundPaint = new Paint(3);
    private static final RectF sheenDst = new RectF();
    private static final Matrix sheenMatrix = new Matrix();
    private static final HashMap<Long, Bitmap> rimBakes = new HashMap<>();
    private static final SweepGradient[] rimSweeps = new SweepGradient[4];
    private static int rimVersion = -1;
    private static final Paint rimPaint = new Paint(2);
    private static final Rect rimSrc = new Rect();
    private static final RectF rimDst = new RectF();
    private static final int[] rimSx = new int[4];
    private static final int[] rimSy = new int[4];
    private static final float[] rimDx = new float[4];
    private static final float[] rimDy = new float[4];

    public static int controlFill() {
        return (((int) (((RimTune.f1215v[3] * 255.0f) / 100.0f) + 0.5f)) << 24) | 16777215;
    }

    private static Bitmap sheenRamp() {
        if (sheenRamp == null) {
            int[] iArr = new int[64];
            for (int i = 0; i < 64; i++) {
                iArr[i] = (((int) (((1.0f - ((i + 0.5f) / 64.0f)) * 64.0f) + 0.5f)) << 24) | 16777215;
            }
            sheenRamp = Bitmap.createBitmap(iArr, 1, 64, Bitmap.Config.ARGB_8888);
        }
        return sheenRamp;
    }

    private static int sheenAlpha(boolean z, float f) {
        return (int) (Math.max(0.0f, Math.min(1.0f, f)) * 255.0f * (z ? 1.0f : 0.3125f));
    }

    public static void drawSheen(Canvas canvas, RectF rectF, boolean z, float f) {
        if (ExteraConfig.getGlassOutlineStyle() != GlassOutlineStyle.GLARE) {
            return;
        }
        RectF rectF2 = sheenDst;
        float f2 = rectF.left;
        float f3 = rectF.top;
        rectF2.set(f2, f3, rectF.right, Math.min(rectF.height(), AndroidUtilities.dp(40.0f)) + f3);
        Paint paint = sheenPaint;
        paint.setAlpha(sheenAlpha(z, f));
        canvas.drawBitmap(sheenRamp(), (Rect) null, rectF2, paint);
    }

    public static void drawSheenRound(Canvas canvas, RectF rectF, float f, boolean z, float f2) {
        if (ExteraConfig.getGlassOutlineStyle() != GlassOutlineStyle.GLARE) {
            return;
        }
        Bitmap bitmapSheenRamp = sheenRamp();
        if (sheenShader == null) {
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader = new BitmapShader(bitmapSheenRamp, tileMode, tileMode);
            sheenShader = bitmapShader;
            sheenRoundPaint.setShader(bitmapShader);
        }
        Matrix matrix = sheenMatrix;
        matrix.setScale(rectF.width() / bitmapSheenRamp.getWidth(), Math.min(rectF.height(), AndroidUtilities.dp(40.0f)) / bitmapSheenRamp.getHeight());
        matrix.postTranslate(rectF.left, rectF.top);
        sheenShader.setLocalMatrix(matrix);
        Paint paint = sheenRoundPaint;
        paint.setAlpha(sheenAlpha(z, f2));
        canvas.drawRoundRect(rectF, f, f, paint);
    }

    public static boolean drawRim(Canvas canvas, RectF rectF, float f, int i, float f2) {
        if (!QrRender.hasNodes()) {
            return false;
        }
        if (f2 <= 0.004f) {
            return true;
        }
        ensureRims();
        float[] fArr = RimTune.f1214g[i];
        float fDpf2 = AndroidUtilities.dpf2(fArr[8]);
        float f3 = rectF.left + fDpf2;
        float f4 = rectF.top + fDpf2;
        float f5 = rectF.right - fDpf2;
        float f6 = rectF.bottom - fDpf2;
        float f7 = f5 - f3;
        float f8 = f6 - f4;
        if (f7 < 1.0f || f8 < 1.0f) {
            return true;
        }
        float fMin = Math.min(Math.max(0.0f, f - fDpf2), Math.min(f7, f8) / 2.0f);
        float fDpf22 = AndroidUtilities.dpf2(fArr[4]);
        float fMax = Math.max(AndroidUtilities.dpf2(fArr[0]), AndroidUtilities.dpf2(fArr[2]));
        int iCeil = ((int) Math.ceil(fDpf22)) + 2;
        int iCeil2 = ((int) Math.ceil(fMax + fMin)) + 1;
        int iRound = Math.round(f7);
        int iRound2 = Math.round(f8);
        int i2 = (iCeil2 * 2) + 2;
        boolean z = iRound >= i2;
        boolean z2 = iRound2 >= i2;
        if (z) {
            iRound = i2;
        }
        if (z2) {
            iRound2 = i2;
        }
        long jRound = (((((long) Math.round(4.0f * fMin)) << 32) ^ (((long) i) << 56)) ^ (((long) iRound) << 16)) ^ ((long) iRound2);
        HashMap<Long, Bitmap> map = rimBakes;
        Bitmap bitmapBakeRim = map.get(Long.valueOf(jRound));
        if (bitmapBakeRim == null) {
            bitmapBakeRim = bakeRim(i, fMin, iRound, iRound2, iCeil);
            map.put(Long.valueOf(jRound), bitmapBakeRim);
        }
        int width = bitmapBakeRim.getWidth();
        int height = bitmapBakeRim.getHeight();
        int i3 = z ? 3 : 1;
        int i4 = z2 ? 3 : 1;
        int[] iArr = rimSx;
        iArr[0] = 0;
        float[] fArr2 = rimDx;
        float f9 = iCeil;
        fArr2[0] = f3 - f9;
        if (z) {
            iArr[1] = iCeil + iCeil2;
            iArr[2] = (width - iCeil) - iCeil2;
            float f10 = iCeil2;
            fArr2[1] = f3 + f10;
            fArr2[2] = f5 - f10;
        }
        iArr[i3] = width;
        fArr2[i3] = f5 + f9;
        int[] iArr2 = rimSy;
        iArr2[0] = 0;
        float[] fArr3 = rimDy;
        fArr3[0] = f4 - f9;
        if (z2) {
            iArr2[1] = iCeil + iCeil2;
            iArr2[2] = (height - iCeil) - iCeil2;
            float f11 = iCeil2;
            fArr3[1] = f4 + f11;
            fArr3[2] = f6 - f11;
        }
        iArr2[i4] = height;
        fArr3[i4] = f6 + f9;
        rimPaint.setAlpha((int) (Math.min(1.0f, f2) * 255.0f));
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = 0;
            while (i6 < i3) {
                Rect rect = rimSrc;
                int[] iArr3 = rimSx;
                int i7 = iArr3[i6];
                int[] iArr4 = rimSy;
                int i8 = i6 + 1;
                int i9 = i5 + 1;
                rect.set(i7, iArr4[i5], iArr3[i8], iArr4[i9]);
                RectF rectF2 = rimDst;
                float[] fArr4 = rimDx;
                float f12 = fArr4[i6];
                float[] fArr5 = rimDy;
                rectF2.set(f12, fArr5[i5], fArr4[i8], fArr5[i9]);
                canvas.drawBitmap(bitmapBakeRim, rect, rectF2, rimPaint);
                i6 = i8;
            }
        }
        return true;
    }

    private static void ensureRims() {
        if (rimVersion == 1) {
            return;
        }
        rimVersion = 1;
        rimBakes.clear();
        for (int i = 0; i < 4; i++) {
            float[] fArr = RimTune.f1214g[i];
            int[] iArr = new int[73];
            float[] fArr2 = new float[73];
            for (int i2 = 0; i2 < 73; i2++) {
                double radians = Math.toRadians(i2 * 5);
                float fPow = (float) Math.pow(Math.abs(Math.cos(radians)), fArr[6]);
                float f = (((float) Math.sin(radians)) < 0.0f ? fArr[11] : fArr[12]) / 100.0f;
                iArr[i2] = ((int) ((Math.max(0.0f, Math.min(1.0f, f + (((fArr[5] / 100.0f) - f) * fPow))) * 255.0f) + 0.5f)) << 24;
                fArr2[i2] = i2 / 72.0f;
            }
            rimSweeps[i] = new SweepGradient(0.0f, 0.0f, iArr, fArr2);
        }
    }

    private static Bitmap bakeRim(int i, float f, int i2, int i3, int i4) {
        float[] fArr = RimTune.f1214g[i];
        int i5 = i4 * 2;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2 + i5, i3 + i5, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        float f2 = i4;
        RectF rectF = new RectF(f2, f2, i4 + i2, i4 + i3);
        float fDpf2 = AndroidUtilities.dpf2(fArr[4]);
        char c2 = 1;
        if (fDpf2 > 0.05f) {
            Matrix matrix = new Matrix();
            matrix.setScale(rectF.width() / Math.max(1.0f, rectF.height()), 1.0f);
            matrix.postTranslate(rectF.centerX(), rectF.centerY());
            SweepGradient sweepGradient = rimSweeps[i];
            sweepGradient.setLocalMatrix(matrix);
            Paint paint = new Paint(1);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(fDpf2);
            paint.setShader(sweepGradient);
            RectF rectF2 = new RectF(rectF);
            float f3 = (-fDpf2) / 2.0f;
            rectF2.inset(f3, f3);
            float f4 = (fDpf2 / 2.0f) + f;
            canvas.drawRoundRect(rectF2, f4, f4, paint);
        }
        Paint paint2 = new Paint(1);
        paint2.setColor(-1);
        Path path = new Path();
        Path path2 = new Path();
        RectF rectF3 = new RectF();
        int i6 = 0;
        while (i6 < 2) {
            float fDpf22 = i6 == 0 ? AndroidUtilities.dpf2(fArr[0]) : -AndroidUtilities.dpf2(fArr[2]);
            float f5 = (i6 == 0 ? fArr[c2] : fArr[3]) / 100.0f;
            if (f5 > 0.004f && Math.abs(fDpf22) >= 0.1f) {
                path.rewind();
                Path.Direction direction = Path.Direction.CW;
                path.addRoundRect(rectF, f, f, direction);
                rectF3.set(rectF);
                rectF3.offset(0.0f, fDpf22);
                path2.rewind();
                path2.addRoundRect(rectF3, f, f, direction);
                canvas.save();
                QrRender.clipOut(canvas, path2);
                paint2.setAlpha(Math.round(Math.min(1.0f, f5) * 255.0f));
                canvas.drawPath(path, paint2);
                canvas.restore();
            }
            i6++;
            c2 = 1;
        }
        bitmapCreateBitmap.prepareToDraw();
        return bitmapCreateBitmap;
    }
}
