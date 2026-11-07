package androidx.view;

import android.annotation.SuppressLint;
import androidx.arch.core.executor.ArchTaskExecutor;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\b\u0010\u0000\u001a\u00020\u0001H\u0001¨\u0006\u0002"}, d2 = {"isMainThread", _UrlKt.FRAGMENT_ENCODE_SET, "lifecycle-runtime"}, m862k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LifecycleRegistry_androidKt {
    @SuppressLint({"RestrictedApi"})
    public static final boolean isMainThread() {
        return ArchTaskExecutor.getInstance().isMainThread();
    }
}
