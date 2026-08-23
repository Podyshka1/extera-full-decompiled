package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.fido.fido2.api.common.Attachment;
import com.google.android.gms.fido.fido2.api.common.ResidentKeyRequirement;

/* JADX INFO: loaded from: classes4.dex */
public class AuthenticatorSelectionCriteria extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthenticatorSelectionCriteria> CREATOR = new zzm();
    private final Attachment zza;
    private final Boolean zzb;
    private final UserVerificationRequirement zzc;
    private final ResidentKeyRequirement zzd;

    public static class Builder {
        private Attachment zza;
        private Boolean zzb;
        private ResidentKeyRequirement zzc;

        public AuthenticatorSelectionCriteria build() {
            Attachment attachment = this.zza;
            String string = attachment == null ? null : attachment.toString();
            Boolean bool = this.zzb;
            ResidentKeyRequirement residentKeyRequirement = this.zzc;
            return new AuthenticatorSelectionCriteria(string, bool, null, residentKeyRequirement == null ? null : residentKeyRequirement.toString());
        }

        public Builder setAttachment(Attachment attachment) {
            this.zza = attachment;
            return this;
        }

        public Builder setRequireResidentKey(Boolean bool) {
            this.zzb = bool;
            return this;
        }

        public Builder setResidentKeyRequirement(ResidentKeyRequirement residentKeyRequirement) {
            this.zzc = residentKeyRequirement;
            return this;
        }
    }

    AuthenticatorSelectionCriteria(String str, Boolean bool, String str2, String str3) {
        Attachment attachmentFromString;
        ResidentKeyRequirement residentKeyRequirementFromString = null;
        if (str == null) {
            attachmentFromString = null;
        } else {
            try {
                attachmentFromString = Attachment.fromString(str);
            } catch (Attachment.UnsupportedAttachmentException | ResidentKeyRequirement.UnsupportedResidentKeyRequirementException | zzbc e) {
                throw new IllegalArgumentException(e);
            }
        }
        this.zza = attachmentFromString;
        this.zzb = bool;
        this.zzc = str2 == null ? null : UserVerificationRequirement.fromString(str2);
        if (str3 != null) {
            residentKeyRequirementFromString = ResidentKeyRequirement.fromString(str3);
        }
        this.zzd = residentKeyRequirementFromString;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AuthenticatorSelectionCriteria)) {
            return false;
        }
        AuthenticatorSelectionCriteria authenticatorSelectionCriteria = (AuthenticatorSelectionCriteria) obj;
        return Objects.equal(this.zza, authenticatorSelectionCriteria.zza) && Objects.equal(this.zzb, authenticatorSelectionCriteria.zzb) && Objects.equal(this.zzc, authenticatorSelectionCriteria.zzc) && Objects.equal(getResidentKeyRequirement(), authenticatorSelectionCriteria.getResidentKeyRequirement());
    }

    public String getAttachmentAsString() {
        Attachment attachment = this.zza;
        if (attachment == null) {
            return null;
        }
        return attachment.toString();
    }

    public Boolean getRequireResidentKey() {
        return this.zzb;
    }

    public ResidentKeyRequirement getResidentKeyRequirement() {
        ResidentKeyRequirement residentKeyRequirement = this.zzd;
        if (residentKeyRequirement != null) {
            return residentKeyRequirement;
        }
        Boolean bool = this.zzb;
        if (bool == null || !bool.booleanValue()) {
            return null;
        }
        return ResidentKeyRequirement.RESIDENT_KEY_REQUIRED;
    }

    public String getResidentKeyRequirementAsString() {
        ResidentKeyRequirement residentKeyRequirement = getResidentKeyRequirement();
        if (residentKeyRequirement == null) {
            return null;
        }
        return residentKeyRequirement.toString();
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, this.zzc, getResidentKeyRequirement());
    }

    public final String toString() {
        ResidentKeyRequirement residentKeyRequirement = this.zzd;
        UserVerificationRequirement userVerificationRequirement = this.zzc;
        return "AuthenticatorSelectionCriteria{\n attachment=" + String.valueOf(this.zza) + ", \n requireResidentKey=" + this.zzb + ", \n requireUserVerification=" + String.valueOf(userVerificationRequirement) + ", \n residentKeyRequirement=" + String.valueOf(residentKeyRequirement) + "\n }";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getAttachmentAsString(), false);
        SafeParcelWriter.writeBooleanObject(parcel, 3, getRequireResidentKey(), false);
        UserVerificationRequirement userVerificationRequirement = this.zzc;
        SafeParcelWriter.writeString(parcel, 4, userVerificationRequirement == null ? null : userVerificationRequirement.toString(), false);
        SafeParcelWriter.writeString(parcel, 5, getResidentKeyRequirementAsString(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
