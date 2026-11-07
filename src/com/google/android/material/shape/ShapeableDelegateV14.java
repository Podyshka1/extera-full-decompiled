package com.google.android.material.shape;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
class ShapeableDelegateV14 extends ShapeableDelegate {
    @Override // com.google.android.material.shape.ShapeableDelegate
    public boolean shouldUseCompatClipping() {
        return true;
    }

    @Override // com.google.android.material.shape.ShapeableDelegate
    public void invalidateClippingMethod(View view) {
        if (this.shapeAppearanceModel == null || this.maskBounds.isEmpty() || !shouldUseCompatClipping()) {
            return;
        }
        view.invalidate();
    }
}
