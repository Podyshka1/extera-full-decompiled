package com.yandex.mapkit.navigation.automotive.layer.styling;

import com.yandex.mapkit.navigation.JamTypeColor;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface JamStyle {
    boolean isValid();

    void setColors(List<JamTypeColor> list);

    void setGradientLength(float f);
}
