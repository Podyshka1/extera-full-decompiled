package com.google.android.gms.identitycredentials;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class CredentialOptionCreator implements Parcelable.Creator {
    static void writeToParcel(CredentialOption credentialOption, Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, credentialOption.getType(), false);
        SafeParcelWriter.writeBundle(parcel, 2, credentialOption.getCredentialRetrievalData(), false);
        SafeParcelWriter.writeBundle(parcel, 3, credentialOption.getCandidateQueryData(), false);
        SafeParcelWriter.writeString(parcel, 4, credentialOption.getRequestMatcher(), false);
        SafeParcelWriter.writeString(parcel, 5, credentialOption.getRequestType(), false);
        SafeParcelWriter.writeString(parcel, 6, credentialOption.getProtocolType(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Override // android.os.Parcelable.Creator
    public CredentialOption createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = _UrlKt.FRAGMENT_ENCODE_SET;
        String strCreateString2 = strCreateString;
        String strCreateString3 = strCreateString2;
        Bundle bundleCreateBundle = null;
        Bundle bundleCreateBundle2 = null;
        String strCreateString4 = null;
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
                    strCreateString4 = SafeParcelReader.createString(parcel, header);
                    break;
                case 5:
                    strCreateString2 = SafeParcelReader.createString(parcel, header);
                    break;
                case 6:
                    strCreateString3 = SafeParcelReader.createString(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new CredentialOption(strCreateString, bundleCreateBundle, bundleCreateBundle2, strCreateString4, strCreateString2, strCreateString3);
    }

    @Override // android.os.Parcelable.Creator
    public CredentialOption[] newArray(int i) {
        return new CredentialOption[i];
    }
}
