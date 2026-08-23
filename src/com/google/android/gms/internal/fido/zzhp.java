package com.google.android.gms.internal.fido;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzhp implements Comparable {
    private final zzhp zzc(Class cls) throws zzho {
        if (cls.isInstance(this)) {
            return (zzhp) cls.cast(this);
        }
        throw new zzho("Expected a " + cls.getName() + " value, but got " + getClass().getName());
    }

    static int zzd(byte b) {
        return (b >> 5) & 7;
    }

    public static zzhk zzg(long j) {
        return new zzhk(j);
    }

    public static zzhn zzi(String str) {
        return new zzhn(str);
    }

    public static zzhp zzk(InputStream inputStream) {
        return zzhq.zza(inputStream, new zzhs(inputStream));
    }

    protected abstract int zza();

    protected int zzb() {
        return 0;
    }

    public final zzhi zze() {
        return (zzhi) zzc(zzhi.class);
    }

    public final zzhk zzf() {
        return (zzhk) zzc(zzhk.class);
    }

    public final zzhm zzh() {
        return (zzhm) zzc(zzhm.class);
    }

    public static zzhp zzj(byte... bArr) {
        bArr.getClass();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(Arrays.copyOf(bArr, bArr.length));
        return zzhq.zza(byteArrayInputStream, new zzhs(byteArrayInputStream));
    }
}
