package com.google.android.gms.maps.internal;

import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.maps.model.LatLng;

/* JADX INFO: loaded from: classes4.dex */
public interface IProjectionDelegate extends IInterface {
    IObjectWrapper toScreenLocation(LatLng latLng);
}
