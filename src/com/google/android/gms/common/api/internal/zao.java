package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.PendingIntent;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zao implements Runnable {
    final /* synthetic */ zap zaa;
    private final zam zab;

    public zao(zap zapVar, zam zamVar) {
        Objects.requireNonNull(zapVar);
        this.zaa = zapVar;
        this.zab = zamVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zap zapVar = this.zaa;
        if (zapVar.zaa) {
            zam zamVar = this.zab;
            ConnectionResult connectionResultZab = zamVar.zab();
            if (connectionResultZab.hasResolution()) {
                zapVar.mLifecycleFragment.startActivityForResult(GoogleApiActivity.zaa(zapVar.getActivity(), (PendingIntent) Preconditions.checkNotNull(connectionResultZab.getResolution()), zamVar.zaa(), false), 1);
                return;
            }
            Activity activity = zapVar.getActivity();
            int errorCode = connectionResultZab.getErrorCode();
            GoogleApiAvailability googleApiAvailability = zapVar.zac;
            if (googleApiAvailability.getErrorResolutionIntent(activity, errorCode, null) != null) {
                googleApiAvailability.zab(zapVar.getActivity(), zapVar.mLifecycleFragment, connectionResultZab.getErrorCode(), 2, zapVar);
            } else if (connectionResultZab.getErrorCode() != 18) {
                zapVar.zah(connectionResultZab, zamVar.zaa());
            } else {
                googleApiAvailability.zaf(zapVar.getActivity().getApplicationContext(), new zan(this, googleApiAvailability.zae(zapVar.getActivity(), zapVar)));
            }
        }
    }
}
