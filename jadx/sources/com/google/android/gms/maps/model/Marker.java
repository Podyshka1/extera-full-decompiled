package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.maps.zzaj;

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
            throw new RuntimeRemoteException(e);
        }
    }

    public LatLng getPosition() {
        try {
            return this.zza.zzj();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public Object getTag() {
        try {
            return ObjectWrapper.unwrap(this.zza.zzi());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public int hashCode() {
        try {
            return this.zza.zzg();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
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
            throw new RuntimeRemoteException(e);
        }
    }

    public void remove() {
        try {
            this.zza.zzo();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setRotation(float f) {
        try {
            this.zza.zzx(f);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setTag(Object obj) {
        try {
            this.zza.zzz(ObjectWrapper.wrap(obj));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setPosition(LatLng latLng) {
        if (latLng == null) {
            throw new IllegalArgumentException("latlng cannot be null - a position is required.");
        }
        try {
            this.zza.zzw(latLng);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
