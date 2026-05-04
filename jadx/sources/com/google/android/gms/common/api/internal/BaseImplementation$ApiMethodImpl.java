package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseImplementation$ApiMethodImpl extends BasePendingResult implements BaseImplementation$ResultHolder {
    private final Api api;
    private final Api.AnyClientKey clientKey;

    private void setFailedResult(RemoteException remoteException) {
        setFailedResult(new Status(8, remoteException.getLocalizedMessage(), (PendingIntent) null));
    }

    protected abstract void doExecute(Api.AnyClient anyClient);

    public final Api getApi() {
        return this.api;
    }

    public final Api.AnyClientKey getClientKey() {
        return this.clientKey;
    }

    protected void onSetFailedResult(Result result) {
    }

    public final void run(Api.AnyClient anyClient) throws DeadObjectException {
        try {
            doExecute(anyClient);
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

    protected BaseImplementation$ApiMethodImpl(Api api, GoogleApiClient googleApiClient) {
        super((GoogleApiClient) Preconditions.checkNotNull(googleApiClient, "GoogleApiClient must not be null"));
        Preconditions.checkNotNull(api, "Api must not be null");
        this.clientKey = api.zab();
        this.api = api;
    }

    public final void setFailedResult(Status status) {
        Preconditions.checkArgument(!status.isSuccess(), "Failed result must not be success");
        Result resultCreateFailedResult = createFailedResult(status);
        setResult(resultCreateFailedResult);
        onSetFailedResult(resultCreateFailedResult);
    }
}
