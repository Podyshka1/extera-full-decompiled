package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public final class zacs<R extends Result> extends TransformedResult<R> implements ResultCallback<R> {
    private final WeakReference zag;
    private final zacr zah;
    private zacs zab = null;
    private PendingResult zad = null;
    private final Object zae = new Object();
    private Status zaf = null;
    private boolean zai = false;

    public zacs(WeakReference weakReference) {
        Preconditions.checkNotNull(weakReference, "GoogleApiClient reference must not be null");
        this.zag = weakReference;
        GoogleApiClient googleApiClient = (GoogleApiClient) weakReference.get();
        this.zah = new zacr(this, googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
    }

    private final void zaj() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zak, reason: merged with bridge method [inline-methods] */
    public final void zac(Status status) {
        synchronized (this.zae) {
            this.zaf = status;
            zal(status);
        }
    }

    private final void zal(Status status) {
        synchronized (this.zae) {
            try {
                if (zam()) {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(Preconditions.checkNotNull(null));
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final boolean zam() {
        return false;
    }

    private static final void zan(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                Log.w("TransformedResultImpl", "Unable to release ".concat(String.valueOf(result)), e);
            }
        }
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final void onResult(Result result) {
        synchronized (this.zae) {
            try {
                if (!result.getStatus().isSuccess()) {
                    zac(result.getStatus());
                    zan(result);
                } else if (zam()) {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(Preconditions.checkNotNull(null));
                    throw null;
                }
            } finally {
            }
        }
    }

    public final <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        zacs zacsVar;
        synchronized (this.zae) {
            Preconditions.checkState(true, "Cannot call then() twice.");
            Preconditions.checkState(true, "Cannot call then() and andFinally() on the same TransformedResult.");
            zacsVar = new zacs(this.zag);
            this.zab = zacsVar;
            zaj();
        }
        return zacsVar;
    }

    public final void zaa(PendingResult pendingResult) {
        synchronized (this.zae) {
            this.zad = pendingResult;
            zaj();
        }
    }

    public final void zab() {
    }

    public final /* synthetic */ zacs zae() {
        return this.zab;
    }

    public final /* synthetic */ Object zaf() {
        return this.zae;
    }
}
