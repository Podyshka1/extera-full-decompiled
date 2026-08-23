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
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes4.dex */
public final class IconShapeHelper {
    private static boolean cacheInitialized;
    private static Path cachedSystemPath;
    private static boolean isSystemPathSquare;
    public static final IconShapeHelper INSTANCE = new IconShapeHelper();
    private static final RectF scratchRect = new RectF();
    private static final Matrix scratchMatrix = new Matrix();

    private IconShapeHelper() {
    }

    public final Path getFinalIconShapePath(float f, float f2, float f3) {
        Path defaultPath;
        boolean z = Build.VERSION.SDK_INT >= 26 && ExteraConfig.useSystemIconShape;
        if (z && !cacheInitialized) {
            initSystemPathCache();
        }
        if (!z || (defaultPath = cachedSystemPath) == null) {
            defaultPath = getDefaultPath();
        }
        float fDpf2 = AndroidUtilities.dpf2(f);
        float fDpf22 = AndroidUtilities.dpf2(f2);
        float fDpf23 = AndroidUtilities.dpf2(f3);
        if (fDpf23 > 0.0f && z && isSystemPathSquare) {
            Path path = new Path();
            RectF rectF = scratchRect;
            rectF.set(0.0f, 0.0f, fDpf2, fDpf22);
            path.addRoundRect(rectF, fDpf23, fDpf23, Path.Direction.CW);
            return path;
        }
        return resizePath(defaultPath, fDpf2, fDpf22);
    }

    private final Path resizePath(Path path, float f, float f2) {
        Path path2 = new Path();
        if (path != null && !path.isEmpty() && f > 0.0f && f2 > 0.0f) {
            RectF rectF = scratchRect;
            path.computeBounds(rectF, true);
            if (rectF.width() > 0.0f && rectF.height() > 0.0f) {
                Matrix matrix = scratchMatrix;
                matrix.reset();
                matrix.setRectToRect(rectF, new RectF(0.0f, 0.0f, f, f2), Matrix.ScaleToFit.FILL);
                path.transform(matrix, path2);
            }
        }
        return path2;
    }

    private final Path getDefaultPath() {
        Path pathCreatePathFromPathData = PathParser.createPathFromPathData("M50,0A50,50,0,0,1,50,100A50,50,0,0,1,50,0");
        Intrinsics.checkNotNullExpressionValue(pathCreatePathFromPathData, "createPathFromPathData(...)");
        return pathCreatePathFromPathData;
    }

    private final void initSystemPathCache() {
        Resources system;
        int identifier;
        try {
            try {
                ColorDrawable colorDrawable = new ColorDrawable(0);
                IconShapeHelper$$ExternalSyntheticApiModelOutline1.m275m();
                Path iconMask = IconShapeHelper$$ExternalSyntheticApiModelOutline0.m274m(colorDrawable, colorDrawable).getIconMask();
                Path path = (iconMask == null || iconMask.isEmpty()) ? null : new Path(iconMask);
                if (path == null && (identifier = (system = Resources.getSystem()).getIdentifier("config_icon_mask", "string", "android")) != 0) {
                    String string = system.getString(identifier);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
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
                FileLog.m1136e(e);
                cachedSystemPath = null;
                isSystemPathSquare = false;
                cacheInitialized = true;
            }
        } catch (Throwable th) {
            cacheInitialized = true;
            throw th;
        }
    }

    private final boolean calculateIfShouldUseRoundedRect(Path path, RectF rectF) {
        if (path.isEmpty()) {
            return false;
        }
        Region region = new Region((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        Region region2 = new Region();
        region2.setPath(path, region);
        if (region2.isRect()) {
            return true;
        }
        return hasSharpCorners(path, rectF);
    }

    private final boolean hasSharpCorners(Path path, RectF rectF) {
        if (rectF.width() <= 0.0f || rectF.height() <= 0.0f) {
            return false;
        }
        int iMax = Math.max(3, (int) (Math.min(rectF.width(), rectF.height()) * 0.1f));
        Region region = new Region();
        region.setPath(path, new Region((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom));
        float f = rectF.left;
        float f2 = rectF.top;
        Rect rect = new Rect((int) f, (int) f2, ((int) f) + iMax, ((int) f2) + iMax);
        float f3 = rectF.right;
        float f4 = rectF.top;
        Rect rect2 = new Rect(((int) f3) - iMax, (int) f4, (int) f3, ((int) f4) + iMax);
        float f5 = rectF.right;
        float f6 = rectF.bottom;
        Rect rect3 = new Rect(((int) f5) - iMax, ((int) f6) - iMax, (int) f5, (int) f6);
        float f7 = rectF.left;
        float f8 = rectF.bottom;
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
