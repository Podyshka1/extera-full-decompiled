package com.google.mlkit.common.sdkinternal;

import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes.dex */
public class Cleaner {
    private final ReferenceQueue zza = new ReferenceQueue();
    private final Set zzb = DesugarCollections.synchronizedSet(new HashSet());

    /* JADX INFO: loaded from: classes5.dex */
    public interface Cleanable {
        void clean();
    }

    private Cleaner() {
    }

    public static Cleaner create() {
        Cleaner cleaner = new Cleaner();
        cleaner.register(cleaner, new Runnable() { // from class: com.google.mlkit.common.sdkinternal.zza
            @Override // java.lang.Runnable
            public final void run() {
            }
        });
        final ReferenceQueue referenceQueue = cleaner.zza;
        final Set set = cleaner.zzb;
        Thread thread = new Thread(new Runnable() { // from class: com.google.mlkit.common.sdkinternal.zzb
            @Override // java.lang.Runnable
            public final void run() {
                ReferenceQueue referenceQueue2 = referenceQueue;
                while (!set.isEmpty()) {
                    try {
                        ((zzd) referenceQueue2.remove()).clean();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }, "MlKitCleaner");
        thread.setDaemon(true);
        thread.start();
        return cleaner;
    }

    public Cleanable register(Object obj, Runnable runnable) {
        zzd zzdVar = new zzd(obj, this.zza, this.zzb, runnable, null);
        this.zzb.add(zzdVar);
        return zzdVar;
    }
}
