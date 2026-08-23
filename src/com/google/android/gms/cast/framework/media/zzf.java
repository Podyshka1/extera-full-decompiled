package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzf extends com.google.android.gms.internal.cast.zzb implements zzg {
    public zzf() {
        super("com.google.android.gms.cast.framework.media.INotificationActionsProvider");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            parcel2.writeNoException();
            parcel2.writeInt(12451000);
        } else if (i == 2) {
            IObjectWrapper iObjectWrapperZze = zze();
            parcel2.writeNoException();
            com.google.android.gms.internal.cast.zzc.zze(parcel2, iObjectWrapperZze);
        } else if (i == 3) {
            List listZzf = zzf();
            parcel2.writeNoException();
            parcel2.writeTypedList(listZzf);
        } else {
            if (i != 4) {
                return false;
            }
            int[] iArrZzg = zzg();
            parcel2.writeNoException();
            parcel2.writeIntArray(iArrZzg);
        }
        return true;
    }
}
