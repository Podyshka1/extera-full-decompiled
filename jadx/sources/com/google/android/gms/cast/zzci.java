package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class zzci implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        long j = 0;
        String strCreateString = null;
        String strCreateString2 = null;
        String strCreateString3 = null;
        MediaQueueContainerMetadata mediaQueueContainerMetadata = null;
        ArrayList arrayListCreateTypedList = null;
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
                    i = SafeParcelReader.readInt(parcel, header);
                    break;
                case 5:
                    strCreateString3 = SafeParcelReader.createString(parcel, header);
                    break;
                case 6:
                    mediaQueueContainerMetadata = (MediaQueueContainerMetadata) SafeParcelReader.createParcelable(parcel, header, MediaQueueContainerMetadata.CREATOR);
                    break;
                case 7:
                    i2 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 8:
                    arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, MediaQueueItem.CREATOR);
                    break;
                case 9:
                    i3 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 10:
                    j = SafeParcelReader.readLong(parcel, header);
                    break;
                case 11:
                    z = SafeParcelReader.readBoolean(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new MediaQueueData(strCreateString, strCreateString2, i, strCreateString3, mediaQueueContainerMetadata, i2, arrayListCreateTypedList, i3, j, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new MediaQueueData[i];
    }
}
