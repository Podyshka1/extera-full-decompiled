package com.google.android.gms.maps;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.maps.zzaj;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.model.AdvancedMarker;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.Circle;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class GoogleMap {
    private final IGoogleMapDelegate zza;
    private final Map zzc = new HashMap();
    private final Map zzd = new HashMap();
    private UiSettings zze;

    public interface CancelableCallback {
        void onCancel();

        void onFinish();
    }

    public interface OnCameraIdleListener {
        void onCameraIdle();
    }

    public interface OnCameraMoveListener {
        void onCameraMove();
    }

    public interface OnCameraMoveStartedListener {
        void onCameraMoveStarted(int i);
    }

    public interface OnMapLoadedCallback {
        void onMapLoaded();
    }

    public interface OnMarkerClickListener {
        boolean onMarkerClick(Marker marker);
    }

    @Deprecated
    public interface OnMyLocationChangeListener {
        void onMyLocationChange(Location location);
    }

    public GoogleMap(IGoogleMapDelegate iGoogleMapDelegate) {
        this.zza = (IGoogleMapDelegate) Preconditions.checkNotNull(iGoogleMapDelegate);
    }

    public final Circle addCircle(CircleOptions circleOptions) {
        try {
            Preconditions.checkNotNull(circleOptions, "CircleOptions must not be null.");
            return new Circle(this.zza.addCircle(circleOptions));
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
            return null;
        }
    }

    public final Marker addMarker(MarkerOptions markerOptions) {
        try {
            Preconditions.checkNotNull(markerOptions, "MarkerOptions must not be null.");
            zzaj zzajVarAddMarker = this.zza.addMarker(markerOptions);
            if (zzajVarAddMarker != null) {
                return markerOptions.zzb() == 1 ? new AdvancedMarker(zzajVarAddMarker) : new Marker(zzajVarAddMarker);
            }
            return null;
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
            return null;
        }
    }

    public final CameraPosition getCameraPosition() {
        try {
            return this.zza.getCameraPosition();
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
            return null;
        }
    }

    public final float getMaxZoomLevel() {
        try {
            return this.zza.getMaxZoomLevel();
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
            return 0.0f;
        }
    }

    public final float getMinZoomLevel() {
        try {
            return this.zza.getMinZoomLevel();
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
            return 0.0f;
        }
    }

    public final Projection getProjection() {
        try {
            return new Projection(this.zza.getProjection());
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
            return null;
        }
    }

    public final UiSettings getUiSettings() {
        try {
            if (this.zze == null) {
                this.zze = new UiSettings(this.zza.getUiSettings());
            }
            return this.zze;
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
            return null;
        }
    }

    public boolean setMapStyle(MapStyleOptions mapStyleOptions) {
        try {
            return this.zza.setMapStyle(mapStyleOptions);
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
            return false;
        }
    }

    public final void setOnCameraIdleListener(OnCameraIdleListener onCameraIdleListener) {
        IGoogleMapDelegate iGoogleMapDelegate = this.zza;
        try {
            if (onCameraIdleListener == null) {
                iGoogleMapDelegate.setOnCameraIdleListener(null);
            } else {
                iGoogleMapDelegate.setOnCameraIdleListener(new zzy(this, onCameraIdleListener));
            }
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
        }
    }

    public final void setOnCameraMoveListener(OnCameraMoveListener onCameraMoveListener) {
        IGoogleMapDelegate iGoogleMapDelegate = this.zza;
        try {
            if (onCameraMoveListener == null) {
                iGoogleMapDelegate.setOnCameraMoveListener(null);
            } else {
                iGoogleMapDelegate.setOnCameraMoveListener(new zzw(this, onCameraMoveListener));
            }
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
        }
    }

    public final void setOnCameraMoveStartedListener(OnCameraMoveStartedListener onCameraMoveStartedListener) {
        IGoogleMapDelegate iGoogleMapDelegate = this.zza;
        try {
            if (onCameraMoveStartedListener == null) {
                iGoogleMapDelegate.setOnCameraMoveStartedListener(null);
            } else {
                iGoogleMapDelegate.setOnCameraMoveStartedListener(new zzv(this, onCameraMoveStartedListener));
            }
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
        }
    }

    public void setOnMapLoadedCallback(OnMapLoadedCallback onMapLoadedCallback) {
        IGoogleMapDelegate iGoogleMapDelegate = this.zza;
        try {
            if (onMapLoadedCallback == null) {
                iGoogleMapDelegate.setOnMapLoadedCallback(null);
            } else {
                iGoogleMapDelegate.setOnMapLoadedCallback(new zzj(this, onMapLoadedCallback));
            }
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
        }
    }

    public final void setOnMarkerClickListener(OnMarkerClickListener onMarkerClickListener) {
        IGoogleMapDelegate iGoogleMapDelegate = this.zza;
        try {
            if (onMarkerClickListener == null) {
                iGoogleMapDelegate.setOnMarkerClickListener(null);
            } else {
                iGoogleMapDelegate.setOnMarkerClickListener(new zza(this, onMarkerClickListener));
            }
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
        }
    }

    @Deprecated
    public final void setOnMyLocationChangeListener(OnMyLocationChangeListener onMyLocationChangeListener) {
        IGoogleMapDelegate iGoogleMapDelegate = this.zza;
        try {
            if (onMyLocationChangeListener == null) {
                iGoogleMapDelegate.setOnMyLocationChangeListener(null);
            } else {
                iGoogleMapDelegate.setOnMyLocationChangeListener(new zzg(this, onMyLocationChangeListener));
            }
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
        }
    }

    public final void setMapType(int i) {
        try {
            this.zza.setMapType(i);
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
        }
    }

    public final void setMyLocationEnabled(boolean z) {
        try {
            this.zza.setMyLocationEnabled(z);
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
        }
    }

    public final void setPadding(int i, int i2, int i3, int i4) {
        try {
            this.zza.setPadding(i, i2, i3, i4);
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
        }
    }

    public final void animateCamera(CameraUpdate cameraUpdate) {
        try {
            Preconditions.checkNotNull(cameraUpdate, "CameraUpdate must not be null.");
            this.zza.animateCamera(cameraUpdate.zza());
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
        }
    }

    public final void moveCamera(CameraUpdate cameraUpdate) {
        try {
            Preconditions.checkNotNull(cameraUpdate, "CameraUpdate must not be null.");
            this.zza.moveCamera(cameraUpdate.zza());
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
        }
    }

    public final void animateCamera(CameraUpdate cameraUpdate, int i, CancelableCallback cancelableCallback) {
        try {
            Preconditions.checkNotNull(cameraUpdate, "CameraUpdate must not be null.");
            this.zza.animateCameraWithDurationAndCallback(cameraUpdate.zza(), i, cancelableCallback == null ? null : new zzab(cancelableCallback));
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
        }
    }

    public final void animateCamera(CameraUpdate cameraUpdate, CancelableCallback cancelableCallback) {
        try {
            Preconditions.checkNotNull(cameraUpdate, "CameraUpdate must not be null.");
            this.zza.animateCameraWithCallback(cameraUpdate.zza(), cancelableCallback == null ? null : new zzab(cancelableCallback));
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m329m(e);
        }
    }
}
