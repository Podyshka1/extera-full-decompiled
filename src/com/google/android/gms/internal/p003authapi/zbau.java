package com.google.android.gms.internal.p003authapi;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.android.dx.io.Opcodes;
import com.google.android.gms.auth.api.identity.zbv;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;

/* JADX INFO: loaded from: classes4.dex */
public final class zbau extends GmsClient {
    private final Bundle zba;

    public zbau(Context context, Looper looper, zbv zbvVar, ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, Opcodes.REM_INT_LIT16, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.zba = new Bundle();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.identity.internal.ISignInService");
        return iInterfaceQueryLocalInterface instanceof zbv ? (zbv) iInterfaceQueryLocalInterface : new zbv(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Feature[] getApiFeatures() {
        return zbav.zbx;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Bundle getGetServiceRequestExtraArgs() {
        return this.zba;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 17895000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getServiceDescriptor() {
        return "com.google.android.gms.auth.api.identity.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServiceAction() {
        return "com.google.android.gms.auth.api.identity.service.signin.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final boolean getUseDynamicLookup() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final boolean usesClientTelemetry() {
        return true;
    }
}
