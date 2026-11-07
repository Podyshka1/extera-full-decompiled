package com.google.android.gms.internal.measurement;

import android.net.Uri;
import com.google.common.collect.ImmutableList;
import java.io.File;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzsb {
    private final Uri.Builder zza = new Uri.Builder().scheme("file").authority(_UrlKt.FRAGMENT_ENCODE_SET).path("/");
    private final ImmutableList.Builder zzb = ImmutableList.builder();

    public final zzsb zza(File file) {
        this.zza.path(file.getAbsolutePath());
        return this;
    }

    public final Uri zzb() {
        return this.zza.encodedFragment(zzsp.zzb(this.zzb.build())).build();
    }

    public /* synthetic */ zzsb(byte[] bArr) {
    }
}
