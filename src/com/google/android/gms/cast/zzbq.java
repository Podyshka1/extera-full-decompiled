package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbq implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int header;
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        long j = 0;
        String strCreateString2 = null;
        Integer integerObject = null;
        String strCreateString3 = null;
        while (true) {
            long j2 = j;
            while (parcel.dataPosition() < iValidateObjectHeader) {
                header = SafeParcelReader.readHeader(parcel);
                int fieldId = SafeParcelReader.getFieldId(header);
                if (fieldId == 2) {
                    strCreateString2 = SafeParcelReader.createString(parcel, header);
                } else if (fieldId != 3) {
                    if (fieldId == 4) {
                        integerObject = SafeParcelReader.readIntegerObject(parcel, header);
                    } else if (fieldId == 5) {
                        strCreateString3 = SafeParcelReader.createString(parcel, header);
                    } else if (fieldId != 6) {
                        SafeParcelReader.skipUnknownField(parcel, header);
                    } else {
                        strCreateString = SafeParcelReader.createString(parcel, header);
                    }
                }
            }
            SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
            return new MediaError(strCreateString2, j2, integerObject, strCreateString3, CastUtils.jsonStringToJsonObject(strCreateString));
            j = SafeParcelReader.readLong(parcel, header);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new MediaError[i];
    }
}
