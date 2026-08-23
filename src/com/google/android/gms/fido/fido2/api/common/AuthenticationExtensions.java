package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class AuthenticationExtensions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthenticationExtensions> CREATOR = new zzd();
    private final FidoAppIdExtension zza;
    private final zzs zzb;
    private final UserVerificationMethodExtension zzc;
    private final zzz zzd;
    private final zzab zze;
    private final zzad zzf;
    private final zzu zzg;
    private final zzag zzh;
    private final GoogleThirdPartyPaymentExtension zzi;
    private final zzak zzj;
    private final zzaw zzk;
    private final zzai zzl;

    public static final class Builder {
        private FidoAppIdExtension zza;
        private UserVerificationMethodExtension zzb;
        private zzs zzc;
        private zzz zzd;
        private zzab zze;
        private zzad zzf;
        private zzu zzg;
        private zzag zzh;
        private GoogleThirdPartyPaymentExtension zzi;
        private zzak zzj;
        private zzaw zzk;
        private zzai zzl;

        public AuthenticationExtensions build() {
            return new AuthenticationExtensions(this.zza, this.zzc, this.zzb, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl);
        }

        public Builder setFido2Extension(FidoAppIdExtension fidoAppIdExtension) {
            this.zza = fidoAppIdExtension;
            return this;
        }

        public Builder setGoogleThirdPartyPaymentExtension(GoogleThirdPartyPaymentExtension googleThirdPartyPaymentExtension) {
            this.zzi = googleThirdPartyPaymentExtension;
            return this;
        }

        public Builder setUserVerificationMethodExtension(UserVerificationMethodExtension userVerificationMethodExtension) {
            this.zzb = userVerificationMethodExtension;
            return this;
        }

        public final Builder zza(zzs zzsVar) {
            this.zzc = zzsVar;
            return this;
        }

        public final Builder zzb(zzu zzuVar) {
            this.zzg = zzuVar;
            return this;
        }

        public final Builder zzc(zzz zzzVar) {
            this.zzd = zzzVar;
            return this;
        }

        public final Builder zzd(zzab zzabVar) {
            this.zze = zzabVar;
            return this;
        }

        public final Builder zze(zzad zzadVar) {
            this.zzf = zzadVar;
            return this;
        }

        public final Builder zzf(zzag zzagVar) {
            this.zzh = zzagVar;
            return this;
        }

        public final Builder zzg(zzak zzakVar) {
            this.zzj = zzakVar;
            return this;
        }

        public final Builder zzh(zzaw zzawVar) {
            this.zzk = zzawVar;
            return this;
        }
    }

    public AuthenticationExtensions(FidoAppIdExtension fidoAppIdExtension, zzs zzsVar, UserVerificationMethodExtension userVerificationMethodExtension, zzz zzzVar, zzab zzabVar, zzad zzadVar, zzu zzuVar, zzag zzagVar, GoogleThirdPartyPaymentExtension googleThirdPartyPaymentExtension, zzak zzakVar, zzaw zzawVar, zzai zzaiVar) {
        this.zza = fidoAppIdExtension;
        this.zzc = userVerificationMethodExtension;
        this.zzb = zzsVar;
        this.zzd = zzzVar;
        this.zze = zzabVar;
        this.zzf = zzadVar;
        this.zzg = zzuVar;
        this.zzh = zzagVar;
        this.zzi = googleThirdPartyPaymentExtension;
        this.zzj = zzakVar;
        this.zzk = zzawVar;
        this.zzl = zzaiVar;
    }

    public static AuthenticationExtensions zza(JSONObject jSONObject) throws JSONException {
        Builder builder = new Builder();
        if (jSONObject.has("fidoAppIdExtension")) {
            builder.setFido2Extension(new FidoAppIdExtension(jSONObject.getJSONObject("fidoAppIdExtension").getString("appid")));
        }
        if (jSONObject.has("appid")) {
            builder.setFido2Extension(new FidoAppIdExtension(jSONObject.getString("appid")));
        }
        if (jSONObject.has("prf")) {
            if (jSONObject.has("prfAlreadyHashed")) {
                throw new JSONException("both prf and prfAlreadyHashed extensions found");
            }
            builder.zzg(zzak.zza(jSONObject.getJSONObject("prf"), false));
        } else if (jSONObject.has("prfAlreadyHashed")) {
            builder.zzg(zzak.zza(jSONObject.getJSONObject("prfAlreadyHashed"), true));
        }
        if (jSONObject.has("cableAuthenticationExtension")) {
            JSONArray jSONArray = jSONObject.getJSONArray("cableAuthenticationExtension");
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                arrayList.add(new zzq(jSONObject2.getLong("version"), Base64.decode(jSONObject2.getString("clientEid"), 11), Base64.decode(jSONObject2.getString("authenticatorEid"), 11), Base64.decode(jSONObject2.getString("sessionPreKey"), 11)));
            }
            builder.zza(new zzs(arrayList));
        }
        if (jSONObject.has("userVerificationMethodExtension")) {
            builder.setUserVerificationMethodExtension(new UserVerificationMethodExtension(jSONObject.getJSONObject("userVerificationMethodExtension").getBoolean("uvm")));
        }
        if (jSONObject.has("google_multiAssertionExtension")) {
            builder.zzc(new zzz(jSONObject.getJSONObject("google_multiAssertionExtension").getBoolean("requestForMultiAssertion")));
        }
        if (jSONObject.has("google_sessionIdExtension")) {
            builder.zzd(new zzab(jSONObject.getJSONObject("google_sessionIdExtension").getInt("sessionId")));
        }
        if (jSONObject.has("google_silentVerificationExtension")) {
            builder.zze(new zzad(jSONObject.getJSONObject("google_silentVerificationExtension").getBoolean("silentVerification")));
        }
        if (jSONObject.has("devicePublicKeyExtension")) {
            builder.zzb(new zzu(jSONObject.getJSONObject("devicePublicKeyExtension").getBoolean("devicePublicKey")));
        }
        if (jSONObject.has("google_tunnelServerIdExtension")) {
            builder.zzf(new zzag(jSONObject.getJSONObject("google_tunnelServerIdExtension").getString("tunnelServerId")));
        }
        if (jSONObject.has("google_thirdPartyPaymentExtension")) {
            builder.setGoogleThirdPartyPaymentExtension(new GoogleThirdPartyPaymentExtension(jSONObject.getJSONObject("google_thirdPartyPaymentExtension").getBoolean("thirdPartyPayment")));
        }
        if (jSONObject.has("txAuthSimple")) {
            builder.zzh(new zzaw(jSONObject.getString("txAuthSimple")));
        }
        return builder.build();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AuthenticationExtensions)) {
            return false;
        }
        AuthenticationExtensions authenticationExtensions = (AuthenticationExtensions) obj;
        return Objects.equal(this.zza, authenticationExtensions.zza) && Objects.equal(this.zzb, authenticationExtensions.zzb) && Objects.equal(this.zzc, authenticationExtensions.zzc) && Objects.equal(this.zzd, authenticationExtensions.zzd) && Objects.equal(this.zze, authenticationExtensions.zze) && Objects.equal(this.zzf, authenticationExtensions.zzf) && Objects.equal(this.zzg, authenticationExtensions.zzg) && Objects.equal(this.zzh, authenticationExtensions.zzh) && Objects.equal(this.zzi, authenticationExtensions.zzi) && Objects.equal(this.zzj, authenticationExtensions.zzj) && Objects.equal(this.zzk, authenticationExtensions.zzk) && Objects.equal(this.zzl, authenticationExtensions.zzl);
    }

    public FidoAppIdExtension getFidoAppIdExtension() {
        return this.zza;
    }

    public UserVerificationMethodExtension getUserVerificationMethodExtension() {
        return this.zzc;
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl);
    }

    public final String toString() {
        zzaw zzawVar = this.zzk;
        zzak zzakVar = this.zzj;
        GoogleThirdPartyPaymentExtension googleThirdPartyPaymentExtension = this.zzi;
        zzag zzagVar = this.zzh;
        zzu zzuVar = this.zzg;
        zzad zzadVar = this.zzf;
        zzab zzabVar = this.zze;
        zzz zzzVar = this.zzd;
        UserVerificationMethodExtension userVerificationMethodExtension = this.zzc;
        zzs zzsVar = this.zzb;
        return "AuthenticationExtensions{\n fidoAppIdExtension=" + String.valueOf(this.zza) + ", \n cableAuthenticationExtension=" + String.valueOf(zzsVar) + ", \n userVerificationMethodExtension=" + String.valueOf(userVerificationMethodExtension) + ", \n googleMultiAssertionExtension=" + String.valueOf(zzzVar) + ", \n googleSessionIdExtension=" + String.valueOf(zzabVar) + ", \n googleSilentVerificationExtension=" + String.valueOf(zzadVar) + ", \n devicePublicKeyExtension=" + String.valueOf(zzuVar) + ", \n googleTunnelServerIdExtension=" + String.valueOf(zzagVar) + ", \n googleThirdPartyPaymentExtension=" + String.valueOf(googleThirdPartyPaymentExtension) + ", \n prfExtension=" + String.valueOf(zzakVar) + ", \n simpleTransactionAuthorizationExtension=" + String.valueOf(zzawVar) + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getFidoAppIdExtension(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzb, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, getUserVerificationMethodExtension(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zzd, i, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zze, i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.zzf, i, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.zzg, i, false);
        SafeParcelWriter.writeParcelable(parcel, 9, this.zzh, i, false);
        SafeParcelWriter.writeParcelable(parcel, 10, this.zzi, i, false);
        SafeParcelWriter.writeParcelable(parcel, 11, this.zzj, i, false);
        SafeParcelWriter.writeParcelable(parcel, 12, this.zzk, i, false);
        SafeParcelWriter.writeParcelable(parcel, 13, this.zzl, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
