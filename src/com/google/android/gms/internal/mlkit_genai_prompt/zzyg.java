package com.google.android.gms.internal.mlkit_genai_prompt;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.mlkit.genai.schema.guided.GenerableProvider;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.ServiceLoader;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzyg {
    private static final Lazy zzb = LazyKt.lazy(zzyf.zza);

    public static final Map zzb() {
        return (Map) zzb.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map zzc() {
        ServiceLoader serviceLoaderLoad = ServiceLoader.load(GenerableProvider.class, zzyg.class.getClassLoader());
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(serviceLoaderLoad, 10)), 16));
        Iterator it = serviceLoaderLoad.iterator();
        if (!it.hasNext()) {
            return linkedHashMap;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
        throw null;
    }
}
