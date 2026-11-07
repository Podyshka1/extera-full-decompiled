package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzcj {
    public static PendingResult zza(Task task, final zzcg zzcgVar, final zzcg zzcgVar2) {
        final zzcf zzcfVar = new zzcf(zzcgVar2);
        task.addOnSuccessListener(new OnSuccessListener(zzcgVar) { // from class: com.google.android.gms.internal.cast.zzci
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final /* synthetic */ void onSuccess(Object obj) {
                int i = CastSession.zza;
                this.zza.setResult(new Status(0));
            }
        }).addOnFailureListener(new OnFailureListener(zzcgVar2) { // from class: com.google.android.gms.internal.cast.zzch
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final /* synthetic */ void onFailure(Exception exc) {
                Status status = new Status(8, "unknown error");
                if (exc instanceof ApiException) {
                    ApiException apiException = (ApiException) exc;
                    status = new Status(apiException.getStatusCode(), apiException.getMessage());
                }
                zzcf zzcfVar2 = this.zza;
                int i = CastSession.zza;
                zzcfVar2.setResult(status);
            }
        });
        return zzcfVar;
    }
}
