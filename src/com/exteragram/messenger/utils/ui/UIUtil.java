package com.exteragram.messenger.utils.ui;

import android.animation.StateListAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.WeakHashMap;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.BaseCell;
import org.telegram.ui.Components.ScaleStateListAnimator;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\b\u0001\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\t\u001a\u00020\u00062\b\b\u0001\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\t\u0010\bJ!\u0010\f\u001a\u00020\u00062\b\b\u0001\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJS\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u0014\u001a\u00020\u00122\b\b\u0002\u0010\u0015\u001a\u00020\u00042\b\b\u0002\u0010\u0016\u001a\u00020\u00102\b\b\u0002\u0010\u0017\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ-\u0010 \u001a\u00020\u001f2\b\b\u0002\u0010\u001b\u001a\u00020\u00042\b\b\u0003\u0010\u0005\u001a\u00020\u00042\b\b\u0003\u0010\u001e\u001a\u00020\u0004H\u0007¢\u0006\u0004\b \u0010!J'\u0010&\u001a\u00020%2\u0006\u0010\"\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u0004H\u0007¢\u0006\u0004\b&\u0010'J'\u0010*\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u00102\b\b\u0002\u0010)\u001a\u00020\u0010¢\u0006\u0004\b*\u0010+J5\u00102\u001a\u00020\u00182\u0006\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020\u001f2\u0006\u0010/\u001a\u00020\u00102\u0006\u00100\u001a\u00020\u00102\u0006\u00101\u001a\u00020\u0010¢\u0006\u0004\b2\u00103R \u00106\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u000205048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u0014\u00109\u001a\u0002088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:¨\u0006;"}, d2 = {"Lcom/exteragram/messenger/utils/ui/UIUtil;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "color", "Landroid/graphics/drawable/GradientDrawable;", "createBottomFade", "(I)Landroid/graphics/drawable/GradientDrawable;", "createTopFade", "Landroid/graphics/drawable/GradientDrawable$Orientation;", "orientation", "createFade", "(ILandroid/graphics/drawable/GradientDrawable$Orientation;)Landroid/graphics/drawable/GradientDrawable;", "Landroid/view/View;", PluginsConstants.Settings.VIEW, _UrlKt.FRAGMENT_ENCODE_SET, "selectorRad", _UrlKt.FRAGMENT_ENCODE_SET, "top", "bottom", "basePadding", "scale", "tension", _UrlKt.FRAGMENT_ENCODE_SET, "applyScaleStateListAnimator", "(Landroid/view/View;FZZIFF)V", "size", "getFabSquareCornerRadiusDp", "(I)F", "pressedColor", "Landroid/graphics/drawable/Drawable;", "createFabBackground", "(III)Landroid/graphics/drawable/Drawable;", "drawable", "width", "height", "Landroid/graphics/Bitmap;", "drawableToBitmap", "(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;", "luminance", "saturation", "adjustHsl", "(IFF)I", "Landroid/graphics/Canvas;", "canvas", "pattern", "w", "h", "alpha", "drawNowPlayingPattern", "(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFF)V", "Ljava/util/WeakHashMap;", "Landroid/view/View$OnLayoutChangeListener;", "scaleAnimatorRelayoutListeners", "Ljava/util/WeakHashMap;", _UrlKt.FRAGMENT_ENCODE_SET, "nowPlayingPattern", "[F", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUIUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UIUtil.kt\ncom/exteragram/messenger/utils/ui/UIUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,254:1\n1#2:255\n83#3,6:256\n*S KotlinDebug\n*F\n+ 1 UIUtil.kt\ncom/exteragram/messenger/utils/ui/UIUtil\n*L\n161#1:256,6\n*E\n"})
public final class UIUtil {
    public static final UIUtil INSTANCE = new UIUtil();
    private static final WeakHashMap<View, View.OnLayoutChangeListener> scaleAnimatorRelayoutListeners = new WeakHashMap<>();
    private static final float[] nowPlayingPattern = {-5.5f, 20.0f, 20.0f, 0.35f, -5.5f, -20.0f, 20.0f, 0.35f, -36.0f, -42.0f, 22.0f, 0.375f, -36.0f, 0.0f, 25.0f, 0.425f, -36.0f, 42.0f, 22.0f, 0.375f, -70.0f, 22.0f, 23.0f, 0.35f, -70.0f, -22.0f, 23.0f, 0.35f, -99.0f, 46.0f, 21.0f, 0.275f, -99.0f, 0.0f, 22.0f, 0.325f, -99.0f, -46.0f, 21.0f, 0.275f, -128.0f, -23.0f, 20.0f, 0.225f, -128.0f, 23.0f, 20.0f, 0.225f};

