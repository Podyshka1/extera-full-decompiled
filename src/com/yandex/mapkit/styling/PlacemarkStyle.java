package com.yandex.mapkit.styling;

import android.graphics.PointF;
import com.yandex.mapkit.map.ModelStyle;
import com.yandex.runtime.DataProviderWithId;
import com.yandex.runtime.image.AnimatedImageProvider;
import com.yandex.runtime.image.ImageProvider;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface PlacemarkStyle {
    boolean isValid();

    void setAnimatedImage(AnimatedImageProvider animatedImageProvider);

    void setArrowModel();

    void setGltfModel(DataProviderWithId dataProviderWithId, ModelStyle modelStyle);

    void setIconAnchor(PointF pointF);

    void setImage(ImageProvider imageProvider);

    void setMinZoomVisible(Float f);

    void setScaleFunction(List<PointF> list);
}
