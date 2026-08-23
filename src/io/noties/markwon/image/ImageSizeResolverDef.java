package io.noties.markwon.image;

import android.graphics.Rect;
import io.noties.markwon.image.ImageSize;

/* JADX INFO: loaded from: classes5.dex */
public class ImageSizeResolverDef extends ImageSizeResolver {
    @Override // io.noties.markwon.image.ImageSizeResolver
    public Rect resolveImageSize(AsyncDrawable asyncDrawable) {
        return resolveImageSize(asyncDrawable.getImageSize(), asyncDrawable.getResult().getBounds(), asyncDrawable.getLastKnownCanvasWidth(), asyncDrawable.getLastKnowTextSize());
    }

    public Rect resolveImageSize(ImageSize imageSize, Rect rect, int i, float f) {
        int iResolveAbsolute;
        if (imageSize == null) {
            int iWidth = rect.width();
            if (iWidth > i) {
                return new Rect(0, 0, i, (int) ((rect.height() / (iWidth / i)) + 0.5f));
            }
            return rect;
        }
        ImageSize.Dimension dimension = imageSize.width;
        ImageSize.Dimension dimension2 = imageSize.height;
        int iWidth2 = rect.width();
        int iHeight = rect.height();
        float f2 = iWidth2 / iHeight;
        if (dimension != null) {
            if ("%".equals(dimension.unit)) {
                iResolveAbsolute = (int) ((i * (dimension.value / 100.0f)) + 0.5f);
            } else {
                iResolveAbsolute = resolveAbsolute(dimension, iWidth2, f);
            }
            return new Rect(0, 0, iResolveAbsolute, (dimension2 == null || "%".equals(dimension2.unit)) ? (int) ((iResolveAbsolute / f2) + 0.5f) : resolveAbsolute(dimension2, iHeight, f));
        }
        if (dimension2 == null || "%".equals(dimension2.unit)) {
            return rect;
        }
        int iResolveAbsolute2 = resolveAbsolute(dimension2, iHeight, f);
        return new Rect(0, 0, (int) ((iResolveAbsolute2 * f2) + 0.5f), iResolveAbsolute2);
    }

    public int resolveAbsolute(ImageSize.Dimension dimension, int i, float f) {
        boolean zEquals = "em".equals(dimension.unit);
        float f2 = dimension.value;
        if (zEquals) {
            f2 *= f;
        }
        return (int) (f2 + 0.5f);
    }
}
