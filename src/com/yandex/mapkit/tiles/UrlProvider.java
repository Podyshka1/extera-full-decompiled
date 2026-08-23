package com.yandex.mapkit.tiles;

import com.yandex.mapkit.TileId;
import com.yandex.mapkit.Version;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface UrlProvider {
    String formatUrl(TileId tileId, Version version, Map<String, String> map);
}
