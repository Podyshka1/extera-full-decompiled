package com.google.android.gms.internal.fido;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhh extends zzhp {
    private final boolean zza;

    zzhh(boolean z) {
        this.zza = z;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzhp zzhpVar = (zzhp) obj;
        if (zzhp.zzd((byte) -32) != zzhpVar.zza()) {
            return zzhp.zzd((byte) -32) - zzhpVar.zza();
        }
        return (true != this.zza ? 20 : 21) - (true != ((zzhh) zzhpVar).zza ? 20 : 21);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && zzhh.class == obj.getClass() && this.zza == ((zzhh) obj).zza;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zzhp.zzd((byte) -32)), Boolean.valueOf(this.zza)});
    }

    public final String toString() {
        return Boolean.toString(this.zza);
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    protected final int zza() {
        return zzhp.zzd((byte) -32);
    }
}
