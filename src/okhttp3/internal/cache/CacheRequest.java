package okhttp3.internal.cache;

import okio.Sink;

/* JADX INFO: loaded from: classes5.dex */
public interface CacheRequest {
    void abort();

    Sink body();
}
