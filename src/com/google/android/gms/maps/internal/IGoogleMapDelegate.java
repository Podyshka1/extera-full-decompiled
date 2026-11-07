package com.google.android.gms.maps.internal;

import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.maps.zzaj;
import com.google.android.gms.internal.maps.zzn;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.MarkerOptions;

/* JADX INFO: loaded from: classes5.dex */
public interface IGoogleMapDelegate extends IInterface {
    zzn addCircle(CircleOptions circleOptions);

    zzaj addMarker(MarkerOptions markerOptions);

    void animateCamera(IObjectWrapper iObjectWrapper);

    void animateCameraWithCallback(IObjectWrapper iObjectWrapper, zzd zzdVar);

    void animateCameraWithDurationAndCallback(IObjectWrapper iObjectWrapper, int i, zzd zzdVar);

    CameraPosition getCameraPosition();

    float getMaxZoomLevel();

    float getMinZoomLevel();

    IProjectionDelegate getProjection();

    IUiSettingsDelegate getUiSettings();

    void moveCamera(IObjectWrapper iObjectWrapper);

    boolean setMapStyle(MapStyleOptions mapStyleOptions);

    void setMapType(int i);

    void setMyLocationEnabled(boolean z);

    void setOnCameraIdleListener(zzp zzpVar);

    void setOnCameraMoveListener(zzt zztVar);

    void setOnCameraMoveStartedListener(zzv zzvVar);

    void setOnMapLoadedCallback(zzap zzapVar);

    void setOnMarkerClickListener(zzav zzavVar);

    void setOnMyLocationChangeListener(zzbb zzbbVar);

    void setPadding(int i, int i2, int i3, int i4);
}
