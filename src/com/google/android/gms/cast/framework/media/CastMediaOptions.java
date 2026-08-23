package com.google.android.gms.cast.framework.media;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public class CastMediaOptions extends AbstractSafeParcelable {
    private final String zzb;
    private final String zzc;
    private final zzd zzd;
    private final NotificationOptions zze;
    private final boolean zzf;
    private final boolean zzg;
    private static final Logger zza = new Logger("CastMediaOptions");
    public static final Parcelable.Creator<CastMediaOptions> CREATOR = new zza();

    public static final class Builder {
        private String zzb;
        private String zza = "com.google.android.gms.cast.framework.media.MediaIntentReceiver";
        private NotificationOptions zzd = new NotificationOptions.Builder().build();
        private boolean zze = true;

        public CastMediaOptions build() {
            return new CastMediaOptions(this.zza, this.zzb, null, this.zzd, false, this.zze);
        }

        public Builder setMediaSessionEnabled(boolean z) {
            this.zze = z;
            return this;
        }

        public Builder setNotificationOptions(NotificationOptions notificationOptions) {
            this.zzd = notificationOptions;
            return this;
        }
    }

    CastMediaOptions(String str, String str2, IBinder iBinder, NotificationOptions notificationOptions, boolean z, boolean z2) {
        zzd zzbVar;
        this.zzb = str;
        this.zzc = str2;
        if (iBinder == null) {
            zzbVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.IImagePicker");
            zzbVar = iInterfaceQueryLocalInterface instanceof zzd ? (zzd) iInterfaceQueryLocalInterface : new zzb(iBinder);
        }
        this.zzd = zzbVar;
        this.zze = notificationOptions;
        this.zzf = z;
        this.zzg = z2;
    }

    public String getExpandedControllerActivityClassName() {
        return this.zzc;
    }

    public ImagePicker getImagePicker() {
        zzd zzdVar = this.zzd;
        if (zzdVar != null) {
            try {
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(ObjectWrapper.unwrap(zzdVar.zzg()));
                return null;
            } catch (RemoteException e) {
                zza.m337d(e, "Unable to call %s on %s.", "getWrappedClientObject", zzd.class.getSimpleName());
            }
        }
        return null;
    }

    public String getMediaIntentReceiverClassName() {
        return this.zzb;
    }

    public boolean getMediaSessionEnabled() {
        return this.zzg;
    }

    public NotificationOptions getNotificationOptions() {
        return this.zze;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getMediaIntentReceiverClassName(), false);
        SafeParcelWriter.writeString(parcel, 3, getExpandedControllerActivityClassName(), false);
        zzd zzdVar = this.zzd;
        SafeParcelWriter.writeIBinder(parcel, 4, zzdVar == null ? null : zzdVar.asBinder(), false);
        SafeParcelWriter.writeParcelable(parcel, 5, getNotificationOptions(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zzf);
        SafeParcelWriter.writeBoolean(parcel, 7, getMediaSessionEnabled());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final boolean zza() {
        return this.zzf;
    }
}
