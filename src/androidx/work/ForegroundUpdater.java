package androidx.work;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public interface ForegroundUpdater {
    ListenableFuture setForegroundAsync(Context context, UUID uuid, ForegroundInfo foregroundInfo);
}
