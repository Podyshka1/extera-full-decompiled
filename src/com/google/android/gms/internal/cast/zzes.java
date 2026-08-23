package com.google.android.gms.internal.cast;

import android.view.Display;
import com.google.android.gms.cast.CastRemoteDisplay;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes4.dex */
final class zzes implements CastRemoteDisplay.CastRemoteDisplaySessionResult {
    private final Status zza;
    private final Display zzb;

    public zzes(Display display) {
        this.zza = Status.RESULT_SUCCESS;
        this.zzb = display;
    }

    public zzes(Status status) {
        this.zza = status;
        this.zzb = null;
    }

    @Override // com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplaySessionResult
    public final Display getPresentationDisplay() {
        return this.zzb;
    }

    @Override // com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplaySessionResult, com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.zza;
    }
}
