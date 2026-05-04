package com.google.android.gms.identitycredentials;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class CreateCredentialHandleCreator implements Parcelable.Creator {
    static void writeToParcel(CreateCredentialHandle createCredentialHandle, Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, createCredentialHandle.getPendingIntent(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 2, createCredentialHandle.getCreateCredentialResponse(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Override // android.os.Parcelable.Creator
    public CreateCredentialHandle createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        PendingIntent pendingIntent = null;
        CreateCredentialResponse createCredentialResponse = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId == 1) {
                pendingIntent = (PendingIntent) SafeParcelReader.createParcelable(parcel, header, PendingIntent.CREATOR);
            } else if (fieldId != 2) {
                SafeParcelReader.skipUnknownField(parcel, header);
            } else {
                createCredentialResponse = (CreateCredentialResponse) SafeParcelReader.createParcelable(parcel, header, CreateCredentialResponse.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new CreateCredentialHandle(pendingIntent, createCredentialResponse);
    }

    @Override // android.os.Parcelable.Creator
    public CreateCredentialHandle[] newArray(int i) {
        return new CreateCredentialHandle[i];
    }
}
