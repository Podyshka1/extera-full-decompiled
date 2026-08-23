package com.google.firebase;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.StatusExceptionMapper;

/* JADX INFO: loaded from: classes5.dex */
public class FirebaseExceptionMapper implements StatusExceptionMapper {
    @Override // com.google.android.gms.common.api.internal.StatusExceptionMapper
    public final Exception getException(Status status) {
        return status.getStatusCode() == 8 ? new FirebaseException(status.zza()) : new FirebaseApiNotAvailableException(status.zza());
    }
}
