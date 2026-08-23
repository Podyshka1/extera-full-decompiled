package com.google.android.gms.identitycredentials;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class CreateCredentialRequestCreator implements Parcelable.Creator {
    static void writeToParcel(CreateCredentialRequest createCredentialRequest, Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, createCredentialRequest.getType(), false);
        SafeParcelWriter.writeBundle(parcel, 2, createCredentialRequest.getCredentialData(), false);
        SafeParcelWriter.writeBundle(parcel, 3, createCredentialRequest.getCandidateQueryData(), false);
        SafeParcelWriter.writeString(parcel, 4, createCredentialRequest.getOrigin(), false);
        SafeParcelWriter.writeString(parcel, 5, createCredentialRequest.getRequestJson(), false);
        SafeParcelWriter.writeParcelable(parcel, 6, createCredentialRequest.getResultReceiver(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Override // android.os.Parcelable.Creator
    public CreateCredentialRequest createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        Bundle bundleCreateBundle = null;
        Bundle bundleCreateBundle2 = null;
        String strCreateString2 = null;
        String strCreateString3 = null;
        ResultReceiver resultReceiver = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 1:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 2:
                    bundleCreateBundle = SafeParcelReader.createBundle(parcel, header);
                    break;
                case 3:
                    bundleCreateBundle2 = SafeParcelReader.createBundle(parcel, header);
                    break;
                case 4:
                    strCreateString2 = SafeParcelReader.createString(parcel, header);
                    break;
                case 5:
                    strCreateString3 = SafeParcelReader.createString(parcel, header);
                    break;
                case 6:
                    resultReceiver = (ResultReceiver) SafeParcelReader.createParcelable(parcel, header, ResultReceiver.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new CreateCredentialRequest(strCreateString, bundleCreateBundle, bundleCreateBundle2, strCreateString2, strCreateString3, resultReceiver);
    }

    @Override // android.os.Parcelable.Creator
    public CreateCredentialRequest[] newArray(int i) {
        return new CreateCredentialRequest[i];
    }
}
