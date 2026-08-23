package org.telegram.p029ui.Components;

import android.view.View;

/* JADX INFO: loaded from: classes7.dex */
public interface IPhotoPaintView {

    /* JADX INFO: renamed from: org.telegram.ui.Components.IPhotoPaintView$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        /* JADX WARN: Multi-variable type inference failed */
        public static View $default$getView(IPhotoPaintView iPhotoPaintView) {
            if (iPhotoPaintView instanceof View) {
                return (View) iPhotoPaintView;
            }
            throw new IllegalArgumentException("You should override getView() if you're not inheriting from it.");
        }

        public static void $default$setOffsetTranslationX(IPhotoPaintView iPhotoPaintView, float f) {
        }
    }
}
