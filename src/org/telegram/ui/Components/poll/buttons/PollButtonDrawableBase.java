package org.telegram.ui.Components.poll.buttons;

import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.StateSet;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes7.dex */
public abstract class PollButtonDrawableBase extends Drawable {
    private int alpha = 255;
    protected final Theme.ResourcesProvider resourcesProvider;
    protected final Drawable selectorDrawable;
    protected int selectorDrawableColor;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public PollButtonDrawableBase(Theme.ResourcesProvider resourcesProvider) {
        int color = Theme.getColor(Theme.key_listSelector, resourcesProvider);
        this.selectorDrawableColor = color;
        this.resourcesProvider = resourcesProvider;
        this.selectorDrawable = Theme.createRadSelectorDrawable(color, 0, 0);
    }

    public Drawable getSelectorDrawable() {
        return this.selectorDrawable;
    }

    public void setupCallbacks(Drawable.Callback callback) {
        setCallback(callback);
        this.selectorDrawable.setCallback(callback);
    }

    public boolean verifyDrawable(Drawable drawable) {
        return drawable == this || drawable == this.selectorDrawable;
    }

    public final void setSelectorsColor(int i) {
        if (this.selectorDrawableColor != i) {
            onSelectorColorChanged(i);
            this.selectorDrawableColor = i;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.selectorDrawable.setBounds(rect);
    }

    public void resetSelectors() {
        this.selectorDrawable.setState(StateSet.NOTHING);
    }

    public void onAlphaChanged(int i) {
        this.selectorDrawable.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.alpha != i) {
            this.alpha = i;
            onAlphaChanged(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.alpha;
    }

    public void onSelectorColorChanged(int i) {
        Theme.setSelectorDrawableColor(this.selectorDrawable, i, false);
    }
}
