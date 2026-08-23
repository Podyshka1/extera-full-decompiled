package com.google.zxing.qrcode;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.GradientDrawable;
import com.google.zxing.EncodeHintType;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.encoder.ByteMatrix;
import com.google.zxing.qrcode.encoder.Encoder;
import java.util.Arrays;
import java.util.Map;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.SvgHelper;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class QRCodeWriter {
    private int imageBlockX;
    private int imageBloks;
    private int imageSize;
    private ByteMatrix input;
    private int sideQuadSize;
    private float[] radii = new float[8];
    public boolean includeSideQuads = true;

    public Bitmap encode(String str, int i, int i2, Map<EncodeHintType, ?> map, Bitmap bitmap) {
        return encode(str, i, i2, map, bitmap, 1.0f, -1, -16777216);
    }

    public Bitmap encode(String str, int i, int i2, Map<EncodeHintType, ?> map, Bitmap bitmap, float f, int i3, int i4) {
        return encode(str, i, i2, map, bitmap, f, i3, i4, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0045 A[PHI: r4
  0x0045: PHI (r4v3 com.google.zxing.qrcode.decoder.ErrorCorrectionLevel) = 
  (r4v2 com.google.zxing.qrcode.decoder.ErrorCorrectionLevel)
  (r4v22 com.google.zxing.qrcode.decoder.ErrorCorrectionLevel)
 binds: [B:7:0x0018, B:12:0x0034] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Bitmap encode(String str, int i, int i2, Map<EncodeHintType, ?> map, Bitmap bitmap, float f, int i3, int i4, boolean z) {
        String str2;
        int i5;
        int i6;
        int i7;
        int i8;
        Bitmap bitmap2;
        Canvas canvas;
        Paint paint;
        GradientDrawable gradientDrawable;
        int i9;
        char c2;
        Bitmap bitmap3;
        Canvas canvas2;
        int i10;
        int i11;
        int i12;
        Paint paint2;
        Canvas canvas3;
        if (str.isEmpty()) {
            f$$ExternalSyntheticBUOutline1.m178m("Found empty contents");
            return null;
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
        }
        ErrorCorrectionLevel errorCorrectionLevelValueOf = ErrorCorrectionLevel.L;
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.ERROR_CORRECTION;
            if (map.containsKey(encodeHintType)) {
                errorCorrectionLevelValueOf = ErrorCorrectionLevel.valueOf(map.get(encodeHintType).toString());
            }
            EncodeHintType encodeHintType2 = EncodeHintType.MARGIN;
            if (map.containsKey(encodeHintType2)) {
                i5 = Integer.parseInt(map.get(encodeHintType2).toString());
                str2 = str;
            } else {
                str2 = str;
                i5 = 4;
            }
        }
        ByteMatrix matrix = Encoder.encode(str2, errorCorrectionLevelValueOf, map).getMatrix();
        this.input = matrix;
        if (matrix == null) {
            MethodWriter$$ExternalSyntheticBUOutline0.m863m();
            return null;
        }
        int width = matrix.getWidth();
        int height = this.input.getHeight();
        for (int i13 = 0; i13 < width && has(i13, 0); i13++) {
            this.sideQuadSize++;
        }
        int i14 = i5 * 2;
        int i15 = width + i14;
        int i16 = i14 + height;
        int iMin = Math.min(Math.max(i, i15) / i15, Math.max(i2, i16) / i16);
        int i17 = iMin * width;
        int i18 = i17 + 32;
        Bitmap bitmapCreateBitmap = (bitmap == null || bitmap.getWidth() != i18) ? Bitmap.createBitmap(i18, i18, Bitmap.Config.ARGB_8888) : bitmap;
        Canvas canvas4 = new Canvas(bitmapCreateBitmap);
        canvas4.drawColor(i3);
        Paint paint3 = new Paint(1);
        paint3.setColor(i4);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(0);
        gradientDrawable2.setCornerRadii(this.radii);
        int iRound = !z ? 0 : Math.round((i17 / 4.65f) / iMin);
        this.imageBloks = iRound;
        if (iRound % 2 != width % 2) {
            this.imageBloks = iRound + 1;
        }
        int i19 = this.imageBloks;
        this.imageBlockX = (width - i19) / 2;
        int i20 = (i19 * iMin) - 24;
        this.imageSize = i20;
        int i21 = (i18 - i20) / 2;
        int i22 = 16;
        if (this.includeSideQuads) {
            paint3.setColor(i4);
            canvas = canvas4;
            gradientDrawable = gradientDrawable2;
            i8 = i21;
            paint = paint3;
            bitmap2 = bitmapCreateBitmap;
            i7 = iMin;
            i9 = 0;
            c2 = 4;
            i6 = 1;
            drawSideQuadsGradient(canvas, paint, gradientDrawable, this.sideQuadSize, iMin, 16, i18, f, this.radii, i3, i4);
        } else {
            i6 = 1;
            i7 = iMin;
            i8 = i21;
            bitmap2 = bitmapCreateBitmap;
            canvas = canvas4;
            paint = paint3;
            gradientDrawable = gradientDrawable2;
            i9 = 0;
            c2 = 4;
        }
        int i23 = Color.alpha(i3) == 0 ? i6 : i9;
        float f2 = (i7 / 2.0f) * f;
        int i24 = 16;
        int i25 = i9;
        while (i25 < height) {
            int i26 = i9;
            while (i26 < width) {
                boolean zHas = has(i26, i25);
                float[] fArr = this.radii;
                Paint paint4 = paint;
                if (zHas) {
                    Arrays.fill(fArr, f2);
                    if (has(i26, i25 - 1)) {
                        float[] fArr2 = this.radii;
                        fArr2[i6] = 0.0f;
                        fArr2[i9] = 0.0f;
                        fArr2[3] = 0.0f;
                        fArr2[2] = 0.0f;
                    }
                    if (has(i26, i25 + 1)) {
                        float[] fArr3 = this.radii;
                        fArr3[7] = 0.0f;
                        fArr3[6] = 0.0f;
                        fArr3[5] = 0.0f;
                        fArr3[c2] = 0.0f;
                    }
                    if (has(i26 - 1, i25)) {
                        float[] fArr4 = this.radii;
                        fArr4[i6] = 0.0f;
                        fArr4[i9] = 0.0f;
                        fArr4[7] = 0.0f;
                        fArr4[6] = 0.0f;
                    }
                    if (has(i26 + 1, i25)) {
                        float[] fArr5 = this.radii;
                        fArr5[3] = 0.0f;
                        fArr5[2] = 0.0f;
                        fArr5[5] = 0.0f;
                        fArr5[c2] = 0.0f;
                    }
                    gradientDrawable.setColor(i4);
                    gradientDrawable.setBounds(i22, i24, i22 + i7, i24 + i7);
                    gradientDrawable.draw(canvas);
                    paint2 = paint4;
                    canvas3 = canvas;
                    i12 = i23;
                } else {
                    Arrays.fill(fArr, 0.0f);
                    int i27 = i26 - 1;
                    int i28 = i25 - 1;
                    if (has(i27, i28) && has(i27, i25) && has(i26, i28)) {
                        canvas2 = canvas;
                        float[] fArr6 = this.radii;
                        fArr6[i6] = f2;
                        fArr6[i9] = f2;
                        i10 = i6;
                    } else {
                        canvas2 = canvas;
                        i10 = i9;
                    }
                    int i29 = i10;
                    int i30 = i26 + 1;
                    if (has(i30, i28) && has(i30, i25) && has(i26, i28)) {
                        float[] fArr7 = this.radii;
                        fArr7[3] = f2;
                        fArr7[2] = f2;
                        i11 = i6;
                    } else {
                        i11 = i29;
                    }
                    i12 = i23;
                    int i31 = i25 + 1;
                    if (has(i27, i31) && has(i27, i25) && has(i26, i31)) {
                        float[] fArr8 = this.radii;
                        fArr8[7] = f2;
                        fArr8[6] = f2;
                        i11 = i6;
                    }
                    if (has(i30, i31) && has(i30, i25) && has(i26, i31)) {
                        float[] fArr9 = this.radii;
                        fArr9[5] = f2;
                        fArr9[c2] = f2;
                        i11 = i6;
                    }
                    if (i11 == 0 || i12 != 0) {
                        paint2 = paint4;
                        canvas3 = canvas2;
                    } else {
                        int i32 = i22 + i7;
                        int i33 = i24 + i7;
                        Canvas canvas5 = canvas2;
                        canvas5.drawRect(i22, i24, i32, i33, paint4);
                        canvas3 = canvas5;
                        paint2 = paint4;
                        gradientDrawable.setColor(i3);
                        gradientDrawable.setBounds(i22, i24, i32, i33);
                        gradientDrawable.draw(canvas3);
                    }
                }
                i26++;
                i22 += i7;
                canvas = canvas3;
                paint = paint2;
                i23 = i12;
            }
            i25++;
            i24 += i7;
            paint = paint;
            i22 = 16;
        }
        Canvas canvas6 = canvas;
        if (z) {
            bitmap3 = null;
            String res = AndroidUtilities.readRes(null, C2573R.raw.qr_logo);
            int i34 = this.imageSize;
            Bitmap bitmap4 = SvgHelper.getBitmap(res, i34, i34, (boolean) i9);
            float f3 = i8;
            canvas6.drawBitmap(bitmap4, f3, f3, (Paint) null);
            bitmap4.recycle();
        } else {
            bitmap3 = null;
        }
        canvas6.setBitmap(bitmap3);
        return bitmap2;
    }

    public static void drawSideQuadsGradient(Canvas canvas, Paint paint, GradientDrawable gradientDrawable, float f, float f2, int i, float f3, float f4, float[] fArr, int i2, int i3) {
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        boolean z = Color.alpha(i2) == 0;
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadii(fArr);
        Path path = new Path();
        RectF rectF = new RectF();
        for (int i4 = 0; i4 < 3; i4++) {
            if (i4 == 0) {
                f8 = i;
                f7 = f8;
            } else {
                if (i4 == 1) {
                    f6 = i;
                    f5 = (f3 - (f * f2)) - f6;
                } else {
                    f5 = i;
                    f6 = (f3 - (f * f2)) - f5;
                }
                f7 = f5;
                f8 = f6;
            }
            if (z) {
                float f10 = (f - 1.0f) * f2;
                f9 = 1.0f;
                rectF.set(f7 + f2, f8 + f2, f7 + f10, f10 + f8);
                float f11 = ((f * f2) / 4.0f) * f4;
                path.reset();
                path.addRoundRect(rectF, f11, f11, Path.Direction.CW);
                path.close();
                canvas.save();
                canvas.clipPath(path, Region.Op.DIFFERENCE);
            } else {
                f9 = 1.0f;
            }
            float f12 = f * f2;
            Arrays.fill(fArr, (f12 / 3.0f) * f4);
            gradientDrawable.setColor(i3);
            gradientDrawable.setBounds((int) f7, (int) f8, (int) (f7 + f12), (int) (f8 + f12));
            gradientDrawable.draw(canvas);
            float f13 = f8;
            float f14 = f7 + f2;
            float f15 = f13 + f2;
            float f16 = (f - f9) * f2;
            float f17 = f7 + f16;
            float f18 = f16 + f13;
            canvas.drawRect(f14, f15, f17, f18, paint);
            if (z) {
                canvas.restore();
            }
            if (!z) {
                Arrays.fill(fArr, (f12 / 4.0f) * f4);
                gradientDrawable.setColor(i2);
                gradientDrawable.setBounds((int) f14, (int) f15, (int) f17, (int) f18);
                gradientDrawable.draw(canvas);
            }
            float f19 = (f - 2.0f) * f2;
            Arrays.fill(fArr, (f19 / 4.0f) * f4);
            gradientDrawable.setColor(i3);
            float f20 = 2.0f * f2;
            gradientDrawable.setBounds((int) (f7 + f20), (int) (f13 + f20), (int) (f7 + f19), (int) (f13 + f19));
            gradientDrawable.draw(canvas);
        }
    }

    public static void drawSideQuads(Canvas canvas, float f, float f2, Paint paint, float f3, float f4, int i, float f5, float f6, float[] fArr, boolean z) {
        float f7;
        float f8;
        Path path = new Path();
        for (int i2 = 0; i2 < 3; i2++) {
            if (i2 == 0) {
                f7 = i;
                f8 = f7;
            } else if (i2 == 1) {
                f8 = i;
                f7 = (f5 - (f3 * f4)) - f8;
            } else {
                f7 = i;
                f8 = (f5 - (f3 * f4)) - f7;
            }
            float f9 = f7 + f;
            float f10 = f8 + f2;
            if (z) {
                RectF rectF = AndroidUtilities.rectTmp;
                float f11 = (f3 - 1.0f) * f4;
                rectF.set(f9 + f4, f10 + f4, f9 + f11, f11 + f10);
                float f12 = ((f3 * f4) / 4.0f) * f6;
                path.reset();
                path.addRoundRect(rectF, f12, f12, Path.Direction.CW);
                path.close();
                canvas.save();
                canvas.clipPath(path, Region.Op.DIFFERENCE);
            }
            float f13 = f3 * f4;
            float f14 = (f13 / 3.0f) * f6;
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.set(f9, f10, f9 + f13, f13 + f10);
            canvas.drawRoundRect(rectF2, f14, f14, paint);
            if (z) {
                canvas.restore();
            }
            float f15 = (f3 - 2.0f) * f4;
            float f16 = (f15 / 4.0f) * f6;
            float f17 = 2.0f * f4;
            rectF2.set(f9 + f17, f17 + f10, f9 + f15, f10 + f15);
            canvas.drawRoundRect(rectF2, f16, f16, paint);
        }
    }

    private boolean has(int i, int i2) {
        int i3 = this.imageBlockX;
        if (i >= i3) {
            int i4 = this.imageBloks;
            if (i < i3 + i4 && i2 >= i3 && i2 < i3 + i4) {
                return false;
            }
        }
        if ((i < this.sideQuadSize || i >= this.input.getWidth() - this.sideQuadSize) && i2 < this.sideQuadSize) {
            return false;
        }
        return (i >= this.sideQuadSize || i2 < this.input.getHeight() - this.sideQuadSize) && i >= 0 && i2 >= 0 && i < this.input.getWidth() && i2 < this.input.getHeight() && this.input.get(i, i2) == 1;
    }

    public int getImageSize() {
        return this.imageSize;
    }
}
