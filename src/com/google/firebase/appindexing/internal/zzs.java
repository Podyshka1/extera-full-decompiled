package com.google.firebase.appindexing.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation$ResultHolder;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.internal.icing.zzaa;
import com.google.android.gms.internal.icing.zzae;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzs extends TaskApiCall<zzae, Void> implements BaseImplementation$ResultHolder<Status> {
    protected TaskCompletionSource<Void> zzb;

    public zzs() {
        super(null, false, 9004);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient, TaskCompletionSource<Void> taskCompletionSource) {
        this.zzb = taskCompletionSource;
        zza((zzaa) ((zzae) anyClient).getService());
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation$ResultHolder
    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        Status status = (Status) obj;
        boolean zIsSuccess = status.isSuccess();
        TaskCompletionSource<Void> taskCompletionSource = this.zzb;
        if (zIsSuccess) {
            taskCompletionSource.setResult(null);
        } else {
            taskCompletionSource.setException(zzaf.zza(status, "User Action indexing error, please try again."));
        }
    }

    public abstract void zza(zzaa zzaaVar);
}
