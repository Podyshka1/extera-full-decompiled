package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public class NotificationAction extends AbstractSafeParcelable {
    public static final Parcelable.Creator<NotificationAction> CREATOR = new zzq();
    private final String zza;
    private final int zzb;
    private final String zzc;

    public static final class Builder {
        String zza;
        int zzb;
        String zzc;

        public NotificationAction build() {
            return new NotificationAction(this.zza, this.zzb, this.zzc);
        }

        public Builder setAction(String str) {
            if (TextUtils.isEmpty(str)) {
                f$$ExternalSyntheticBUOutline1.m178m("action cannot be null or an empty string.");
                return null;
            }
            this.zza = str;
            return this;
        }

        public Builder setContentDescription(String str) {
            if (TextUtils.isEmpty(str)) {
                f$$ExternalSyntheticBUOutline1.m178m("contentDescription cannot be null  or an empty string.");
                return null;
            }
            this.zzc = str;
            return this;
        }

        public Builder setIconResId(int i) {
            this.zzb = i;
            return this;
        }
    }

    public NotificationAction(String str, int i, String str2) {
        this.zza = str;
        this.zzb = i;
        this.zzc = str2;
    }

    public String getAction() {
        return this.zza;
    }

    public String getContentDescription() {
        return this.zzc;
    }

    public int getIconResId() {
        return this.zzb;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getAction(), false);
        SafeParcelWriter.writeInt(parcel, 3, getIconResId());
        SafeParcelWriter.writeString(parcel, 4, getContentDescription(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
