package com.yandex.mapkit.map.internal;

import com.yandex.mapkit.images.ImageUrlProvider;
import com.yandex.mapkit.map.BaseDataSourceBuilder;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.subscription.Subscription;

/* JADX INFO: loaded from: classes5.dex */
public class BaseDataSourceBuilderBinding implements BaseDataSourceBuilder {
    protected Subscription<ImageUrlProvider> imageUrlProviderSubscription = new Subscription<ImageUrlProvider>() { // from class: com.yandex.mapkit.map.internal.BaseDataSourceBuilderBinding.1
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(ImageUrlProvider imageUrlProvider) {
            return BaseDataSourceBuilderBinding.createImageUrlProvider(imageUrlProvider);
        }
    };
    private final NativeObject nativeObject;

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createImageUrlProvider(ImageUrlProvider imageUrlProvider);

    @Override // com.yandex.mapkit.map.BaseDataSourceBuilder
    public native boolean isValid();

    @Override // com.yandex.mapkit.map.BaseDataSourceBuilder
    public native void setImageUrlProvider(ImageUrlProvider imageUrlProvider);

    public BaseDataSourceBuilderBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
