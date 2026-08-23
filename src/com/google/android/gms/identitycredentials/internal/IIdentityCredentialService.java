package com.google.android.gms.identitycredentials.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.identitycredentials.CreateCredentialRequest;
import com.google.android.gms.identitycredentials.GetCredentialRequest;
import com.google.android.gms.identitycredentials.SignalCredentialStateRequest;
import com.google.android.gms.internal.identity_credentials.zza;
import com.google.android.gms.internal.identity_credentials.zzb;
import com.google.android.gms.internal.identity_credentials.zzc;

/* JADX INFO: loaded from: classes4.dex */
public interface IIdentityCredentialService extends IInterface {

    public static abstract class Stub extends zzb implements IIdentityCredentialService {

        public static class Proxy extends zza implements IIdentityCredentialService {
            Proxy(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.identitycredentials.internal.IIdentityCredentialService");
            }

            @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialService
            public void createCredential(IIdentityCredentialCallbacks iIdentityCredentialCallbacks, CreateCredentialRequest createCredentialRequest, ApiMetadata apiMetadata) {
                Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
                zzc.zzc(parcelObtainAndWriteInterfaceToken, iIdentityCredentialCallbacks);
                zzc.zzb(parcelObtainAndWriteInterfaceToken, createCredentialRequest);
                zzc.zzb(parcelObtainAndWriteInterfaceToken, apiMetadata);
                transactAndReadExceptionReturnVoid(6, parcelObtainAndWriteInterfaceToken);
            }

            @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialService
            public void getCredential(IIdentityCredentialCallbacks iIdentityCredentialCallbacks, GetCredentialRequest getCredentialRequest, ApiMetadata apiMetadata) {
                Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
                zzc.zzc(parcelObtainAndWriteInterfaceToken, iIdentityCredentialCallbacks);
                zzc.zzb(parcelObtainAndWriteInterfaceToken, getCredentialRequest);
                zzc.zzb(parcelObtainAndWriteInterfaceToken, apiMetadata);
                transactAndReadExceptionReturnVoid(1, parcelObtainAndWriteInterfaceToken);
            }

            @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialService
            public void signalCredentialState(IIdentityCredentialCallbacks iIdentityCredentialCallbacks, SignalCredentialStateRequest signalCredentialStateRequest, ApiMetadata apiMetadata) {
                Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
                zzc.zzc(parcelObtainAndWriteInterfaceToken, iIdentityCredentialCallbacks);
                zzc.zzb(parcelObtainAndWriteInterfaceToken, signalCredentialStateRequest);
                zzc.zzb(parcelObtainAndWriteInterfaceToken, apiMetadata);
                transactAndReadExceptionReturnVoid(10, parcelObtainAndWriteInterfaceToken);
            }
        }

        public static IIdentityCredentialService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.identitycredentials.internal.IIdentityCredentialService");
            return iInterfaceQueryLocalInterface instanceof IIdentityCredentialService ? (IIdentityCredentialService) iInterfaceQueryLocalInterface : new Proxy(iBinder);
        }
    }

    void createCredential(IIdentityCredentialCallbacks iIdentityCredentialCallbacks, CreateCredentialRequest createCredentialRequest, ApiMetadata apiMetadata);

    void getCredential(IIdentityCredentialCallbacks iIdentityCredentialCallbacks, GetCredentialRequest getCredentialRequest, ApiMetadata apiMetadata);

    void signalCredentialState(IIdentityCredentialCallbacks iIdentityCredentialCallbacks, SignalCredentialStateRequest signalCredentialStateRequest, ApiMetadata apiMetadata);
}
