package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Arrays;
import java.util.UUID;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzxh {
    public static final String zza() {
        zzxp zzxpVar = zzxp.zza;
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strSubstring = UUID.randomUUID().toString().substring(0, 8);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return String.format("cache_%s_%s", Arrays.copyOf(new Object[]{Long.valueOf(jCurrentTimeMillis), strSubstring}, 2));
    }
}
