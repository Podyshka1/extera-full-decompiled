package com.google.android.gms.internal.mlkit_language_id_common;

import android.content.Context;
import android.os.SystemClock;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLogging;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import com.google.android.gms.tasks.OnFailureListener;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class zzlk {
    private final TelemetryLoggingClient zza;
    private final AtomicLong zzb = new AtomicLong(-1);

    zzlk(Context context, String str) {
        this.zza = TelemetryLogging.getClient(context, TelemetryLoggingOptions.builder().setApi("mlkit:natural_language").build());
    }

    public static zzlk zza(Context context) {
        return new zzlk(context, "mlkit:natural_language");
    }

    final /* synthetic */ void zzb(long j, Exception exc) {
        this.zzb.set(j);
    }

    public final synchronized void zzc(int i, int i2, long j, long j2) {
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.zzb.get() != -1 && jElapsedRealtime - this.zzb.get() <= TimeUnit.MINUTES.toMillis(30L)) {
            return;
        }
        this.zza.log(new TelemetryData(0, Arrays.asList(new MethodInvocation(i, i2, 0, j, j2, null, null, 0)))).addOnFailureListener(new OnFailureListener() { // from class: com.google.android.gms.internal.mlkit_language_id_common.zzlj
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                this.zza.zzb(jElapsedRealtime, exc);
            }
        });
    }
}
