package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.wallet.wobs.LabelValueRow;
import com.google.android.gms.wallet.wobs.LoyaltyPoints;
import com.google.android.gms.wallet.wobs.TextModuleData;
import com.google.android.gms.wallet.wobs.TimeInterval;
import com.google.android.gms.wallet.wobs.UriData;
import com.google.android.gms.wallet.wobs.WalletObjectMessage;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class zzs implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        ArrayList arrayListNewArrayList = ArrayUtils.newArrayList();
        ArrayList arrayListNewArrayList2 = ArrayUtils.newArrayList();
        ArrayList arrayListNewArrayList3 = ArrayUtils.newArrayList();
        ArrayList arrayListCreateTypedList = arrayListNewArrayList;
        ArrayList arrayListCreateTypedList2 = arrayListNewArrayList2;
        ArrayList arrayListCreateTypedList3 = arrayListNewArrayList3;
        ArrayList arrayListNewArrayList4 = ArrayUtils.newArrayList();
        ArrayList arrayListNewArrayList5 = ArrayUtils.newArrayList();
        ArrayList arrayListNewArrayList6 = ArrayUtils.newArrayList();
        String strCreateString = null;
        String strCreateString2 = null;
        String strCreateString3 = null;
        String strCreateString4 = null;
        String strCreateString5 = null;
        String strCreateString6 = null;
        String strCreateString7 = null;
        String strCreateString8 = null;
        String strCreateString9 = null;
        String strCreateString10 = null;
        TimeInterval timeInterval = null;
        String strCreateString11 = null;
        String strCreateString12 = null;
        LoyaltyPoints loyaltyPoints = null;
        int i = 0;
        boolean z = false;
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
                    strCreateString6 = SafeParcelReader.createString(parcel, header);
                    break;
                case 8:
                    strCreateString7 = SafeParcelReader.createString(parcel, header);
                    break;
                case 9:
                    strCreateString8 = SafeParcelReader.createString(parcel, header);
                    break;
                case 10:
                    strCreateString9 = SafeParcelReader.createString(parcel, header);
                    break;
                case 11:
                    strCreateString10 = SafeParcelReader.createString(parcel, header);
                    break;
                case 12:
                    i = SafeParcelReader.readInt(parcel, header);
                    break;
                case 13:
                    arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, WalletObjectMessage.CREATOR);
                    break;
                case 14:
                    timeInterval = (TimeInterval) SafeParcelReader.createParcelable(parcel, header, TimeInterval.CREATOR);
                    break;
                case 15:
                    arrayListCreateTypedList2 = SafeParcelReader.createTypedList(parcel, header, LatLng.CREATOR);
                    break;
                case 16:
                    strCreateString11 = SafeParcelReader.createString(parcel, header);
                    break;
                case 17:
                    strCreateString12 = SafeParcelReader.createString(parcel, header);
                    break;
                case 18:
                    arrayListCreateTypedList3 = SafeParcelReader.createTypedList(parcel, header, LabelValueRow.CREATOR);
                    break;
                case 19:
                    z = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 20:
                    arrayListNewArrayList4 = SafeParcelReader.createTypedList(parcel, header, UriData.CREATOR);
                    break;
                case 21:
                    arrayListNewArrayList5 = SafeParcelReader.createTypedList(parcel, header, TextModuleData.CREATOR);
                    break;
                case 22:
                    arrayListNewArrayList6 = SafeParcelReader.createTypedList(parcel, header, UriData.CREATOR);
                    break;
                case 23:
                    loyaltyPoints = (LoyaltyPoints) SafeParcelReader.createParcelable(parcel, header, LoyaltyPoints.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new LoyaltyWalletObject(strCreateString, strCreateString2, strCreateString3, strCreateString4, strCreateString5, strCreateString6, strCreateString7, strCreateString8, strCreateString9, strCreateString10, i, arrayListCreateTypedList, timeInterval, arrayListCreateTypedList2, strCreateString11, strCreateString12, arrayListCreateTypedList3, z, arrayListNewArrayList4, arrayListNewArrayList5, arrayListNewArrayList6, loyaltyPoints);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new LoyaltyWalletObject[i];
    }
}
