package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
final class zzdm implements ThreadFactory {
    private final String zza;
    private final AtomicInteger zzb = new AtomicInteger(1);

    public zzdm(String str) {
        this.zza = str.concat("-thread-");
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int andIncrement = this.zzb.getAndIncrement();
        int length = String.valueOf(andIncrement).length();
        String str = this.zza;
        StringBuilder sb = new StringBuilder(str.length() + length);
        sb.append(str);
        sb.append(andIncrement);
        return new Thread(runnable, sb.toString());
    }
}