    private UIUtil() {
    }

    @JvmStatic
    public static final GradientDrawable createBottomFade(int color) {
        return INSTANCE.createFade(color, GradientDrawable.Orientation.TOP_BOTTOM);
    }

    @JvmStatic
    public static final GradientDrawable createTopFade(int color) {
        return INSTANCE.createFade(color, GradientDrawable.Orientation.BOTTOM_TOP);
    }

    private final GradientDrawable createFade(int color, GradientDrawable.Orientation orientation) {
        return new GradientDrawable(orientation, new int[]{ColorUtils.setAlphaComponent(color, 0), ColorUtils.setAlphaComponent(color, 60), color});
    }

    @JvmStatic
    @JvmOverloads
    public static final void applyScaleStateListAnimator(final View view, final float selectorRad, final boolean top, final boolean bottom, final int basePadding, final float scale, final float tension) {
        WeakHashMap<View, View.OnLayoutChangeListener> weakHashMap = scaleAnimatorRelayoutListeners;
        View.OnLayoutChangeListener onLayoutChangeListenerRemove = weakHashMap.remove(view);
        if (onLayoutChangeListenerRemove != null) {
            view.removeOnLayoutChangeListener(onLayoutChangeListenerRemove);
        }
        StateListAnimator stateListAnimator = view.getStateListAnimator();
        if (stateListAnimator != null) {
            stateListAnimator.jumpToCurrentState();
        }
        final int width = view.getWidth();
        final int height = view.getHeight();
        View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.exteragram.messenger.utils.ui.UIUtil$$ExternalSyntheticLambda0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                UIUtil.m2870$r8$lambda$ERjZRGymKx6PQpLiaKZuzWZ1SI(width, height, selectorRad, top, bottom, basePadding, scale, tension, view2, i, i2, i3, i4, i5, i6, i7, i8);
            }
        };
        view.addOnLayoutChangeListener(onLayoutChangeListener);
        weakHashMap.put(view, onLayoutChangeListener);
        float fMax = Math.max(width, height) / AndroidUtilities.density;
        final float fMin = fMax > 0.0f ? Math.min(scale, 8.0f / fMax) : scale;
        final Function1 function1 = new Function1() { // from class: com.exteragram.messenger.utils.ui.UIUtil$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UIUtil.$r8$lambda$oVSOXQjJV1OPu6LNcwPkuNQY5Oo(view, fMin, selectorRad, basePadding, top, bottom, ((Float) obj).floatValue());
            }
        };
        ScaleStateListAnimator.apply(view, fMin, tension, new Consumer() { // from class: com.exteragram.messenger.utils.ui.UIUtil$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                function1.invoke((Float) obj);
            }
        }, new Consumer() { // from class: com.exteragram.messenger.utils.ui.UIUtil$$ExternalSyntheticLambda3
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                function1.invoke((Float) obj);
            }
        });
        StateListAnimator stateListAnimator2 = view.getStateListAnimator();
        if (stateListAnimator2 != null) {
            stateListAnimator2.jumpToCurrentState();
        }
        function1.invoke(Float.valueOf(view.isPressed() ? 1.0f : 0.0f));
    }

    /* JADX INFO: renamed from: $r8$lambda$ERjZRGym-Kx6PQpLiaKZuzWZ1SI, reason: not valid java name */
    public static void m2870$r8$lambda$ERjZRGymKx6PQpLiaKZuzWZ1SI(int i, int i2, float f, boolean z, boolean z2, int i3, float f2, float f3, View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        if (view.getWidth() == i && view.getHeight() == i2) {
            return;
        }
        applyScaleStateListAnimator(view, f, z, z2, i3, f2, f3);
    }

    @JvmStatic
    public static final Bitmap drawableToBitmap(Drawable drawable, int width, int height) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static Unit $r8$lambda$oVSOXQjJV1OPu6LNcwPkuNQY5Oo(View view, float f, float f2, int i, boolean z, boolean z2, float f3) {
        Drawable background = view.getBackground();
        BaseCell.RippleDrawableSafe rippleDrawableSafe = background instanceof BaseCell.RippleDrawableSafe ? (BaseCell.RippleDrawableSafe) background : null;
        if (rippleDrawableSafe != null) {
            Drawable drawable = rippleDrawableSafe.mask;
            Theme.RippleRadMaskDrawable rippleRadMaskDrawable = drawable instanceof Theme.RippleRadMaskDrawable ? (Theme.RippleRadMaskDrawable) drawable : null;
            if (rippleRadMaskDrawable != null) {
                float width = view.getWidth() / AndroidUtilities.density;
                float height = view.getHeight() / AndroidUtilities.density;
                float f4 = 1.0f - (f * f3);
                float fCoerceAtLeast = RangesKt.coerceAtLeast(((4.0f - ((width * f) / 2.0f)) * f3) / f4, 0.0f);
                float fCoerceAtLeast2 = RangesKt.coerceAtLeast(((4.0f - ((height * f) / 2.0f)) * f3) / f4, 0.0f);
                rippleRadMaskDrawable.setPadding(fCoerceAtLeast, fCoerceAtLeast2, fCoerceAtLeast, fCoerceAtLeast2);
                float f5 = i;
                float f6 = (f2 - (f5 * f3)) / f4;
                float f7 = ((f2 - f5) * f3) / f4;
                float f8 = z ? f6 : f7;
                if (!z2) {
                    f6 = f7;
                }
                rippleRadMaskDrawable.setRadius(f8, f6);
            }
        }
        return Unit.INSTANCE;
    }

    @JvmStatic
    public static final float getFabSquareCornerRadiusDp(int size) {
        return (float) Math.ceil((size * 16) / 56.0f);
    }

    @JvmStatic
    @JvmOverloads
    public static final Drawable createFabBackground(int size, int color, int pressedColor) {
        Pair pair;
        if (size == 40) {
            int i = Theme.key_windowBackgroundWhite;
            pair = TuplesKt.to(Integer.valueOf(ColorUtils.blendARGB(Theme.getColor(i), -1, 0.1f)), Integer.valueOf(Theme.blendOver(Theme.getColor(i), Theme.getColor(Theme.key_listSelector))));
        } else {
            pair = TuplesKt.to(Integer.valueOf(color), Integer.valueOf(pressedColor));
        }
        return Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(ExteraConfig.getSquareFab() ? getFabSquareCornerRadiusDp(size) : size / 2.0f), ((Number) pair.component1()).intValue(), ((Number) pair.component2()).intValue());
    }

    public static /* synthetic */ int adjustHsl$default(UIUtil uIUtil, int i, float f, float f2, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            f2 = -1.0f;
        }
        return uIUtil.adjustHsl(i, f, f2);
    }

    public final int adjustHsl(int color, float luminance, float saturation) {
        float[] fArr = new float[3];
        ColorUtils.colorToHSL(color, fArr);
        if (saturation > 0.0f) {
            fArr[1] = RangesKt.coerceAtMost(fArr[1] * saturation, 1.0f);
        }
        fArr[2] = RangesKt.coerceAtMost(fArr[2] * luminance, 1.0f);
        return ColorUtils.HSLToColor(fArr);
    }

    public final void drawNowPlayingPattern(Canvas canvas, Drawable pattern, float w, float h, float alpha) {
        if (alpha <= 0.0f) {
            return;
        }
        int i = 0;
        while (true) {
            float[] fArr = nowPlayingPattern;
            if (i >= fArr.length) {
                return;
            }
            float f = fArr[i];
            float f2 = fArr[i + 1];
            float f3 = fArr[i + 2];
            float f4 = fArr[i + 3];
            float f5 = h / 2.0f;
            pattern.setBounds((int) ((AndroidUtilities.dpf2(f) + w) - (AndroidUtilities.dpf2(f3) / 2.0f)), (int) ((AndroidUtilities.dpf2(f2) + f5) - (AndroidUtilities.dpf2(f3) / 2.0f)), (int) (AndroidUtilities.dpf2(f) + w + (AndroidUtilities.dpf2(f3) / 2.0f)), (int) (f5 + AndroidUtilities.dpf2(f2) + (AndroidUtilities.dpf2(f3) / 2.0f)));
            pattern.setAlpha((int) (255.0f * alpha * f4));
            pattern.draw(canvas);
            i += 4;
        }
    }
}
