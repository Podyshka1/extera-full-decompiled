package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.collection.ArrayMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzma {
    private static final Map zza = new ArrayMap();

    public static synchronized void zza() {
        Map map = zza;
        Iterator it = map.values().iterator();
        if (it.hasNext()) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
            throw null;
        }
        map.clear();
    }
}
