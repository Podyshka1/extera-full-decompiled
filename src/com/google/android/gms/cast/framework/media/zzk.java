package com.google.android.gms.cast.framework.media;

import android.util.LruCache;
import com.google.android.gms.common.internal.Preconditions;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzk extends LruCache {
    final /* synthetic */ MediaQueue zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzk(MediaQueue mediaQueue, int i) {
        super(i);
        Objects.requireNonNull(mediaQueue);
        this.zza = mediaQueue;
    }

    @Override // android.util.LruCache
    public final /* bridge */ /* synthetic */ void entryRemoved(boolean z, Object obj, Object obj2, Object obj3) {
        Integer num = (Integer) obj;
        if (z) {
            List list = this.zza.zze;
            Preconditions.checkNotNull(list);
            list.add(num);
        }
    }
}
