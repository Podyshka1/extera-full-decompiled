package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.map.PolylineMapObject;
import com.yandex.mapkit.navigation.JamSegment;
import com.yandex.mapkit.navigation.JamStyle;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class DrivingJamsPainter {
    public static native void applyJamsStyle(PolylineMapObject polylineMapObject, List<JamSegment> list, JamStyle jamStyle);
}
