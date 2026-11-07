package com.google.android.gms.cast.framework.devicesuggestions;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes4.dex */
public class DeviceSuggestionResult extends AbstractSafeParcelable {
    public static final int CONFIDENCE_HIGH = 3;
    public static final int CONFIDENCE_LOW = 1;
    public static final int CONFIDENCE_MID = 2;
    public static final Parcelable.Creator<DeviceSuggestionResult> CREATOR = new zza();
    private final String zza;
    private final String zzb;
    private final int zzc;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Confidence {
    }

    public DeviceSuggestionResult(String str, String str2, int i) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
    }

    public int getConfidence() {
        return this.zzc;
    }

    public String getDeviceName() {
        return this.zzb;
    }

    public String getRouteId() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getRouteId(), false);
        SafeParcelWriter.writeString(parcel, 2, getDeviceName(), false);
        SafeParcelWriter.writeInt(parcel, 3, getConfidence());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
