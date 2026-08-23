package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class zae extends zai {
    protected final BaseImplementation$ApiMethodImpl zaa;

    public zae(int i, BaseImplementation$ApiMethodImpl baseImplementation$ApiMethodImpl) {
        super(i);
        this.zaa = (BaseImplementation$ApiMethodImpl) Preconditions.checkNotNull(baseImplementation$ApiMethodImpl, "Null methods are not runnable.");
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zac(Status status) {
        try {
            this.zaa.setFailedResult(status);
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zad(Exception exc) {
        String simpleName = exc.getClass().getSimpleName();
        String localizedMessage = exc.getLocalizedMessage();
        StringBuilder sb = new StringBuilder(simpleName.length() + 2 + String.valueOf(localizedMessage).length());
        sb.append(simpleName);
        sb.append(": ");
        sb.append(localizedMessage);
        try {
            this.zaa.setFailedResult(new Status(10, sb.toString()));
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zae(zaaa zaaaVar, boolean z) {
        zaaaVar.zaa(this.zaa, z);
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zaf(zabk zabkVar) throws DeadObjectException {
        try {
            this.zaa.run(zabkVar.zaf());
        } catch (RuntimeException e) {
            zad(e);
        }
    }
}
