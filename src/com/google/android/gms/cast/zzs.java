package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.zzz;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class zzs implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        String strCreateString2 = null;
        String strCreateString3 = null;
        String strCreateString4 = null;
        String strCreateString5 = null;
        ArrayList arrayListCreateTypedList = null;
        String strCreateString6 = null;
        String strCreateString7 = null;
        String strCreateString8 = null;
        byte[] bArrCreateByteArray = null;
        String strCreateString9 = null;
        zzz zzzVar = null;
        Integer integerObject = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        int i4 = -1;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 2:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 3:
                    strCreateString2 = SafeParcelReader.createString(parcel, header);
                    break;
                case 4:
                    strCreateString3 = SafeParcelReader.createString(parcel, header);
                    break;
                case 5:
                    strCreateString4 = SafeParcelReader.createString(parcel, header);
                    break;
                case 6:
                    strCreateString5 = SafeParcelReader.createString(parcel, header);
                    break;
                case 7:
                    i = SafeParcelReader.readInt(parcel, header);
                    break;
                case 8:
                    arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, WebImage.CREATOR);
                    break;
                case 9:
                    i2 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 10:
                    i4 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 11:
                    strCreateString6 = SafeParcelReader.createString(parcel, header);
                    break;
                case 12:
                    strCreateString7 = SafeParcelReader.createString(parcel, header);
                    break;
                case 13:
                    i3 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 14:
                    strCreateString8 = SafeParcelReader.createString(parcel, header);
                    break;
                case 15:
                    bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
                    break;
                case 16:
                    strCreateString9 = SafeParcelReader.createString(parcel, header);
                    break;
                case 17:
                    z = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 18:
                    zzzVar = (zzz) SafeParcelReader.createParcelable(parcel, header, zzz.CREATOR);
                    break;
                case 19:
                    integerObject = SafeParcelReader.readIntegerObject(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new CastDevice(strCreateString, strCreateString2, strCreateString3, strCreateString4, strCreateString5, i, arrayListCreateTypedList, i2, i4, strCreateString6, strCreateString7, i3, strCreateString8, bArrCreateByteArray, strCreateString9, z, zzzVar, integerObject);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new CastDevice[i];
    }
}
