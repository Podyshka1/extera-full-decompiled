package io.noties.markwon.ext.latex;

import android.graphics.Rect;
import io.noties.markwon.image.AsyncDrawable;
import io.noties.markwon.image.ImageSizeResolver;

/* JADX INFO: loaded from: classes5.dex */
class JLatexBlockImageSizeResolver extends ImageSizeResolver {
    private final boolean fitCanvas;

    public JLatexBlockImageSizeResolver(boolean z) {
        this.fitCanvas = z;
    }

    @Override // io.noties.markwon.image.ImageSizeResolver
    public Rect resolveImageSize(AsyncDrawable asyncDrawable) {
        Rect bounds = asyncDrawable.getResult().getBounds();
        int lastKnownCanvasWidth = asyncDrawable.getLastKnownCanvasWidth();
        if (!this.fitCanvas) {
            return bounds;
        }
        int iWidth = bounds.width();
        if (iWidth < lastKnownCanvasWidth) {
            return new Rect(0, 0, lastKnownCanvasWidth, bounds.height());
        }
        if (iWidth <= lastKnownCanvasWidth) {
            return bounds;
        }
        return new Rect(0, 0, lastKnownCanvasWidth, (int) ((lastKnownCanvasWidth / (iWidth / bounds.height())) + 0.5f));
    }
}
