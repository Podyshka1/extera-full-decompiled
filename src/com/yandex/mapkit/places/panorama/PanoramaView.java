package com.yandex.mapkit.places.panorama;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.yandex.mapkit.places.PlacesFactory;
import com.yandex.mapkit.places.panorama.internal.PlayerBinding;
import com.yandex.runtime.view.PlatformView;
import com.yandex.runtime.view.PlatformViewFactory;

/* JADX INFO: loaded from: classes5.dex */
public class PanoramaView extends RelativeLayout {
    private PlatformView platformView_;
    private PlayerBinding player_;

    public PanoramaView(Context context) {
        this(context, null, 0);
    }

    public PanoramaView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PanoramaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.platformView_ = PlatformViewFactory.getPlatformView(context, PlatformViewFactory.convertAttributeSet(context, attributeSet));
        this.player_ = (PlayerBinding) PlacesFactory.getInstance().createPanoramaPlayer(this.platformView_);
        addView(this.platformView_.getView(), new RelativeLayout.LayoutParams(-1, -1));
    }

    public Player getPlayer() {
        return this.player_;
    }

    public void setNoninteractive(boolean z) {
        this.platformView_.setNoninteractive(z);
    }

    public void onStop() {
        this.platformView_.pause();
        this.platformView_.stop();
    }

    public void onStart() {
        this.platformView_.start();
        this.platformView_.resume();
    }

    public void onMemoryWarning() {
        this.platformView_.onMemoryWarning();
    }
}
