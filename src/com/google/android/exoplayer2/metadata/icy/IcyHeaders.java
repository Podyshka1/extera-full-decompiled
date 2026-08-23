package com.google.android.exoplayer2.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import java.util.List;
import java.util.Map;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: loaded from: classes4.dex */
public final class IcyHeaders implements Metadata.Entry {
    public static final Parcelable.Creator<IcyHeaders> CREATOR = new Parcelable.Creator() { // from class: com.google.android.exoplayer2.metadata.icy.IcyHeaders.1
        @Override // android.os.Parcelable.Creator
        public IcyHeaders createFromParcel(Parcel parcel) {
            return new IcyHeaders(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public IcyHeaders[] newArray(int i) {
            return new IcyHeaders[i];
        }
    };
    public final int bitrate;
    public final String genre;
    public final boolean isPublic;
    public final int metadataInterval;
    public final String name;
    public final String url;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ byte[] getWrappedMetadataBytes() {
        return Metadata.Entry.CC.$default$getWrappedMetadataBytes(this);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ Format getWrappedMetadataFormat() {
        return Metadata.Entry.CC.$default$getWrappedMetadataFormat(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static IcyHeaders parse(Map map) {
        boolean z;
        int i;
        IcyHeaders icyHeaders;
        String str;
        String str2;
        boolean zEquals;
        int i2;
        List list = (List) map.get("icy-br");
        boolean z2 = true;
        int i3 = -1;
        if (list != null) {
            String str3 = (String) list.get(0);
            try {
                i2 = Integer.parseInt(str3) * MediaDataController.MAX_STYLE_RUNS_COUNT;
                if (i2 > 0) {
                    z = true;
                } else {
                    try {
                        Log.m329w("IcyHeaders", "Invalid bitrate: " + str3);
                        z = false;
                        i2 = -1;
                    } catch (NumberFormatException unused) {
                        Log.m329w("IcyHeaders", "Invalid bitrate header: " + str3);
                        z = false;
                    }
                }
            } catch (NumberFormatException unused2) {
                i2 = -1;
            }
            i = i2;
        } else {
            z = false;
            i = -1;
        }
        List list2 = (List) map.get("icy-genre");
        String str4 = null;
        if (list2 != null) {
            String str5 = (String) list2.get(0);
            icyHeaders = null;
            str4 = str5;
            z = true;
        } else {
            icyHeaders = null;
        }
        List list3 = (List) map.get("icy-name");
        if (list3 != null) {
            str = (String) list3.get(0);
            z = true;
        } else {
            str = icyHeaders;
        }
        List list4 = (List) map.get("icy-url");
        if (list4 != null) {
            str2 = (String) list4.get(0);
            z = true;
        } else {
            str2 = icyHeaders;
        }
        List list5 = (List) map.get("icy-pub");
        if (list5 != null) {
            zEquals = ((String) list5.get(0)).equals("1");
            z = true;
        } else {
            zEquals = false;
        }
        List list6 = (List) map.get("icy-metaint");
        if (list6 != null) {
            String str6 = (String) list6.get(0);
            try {
                int i4 = Integer.parseInt(str6);
                if (i4 > 0) {
                    i3 = i4;
                } else {
                    try {
                        Log.m329w("IcyHeaders", "Invalid metadata interval: " + str6);
                        z2 = z;
                    } catch (NumberFormatException unused3) {
                        i3 = i4;
                        Log.m329w("IcyHeaders", "Invalid metadata interval: " + str6);
                    }
                }
                z = z2;
            } catch (NumberFormatException unused4) {
            }
        }
        int i5 = i3;
        if (z) {
            icyHeaders = new IcyHeaders(i, str4, str, str2, zEquals, i5);
        }
        return icyHeaders;
    }

    public IcyHeaders(int i, String str, String str2, String str3, boolean z, int i2) {
        Assertions.checkArgument(i2 == -1 || i2 > 0);
        this.bitrate = i;
        this.genre = str;
        this.name = str2;
        this.url = str3;
        this.isPublic = z;
        this.metadataInterval = i2;
    }

    IcyHeaders(Parcel parcel) {
        this.bitrate = parcel.readInt();
        this.genre = parcel.readString();
        this.name = parcel.readString();
        this.url = parcel.readString();
        this.isPublic = Util.readBoolean(parcel);
        this.metadataInterval = parcel.readInt();
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public void populateMediaMetadata(MediaMetadata.Builder builder) {
        String str = this.name;
        if (str != null) {
            builder.setStation(str);
        }
        String str2 = this.genre;
        if (str2 != null) {
            builder.setGenre(str2);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && IcyHeaders.class == obj.getClass()) {
            IcyHeaders icyHeaders = (IcyHeaders) obj;
            if (this.bitrate == icyHeaders.bitrate && Util.areEqual(this.genre, icyHeaders.genre) && Util.areEqual(this.name, icyHeaders.name) && Util.areEqual(this.url, icyHeaders.url) && this.isPublic == icyHeaders.isPublic && this.metadataInterval == icyHeaders.metadataInterval) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i = (527 + this.bitrate) * 31;
        String str = this.genre;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.name;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.url;
        return ((((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.isPublic ? 1 : 0)) * 31) + this.metadataInterval;
    }

    public String toString() {
        return "IcyHeaders: name=\"" + this.name + "\", genre=\"" + this.genre + "\", bitrate=" + this.bitrate + ", metadataInterval=" + this.metadataInterval;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.bitrate);
        parcel.writeString(this.genre);
        parcel.writeString(this.name);
        parcel.writeString(this.url);
        Util.writeBoolean(parcel, this.isPublic);
        parcel.writeInt(this.metadataInterval);
    }
}
