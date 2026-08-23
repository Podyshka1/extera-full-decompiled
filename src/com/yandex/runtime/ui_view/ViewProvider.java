package com.yandex.runtime.ui_view;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import com.yandex.runtime.image.ImageProvider;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public class ViewProvider {
    private final boolean cacheable;
    private final String id;
    private Bitmap image;
    private int version;
    private final View view;

    public ViewProvider(View view, boolean z) {
        this.view = view;
        this.id = "view: " + UUID.randomUUID().toString();
        this.version = 0;
        this.cacheable = z;
        snapshot();
    }

    public ViewProvider(View view) {
        this(view, true);
    }

    public String getId() {
        return this.id;
    }

    public boolean isCacheable() {
        return this.cacheable;
    }

    private ImageProvider getImageProvider() {
        return ImageProvider.fromBitmap(this.image, this.cacheable, this.id + "#" + String.valueOf(this.version));
    }

    public void snapshot() {
        this.view.measure(0, 0);
        this.image = Bitmap.createBitmap(this.view.getMeasuredWidth(), this.view.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.image);
        View view = this.view;
        view.layout(0, 0, view.getMeasuredWidth(), this.view.getMeasuredHeight());
        this.view.draw(canvas);
        this.version++;
    }
}
