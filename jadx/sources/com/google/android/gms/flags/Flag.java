package com.google.android.gms.flags;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Flag {
    private final int zza;
    private final String zzb;
    private final Object zzc;

    public static class BooleanFlag extends Flag {
        public BooleanFlag(int i, String str, Boolean bool) {
            super(i, str, bool, null);
        }
    }

    /* synthetic */ Flag(int i, String str, Object obj, zza zzaVar) {
        this.zza = i;
        this.zzb = str;
        this.zzc = obj;
        Singletons.flagRegistry().zza(this);
    }

    public static BooleanFlag define(int i, String str, Boolean bool) {
        return new BooleanFlag(i, str, bool);
    }
}
