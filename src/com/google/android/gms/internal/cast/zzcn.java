package com.google.android.gms.internal.cast;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcn {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final Logger zzb = new Logger("AnalyticsConsent");
    private final zzgb zzc;
    private final long zzd;
    private final Handler zze;

    public zzcn(Context context, long j) {
        Api api = zzga.zza;
        this.zzc = new zzfu(context, new zzfz());
        this.zzd = j;
        this.zze = new zzfk(Looper.getMainLooper());
    }

    public static /* synthetic */ void zzb(TaskCompletionSource taskCompletionSource, Exception exc) {
        zzb.m312d(exc, "get checkbox consent failed", new Object[0]);
        taskCompletionSource.trySetResult(Boolean.FALSE);
    }

    public static /* synthetic */ void zzc(TaskCompletionSource taskCompletionSource) {
        zzb.m311d("get checkbox consent timed out", new Object[0]);
        taskCompletionSource.trySetResult(Boolean.FALSE);
    }

    public final synchronized Task zza() {
        final TaskCompletionSource taskCompletionSource;
        taskCompletionSource = new TaskCompletionSource();
        this.zzc.zza().addOnSuccessListener(new OnSuccessListener() { // from class: com.google.android.gms.internal.cast.zzcm
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final /* synthetic */ void onSuccess(Object obj) {
                zzfv zzfvVar = (zzfv) obj;
                int i = zzcn.$r8$clinit;
                boolean z = false;
                if (zzfvVar != null && zzfvVar.zza()) {
                    z = true;
                }
                taskCompletionSource.trySetResult(Boolean.valueOf(z));
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: com.google.android.gms.internal.cast.zzck
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final /* synthetic */ void onFailure(Exception exc) {
                zzcn.zzb(taskCompletionSource, exc);
            }
        });
        this.zze.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.cast.zzcl
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzcn.zzc(taskCompletionSource);
            }
        }, this.zzd * 1000);
        return taskCompletionSource.getTask();
    }
}
