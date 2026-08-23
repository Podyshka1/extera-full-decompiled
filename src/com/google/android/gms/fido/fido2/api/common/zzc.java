package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes4.dex */
public final class zzc implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        UvmEntries uvmEntries = null;
        zzf zzfVar = null;
        AuthenticationExtensionsCredPropsOutputs authenticationExtensionsCredPropsOutputs = null;
        zzh zzhVar = null;
        String strCreateString = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId == 1) {
                uvmEntries = (UvmEntries) SafeParcelReader.createParcelable(parcel, header, UvmEntries.CREATOR);
            } else if (fieldId == 2) {
                zzfVar = (zzf) SafeParcelReader.createParcelable(parcel, header, zzf.CREATOR);
            } else if (fieldId == 3) {
                authenticationExtensionsCredPropsOutputs = (AuthenticationExtensionsCredPropsOutputs) SafeParcelReader.createParcelable(parcel, header, AuthenticationExtensionsCredPropsOutputs.CREATOR);
            } else if (fieldId == 4) {
                zzhVar = (zzh) SafeParcelReader.createParcelable(parcel, header, zzh.CREATOR);
            } else if (fieldId != 5) {
                SafeParcelReader.skipUnknownField(parcel, header);
            } else {
                strCreateString = SafeParcelReader.createString(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new AuthenticationExtensionsClientOutputs(uvmEntries, zzfVar, authenticationExtensionsCredPropsOutputs, zzhVar, strCreateString);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new AuthenticationExtensionsClientOutputs[i];
    }
}
