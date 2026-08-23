package com.google.android.gms.cast.framework.media;

import android.util.LruCache;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
final class zzr extends LruCache {
    final /* synthetic */ MediaQueue zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzr(MediaQueue mediaQueue, int i) {
        super(i);
        this.zza = mediaQueue;
    }

    @Override // android.util.LruCache
    protected final /* bridge */ /* synthetic */ void entryRemoved(boolean z, Object obj, Object obj2, Object obj3) {
        Integer num = (Integer) obj;
        if (z) {
            Preconditions.checkNotNull(this.zza.zze);
            this.zza.zze.add(num);
        }
    }
}
