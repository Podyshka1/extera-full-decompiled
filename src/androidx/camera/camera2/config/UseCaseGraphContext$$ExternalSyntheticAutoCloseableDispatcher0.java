package androidx.camera.camera2.config;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ void m24m(Object obj) throws Exception {
        if (obj instanceof AutoCloseable) {
            ((AutoCloseable) obj).close();
            return;
        }
        if (obj instanceof ExecutorService) {
            UseCaseGraphContext$$ExternalSyntheticAutoCloseableForwarder1.m25m((ExecutorService) obj);
            return;
        }
        if (obj instanceof TypedArray) {
            ((TypedArray) obj).recycle();
            return;
        }
        if (obj instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) obj).release();
        } else if (obj instanceof MediaDrm) {
            ((MediaDrm) obj).release();
        } else {
            UseCaseGraphContext$$ExternalSyntheticThrowIAE2.m26m(obj);
        }
    }
}
