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
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.SvgHelper;

/* JADX INFO: loaded from: classes5.dex */
public final class QRCodeWriter {
    private int imageBlockX;
    private int imageBloks;
    private int imageSize;
    private ByteMatrix input;
    private int sideQuadSize;
    private float[] radii = new float[8];
    public boolean includeSideQuads = true;

    public Bitmap encode(String str, int i, int i2, Map map, Bitmap bitmap) {
        return encode(str, i, i2, map, bitmap, 1.0f, -1, -16777216);
    }

    public Bitmap encode(String str, int i, int i2, Map map, Bitmap bitmap, float f, int i3, int i4) {
        return encode(str, i, i2, map, bitmap, f, i3, i4, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0045 A[PHI: r4
  0x0045: PHI (r4v3 com.google.zxing.qrcode.decoder.ErrorCorrectionLevel) = 
  (r4v2 com.google.zxing.qrcode.decoder.ErrorCorrectionLevel)
  (r4v27 com.google.zxing.qrcode.decoder.ErrorCorrectionLevel)
 binds: [B:7:0x0018, B:12:0x0034] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Bitmap encode(String str, int i, int i2, Map map, Bitmap bitmap, float f, int i3, int i4, boolean z) {
        String str2;
        int i5;
        int i6;
        int i7;
        int i8;
        Bitmap bitmap2;
        Paint paint;
        GradientDrawable gradientDrawable;
        Canvas canvas;
        char c;
        Canvas canvas2;
        int i9;
        int i10;
        int i11;
        int i12;
        Canvas canvas3;
        Paint paint2;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
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
            throw new IllegalStateException();
        }
        int width = matrix.getWidth();
        int height = this.input.getHeight();
        int i13 = 0;
        for (int i14 = 0; i14 < width && has(i14, 0); i14++) {
            this.sideQuadSize++;
        }
        int i15 = i5 * 2;
        int i16 = width + i15;
        int i17 = i15 + height;
        int iMin = Math.min(Math.max(i, i16) / i16, Math.max(i2, i17) / i17);
        int i18 = iMin * width;
        int i19 = i18 + 32;
        Bitmap bitmapCreateBitmap = (bitmap == null || bitmap.getWidth() != i19) ? Bitmap.createBitmap(i19, i19, Bitmap.Config.ARGB_8888) : bitmap;
        Canvas canvas4 = new Canvas(bitmapCreateBitmap);
        canvas4.drawColor(i3);
        Paint paint3 = new Paint(1);
        paint3.setColor(i4);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(0);
        gradientDrawable2.setCornerRadii(this.radii);
        int iRound = !z ? 0 : Math.round((i18 / 4.65f) / iMin);
        this.imageBloks = iRound;
        if (iRound % 2 != width % 2) {
            this.imageBloks = iRound + 1;
        }
        int i20 = this.imageBloks;
        this.imageBlockX = (width - i20) / 2;
        int i21 = (i20 * iMin) - 24;
        this.imageSize = i21;
        int i22 = (i19 - i21) / 2;
        int i23 = 16;
        if (this.includeSideQuads) {
            paint3.setColor(i4);
            canvas = canvas4;
            i8 = i22;
            paint = paint3;
            bitmap2 = bitmapCreateBitmap;
            i7 = iMin;
            c = 4;
            i6 = 1;
            gradientDrawable = gradientDrawable2;
            drawSideQuadsGradient(canvas, paint, gradientDrawable, this.sideQuadSize, iMin, 16, i19, f, this.radii, i3, i4);
        } else {
            i6 = 1;
            i7 = iMin;
            i8 = i22;
            bitmap2 = bitmapCreateBitmap;
            paint = paint3;
            gradientDrawable = gradientDrawable2;
            canvas = canvas4;
            c = 4;
        }
        int i24 = Color.alpha(i3) == 0 ? i6 : 0;
        float f2 = (i7 / 2.0f) * f;
        int i25 = 16;
        int i26 = 0;
        while (i26 < height) {
            int i27 = i23;
            int i28 = i13;
            while (i28 < width) {
                int i29 = i13;
                if (has(i28, i26)) {
                    Arrays.fill(this.radii, f2);
                    if (has(i28, i26 - 1)) {
                        float[] fArr = this.radii;
                        fArr[i6] = 0.0f;
                        fArr[i29] = 0.0f;
                        fArr[3] = 0.0f;
                        fArr[2] = 0.0f;
                    }
                    if (has(i28, i26 + 1)) {
                        float[] fArr2 = this.radii;
                        fArr2[7] = 0.0f;
                        fArr2[6] = 0.0f;
                        fArr2[5] = 0.0f;
                        fArr2[c] = 0.0f;
                    }
                    if (has(i28 - 1, i26)) {
                        float[] fArr3 = this.radii;
                        fArr3[i6] = 0.0f;
                        fArr3[i29] = 0.0f;
                        fArr3[7] = 0.0f;
                        fArr3[6] = 0.0f;
                    }
                    if (has(i28 + 1, i26)) {
                        float[] fArr4 = this.radii;
                        fArr4[3] = 0.0f;
                        fArr4[2] = 0.0f;
                        fArr4[5] = 0.0f;
                        fArr4[c] = 0.0f;
                    }
                    gradientDrawable.setColor(i4);
                    gradientDrawable.setBounds(i27, i25, i27 + i7, i25 + i7);
                    gradientDrawable.draw(canvas);
                    paint2 = paint;
                    canvas3 = canvas;
                    i11 = i24;
                } else {
                    Paint paint4 = paint;
                    Arrays.fill(this.radii, 0.0f);
                    int i30 = i28 - 1;
                    int i31 = i26 - 1;
                    if (has(i30, i31) && has(i30, i26) && has(i28, i31)) {
                        canvas2 = canvas;
                        float[] fArr5 = this.radii;
                        fArr5[i6] = f2;
                        fArr5[i29] = f2;
                        i9 = i6;
                    } else {
                        canvas2 = canvas;
                        i9 = i29;
                    }
                    int i32 = i9;
                    int i33 = i28 + 1;
                    if (has(i33, i31) && has(i33, i26) && has(i28, i31)) {
                        float[] fArr6 = this.radii;
                        fArr6[3] = f2;
                        fArr6[2] = f2;
                        i10 = i6;
                    } else {
                        i10 = i32;
                    }
                    i11 = i24;
                    int i34 = i26 + 1;
                    if (has(i30, i34) && has(i30, i26) && has(i28, i34)) {
                        float[] fArr7 = this.radii;
                        fArr7[7] = f2;
                        fArr7[6] = f2;
                        i10 = i6;
                    }
                    if (has(i33, i34) && has(i33, i26) && has(i28, i34)) {
                        float[] fArr8 = this.radii;
                        fArr8[5] = f2;
                        fArr8[c] = f2;
                        i12 = i6;
                    } else {
                        i12 = i10;
                    }
                    if (i12 == 0 || i11 != 0) {
                        canvas3 = canvas2;
                        paint2 = paint4;
                    } else {
                        int i35 = i27 + i7;
                        int i36 = i25 + i7;
                        canvas2.drawRect(i27, i25, i35, i36, paint4);
                        canvas3 = canvas2;
                        paint2 = paint4;
                        gradientDrawable.setColor(i3);
                        gradientDrawable.setBounds(i27, i25, i35, i36);
                        gradientDrawable.draw(canvas3);
                    }
                }
                i28++;
                i27 += i7;
                canvas = canvas3;
                paint = paint2;
                i24 = i11;
                i13 = i29;
            }
            i26++;
            i25 += i7;
            paint = paint;
            i13 = i13;
            i23 = 16;
        }
        Canvas canvas5 = canvas;
        boolean z2 = i13;
        if (z) {
            String res = AndroidUtilities.readRes(null, C2888R.raw.qr_logo);
            int i37 = this.imageSize;
            Bitmap bitmap3 = SvgHelper.getBitmap(res, i37, i37, z2);
            float f3 = i8;
            canvas5.drawBitmap(bitmap3, f3, f3, (Paint) null);
            bitmap3.recycle();
        }
        canvas5.setBitmap(null);
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
