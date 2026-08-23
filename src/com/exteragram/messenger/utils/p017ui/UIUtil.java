package com.exteragram.messenger.utils.p017ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.ExteraConfig;
import java.util.function.Consumer;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.BaseCell;
import org.telegram.p029ui.Components.CombinedDrawable;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: loaded from: classes.dex */
public final class UIUtil {
    public static final UIUtil INSTANCE = new UIUtil();
    private static final float[] nowPlayingPattern = {-5.5f, 20.0f, 20.0f, 0.35f, -5.5f, -20.0f, 20.0f, 0.35f, -36.0f, -42.0f, 22.0f, 0.375f, -36.0f, 0.0f, 25.0f, 0.425f, -36.0f, 42.0f, 22.0f, 0.375f, -70.0f, 22.0f, 23.0f, 0.35f, -70.0f, -22.0f, 23.0f, 0.35f, -99.0f, 46.0f, 21.0f, 0.275f, -99.0f, 0.0f, 22.0f, 0.325f, -99.0f, -46.0f, 21.0f, 0.275f, -128.0f, -23.0f, 20.0f, 0.225f, -128.0f, 23.0f, 20.0f, 0.225f};

    private UIUtil() {
    }

    public static final void applyScaleStateListAnimator(final View view, final float f, final boolean z, final boolean z2, final int i, float f2, float f3) {
        Intrinsics.checkNotNullParameter(view, "view");
        final float f4 = f - i;
        final Function1 function1 = new Function1() { // from class: com.exteragram.messenger.utils.ui.UIUtil$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UIUtil.applyScaleStateListAnimator$lambda$0(view, i, z, f, f4, z2, ((Float) obj).floatValue());
            }
        };
        ScaleStateListAnimator.apply(view, f2, f3, new Consumer() { // from class: com.exteragram.messenger.utils.ui.UIUtil$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            /* JADX INFO: renamed from: accept */
            public final void m940v(Object obj) {
                function1.invoke((Float) obj);
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        }, new Consumer() { // from class: com.exteragram.messenger.utils.ui.UIUtil$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            /* JADX INFO: renamed from: accept */
            public final void m940v(Object obj) {
                function1.invoke((Float) obj);
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit applyScaleStateListAnimator$lambda$0(View view, int i, boolean z, float f, float f2, boolean z2, float f3) {
        Drawable background = view.getBackground();
        BaseCell.RippleDrawableSafe rippleDrawableSafe = background instanceof BaseCell.RippleDrawableSafe ? (BaseCell.RippleDrawableSafe) background : null;
        if (rippleDrawableSafe != null) {
            Drawable drawable = rippleDrawableSafe.mask;
            Theme.RippleRadMaskDrawable rippleRadMaskDrawable = drawable instanceof Theme.RippleRadMaskDrawable ? (Theme.RippleRadMaskDrawable) drawable : null;
            if (rippleRadMaskDrawable != null) {
                float f4 = i * f3;
                rippleRadMaskDrawable.setPadding(0.0f, f4, 0.0f, f4);
                rippleRadMaskDrawable.setRadius(z ? f - f4 : f2 * f3, z2 ? f - f4 : f2 * f3);
            }
        }
        return Unit.INSTANCE;
    }

    public static final Drawable createFabBackground(int i, int i2, int i3) {
        Pair pairM1081to;
        if (i == 40) {
            int i4 = Theme.key_windowBackgroundWhite;
            pairM1081to = TuplesKt.m1081to(Integer.valueOf(ColorUtils.blendARGB(Theme.getColor(i4), -1, 0.1f)), Integer.valueOf(Theme.blendOver(Theme.getColor(i4), Theme.getColor(Theme.key_listSelector))));
        } else {
            pairM1081to = TuplesKt.m1081to(Integer.valueOf(i2), Integer.valueOf(i3));
        }
        Drawable drawableCreateSimpleSelectorRoundRectDrawable = Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(ExteraConfig.squareFab ? (float) Math.ceil((i * 16) / 56.0f) : i / 2.0f), ((Number) pairM1081to.component1()).intValue(), ((Number) pairM1081to.component2()).intValue());
        Intrinsics.checkNotNullExpressionValue(drawableCreateSimpleSelectorRoundRectDrawable, "createSimpleSelectorRoundRectDrawable(...)");
        return drawableCreateSimpleSelectorRoundRectDrawable;
    }

    public static final Bitmap drawableToBitmap(Drawable drawable, int i, int i2) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static final CombinedDrawable createCircleDrawableWithIcon(Context context, int i, int i2) {
        Drawable drawable;
        Intrinsics.checkNotNullParameter(context, "context");
        Drawable drawableMutate = null;
        if (i != 0 && (drawable = ContextCompat.getDrawable(context, i)) != null) {
            drawableMutate = drawable.mutate();
        }
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.getPaint().setColor(-1);
        shapeDrawable.setIntrinsicWidth(i2);
        shapeDrawable.setIntrinsicHeight(i2);
        CombinedDrawable combinedDrawable = new CombinedDrawable(shapeDrawable, drawableMutate);
        combinedDrawable.setCustomSize(i2, i2);
        return combinedDrawable;
    }

    public static /* synthetic */ int adjustHsl$default(UIUtil uIUtil, int i, float f, float f2, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            f2 = -1.0f;
        }
        return uIUtil.adjustHsl(i, f, f2);
    }

    public final int adjustHsl(int i, float f, float f2) {
        float[] fArr = new float[3];
        ColorUtils.colorToHSL(i, fArr);
        if (f2 > 0.0f) {
            fArr[1] = RangesKt.coerceAtMost(fArr[1] * f2, 1.0f);
        }
        fArr[2] = RangesKt.coerceAtMost(fArr[2] * f, 1.0f);
        return ColorUtils.HSLToColor(fArr);
    }

    public final void drawNowPlayingPattern(Canvas canvas, Drawable pattern, float f, float f2, float f3) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        if (f3 <= 0.0f) {
            return;
        }
        int i = 0;
        while (true) {
            float[] fArr = nowPlayingPattern;
            if (i >= fArr.length) {
                return;
            }
            float f4 = fArr[i];
            float f5 = fArr[i + 1];
            float f6 = fArr[i + 2];
            float f7 = fArr[i + 3];
            float f8 = f2 / 2.0f;
            pattern.setBounds((int) ((AndroidUtilities.dpf2(f4) + f) - (AndroidUtilities.dpf2(f6) / 2.0f)), (int) ((AndroidUtilities.dpf2(f5) + f8) - (AndroidUtilities.dpf2(f6) / 2.0f)), (int) (AndroidUtilities.dpf2(f4) + f + (AndroidUtilities.dpf2(f6) / 2.0f)), (int) (f8 + AndroidUtilities.dpf2(f5) + (AndroidUtilities.dpf2(f6) / 2.0f)));
            pattern.setAlpha((int) (255 * f3 * f7));
            pattern.draw(canvas);
            i += 4;
        }
    }
}
