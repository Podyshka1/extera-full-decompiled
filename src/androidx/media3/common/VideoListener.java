package androidx.media3.common;

import android.graphics.SurfaceTexture;

/* JADX INFO: loaded from: classes3.dex */
public interface VideoListener {
    boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture);

    void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture);
}
