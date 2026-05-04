package com.google.android.gms.auth.blockstore.restorecredential.internal;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.blockstore.restorecredential.GetRestoreCredentialResponse;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth_blockstore.zzb;
import com.google.android.gms.internal.auth_blockstore.zzc;

/* JADX INFO: loaded from: classes4.dex */
public interface IGetRestoreCredentialCallback extends IInterface {

    public static abstract class Stub extends zzb implements IGetRestoreCredentialCallback {
        public Stub() {
            super("com.google.android.gms.auth.blockstore.restorecredential.internal.IGetRestoreCredentialCallback");
        }

        @Override // com.google.android.gms.internal.auth_blockstore.zzb
        protected boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i != 1) {
                return false;
            }
            Status status = (Status) zzc.zza(parcel, Status.CREATOR);
            GetRestoreCredentialResponse getRestoreCredentialResponse = (GetRestoreCredentialResponse) zzc.zza(parcel, GetRestoreCredentialResponse.CREATOR);
            enforceNoDataAvail(parcel);
            onGetRestoreCredential(status, getRestoreCredentialResponse);
            return true;
        }
    }

    void onGetRestoreCredential(Status status, GetRestoreCredentialResponse getRestoreCredentialResponse);
}
