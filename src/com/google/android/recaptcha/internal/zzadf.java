package com.google.android.recaptcha.internal;

import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class zzadf {
    public static final zzadf zza;
    public static final zzadf zzb;
    public static final zzadf zzc;
    private final zzade zzd;

    static {
        new zzadf(new zzadg());
        new zzadf(new zzadk());
        zza = new zzadf(new zzadm());
        zzb = new zzadf(new zzadl());
        new zzadf(new zzadh());
        new zzadf(new zzadj());
        zzc = new zzadf(new zzadi());
    }

    public zzadf(zzadn zzadnVar) {
        this.zzd = !zztf.zza() ? "The Android Project".equals(System.getProperty("java.vendor")) ? new zzadb(zzadnVar, null) : new zzadc(zzadnVar, null) : new zzadd(zzadnVar, null);
    }

    public static List zza(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Provider provider = Security.getProvider(str);
            if (provider != null) {
                arrayList.add(provider);
            }
        }
        return arrayList;
    }

    public final Object zzb(String str) {
        return this.zzd.zza(str);
    }
}
