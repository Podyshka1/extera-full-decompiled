package com.google.android.gms.internal.measurement;

import android.net.Uri;
import android.os.Process;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzsu {
    private static final AtomicLong zza = new AtomicLong();

    public static Uri zza(Uri uri) {
        int iMyPid = Process.myPid();
        long id = Thread.currentThread().getId();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long andIncrement = zza.getAndIncrement();
        int length = String.valueOf(iMyPid).length();
        int length2 = String.valueOf(id).length();
        StringBuilder sb = new StringBuilder(length + 15 + length2 + 1 + String.valueOf(jCurrentTimeMillis).length() + 1 + String.valueOf(andIncrement).length());
        sb.append(".mobstore_tmp-");
        sb.append(iMyPid);
        sb.append("-");
        sb.append(id);
        sb.append("-");
        sb.append(jCurrentTimeMillis);
        sb.append("-");
        sb.append(andIncrement);
        return uri.buildUpon().path(String.valueOf(uri.getPath()).concat(sb.toString())).build();
    }
}
