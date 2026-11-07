package com.google.android.gms.flags;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public abstract class Flag<T> {
    private final int zza;
    private final String zzb;
    private final T zzc;

    @Deprecated
    public static class BooleanFlag extends Flag<Boolean> {
        public BooleanFlag(int i, String str, Boolean bool) {
            super(i, str, bool, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ Flag(int i, String str, Object obj, zza zzaVar) {
        this.zza = i;
        this.zzb = str;
        this.zzc = obj;
        Singletons.flagRegistry().zza(this);
    }

    @Deprecated
    public static BooleanFlag define(int i, String str, Boolean bool) {
        return new BooleanFlag(i, str, bool);
    }
}
