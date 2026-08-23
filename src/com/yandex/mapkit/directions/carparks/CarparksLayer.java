package com.yandex.mapkit.directions.carparks;

/* JADX INFO: loaded from: classes5.dex */
public interface CarparksLayer {
    boolean isValid();

    boolean isVisible();

    void resetCarparksStyles();

    boolean setCarparksStyle(int i, String str);

    boolean setCarparksStyle(String str);

    void setVisible(boolean z);
}
