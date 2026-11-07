package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzc extends com.google.android.gms.internal.cast.zzb implements zzd {
    public zzc() {
        super("com.google.android.gms.cast.framework.media.IImagePicker");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            MediaMetadata mediaMetadata = (MediaMetadata) com.google.android.gms.internal.cast.zzc.zzb(parcel, MediaMetadata.CREATOR);
            int i3 = parcel.readInt();
            com.google.android.gms.internal.cast.zzc.zzf(parcel);
            WebImage webImageZze = zze(mediaMetadata, i3);
            parcel2.writeNoException();
            com.google.android.gms.internal.cast.zzc.zzd(parcel2, webImageZze);
        } else if (i == 2) {
            IObjectWrapper iObjectWrapperZzf = zzf();
            parcel2.writeNoException();
            com.google.android.gms.internal.cast.zzc.zze(parcel2, iObjectWrapperZzf);
        } else if (i == 3) {
            parcel2.writeNoException();
            parcel2.writeInt(12451000);
        } else {
            if (i != 4) {
                return false;
            }
            MediaMetadata mediaMetadata2 = (MediaMetadata) com.google.android.gms.internal.cast.zzc.zzb(parcel, MediaMetadata.CREATOR);
            ImageHints imageHints = (ImageHints) com.google.android.gms.internal.cast.zzc.zzb(parcel, ImageHints.CREATOR);
            com.google.android.gms.internal.cast.zzc.zzf(parcel);
            WebImage webImageZzg = zzg(mediaMetadata2, imageHints);
            parcel2.writeNoException();
            com.google.android.gms.internal.cast.zzc.zzd(parcel2, webImageZzg);
        }
        return true;
    }
}
