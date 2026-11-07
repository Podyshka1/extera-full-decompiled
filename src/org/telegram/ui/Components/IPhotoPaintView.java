package org.telegram.ui.Components;

import android.view.View;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes7.dex */
public interface IPhotoPaintView {
    default void setOffsetTranslationX(float f) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    default View getView() {
        if (this instanceof View) {
            return (View) this;
        }
        f$$ExternalSyntheticBUOutline1.m212m("You should override getView() if you're not inheriting from it.");
        return null;
    }
}
