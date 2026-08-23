package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbz implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        MediaInfo mediaInfo = null;
        long[] jArrCreateLongArray = null;
        String strCreateString = null;
        ArrayList arrayListCreateTypedList = null;
        AdBreakStatus adBreakStatus = null;
        VideoInfo videoInfo = null;
        MediaLiveSeekableRange mediaLiveSeekableRange = null;
        MediaQueueData mediaQueueData = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        boolean z2 = false;
        double d = 0.0d;
        double d2 = 0.0d;
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 2:
                    mediaInfo = (MediaInfo) SafeParcelReader.createParcelable(parcel, header, MediaInfo.CREATOR);
                    break;
                case 3:
                    j = SafeParcelReader.readLong(parcel, header);
                    break;
                case 4:
                    i = SafeParcelReader.readInt(parcel, header);
                    break;
                case 5:
                    d = SafeParcelReader.readDouble(parcel, header);
                    break;
                case 6:
                    i2 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 7:
                    i3 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 8:
                    j2 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 9:
                    j3 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 10:
                    d2 = SafeParcelReader.readDouble(parcel, header);
                    break;
                case 11:
                    z = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 12:
                    jArrCreateLongArray = SafeParcelReader.createLongArray(parcel, header);
                    break;
                case 13:
                    i4 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 14:
                    i5 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 15:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 16:
                    i6 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 17:
                    arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, MediaQueueItem.CREATOR);
                    break;
                case 18:
                    z2 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 19:
                    adBreakStatus = (AdBreakStatus) SafeParcelReader.createParcelable(parcel, header, AdBreakStatus.CREATOR);
                    break;
                case 20:
                    videoInfo = (VideoInfo) SafeParcelReader.createParcelable(parcel, header, VideoInfo.CREATOR);
                    break;
                case 21:
                    mediaLiveSeekableRange = (MediaLiveSeekableRange) SafeParcelReader.createParcelable(parcel, header, MediaLiveSeekableRange.CREATOR);
                    break;
                case 22:
                    mediaQueueData = (MediaQueueData) SafeParcelReader.createParcelable(parcel, header, MediaQueueData.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new MediaStatus(mediaInfo, j, i, d, i2, i3, j2, j3, d2, z, jArrCreateLongArray, i4, i5, strCreateString, i6, arrayListCreateTypedList, z2, adBreakStatus, videoInfo, mediaLiveSeekableRange, mediaQueueData);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new MediaStatus[i];
    }
}
