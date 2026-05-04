package com.google.android.gms.auth.blockstore.restorecredential.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.internal.auth_blockstore.zzab;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class RestoreCredentialClientImpl extends GmsClient {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RestoreCredentialClientImpl(Context context, Looper looper, ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener connectionFailedListener) {
        super(context, looper, 381, clientSettings, connectionCallbacks, connectionFailedListener);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(looper, "looper");
        Intrinsics.checkNotNullParameter(clientSettings, "clientSettings");
        Intrinsics.checkNotNullParameter(connectionCallbacks, "connectionCallbacks");
        Intrinsics.checkNotNullParameter(connectionFailedListener, "connectionFailedListener");
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public Feature[] getApiFeatures() {
        Feature[] ALL_FEATURES = zzab.zzl;
        Intrinsics.checkNotNullExpressionValue(ALL_FEATURES, "ALL_FEATURES");
        return ALL_FEATURES;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public int getMinApkVersion() {
        return 17895000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected String getServiceDescriptor() {
        return "com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected String getStartServiceAction() {
        return "com.google.android.gms.auth.blockstore.restorecredential.service.START_RESTORE_CRED";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected boolean getUseDynamicLookup() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public boolean usesClientTelemetry() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public IRestoreCredentialService createServiceInterface(IBinder binder) {
        Intrinsics.checkNotNullParameter(binder, "binder");
        IRestoreCredentialService iRestoreCredentialServiceAsInterface = IRestoreCredentialService.Stub.asInterface(binder);
        Intrinsics.checkNotNullExpressionValue(iRestoreCredentialServiceAsInterface, "asInterface(...)");
        return iRestoreCredentialServiceAsInterface;
    }
}
