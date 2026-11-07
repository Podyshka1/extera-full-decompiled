package com.google.android.material.drawable;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.appcompat.graphics.drawable.DrawableWrapperCompat;

/* JADX INFO: loaded from: classes5.dex */
public class ScaledDrawableWrapper extends DrawableWrapperCompat {
    private boolean mutated;
    private ScaledDrawableWrapperState state;

    public ScaledDrawableWrapper(Drawable drawable, int i, int i2) {
        super(drawable);
        this.state = new ScaledDrawableWrapperState(getConstantStateFrom(drawable), i, i2);
    }

    private Drawable.ConstantState getConstantStateFrom(Drawable drawable) {
        if (drawable != null) {
            return drawable.getConstantState();
        }
        return null;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.state.width;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.state.height;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat
    public void setDrawable(Drawable drawable) {
        super.setDrawable(drawable);
        ScaledDrawableWrapperState scaledDrawableWrapperState = this.state;
        if (scaledDrawableWrapperState != null) {
            scaledDrawableWrapperState.wrappedDrawableState = getConstantStateFrom(drawable);
            this.mutated = false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.state.canConstantState()) {
            return this.state;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mutated && super.mutate() == this) {
            Drawable drawable = getDrawable();
            if (drawable != null) {
                drawable.mutate();
            }
            this.state = new ScaledDrawableWrapperState(getConstantStateFrom(drawable), this.state.width, this.state.height);
            this.mutated = true;
        }
        return this;
    }

    public static final class ScaledDrawableWrapperState extends Drawable.ConstantState {
        private final int height;
        private final int width;
        private Drawable.ConstantState wrappedDrawableState;

        public ScaledDrawableWrapperState(Drawable.ConstantState constantState, int i, int i2) {
            this.wrappedDrawableState = constantState;
            this.width = i;
            this.height = i2;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new ScaledDrawableWrapper(this.wrappedDrawableState.newDrawable(), this.width, this.height);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new ScaledDrawableWrapper(this.wrappedDrawableState.newDrawable(resources), this.width, this.height);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            return new ScaledDrawableWrapper(this.wrappedDrawableState.newDrawable(resources, theme), this.width, this.height);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            Drawable.ConstantState constantState = this.wrappedDrawableState;
            if (constantState != null) {
                return constantState.getChangingConfigurations();
            }
            return 0;
        }

        public boolean canConstantState() {
            return this.wrappedDrawableState != null;
        }
    }
}
