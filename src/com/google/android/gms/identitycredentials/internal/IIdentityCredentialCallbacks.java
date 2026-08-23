package com.google.android.gms.identitycredentials.internal;

import android.os.IInterface;
import android.os.Parcel;
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
import com.google.android.gms.internal.identity_credentials.zzb;
import com.google.android.gms.internal.identity_credentials.zzc;

/* JADX INFO: loaded from: classes4.dex */
public interface IIdentityCredentialCallbacks extends IInterface {

    public static abstract class Stub extends zzb implements IIdentityCredentialCallbacks {
        public Stub() {
            super("com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks");
        }

        @Override // com.google.android.gms.internal.identity_credentials.zzb
        protected boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case 1:
                    Status status = (Status) zzc.zza(parcel, Status.CREATOR);
                    PendingGetCredentialHandle pendingGetCredentialHandle = (PendingGetCredentialHandle) zzc.zza(parcel, PendingGetCredentialHandle.CREATOR);
                    enforceNoDataAvail(parcel);
                    onGetCredential(status, pendingGetCredentialHandle);
                    return true;
                case 2:
                    Status status2 = (Status) zzc.zza(parcel, Status.CREATOR);
                    RegistrationResponse registrationResponse = (RegistrationResponse) zzc.zza(parcel, RegistrationResponse.CREATOR);
                    enforceNoDataAvail(parcel);
                    onRegisterCredentials(status2, registrationResponse);
                    return true;
                case 3:
                    Status status3 = (Status) zzc.zza(parcel, Status.CREATOR);
                    ClearRegistryResponse clearRegistryResponse = (ClearRegistryResponse) zzc.zza(parcel, ClearRegistryResponse.CREATOR);
                    enforceNoDataAvail(parcel);
                    onClearRegistry(status3, clearRegistryResponse);
                    return true;
                case 4:
                    Status status4 = (Status) zzc.zza(parcel, Status.CREATOR);
                    PendingImportCredentialsHandle pendingImportCredentialsHandle = (PendingImportCredentialsHandle) zzc.zza(parcel, PendingImportCredentialsHandle.CREATOR);
                    enforceNoDataAvail(parcel);
                    onImportCredentials(status4, pendingImportCredentialsHandle);
                    return true;
                case 5:
                    Status status5 = (Status) zzc.zza(parcel, Status.CREATOR);
                    RegisterExportResponse registerExportResponse = (RegisterExportResponse) zzc.zza(parcel, RegisterExportResponse.CREATOR);
                    enforceNoDataAvail(parcel);
                    onRegisterExport(status5, registerExportResponse);
                    return true;
                case 6:
                    Status status6 = (Status) zzc.zza(parcel, Status.CREATOR);
                    CreateCredentialResponse createCredentialResponse = (CreateCredentialResponse) zzc.zza(parcel, CreateCredentialResponse.CREATOR);
                    enforceNoDataAvail(parcel);
                    onCreateCredential(status6, createCredentialResponse);
                    return true;
                case 7:
                    Status status7 = (Status) zzc.zza(parcel, Status.CREATOR);
                    CreateCredentialHandle createCredentialHandle = (CreateCredentialHandle) zzc.zza(parcel, CreateCredentialHandle.CREATOR);
                    enforceNoDataAvail(parcel);
                    onCreateCredentialV2(status7, createCredentialHandle);
                    return true;
                case 8:
                    Status status8 = (Status) zzc.zza(parcel, Status.CREATOR);
                    RegisterCreationOptionsResponse registerCreationOptionsResponse = (RegisterCreationOptionsResponse) zzc.zza(parcel, RegisterCreationOptionsResponse.CREATOR);
                    enforceNoDataAvail(parcel);
                    onRegisterCreationOptions(status8, registerCreationOptionsResponse);
                    return true;
                case 9:
                    Status status9 = (Status) zzc.zza(parcel, Status.CREATOR);
                    ClearCredentialStateResponse clearCredentialStateResponse = (ClearCredentialStateResponse) zzc.zza(parcel, ClearCredentialStateResponse.CREATOR);
                    enforceNoDataAvail(parcel);
                    onClearCredentialState(status9, clearCredentialStateResponse);
                    return true;
                case 10:
                    Status status10 = (Status) zzc.zza(parcel, Status.CREATOR);
                    SignalCredentialStateResponse signalCredentialStateResponse = (SignalCredentialStateResponse) zzc.zza(parcel, SignalCredentialStateResponse.CREATOR);
                    enforceNoDataAvail(parcel);
                    onSignalCredentialState(status10, signalCredentialStateResponse);
                    return true;
                case 11:
                    Status status11 = (Status) zzc.zza(parcel, Status.CREATOR);
                    ClearExportResponse clearExportResponse = (ClearExportResponse) zzc.zza(parcel, ClearExportResponse.CREATOR);
                    enforceNoDataAvail(parcel);
                    onClearExport(status11, clearExportResponse);
                    return true;
                case 12:
                    Status status12 = (Status) zzc.zza(parcel, Status.CREATOR);
                    ImportCredentialsForDeviceSetupResponse importCredentialsForDeviceSetupResponse = (ImportCredentialsForDeviceSetupResponse) zzc.zza(parcel, ImportCredentialsForDeviceSetupResponse.CREATOR);
                    enforceNoDataAvail(parcel);
                    onImportCredentialsForDeviceSetup(status12, importCredentialsForDeviceSetupResponse);
                    return true;
                case 13:
                    Status status13 = (Status) zzc.zza(parcel, Status.CREATOR);
                    ExportCredentialsToDeviceSetupResponse exportCredentialsToDeviceSetupResponse = (ExportCredentialsToDeviceSetupResponse) zzc.zza(parcel, ExportCredentialsToDeviceSetupResponse.CREATOR);
                    enforceNoDataAvail(parcel);
                    onExportCredentialsToDeviceSetup(status13, exportCredentialsToDeviceSetupResponse);
                    return true;
                case 14:
                    Status status14 = (Status) zzc.zza(parcel, Status.CREATOR);
                    CredentialTransferCapabilities credentialTransferCapabilities = (CredentialTransferCapabilities) zzc.zza(parcel, CredentialTransferCapabilities.CREATOR);
                    enforceNoDataAvail(parcel);
                    onGetCredentialTransferCapabilities(status14, credentialTransferCapabilities);
                    return true;
                case 15:
                    Status status15 = (Status) zzc.zza(parcel, Status.CREATOR);
                    ClearCreationOptionsResponse clearCreationOptionsResponse = (ClearCreationOptionsResponse) zzc.zza(parcel, ClearCreationOptionsResponse.CREATOR);
                    enforceNoDataAvail(parcel);
                    onClearCreationOptions(status15, clearCreationOptionsResponse);
                    return true;
                default:
                    return false;
            }
        }
    }

    void onClearCreationOptions(Status status, ClearCreationOptionsResponse clearCreationOptionsResponse);

    void onClearCredentialState(Status status, ClearCredentialStateResponse clearCredentialStateResponse);

    void onClearExport(Status status, ClearExportResponse clearExportResponse);

    void onClearRegistry(Status status, ClearRegistryResponse clearRegistryResponse);

    void onCreateCredential(Status status, CreateCredentialResponse createCredentialResponse);

    void onCreateCredentialV2(Status status, CreateCredentialHandle createCredentialHandle);

    void onExportCredentialsToDeviceSetup(Status status, ExportCredentialsToDeviceSetupResponse exportCredentialsToDeviceSetupResponse);

    void onGetCredential(Status status, PendingGetCredentialHandle pendingGetCredentialHandle);

    void onGetCredentialTransferCapabilities(Status status, CredentialTransferCapabilities credentialTransferCapabilities);

    void onImportCredentials(Status status, PendingImportCredentialsHandle pendingImportCredentialsHandle);

    void onImportCredentialsForDeviceSetup(Status status, ImportCredentialsForDeviceSetupResponse importCredentialsForDeviceSetupResponse);

    void onRegisterCreationOptions(Status status, RegisterCreationOptionsResponse registerCreationOptionsResponse);

    void onRegisterCredentials(Status status, RegistrationResponse registrationResponse);

    void onRegisterExport(Status status, RegisterExportResponse registerExportResponse);

    void onSignalCredentialState(Status status, SignalCredentialStateResponse signalCredentialStateResponse);
}
