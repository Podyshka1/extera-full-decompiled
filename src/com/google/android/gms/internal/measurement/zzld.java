package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzld {
    private static final ConcurrentMap zza = new ConcurrentHashMap();

    public static void zza() {
        Iterator it = zza.values().iterator();
        if (it.hasNext()) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
            throw null;
        }
    }
}
