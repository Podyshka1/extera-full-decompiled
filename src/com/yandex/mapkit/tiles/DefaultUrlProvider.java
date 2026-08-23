package com.yandex.mapkit.tiles;

import com.yandex.mapkit.TileId;
import com.yandex.mapkit.Version;
import com.yandex.mapkit.ZoomRange;
import com.yandex.runtime.NativeObject;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class DefaultUrlProvider implements UrlProvider {
    private final NativeObject nativeObject = createNative();

    private static native NativeObject createNative();

    @Override // com.yandex.mapkit.tiles.UrlProvider
    public native String formatUrl(TileId tileId, Version version, Map<String, String> map);

    public native void setUrlPattern(String str);

    public native void setZoomRanges(List<ZoomRange> list);
}
