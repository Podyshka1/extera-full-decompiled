package org.telegram.ui.QrShare;

import android.content.res.Resources;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Region;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import com.exteragram.messenger.utils.ui.AbstractC1543xd47ee21c;
import org.telegram.messenger.BotFullscreenButtons$$ExternalSyntheticApiModelOutline0;
import org.telegram.ui.Components.chat.buttons.AbstractC4834x2078045a;
import org.telegram.ui.Components.chat.buttons.AbstractC4835x2078045b;

/* JADX INFO: loaded from: classes7.dex */
public abstract class QrRender {
    private static float frameworkRadius = -1.0f;

    public static boolean hasEffects() {
        return Build.VERSION.SDK_INT >= 31;
    }

    public static boolean hasNodes() {
        return Build.VERSION.SDK_INT >= 29;
    }

    public static boolean hasVertices() {
        return Build.VERSION.SDK_INT >= 29;
    }

    public static Object createNode(String str) {
        return AbstractC1543xd47ee21c.m302m(str);
    }

    public static Canvas beginRecording(Object obj, int i, int i2) {
        RenderNode renderNodeM1035m = BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m1035m(obj);
        renderNodeM1035m.setPosition(0, 0, i, i2);
        return renderNodeM1035m.beginRecording();
    }

    public static void endRecording(Object obj) {
        BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m1035m(obj).endRecording();
    }

    public static boolean hasDisplayList(Object obj) {
        return obj != null && BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m1035m(obj).hasDisplayList();
    }

    public static void draw(Canvas canvas, Object obj) {
        canvas.drawRenderNode(BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m1035m(obj));
    }

    public static void setAlpha(Object obj, float f) {
        BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m1035m(obj).setAlpha(f);
    }

    public static void setBlur(Object obj, float f, Shader.TileMode tileMode) {
        BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m1035m(obj).setRenderEffect(f > 0.0f ? RenderEffect.createBlurEffect(f, f, tileMode) : null);
    }

    public static void setBlurAndColorMatrix(Object obj, float f, float[] fArr) {
        BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m1035m(obj).setRenderEffect(RenderEffect.createColorFilterEffect(new ColorMatrixColorFilter(fArr), RenderEffect.createBlurEffect(f, f, Shader.TileMode.CLAMP)));
    }

    public static void clipOut(Canvas canvas, Path path) {
        if (Build.VERSION.SDK_INT >= 26) {
            canvas.clipOutPath(path);
        } else {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
        }
    }

    public static void setBlendMode(Paint paint, int i) {
        paint.setBlendMode(blendMode(i));
    }

    private static BlendMode blendMode(int i) {
        switch (i) {
            case 1:
                return BlendMode.PLUS;
            case 2:
                return BlendMode.SCREEN;
            case 3:
                return BlendMode.COLOR_DODGE;
            case 4:
                return BlendMode.OVERLAY;
            case 5:
                return BlendMode.SOFT_LIGHT;
            case 6:
                return BlendMode.COLOR_BURN;
            default:
                return null;
        }
    }

    public static ColorFilter srcIn(int i) {
        AbstractC4835x2078045b.m1082m();
        return AbstractC4834x2078045a.m1081m(i, BlendMode.SRC_IN);
    }

    public static float screenCornerRadius(View view) {
        if (Build.VERSION.SDK_INT >= 31) {
            float fInsetsCornerRadius = insetsCornerRadius(view);
            if (fInsetsCornerRadius >= 0.0f) {
                return fInsetsCornerRadius;
            }
        }
        return frameworkCornerRadius();
    }

    private static float insetsCornerRadius(View view) {
        WindowInsets rootWindowInsets = view != null ? view.getRootWindowInsets() : null;
        if (rootWindowInsets == null) {
            return -1.0f;
        }
        if (rootWindowInsets.getRoundedCorner(0) != null) {
            return r1.getRadius();
        }
        return 0.0f;
    }

    private static float frameworkCornerRadius() {
        float dimensionPixelSize;
        int identifier;
        if (frameworkRadius < 0.0f) {
            try {
                Resources system = Resources.getSystem();
                dimensionPixelSize = system.getIdentifier("rounded_corner_radius_top", "dimen", "android") != 0 ? system.getDimensionPixelSize(r4) : 0.0f;
                if (dimensionPixelSize <= 0.0f && (identifier = system.getIdentifier("rounded_corner_radius", "dimen", "android")) != 0) {
                    dimensionPixelSize = system.getDimensionPixelSize(identifier);
                }
            } catch (Exception unused) {
                dimensionPixelSize = 0.0f;
            }
            frameworkRadius = Math.max(0.0f, dimensionPixelSize);
        }
        return frameworkRadius;
    }
}
