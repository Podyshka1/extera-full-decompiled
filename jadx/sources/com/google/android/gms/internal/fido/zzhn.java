package com.google.android.gms.internal.fido;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhn extends zzhp {
    private final String zza;

    zzhn(String str) {
        this.zza = str;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        int length;
        int length2;
        zzhp zzhpVar = (zzhp) obj;
        if (zzhp.zzd((byte) 96) != zzhpVar.zza()) {
            length = zzhpVar.zza();
            length2 = zzhp.zzd((byte) 96);
        } else {
            String str = this.zza;
            String str2 = ((zzhn) zzhpVar).zza;
            if (str.length() == str2.length()) {
                return str.compareTo(str2);
            }
            length = str2.length();
            length2 = str.length();
        }
        return length2 - length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzhn.class == obj.getClass()) {
            return this.zza.equals(((zzhn) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zzhp.zzd((byte) 96)), this.zza});
    }

    public final String toString() {
        return "\"" + this.zza + "\"";
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    protected final int zza() {
        return zzhp.zzd((byte) 96);
    }
}
