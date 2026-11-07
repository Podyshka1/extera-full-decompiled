package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes4.dex */
public final class zzy implements Parcelable.Creator<zzx> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzx createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        zzi zziVar = null;
        String strCreateString = null;
        zzg zzgVar = null;
        String strCreateString2 = null;
        long j = 0;
        int i = 0;
        boolean z = false;
        int i2 = 0;
        int i3 = -1;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 1:
                    zziVar = (zzi) SafeParcelReader.createParcelable(parcel, header, zzi.CREATOR);
                    break;
                case 2:
                    j = SafeParcelReader.readLong(parcel, header);
                    break;
                case 3:
                    i = SafeParcelReader.readInt(parcel, header);
                    break;
                case 4:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 5:
                    zzgVar = (zzg) SafeParcelReader.createParcelable(parcel, header, zzg.CREATOR);
                    break;
                case 6:
                    z = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 7:
                    i3 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 8:
                    i2 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 9:
                    strCreateString2 = SafeParcelReader.createString(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzx(zziVar, j, i, strCreateString, zzgVar, z, i3, i2, strCreateString2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzx[] newArray(int i) {
        return new zzx[i];
    }
}
