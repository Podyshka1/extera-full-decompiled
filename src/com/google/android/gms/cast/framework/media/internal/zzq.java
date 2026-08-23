package com.google.android.gms.cast.framework.media.internal;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes4.dex */
final class zzq implements zza {
    final /* synthetic */ zzv zza;

    zzq(zzv zzvVar) {
        this.zza = zzvVar;
    }

    @Override // com.google.android.gms.cast.framework.media.internal.zza
    public final void zza(Bitmap bitmap) {
        int i = zzv.$r8$clinit;
        Bitmap bitmap2 = null;
        if (bitmap != null) {
            int width = bitmap.getWidth();
            float f = width;
            int i2 = (int) (((9.0f * f) / 16.0f) + 0.5f);
            float f2 = (i2 - r3) / 2.0f;
            RectF rectF = new RectF(0.0f, f2, f, bitmap.getHeight() + f2);
            Bitmap.Config config = bitmap.getConfig();
            if (config == null) {
                config = Bitmap.Config.ARGB_8888;
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, i2, config);
            new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, (Rect) null, rectF, (Paint) null);
            bitmap2 = bitmapCreateBitmap;
        }
        this.zza.zzp(bitmap2, 0);
    }
}
