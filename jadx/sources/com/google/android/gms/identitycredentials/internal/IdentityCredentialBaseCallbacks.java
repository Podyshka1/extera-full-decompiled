package com.google.android.gms.identitycredentials.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.identitycredentials.ClearCreationOptionsResponse;
import com.google.android.gms.identitycredentials.ClearCredentialStateResponse;
import com.google.android.gms.identitycredentials.ClearExportResponse;
import com.google.android.gms.identitycredentials.ClearRegistryResponse;
import com.google.android.gms.identitycredentials.CreateCredentialHandle;
import com.google.android.gms.identitycredentials.CreateCredentialResponse;
import com.google.android.gms.identitycredentials.CredentialTransferCapabilities;
import com.google.android.gms.identitycredentials.ExportCredentialsToDeviceSetupResponse;
import com.google.android.gms.identitycredentials.ImportCredentialsForDeviceSetupResponse;
import com.google.android.gms.identitycredentials.PendingGetCredentialHandle;
import com.google.android.gms.identitycredentials.PendingImportCredentialsHandle;
import com.google.android.gms.identitycredentials.RegisterCreationOptionsResponse;
import com.google.android.gms.identitycredentials.RegisterExportResponse;
import com.google.android.gms.identitycredentials.RegistrationResponse;
import com.google.android.gms.identitycredentials.SignalCredentialStateResponse;
import com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class IdentityCredentialBaseCallbacks extends IIdentityCredentialCallbacks.Stub {
    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onClearCreationOptions(Status status, ClearCreationOptionsResponse clearCreationOptionsResponse) {
        Intrinsics.checkNotNullParameter(status, "status");
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onClearCredentialState(Status status, ClearCredentialStateResponse clearCredentialStateResponse) {
        Intrinsics.checkNotNullParameter(status, "status");
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onClearExport(Status status, ClearExportResponse clearExportResponse) {
        Intrinsics.checkNotNullParameter(status, "status");
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onClearRegistry(Status status, ClearRegistryResponse clearRegistryResponse) {
        Intrinsics.checkNotNullParameter(status, "status");
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onCreateCredential(Status status, CreateCredentialResponse createCredentialResponse) {
        Intrinsics.checkNotNullParameter(status, "status");
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onCreateCredentialV2(Status status, CreateCredentialHandle createCredentialHandle) {
        Intrinsics.checkNotNullParameter(status, "status");
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onExportCredentialsToDeviceSetup(Status status, ExportCredentialsToDeviceSetupResponse exportCredentialsToDeviceSetupResponse) {
        Intrinsics.checkNotNullParameter(status, "status");
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onGetCredential(Status status, PendingGetCredentialHandle pendingGetCredentialHandle) {
        Intrinsics.checkNotNullParameter(status, "status");
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onGetCredentialTransferCapabilities(Status status, CredentialTransferCapabilities credentialTransferCapabilities) {
        Intrinsics.checkNotNullParameter(status, "status");
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onImportCredentials(Status status, PendingImportCredentialsHandle pendingImportCredentialsHandle) {
        Intrinsics.checkNotNullParameter(status, "status");
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onImportCredentialsForDeviceSetup(Status status, ImportCredentialsForDeviceSetupResponse importCredentialsForDeviceSetupResponse) {
        Intrinsics.checkNotNullParameter(status, "status");
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onRegisterCreationOptions(Status status, RegisterCreationOptionsResponse registerCreationOptionsResponse) {
        Intrinsics.checkNotNullParameter(status, "status");
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onRegisterCredentials(Status status, RegistrationResponse registrationResponse) {
        Intrinsics.checkNotNullParameter(status, "status");
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onRegisterExport(Status status, RegisterExportResponse registerExportResponse) {
        Intrinsics.checkNotNullParameter(status, "status");
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onSignalCredentialState(Status status, SignalCredentialStateResponse signalCredentialStateResponse) {
        Intrinsics.checkNotNullParameter(status, "status");
        throw new UnsupportedOperationException();
    }
}
