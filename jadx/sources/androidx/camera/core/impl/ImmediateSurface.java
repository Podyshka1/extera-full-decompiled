package androidx.camera.core.impl;

import android.util.Size;
import android.view.Surface;
import androidx.camera.core.impl.utils.futures.Futures;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes4.dex */
public final class ImmediateSurface extends DeferrableSurface {
    private final Surface mSurface;

    public ImmediateSurface(Surface surface, Size size, int i) {
        super(size, i);
        this.mSurface = surface;
    }

    @Override // androidx.camera.core.impl.DeferrableSurface
    public ListenableFuture provideSurface() {
        return Futures.immediateFuture(this.mSurface);
    }
}
