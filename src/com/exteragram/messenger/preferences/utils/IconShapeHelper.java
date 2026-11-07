package com.exteragram.messenger.preferences.utils;

import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.graphics.PathParser;
import com.exteragram.messenger.ExteraConfig;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\t\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0003¢\u0006\u0004\b\u000e\u0010\u0003J\u001f\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0014\u0010\u0013J'\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\u0015\u001a\u00020\u0006¢\u0006\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001c\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001bR\u0014\u0010\u001d\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010 \u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!¨\u0006\""}, d2 = {"Lcom/exteragram/messenger/preferences/utils/IconShapeHelper;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroid/graphics/Path;", "path", _UrlKt.FRAGMENT_ENCODE_SET, "width", "height", "resizePath", "(Landroid/graphics/Path;FF)Landroid/graphics/Path;", "getDefaultPath", "()Landroid/graphics/Path;", _UrlKt.FRAGMENT_ENCODE_SET, "initSystemPathCache", "Landroid/graphics/RectF;", "bounds", _UrlKt.FRAGMENT_ENCODE_SET, "calculateIfShouldUseRoundedRect", "(Landroid/graphics/Path;Landroid/graphics/RectF;)Z", "hasSharpCorners", "cornerRadius", "getFinalIconShapePath", "(FFF)Landroid/graphics/Path;", "cachedSystemPath", "Landroid/graphics/Path;", "isSystemPathSquare", "Z", "cacheInitialized", "scratchRect", "Landroid/graphics/RectF;", "Landroid/graphics/Matrix;", "scratchMatrix", "Landroid/graphics/Matrix;", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public final class IconShapeHelper {
    private static boolean cacheInitialized;
    private static Path cachedSystemPath;
    private static boolean isSystemPathSquare;
    public static final IconShapeHelper INSTANCE = new IconShapeHelper();
    private static final RectF scratchRect = new RectF();
    private static final Matrix scratchMatrix = new Matrix();

    private IconShapeHelper() {
    }

    public final Path getFinalIconShapePath(float width, float height, float cornerRadius) {
        Path defaultPath;
        boolean z = Build.VERSION.SDK_INT >= 26 && ExteraConfig.getUseSystemIconShape();
        if (z && !cacheInitialized) {
            initSystemPathCache();
        }
        if (!z || (defaultPath = cachedSystemPath) == null) {
            defaultPath = getDefaultPath();
        }
        float fDpf2 = AndroidUtilities.dpf2(width);
        float fDpf22 = AndroidUtilities.dpf2(height);
        float fDpf23 = AndroidUtilities.dpf2(cornerRadius);
        if (fDpf23 > 0.0f && z && isSystemPathSquare) {
            Path path = new Path();
            RectF rectF = scratchRect;
            rectF.set(0.0f, 0.0f, fDpf2, fDpf22);
            path.addRoundRect(rectF, fDpf23, fDpf23, Path.Direction.CW);
            return path;
        }
        return resizePath(defaultPath, fDpf2, fDpf22);
    }

    private final Path resizePath(Path path, float width, float height) {
        Path path2 = new Path();
        if (path != null && !path.isEmpty() && width > 0.0f && height > 0.0f) {
            RectF rectF = scratchRect;
            path.computeBounds(rectF, true);
            if (rectF.width() > 0.0f && rectF.height() > 0.0f) {
                Matrix matrix = scratchMatrix;
                matrix.reset();
                matrix.setRectToRect(rectF, new RectF(0.0f, 0.0f, width, height), Matrix.ScaleToFit.FILL);
                path.transform(matrix, path2);
            }
        }
        return path2;
    }

    private final Path getDefaultPath() {
        return PathParser.createPathFromPathData("M50,0A50,50,0,0,1,50,100A50,50,0,0,1,50,0");
    }

    private final void initSystemPathCache() {
        Resources system;
        int identifier;
        try {
            try {
                ColorDrawable colorDrawable = new ColorDrawable(0);
                IconShapeHelper$$ExternalSyntheticApiModelOutline1.m265m();
                Path iconMask = IconShapeHelper$$ExternalSyntheticApiModelOutline0.m264m(colorDrawable, colorDrawable).getIconMask();
                Path path = (iconMask == null || iconMask.isEmpty()) ? null : new Path(iconMask);
                if (path == null && (identifier = (system = Resources.getSystem()).getIdentifier("config_icon_mask", "string", "android")) != 0) {
                    String string = system.getString(identifier);
                    if (!TextUtils.isEmpty(string)) {
                        path = PathParser.createPathFromPathData(string);
                    }
                }
                if (path != null && !path.isEmpty()) {
                    cachedSystemPath = path;
                    RectF rectF = new RectF();
                    path.computeBounds(rectF, true);
                    isSystemPathSquare = calculateIfShouldUseRoundedRect(path, rectF);
                } else {
                    cachedSystemPath = null;
                    isSystemPathSquare = false;
                }
                cacheInitialized = true;
            } catch (Exception e) {
                FileLog.m992e(e);
                cachedSystemPath = null;
                isSystemPathSquare = false;
                cacheInitialized = true;
            }
        } catch (Throwable th) {
            cacheInitialized = true;
            throw th;
        }
    }

    private final boolean calculateIfShouldUseRoundedRect(Path path, RectF bounds) {
        if (path.isEmpty()) {
            return false;
        }
        Region region = new Region((int) bounds.left, (int) bounds.top, (int) bounds.right, (int) bounds.bottom);
        Region region2 = new Region();
        region2.setPath(path, region);
        if (region2.isRect()) {
            return true;
        }
        return hasSharpCorners(path, bounds);
    }

    private final boolean hasSharpCorners(Path path, RectF bounds) {
        if (bounds.width() <= 0.0f || bounds.height() <= 0.0f) {
            return false;
        }
        int iMax = Math.max(3, (int) (Math.min(bounds.width(), bounds.height()) * 0.1f));
        Region region = new Region();
        region.setPath(path, new Region((int) bounds.left, (int) bounds.top, (int) bounds.right, (int) bounds.bottom));
        float f = bounds.left;
        float f2 = bounds.top;
        Rect rect = new Rect((int) f, (int) f2, ((int) f) + iMax, ((int) f2) + iMax);
        float f3 = bounds.right;
        float f4 = bounds.top;
        Rect rect2 = new Rect(((int) f3) - iMax, (int) f4, (int) f3, ((int) f4) + iMax);
        float f5 = bounds.right;
        float f6 = bounds.bottom;
        Rect rect3 = new Rect(((int) f5) - iMax, ((int) f6) - iMax, (int) f5, (int) f6);
        float f7 = bounds.left;
        float f8 = bounds.bottom;
        Rect[] rectArr = {rect, rect2, rect3, new Rect((int) f7, ((int) f8) - iMax, ((int) f7) + iMax, (int) f8)};
        Region region2 = new Region();
        for (int i = 0; i < 4; i++) {
            Rect rect4 = rectArr[i];
            region2.set(region);
            if (!region2.op(rect4, Region.Op.INTERSECT)) {
                return false;
            }
        }
        return true;
    }
}
