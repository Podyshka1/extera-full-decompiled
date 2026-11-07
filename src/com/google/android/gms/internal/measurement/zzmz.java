package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.hash.Hashing;
import com.google.common.io.BaseEncoding;
import java.io.File;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmz {
    private final BaseEncoding zza = BaseEncoding.base64Url();
    private final Supplier zzb;
    private final Supplier zzc;

    public zzmz(final zzacr zzacrVar, final String str, String str2) {
        this.zzb = Suppliers.memoize(new Supplier() { // from class: com.google.android.gms.internal.measurement.zzmy
            @Override // com.google.common.base.Supplier
            public final /* synthetic */ Object get() {
                return this.zza.zzb(zzacrVar);
            }
        });
        final String str3 = _UrlKt.FRAGMENT_ENCODE_SET;
        this.zzc = Suppliers.memoize(new Supplier(str, str3) { // from class: com.google.android.gms.internal.measurement.zzmx
            private final /* synthetic */ String zzb;
            private final /* synthetic */ String zzc = _UrlKt.FRAGMENT_ENCODE_SET;

            @Override // com.google.common.base.Supplier
            public final /* synthetic */ Object get() {
                return this.zza.zzc(this.zzb, this.zzc);
            }
        });
    }

    public final File zza() {
        String str = (String) this.zzb.get();
        String str2 = (String) this.zzc.get();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length() + 3);
        sb.append(str);
        sb.append("/");
        sb.append(str2);
        sb.append(".pb");
        return new File(sb.toString());
    }

    public final /* synthetic */ String zzb(zzacr zzacrVar) {
        return this.zza.encode(zzacrVar.zzm());
    }

    public final /* synthetic */ String zzc(String str, String str2) {
        return this.zza.encode(Hashing.murmur3_128().newHasher().putBytes(str.getBytes()).putByte((byte) 0).putBytes(_UrlKt.FRAGMENT_ENCODE_SET.getBytes()).hash().asBytes());
    }
}
