package org.telegram.p029ui.Components.blur3.drawable.color;

import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Stories.DarkThemeResourceProvider;

/* JADX INFO: loaded from: classes3.dex */
public class BlurredBackgroundProviderBuilder implements BlurredBackgroundProvider {
    private ColorProvider backgroundColor;
    private final Theme.ResourcesProvider resourcesProvider;
    private ColorProvider shadowColor;
    private float shadowDx;
    private float shadowDy;
    private float shadowRadius;
    private ColorProvider strokeColorBottom;
    private ColorProvider strokeColorFull;
    private ColorProvider strokeColorTop;
    private float strokeWidthBottom;
    private float strokeWidthTop;

    public interface ColorProvider {
        int getColor(Theme.ResourcesProvider resourcesProvider, boolean z);
    }

    public BlurredBackgroundProvider build() {
        return this;
    }

    public BlurredBackgroundProviderBuilder(Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
        setShadowLayer(AndroidUtilities.dpf2(1.0f), 0.0f, AndroidUtilities.dpf2(0.33333334f));
        setStrokeWidth(AndroidUtilities.dpf2(1.0f), AndroidUtilities.dpf2(0.6666667f));
    }

    public BlurredBackgroundProviderBuilder setShadowColor(int i, int i2) {
        this.shadowColor = create(i, i2);
        return this;
    }

    public BlurredBackgroundProviderBuilder setStrokeColorTop(int i, int i2) {
        this.strokeColorTop = create(i, i2);
        return this;
    }

    public BlurredBackgroundProviderBuilder setStrokeColorBottom(int i, int i2) {
        this.strokeColorBottom = create(i, i2);
        return this;
    }

    public BlurredBackgroundProviderBuilder setStrokeColorFull(int i, int i2) {
        this.strokeColorFull = create(i, i2);
        return this;
    }

    public BlurredBackgroundProviderBuilder setBackgroundColor(ColorProvider colorProvider) {
        this.backgroundColor = colorProvider;
        return this;
    }

    public BlurredBackgroundProviderBuilder setShadowLayer(float f, float f2, float f3) {
        this.shadowRadius = f;
        this.shadowDx = f2;
        this.shadowDy = f3;
        return this;
    }

    public BlurredBackgroundProviderBuilder setStrokeWidth(float f, float f2) {
        this.strokeWidthTop = f;
        this.strokeWidthBottom = f2;
        return this;
    }

    @Override // org.telegram.p029ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider
    public int getShadowColor() {
        return get(this.shadowColor, 0);
    }

    @Override // org.telegram.p029ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider
    public int getBackgroundColor() {
        return get(this.backgroundColor, 0);
    }

    @Override // org.telegram.p029ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider
    public int getStrokeColorTop() {
        return get(this.strokeColorTop, 0);
    }

    @Override // org.telegram.p029ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider
    public int getStrokeColorBottom() {
        return get(this.strokeColorBottom, 0);
    }

    @Override // org.telegram.p029ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider
    public int getStrokeColorFull() {
        ColorProvider colorProvider = this.strokeColorFull;
        return colorProvider != null ? get(colorProvider, 0) : Theme.getColor(Theme.key_divider, this.resourcesProvider);
    }

    @Override // org.telegram.p029ui.Components.blur3.drawable.color.BlurredBackgroundProvider
    public float getStrokeWidthTop() {
        return this.strokeWidthTop;
    }

    @Override // org.telegram.p029ui.Components.blur3.drawable.color.BlurredBackgroundProvider
    public float getStrokeWidthBottom() {
        return this.strokeWidthBottom;
    }

    @Override // org.telegram.p029ui.Components.blur3.drawable.color.BlurredBackgroundProvider
    public float getShadowRadius() {
        return this.shadowRadius;
    }

    @Override // org.telegram.p029ui.Components.blur3.drawable.color.BlurredBackgroundProvider
    public float getShadowDx() {
        return this.shadowDx;
    }

    @Override // org.telegram.p029ui.Components.blur3.drawable.color.BlurredBackgroundProvider
    public float getShadowDy() {
        return this.shadowDy;
    }

    private int get(ColorProvider colorProvider, int i) {
        return colorProvider != null ? colorProvider.getColor(this.resourcesProvider, isDark()) : i;
    }

    private boolean isDark() {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        return ((resourcesProvider instanceof DarkThemeResourceProvider) || resourcesProvider != null) ? resourcesProvider.isDark() : Theme.isCurrentThemeDark();
    }

    public static /* synthetic */ int $r8$lambda$L6TaFC4EiCuKVKYV83zwJJCpq8s(int i, int i2, Theme.ResourcesProvider resourcesProvider, boolean z) {
        return z ? i : i2;
    }

    private static ColorProvider create(final int i, final int i2) {
        return new ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider, boolean z) {
                return BlurredBackgroundProviderBuilder.$r8$lambda$L6TaFC4EiCuKVKYV83zwJJCpq8s(i2, i, resourcesProvider, z);
            }
        };
    }
}
