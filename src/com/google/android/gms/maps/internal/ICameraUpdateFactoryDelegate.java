package com.google.android.gms.maps.internal;

import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

/* JADX INFO: loaded from: classes4.dex */
public interface ICameraUpdateFactoryDelegate extends IInterface {
    IObjectWrapper newLatLng(LatLng latLng);

    IObjectWrapper newLatLngBounds(LatLngBounds latLngBounds, int i);

    IObjectWrapper newLatLngZoom(LatLng latLng, float f);
}
