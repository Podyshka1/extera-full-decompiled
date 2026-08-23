package com.yandex.mapkit.directions.driving.internal;

import android.graphics.Bitmap;
import com.yandex.mapkit.directions.driving.Lane;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class LaneBitmapFactory {
    public static native Bitmap createLaneBitmap(List<Lane> list);
}
