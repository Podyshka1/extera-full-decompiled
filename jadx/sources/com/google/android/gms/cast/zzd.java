package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class zzd implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        String strCreateString2 = null;
        ArrayList arrayListCreateTypedList = null;
        ArrayList arrayListCreateStringList = null;
        String strCreateString3 = null;
        Uri uri = null;
        String strCreateString4 = null;
        String strCreateString5 = null;
        Boolean booleanObject = null;
        Boolean booleanObject2 = null;
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
                    arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, WebImage.CREATOR);
                    break;
                case 5:
                    arrayListCreateStringList = SafeParcelReader.createStringList(parcel, header);
                    break;
                case 6:
                    strCreateString3 = SafeParcelReader.createString(parcel, header);
                    break;
                case 7:
                    uri = (Uri) SafeParcelReader.createParcelable(parcel, header, Uri.CREATOR);
                    break;
                case 8:
                    strCreateString4 = SafeParcelReader.createString(parcel, header);
                    break;
                case 9:
                    strCreateString5 = SafeParcelReader.createString(parcel, header);
                    break;
                case 10:
                    booleanObject = SafeParcelReader.readBooleanObject(parcel, header);
                    break;
                case 11:
                    booleanObject2 = SafeParcelReader.readBooleanObject(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new ApplicationMetadata(strCreateString, strCreateString2, arrayListCreateTypedList, arrayListCreateStringList, strCreateString3, uri, strCreateString4, strCreateString5, booleanObject, booleanObject2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new ApplicationMetadata[i];
    }
}
