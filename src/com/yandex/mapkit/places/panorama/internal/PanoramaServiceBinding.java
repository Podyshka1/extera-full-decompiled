package com.yandex.mapkit.places.panorama.internal;

import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.places.panorama.PanoramaService;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class PanoramaServiceBinding implements PanoramaService {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.places.panorama.PanoramaService
    public native PanoramaService.SearchSession findNearest(Point point, PanoramaService.SearchListener searchListener);

    public PanoramaServiceBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }

    public static class SearchSessionBinding implements PanoramaService.SearchSession {
        private final NativeObject nativeObject;

        @Override // com.yandex.mapkit.places.panorama.PanoramaService.SearchSession
        public native void cancel();

        @Override // com.yandex.mapkit.places.panorama.PanoramaService.SearchSession
        public native void retry(PanoramaService.SearchListener searchListener);

        public SearchSessionBinding(NativeObject nativeObject) {
            this.nativeObject = nativeObject;
        }
    }
}
