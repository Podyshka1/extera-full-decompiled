package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.maps.zzaj;
import com.google.android.gms.maps.zzah$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public class Marker {
    protected final zzaj zza;

    public Marker(zzaj zzajVar) {
        this.zza = (zzaj) Preconditions.checkNotNull(zzajVar);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Marker)) {
            return false;
        }
        try {
            return this.zza.zzE(((Marker) obj).zza);
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
            return false;
        }
    }

    public LatLng getPosition() {
        try {
            return this.zza.zzj();
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
            return null;
        }
    }

    public Object getTag() {
        try {
            return ObjectWrapper.unwrap(this.zza.zzi());
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
            return null;
        }
    }

    public int hashCode() {
        try {
            return this.zza.zzg();
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
            return 0;
        }
    }

    public void setIcon(BitmapDescriptor bitmapDescriptor) {
        try {
            if (bitmapDescriptor == null) {
                this.zza.zzt(null);
            } else {
                this.zza.zzt(bitmapDescriptor.zza());
            }
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
        }
    }

    public void remove() {
        try {
            this.zza.zzo();
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
        }
    }

    public void setRotation(float f) {
        try {
            this.zza.zzx(f);
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
        }
    }

    public void setTag(Object obj) {
        try {
            this.zza.zzz(ObjectWrapper.wrap(obj));
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
        }
    }

    public void setPosition(LatLng latLng) {
        if (latLng == null) {
            f$$ExternalSyntheticBUOutline1.m178m("latlng cannot be null - a position is required.");
            return;
        }
        try {
            this.zza.zzw(latLng);
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
        }
    }
}
