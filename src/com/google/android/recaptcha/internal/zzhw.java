package com.google.android.recaptcha.internal;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes5.dex */
final class zzhw implements ThreadFactory {
    private final String zza;
    private final Integer zzb;
    private final ThreadFactory zzc = Executors.defaultThreadFactory();

    public zzhw(String str, Integer num) {
        this.zza = str;
        this.zzb = num;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.zzc.newThread(runnable);
        Integer num = this.zzb;
        if (num != null) {
            threadNewThread.setPriority(num.intValue());
        }
        String str = this.zza;
        String name = threadNewThread.getName();
        StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(name).length());
        sb.append(str);
        sb.append("_");
        sb.append(name);
        threadNewThread.setName(sb.toString());
        return threadNewThread;
    }
}
