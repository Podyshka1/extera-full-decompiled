package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
final class zzpb {
    private final zzle zza = new zzle();
    private final String zzb;
    private volatile Logger zzc;

    public zzpb(Class cls) {
        this.zzb = cls.getName();
    }

    public final Logger zza() {
        Logger logger = this.zzc;
        if (logger != null) {
            return logger;
        }
        synchronized (this.zza) {
            try {
                Logger logger2 = this.zzc;
                if (logger2 != null) {
                    return logger2;
                }
                Logger logger3 = Logger.getLogger(this.zzb);
                this.zzc = logger3;
                return logger3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
