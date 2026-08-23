package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes4.dex */
public enum UserVerificationRequirement implements Parcelable {
    USER_VERIFICATION_REQUIRED("required"),
    USER_VERIFICATION_PREFERRED("preferred"),
    USER_VERIFICATION_DISCOURAGED("discouraged");

    public static final Parcelable.Creator<UserVerificationRequirement> CREATOR = new Parcelable.Creator() { // from class: com.google.android.gms.fido.fido2.api.common.zzbb
        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            try {
                return UserVerificationRequirement.fromString(parcel.readString());
            } catch (zzbc e) {
                throw new RuntimeException(e);
            }
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Object[] newArray(int i) {
            return new UserVerificationRequirement[i];
        }
    };
    private final String zze;

    UserVerificationRequirement(String str) {
        this.zze = str;
    }

    public static UserVerificationRequirement fromString(String str) throws zzbc {
        for (UserVerificationRequirement userVerificationRequirement : values()) {
            if (str.equals(userVerificationRequirement.zze)) {
                return userVerificationRequirement;
            }
        }
        throw new zzbc(str);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.zze;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zze);
    }
}
