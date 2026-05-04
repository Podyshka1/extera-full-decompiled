package com.google.android.gms.identitycredentials;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class PendingGetCredentialHandleCreator implements Parcelable.Creator {
    static void writeToParcel(PendingGetCredentialHandle pendingGetCredentialHandle, Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, pendingGetCredentialHandle.getPendingIntent(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Override // android.os.Parcelable.Creator
    public PendingGetCredentialHandle createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            if (SafeParcelReader.getFieldId(header) != 1) {
                SafeParcelReader.skipUnknownField(parcel, header);
            } else {
                pendingIntent = (PendingIntent) SafeParcelReader.createParcelable(parcel, header, PendingIntent.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new PendingGetCredentialHandle(pendingIntent);
    }

    @Override // android.os.Parcelable.Creator
    public PendingGetCredentialHandle[] newArray(int i) {
        return new PendingGetCredentialHandle[i];
    }
}
