package com.google.android.gms.identitycredentials.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.identitycredentials.internal.IIdentityCredentialService;
import com.google.android.gms.internal.identity_credentials.zze;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class IdentityCredentialClientImpl extends GmsClient {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IdentityCredentialClientImpl(Context context, Looper looper, ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener connectionFailedListener) {
        super(context, looper, 352, clientSettings, connectionCallbacks, connectionFailedListener);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(looper, "looper");
        Intrinsics.checkNotNullParameter(clientSettings, "clientSettings");
        Intrinsics.checkNotNullParameter(connectionCallbacks, "connectionCallbacks");
        Intrinsics.checkNotNullParameter(connectionFailedListener, "connectionFailedListener");
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public Feature[] getApiFeatures() {
        Feature[] ALL_FEATURES = zze.zzo;
        Intrinsics.checkNotNullExpressionValue(ALL_FEATURES, "ALL_FEATURES");
        return ALL_FEATURES;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public int getMinApkVersion() {
        return 17895000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected String getServiceDescriptor() {
        return "com.google.android.gms.identitycredentials.internal.IIdentityCredentialService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected String getStartServiceAction() {
        return "com.google.android.gms.identitycredentials.service.START";
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
    public IIdentityCredentialService createServiceInterface(IBinder iBinder) {
        Intrinsics.checkNotNullParameter(iBinder, "iBinder");
        return IIdentityCredentialService.Stub.asInterface(iBinder);
    }
}
