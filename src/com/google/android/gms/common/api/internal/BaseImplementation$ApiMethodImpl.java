package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseImplementation$ApiMethodImpl<R extends Result, A extends Api.AnyClient> extends BasePendingResult<R> implements BaseImplementation$ResultHolder<R> {
    private final Api<?> api;
    private final Api.AnyClientKey<A> clientKey;

    private void setFailedResult(RemoteException remoteException) {
        setFailedResult(new Status(8, remoteException.getLocalizedMessage(), (PendingIntent) null));
    }

    public abstract void doExecute(A a2);

    public final Api<?> getApi() {
        return this.api;
    }

    public final Api.AnyClientKey<A> getClientKey() {
        return this.clientKey;
    }

    public void onSetFailedResult(R r) {
    }

    public final void run(A a2) throws DeadObjectException {
        try {
            doExecute(a2);
        } catch (DeadObjectException e) {
            setFailedResult(e);
            throw e;
        } catch (RemoteException e2) {
            setFailedResult(e2);
        }
    }

    public /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Result) obj);
    }

    public BaseImplementation$ApiMethodImpl(Api<?> api, GoogleApiClient googleApiClient) {
        super((GoogleApiClient) Preconditions.checkNotNull(googleApiClient, "GoogleApiClient must not be null"));
        Preconditions.checkNotNull(api, "Api must not be null");
        this.clientKey = api.zac();
        this.api = api;
    }

    public final void setFailedResult(Status status) {
        Preconditions.checkArgument(!status.isSuccess(), "Failed result must not be success");
        R rCreateFailedResult = createFailedResult(status);
        setResult((Result) rCreateFailedResult);
        onSetFailedResult(rCreateFailedResult);
    }
}
