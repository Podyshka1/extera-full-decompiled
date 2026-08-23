package com.exteragram.messenger.maps.yandex;

import android.location.Location;
import androidx.core.util.Consumer;
import org.telegram.messenger.ILocationServiceProvider;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class YandexLocationProvider$$ExternalSyntheticLambda5 implements ILocationServiceProvider.ILocationListener {
    public final /* synthetic */ Consumer f$0;

    @Override // org.telegram.messenger.ILocationServiceProvider.ILocationListener
    public final void onLocationChanged(Location location) {
        this.f$0.accept(location);
    }
}
