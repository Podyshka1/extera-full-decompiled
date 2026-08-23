package io.noties.markwon.image;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes5.dex */
class AsyncDrawableLoaderNoOp extends AsyncDrawableLoader {
    @Override // io.noties.markwon.image.AsyncDrawableLoader
    public void cancel(AsyncDrawable asyncDrawable) {
    }

    @Override // io.noties.markwon.image.AsyncDrawableLoader
    public void load(AsyncDrawable asyncDrawable) {
    }

    @Override // io.noties.markwon.image.AsyncDrawableLoader
    public Drawable placeholder(AsyncDrawable asyncDrawable) {
        return null;
    }
}
