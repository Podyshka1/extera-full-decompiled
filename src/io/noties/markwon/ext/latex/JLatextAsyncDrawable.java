package io.noties.markwon.ext.latex;

import io.noties.markwon.image.AsyncDrawable;
import io.noties.markwon.image.AsyncDrawableLoader;
import io.noties.markwon.image.ImageSize;
import io.noties.markwon.image.ImageSizeResolver;

/* JADX INFO: loaded from: classes5.dex */
class JLatextAsyncDrawable extends AsyncDrawable {
    private final boolean isBlock;

    public JLatextAsyncDrawable(String str, AsyncDrawableLoader asyncDrawableLoader, ImageSizeResolver imageSizeResolver, ImageSize imageSize, boolean z) {
        super(str, asyncDrawableLoader, imageSizeResolver, imageSize);
        this.isBlock = z;
    }

    public boolean isBlock() {
        return this.isBlock;
    }
}
