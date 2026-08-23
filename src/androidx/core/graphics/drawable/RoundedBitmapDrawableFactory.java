package androidx.core.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class RoundedBitmapDrawableFactory {
    public static RoundedBitmapDrawable create(Resources resources, Bitmap bitmap) {
        return new RoundedBitmapDrawable21(resources, bitmap);
    }
}
