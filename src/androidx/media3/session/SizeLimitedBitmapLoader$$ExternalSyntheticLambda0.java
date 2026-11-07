package androidx.media3.session;

import android.graphics.Bitmap;
import com.google.common.base.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class SizeLimitedBitmapLoader$$ExternalSyntheticLambda0 implements Function {
    public final /* synthetic */ SizeLimitedBitmapLoader f$0;

    public /* synthetic */ SizeLimitedBitmapLoader$$ExternalSyntheticLambda0(SizeLimitedBitmapLoader sizeLimitedBitmapLoader) {
        this.f$0 = sizeLimitedBitmapLoader;
    }

    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        return this.f$0.scaleIfNecessary((Bitmap) obj);
    }
}
