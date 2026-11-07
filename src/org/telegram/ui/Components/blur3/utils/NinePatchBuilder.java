package org.telegram.ui.Components.blur3.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.NinePatchDrawable;
import androidx.core.math.MathUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import org.telegram.messenger.ApplicationLoader;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes7.dex */
public abstract class NinePatchBuilder {

    public interface NinePathRenderer {
        void draw(Canvas canvas, RectF rectF, float[] fArr);
    }

    public static NinePatchDrawable createNinePatch(Bitmap[] bitmapArr, final int i, float[] fArr, final float f, final int i2, final float f2, final float f3, int i3) {
        return createNinePatch(bitmapArr, fArr, f, f2, f3, i3, new NinePathRenderer() { // from class: org.telegram.ui.Components.blur3.utils.NinePatchBuilder$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.blur3.utils.NinePatchBuilder.NinePathRenderer
            public final void draw(Canvas canvas, RectF rectF, float[] fArr2) {
                NinePatchBuilder.$r8$lambda$86sFOu1PZqKXvzaMlCbF6VL6Vy8(i, f, f2, f3, i2, canvas, rectF, fArr2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$86sFOu1PZqKXvzaMlCbF6VL6Vy8(int i, float f, float f2, float f3, int i2, Canvas canvas, RectF rectF, float[] fArr) {
        Path path = new Path();
        path.addRoundRect(rectF, fArr, Path.Direction.CW);
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(i);
        if (f > 0.0f) {
            paint.setShadowLayer(f, f2, f3, i2);
        }
        canvas.drawPath(path, paint);
        if (f > 0.0f) {
            paint.clearShadowLayer();
            canvas.drawPath(path, paint);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0103  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static NinePatchDrawable createNinePatch(Bitmap[] bitmapArr, float[] fArr, float f, float f2, float f3, int i, NinePathRenderer ninePathRenderer) {
        int i2;
        int i3;
        Bitmap bitmapCreateBitmap;
        Bitmap bitmap;
        if (fArr == null || fArr.length != 8) {
            f$$ExternalSyntheticBUOutline1.m215m("radii must have 8 values: TLx,TLy, TRx,TRy, BRx,BRy, BLx,BLy");
            return null;
        }
        float fMax = Math.max(0.0f, fArr[0]);
        float fMax2 = Math.max(0.0f, fArr[1]);
        float fMax3 = Math.max(0.0f, fArr[2]);
        float fMax4 = Math.max(0.0f, fArr[3]);
        float fMax5 = Math.max(0.0f, fArr[4]);
        float fMax6 = Math.max(0.0f, fArr[5]);
        float fMax7 = Math.max(0.0f, fArr[6]);
        float fMax8 = Math.max(0.0f, fArr[7]);
        int iCeil = (int) Math.ceil(f * 2.0f);
        int iCeil2 = iCeil + ((int) Math.ceil(Math.max(0.0f, -f2)));
        int iCeil3 = iCeil + ((int) Math.ceil(Math.max(0.0f, f2)));
        int iCeil4 = iCeil + ((int) Math.ceil(Math.max(0.0f, -f3)));
        int iCeil5 = iCeil + ((int) Math.ceil(Math.max(0.0f, f3)));
        float fMax9 = Math.max(fMax + fMax3, fMax7 + fMax5);
        float fMax10 = Math.max(fMax2 + fMax8, fMax4 + fMax6);
        int iCeil6 = ((int) Math.ceil(fMax9 + 2.0f)) + iCeil2;
        int i4 = iCeil6 + iCeil3;
        int iCeil7 = ((int) Math.ceil(fMax10 + 2.0f)) + iCeil4;
        int i5 = iCeil7 + iCeil5;
        if (bitmapArr != null) {
            i2 = 0;
            if (bitmapArr.length == 1) {
                i3 = 1;
            }
            if (i3 == 0 && (bitmap = bitmapArr[i2]) != null && !bitmap.isRecycled() && bitmap.isMutable() && bitmap.getWidth() == i4 && bitmap.getHeight() == i5 && bitmap.getConfig() == Bitmap.Config.ARGB_8888) {
                bitmap.eraseColor(i2);
                bitmapCreateBitmap = bitmap;
            } else {
                bitmapCreateBitmap = null;
            }
            if (bitmapCreateBitmap == null) {
                bitmapCreateBitmap = Bitmap.createBitmap(i4, i5, Bitmap.Config.ARGB_8888);
            }
            if (i3 != 0) {
                bitmapArr[0] = bitmapCreateBitmap;
            }
            Bitmap bitmap2 = bitmapCreateBitmap;
            ninePathRenderer.draw(new Canvas(bitmapCreateBitmap), new RectF(iCeil2, iCeil4, iCeil6, iCeil7), new float[]{fMax, fMax2, fMax3, fMax4, fMax5, fMax6, fMax7, fMax8});
            float fMax11 = Math.max(fMax, fMax7);
            float fMax12 = Math.max(fMax3, fMax5);
            float fMax13 = Math.max(fMax2, fMax4);
            float fMax14 = Math.max(fMax8, fMax6);
            int iClamp = MathUtils.clamp(((int) Math.ceil(fMax11)) + iCeil2, 1, i4 - 2);
            int iClamp2 = MathUtils.clamp((i4 - iCeil3) - ((int) Math.ceil(fMax12)), iClamp + 1, i4 - 1);
            int iClamp3 = MathUtils.clamp(((int) Math.ceil(fMax13)) + iCeil4, 1, i5 - 2);
            return new NinePatchDrawable(ApplicationLoader.applicationContext.getResources(), bitmap2, createNinePatchChunk(iClamp, iClamp2, iClamp3, MathUtils.clamp((i5 - iCeil5) - ((int) Math.ceil(fMax14)), iClamp3 + 1, i5 - 1), iCeil2, iCeil4, iCeil3, iCeil5, i).array(), new Rect(iCeil2, iCeil4, iCeil3, iCeil5), null);
        }
        i2 = 0;
        i3 = i2;
        if (i3 == 0) {
            bitmapCreateBitmap = null;
        }
        if (bitmapCreateBitmap == null) {
        }
        if (i3 != 0) {
        }
        Bitmap bitmap22 = bitmapCreateBitmap;
        ninePathRenderer.draw(new Canvas(bitmapCreateBitmap), new RectF(iCeil2, iCeil4, iCeil6, iCeil7), new float[]{fMax, fMax2, fMax3, fMax4, fMax5, fMax6, fMax7, fMax8});
        float fMax112 = Math.max(fMax, fMax7);
        float fMax122 = Math.max(fMax3, fMax5);
        float fMax132 = Math.max(fMax2, fMax4);
        float fMax142 = Math.max(fMax8, fMax6);
        int iClamp4 = MathUtils.clamp(((int) Math.ceil(fMax112)) + iCeil2, 1, i4 - 2);
        int iClamp22 = MathUtils.clamp((i4 - iCeil3) - ((int) Math.ceil(fMax122)), iClamp4 + 1, i4 - 1);
        int iClamp32 = MathUtils.clamp(((int) Math.ceil(fMax132)) + iCeil4, 1, i5 - 2);
        return new NinePatchDrawable(ApplicationLoader.applicationContext.getResources(), bitmap22, createNinePatchChunk(iClamp4, iClamp22, iClamp32, MathUtils.clamp((i5 - iCeil5) - ((int) Math.ceil(fMax142)), iClamp32 + 1, i5 - 1), iCeil2, iCeil4, iCeil3, iCeil5, i).array(), new Rect(iCeil2, iCeil4, iCeil3, iCeil5), null);
    }

    public static NinePatchDrawable createNinePatch(Bitmap bitmap, Rect rect, int i, int i2) {
        if (bitmap == null) {
            f$$ExternalSyntheticBUOutline1.m215m("bitmap == null");
            return null;
        }
        if (bitmap.isRecycled()) {
            f$$ExternalSyntheticBUOutline1.m215m("bitmap is recycled");
            return null;
        }
        if (i < 0 || i >= bitmap.getWidth() || i2 < 0 || i2 >= bitmap.getHeight()) {
            throw new IllegalArgumentException("center pixel is outside bitmap: (" + i + ", " + i2 + ") for " + bitmap.getWidth() + "x" + bitmap.getHeight());
        }
        return new NinePatchDrawable(ApplicationLoader.applicationContext.getResources(), bitmap, createNinePatchChunk(i, i + 1, i2, i2 + 1, rect.left, rect.top, rect.right, rect.bottom, bitmap.getPixel(i, i2)).array(), rect, null);
    }

    public static ByteBuffer createNinePatchChunk(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(84).order(ByteOrder.nativeOrder());
        byteBufferOrder.put((byte) 1);
        byteBufferOrder.put((byte) 2);
        byteBufferOrder.put((byte) 2);
        byteBufferOrder.put((byte) 9);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putInt(i5);
        byteBufferOrder.putInt(i7);
        byteBufferOrder.putInt(i6);
        byteBufferOrder.putInt(i8);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putInt(i);
        byteBufferOrder.putInt(i2);
        byteBufferOrder.putInt(i3);
        byteBufferOrder.putInt(i4);
        byteBufferOrder.putInt(1);
        byteBufferOrder.putInt(1);
        byteBufferOrder.putInt(1);
        byteBufferOrder.putInt(1);
        byteBufferOrder.putInt(i9);
        byteBufferOrder.putInt(1);
        byteBufferOrder.putInt(1);
        byteBufferOrder.putInt(1);
        byteBufferOrder.putInt(1);
        return byteBufferOrder;
    }
}
