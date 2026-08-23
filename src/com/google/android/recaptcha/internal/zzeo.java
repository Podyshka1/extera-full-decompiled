package com.google.android.recaptcha.internal;

import android.content.Context;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes5.dex */
public final class zzeo implements zzen {
    private final Context zzb;
    private final Map zzc = MapsKt.mapOf(TuplesKt.m1081to(2, "activity"), TuplesKt.m1081to(3, "phone"), TuplesKt.m1081to(4, "input_method"), TuplesKt.m1081to(5, MediaStreamTrack.AUDIO_TRACK_KIND));

    public zzeo(Context context) {
        this.zzb = context;
    }

    @Override // com.google.android.recaptcha.internal.zzen
    /* JADX INFO: renamed from: cs */
    public final /* synthetic */ Object mo476cs(Object[] objArr) {
        return zzel.zza(this, objArr);
    }

    @Override // com.google.android.recaptcha.internal.zzen
    public final Object zza(Object... objArr) throws zzae {
        Object obj = objArr[0];
        if (true != (obj instanceof Integer)) {
            obj = null;
        }
        Integer num = (Integer) obj;
        if (num == null) {
            throw new zzae(4, 5, null);
        }
        Object obj2 = this.zzc.get(Integer.valueOf(num.intValue()));
        if (obj2 != null) {
            return this.zzb.getSystemService((String) obj2);
        }
        throw new zzae(4, 4, null);
    }
}
