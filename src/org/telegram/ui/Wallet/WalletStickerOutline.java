package org.telegram.ui.Wallet;

import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import org.telegram.messenger.DispatchQueue;

/* JADX INFO: loaded from: classes8.dex */
abstract class WalletStickerOutline {
    private static final int[] RIM = new int[129];
    private static DispatchQueue queue;

    public static int lineBufferSize() {
        return 288;
    }

    public static DispatchQueue queue() {
        if (queue == null) {
            queue = new DispatchQueue("walletStickerOutline");
        }
        return queue;
    }

    static {
        int i = 0;
        while (true) {
            int[] iArr = RIM;
            if (i >= iArr.length) {
                return;
            }
            iArr[i] = (int) (Math.max(0.0d, Math.min(1.0d, 7.5d - Math.sqrt(i))) * 255.0d);
            i++;
        }
    }

    public static void compose(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int i = 0;
        while (true) {
            if (i >= 288) {
                break;
            }
            int i2 = i * 288;
            int iMin = 8;
            for (int i3 = 0; i3 < 288; i3++) {
                int i4 = i2 + i3;
                iMin = (iArr[i4] >>> 24) >= 128 ? 0 : Math.min(iMin + 1, 8);
                iArr3[i4] = iMin;
            }
            int iMin2 = 8;
            for (int i5 = 287; i5 >= 0; i5--) {
                int i6 = i2 + i5;
                iMin2 = iArr3[i6] == 0 ? 0 : Math.min(iMin2 + 1, 8);
                if (iMin2 < iArr3[i6]) {
                    iArr3[i6] = iMin2;
                }
            }
            i++;
        }
        for (int i7 = 0; i7 < 288; i7++) {
            for (int i8 = 0; i8 < 288; i8++) {
                iArr4[i8] = iArr3[(i8 * 288) + i7];
            }
            for (int i9 = 0; i9 < 288; i9++) {
                int length = RIM.length - 1;
                int iMin3 = Math.min(287, i9 + 8);
                for (int iMax = Math.max(0, i9 - 8); iMax <= iMin3; iMax++) {
                    int i10 = iArr4[iMax];
                    if (i10 < 8) {
                        int i11 = iMax - i9;
                        int i12 = (i10 * i10) + (i11 * i11);
                        if (i12 < length) {
                            length = i12;
                        }
                    }
                }
                iArr3[(i9 * 288) + i7] = RIM[length];
            }
        }
        for (int i13 = 0; i13 < 82944; i13++) {
            int i14 = iArr[i13];
            iArr2[i13] = over(i14, Math.max(iArr3[i13], i14 >>> 24));
        }
    }

    private static int over(int i, int i2) {
        int i3 = i >>> 24;
        if (i3 == 255) {
            return i;
        }
        if (i3 == 0) {
            return (i2 << 24) | 16777215;
        }
        int i4 = (i2 * (255 - i3)) / 255;
        int i5 = i3 + i4;
        int i6 = i4 * 255;
        return ((((i & 255) * i3) + i6) / i5) | (i5 << 24) | ((((((i >> 16) & 255) * i3) + i6) / i5) << 16) | ((((((i >> 8) & 255) * i3) + i6) / i5) << 8);
    }

    public static boolean covered(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 82944; i2 += 7) {
            if ((iArr[i2] >>> 24) > 0) {
                i++;
            }
        }
        return i > 592;
    }

    public static Bitmap shadow(int[] iArr) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr, 288, 288, Bitmap.Config.ARGB_8888);
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateBitmap, 128, 128, true);
        Bitmap bitmapExtractAlpha = bitmapCreateScaledBitmap.extractAlpha();
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(176, 176, Bitmap.Config.ALPHA_8);
        Paint paint = new Paint(1);
        paint.setMaskFilter(new BlurMaskFilter(5.0f, BlurMaskFilter.Blur.NORMAL));
        new Canvas(bitmapCreateBitmap2).drawBitmap(bitmapExtractAlpha, 24.0f, 24.0f, paint);
        bitmapCreateBitmap.recycle();
        bitmapCreateScaledBitmap.recycle();
        bitmapExtractAlpha.recycle();
        return bitmapCreateBitmap2;
    }
}
