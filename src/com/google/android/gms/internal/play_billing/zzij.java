package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes.dex */
public final class zzij extends zzfi implements zzgm {
    private static final zzij zzb;

    static {
        zzij zzijVar = new zzij();
        zzb = zzijVar;
        zzfi.zzw(zzij.class, zzijVar);
    }

    private zzij() {
    }

    public static zzij zzd() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.play_billing.zzfi
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        zzii zziiVar = null;
        if (i2 == 2) {
            return zzfi.zzt(zzb, "\u0004\u0000", null);
        }
        if (i2 == 3) {
            return new zzij();
        }
        if (i2 == 4) {
            return new zzih(zziiVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
