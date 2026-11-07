package com.google.android.recaptcha.internal;

import org.chromium.net.UrlResponseInfo;

/* JADX INFO: loaded from: classes5.dex */
public final class zznb {
    private final UrlResponseInfo zza;
    private final byte[] zzb;

    public zznb(UrlResponseInfo urlResponseInfo, byte[] bArr) {
        this.zza = urlResponseInfo;
        this.zzb = bArr;
    }

    public final byte[] zza() {
        return this.zzb;
    }

    public final void zzb() throws zzhg {
        try {
            int httpStatusCode = this.zza.getHttpStatusCode();
            if (httpStatusCode != 200) {
                if (httpStatusCode == 400) {
                    throw new zzhg(zzhf.zzc, zzhe.zzK, null, null, 12, null);
                }
                if (httpStatusCode != 503 && httpStatusCode != 403) {
                    if (httpStatusCode == 404) {
                    }
                }
            }
        } catch (Exception e) {
            throw new zzhg(zzhf.zzc, zzhe.zzv, e.getMessage(), null, 8, null);
        }
    }

    public final int zzc() {
        return this.zza.getHttpStatusCode();
    }

    public final zzagx zzd(zzagx zzagxVar) throws zzhg {
        zzb();
        byte[] bArr = this.zzb;
        if (bArr.length == 0) {
            throw new zzhg(zzhf.zzc, zzhe.zzJ, null, null, 12, null);
        }
        try {
            return (zzagx) zzagxVar.zzB().zzb(bArr);
        } catch (Exception e) {
            throw new zzhg(zzhf.zzc, zzhe.zzl, e.getMessage(), null, 8, null);
        }
    }
}
