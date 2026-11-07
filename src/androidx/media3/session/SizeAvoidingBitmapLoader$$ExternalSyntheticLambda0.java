package androidx.media3.session;

import android.graphics.Bitmap;
import com.google.common.base.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class SizeAvoidingBitmapLoader$$ExternalSyntheticLambda0 implements Function {
    public final /* synthetic */ SizeAvoidingBitmapLoader f$0;

    public /* synthetic */ SizeAvoidingBitmapLoader$$ExternalSyntheticLambda0(SizeAvoidingBitmapLoader sizeAvoidingBitmapLoader) {
        this.f$0 = sizeAvoidingBitmapLoader;
    }

    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        return this.f$0.scaleIfNecessary((Bitmap) obj);
    }
}
