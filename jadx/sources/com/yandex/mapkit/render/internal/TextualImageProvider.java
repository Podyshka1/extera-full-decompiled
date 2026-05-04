package com.yandex.mapkit.render.internal;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.SparseArray;
import com.yandex.runtime.device.internal.DeviceInfo;
import com.yandex.runtime.image.ImageProvider;

/* JADX INFO: loaded from: classes5.dex */
public class TextualImageProvider extends ImageProvider {
    private static final float DELTA = 1.5f;
    private static final float FONT_SCALE = 1.0f;
    private static final SparseArray<Paint> map = new SparseArray<>();
    private final Bitmap bitmap;

    /* JADX INFO: renamed from: id */
    private final String f622id;

    private static Paint getPaint(int i) {
        Paint paint;
        SparseArray<Paint> sparseArray = map;
        synchronized (sparseArray) {
            try {
                paint = sparseArray.get(i);
                if (paint == null) {
                    paint = new Paint();
                    paint.setTextSize(i * 1.0f * DeviceInfo.pixelsPerPoint());
                    paint.setTextAlign(Paint.Align.LEFT);
                    paint.setStyle(Paint.Style.FILL);
                    paint.setAntiAlias(true);
                    sparseArray.put(i, paint);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return paint;
    }

    @Override // com.yandex.runtime.image.ImageProvider
    public String getId() {
        return this.f622id;
    }

    @Override // com.yandex.runtime.image.ImageProvider
    public Bitmap getImage() {
        return this.bitmap;
    }

    public TextualImageProvider(String str, int i, boolean z, int i2, int i3) {
        this.f622id = "text:" + str + " fontSize:" + i + " isOutlined:" + z;
        Paint paint = getPaint(i);
        float fMeasureText = paint.measureText(str);
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) (fMeasureText + 0.5f), (int) (Math.abs(fontMetrics.bottom) + Math.abs(fontMetrics.top) + 0.5f), Bitmap.Config.ARGB_8888);
        this.bitmap = bitmapCreateBitmap;
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        float fAbs = Math.abs(fontMetrics.ascent);
        synchronized (map) {
            if (z) {
                try {
                    paint.setColor(i3);
                    float f = fAbs - DELTA;
                    canvas.drawText(str, -1.5f, f, paint);
                    canvas.drawText(str, DELTA, f, paint);
                    float f2 = fAbs + DELTA;
                    canvas.drawText(str, DELTA, f2, paint);
                    canvas.drawText(str, -1.5f, f2, paint);
                } catch (Throwable th) {
                    throw th;
                }
            }
            paint.setColor(i2);
            canvas.drawText(str, 0.0f, fAbs, paint);
        }
    }

    public static Size measureText(String str, int i) {
        Paint paint = getPaint(i);
        float fMeasureText = paint.measureText(str);
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        return new Size((int) (fMeasureText + 0.5f), (int) (Math.abs(fontMetrics.bottom) + Math.abs(fontMetrics.top) + 0.5f));
    }

    public static int baseline(int i) {
        return Math.round(Math.abs(getPaint(i).getFontMetrics().ascent));
    }
}
