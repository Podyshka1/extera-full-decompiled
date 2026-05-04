package com.google.android.gms.cast.framework.media;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes.dex */
public final class zza implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        boolean z = false;
        boolean z2 = false;
        String strCreateString = null;
        String strCreateString2 = null;
        IBinder iBinder = null;
        NotificationOptions notificationOptions = null;
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
                    iBinder = SafeParcelReader.readIBinder(parcel, header);
                    break;
                case 5:
                    notificationOptions = (NotificationOptions) SafeParcelReader.createParcelable(parcel, header, NotificationOptions.CREATOR);
                    break;
                case 6:
                    z = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 7:
                    z2 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new CastMediaOptions(strCreateString, strCreateString2, iBinder, notificationOptions, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new CastMediaOptions[i];
    }
}
