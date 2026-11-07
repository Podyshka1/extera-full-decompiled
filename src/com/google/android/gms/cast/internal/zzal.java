package com.google.android.gms.cast.internal;

import com.google.android.gms.common.api.Api;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes4.dex */
public final class zzal {
    public static final Api.ClientKey zza = new Api.ClientKey();
    public static final Api.ClientKey zzb = new Api.ClientKey();
    public static final Api.ClientKey zzc = new Api.ClientKey();
    public static final Api.ClientKey zzd = new Api.ClientKey();

    static {
        new Api.ClientKey();
        new Api.ClientKey();
        Charset charset = StandardCharsets.UTF_8;
        String.format("%s%s", "receiver-", MVEL.VERSION_SUB);
        int i = CastUtils.zza;
    }
}
