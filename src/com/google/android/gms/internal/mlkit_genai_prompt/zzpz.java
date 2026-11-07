package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.config.EncoderConfig;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpz implements EncoderConfig {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final ObjectEncoder zzb = zzpy.zza;
    private final Map zzc = new HashMap();
    private final Map zzd = new HashMap();
    private final ObjectEncoder zze = zzb;

    @Override // com.google.firebase.encoders.config.EncoderConfig
    public final /* bridge */ /* synthetic */ EncoderConfig registerEncoder(Class cls, ObjectEncoder objectEncoder) {
        this.zzc.put(cls, objectEncoder);
        this.zzd.remove(cls);
        return this;
    }

    public final zzqa zza() {
        return new zzqa(new HashMap(this.zzc), new HashMap(this.zzd), this.zze);
    }
}
