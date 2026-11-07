package com.exteragram.messenger.utils.ui;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.Shape;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.config.BottomNavigationBar;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder;
import org.telegram.ui.MainTabsLayout;

/* JADX INFO: loaded from: classes.dex */
public abstract class MainTabsUiHelper {
    public static boolean isMaterial3NavigationBar() {
        return ExteraConfig.getNewNavigationBarStyle();
    }

    private static int getMaterial3ContainerHeightDp() {
        return ExteraConfig.getHideNavigationBarLabels() ? 56 : 64;
    }

    public static int getTabsViewHeightDp() {
        if (isMaterial3NavigationBar()) {
            return getMaterial3ContainerHeightDp();
        }
        return 72;
    }

    public static int getTabsFabOffsetDp() {
        if (isMaterial3NavigationBar()) {
            return getMaterial3ContainerHeightDp();
        }
        return 64;
    }

    public static int getAdditionalNavigationBarHeight(boolean z) {
        if (!z || BottomNavigationBar.hidden() || BottomNavigationBar.floating()) {
            return 0;
        }
        return AndroidUtilities.dp(getTabsViewHeightDp());
    }

    public static int getFloatingTabsPadding(boolean z) {
        if (z && BottomNavigationBar.floating()) {
            return AndroidUtilities.dp(getTabsViewHeightDp());
        }
        return 0;
    }

    public static int getTabsFabOffset(boolean z) {
        if (z && BottomNavigationBar.visible()) {
            return AndroidUtilities.dp(getTabsFabOffsetDp());
        }
        return 0;
    }

    private static int getTabsViewHeight(int i) {
        if (isMaterial3NavigationBar()) {
            return AndroidUtilities.dp(getMaterial3ContainerHeightDp()) + i;
        }
        return AndroidUtilities.dp(72.0f);
    }

    private static int getTabsInnerPaddingVertical() {
        if (isMaterial3NavigationBar()) {
            return 0;
        }
        return AndroidUtilities.dp(12.0f);
    }

    public static void applyTabsLayoutStyle(MainTabsLayout mainTabsLayout) {
        boolean zIsMaterial3NavigationBar = isMaterial3NavigationBar();
        int iDp = zIsMaterial3NavigationBar ? 0 : AndroidUtilities.dp(12.0f);
        int tabsInnerPaddingVertical = getTabsInnerPaddingVertical();
        mainTabsLayout.setPadding(iDp, tabsInnerPaddingVertical, iDp, tabsInnerPaddingVertical);
        mainTabsLayout.setMaxWidth(zIsMaterial3NavigationBar ? 0 : AndroidUtilities.dp(344.0f));
        mainTabsLayout.setFillAvailableWidth(zIsMaterial3NavigationBar);
        mainTabsLayout.setSwipeSelectionEnabled(!zIsMaterial3NavigationBar);
        mainTabsLayout.setDrawTopDivider(zIsMaterial3NavigationBar);
    }

    public static void applyTabsBottomInset(MainTabsLayout mainTabsLayout, View view, int i, int i2, int i3) {
        int tabsViewHeight = getTabsViewHeight(i3);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) mainTabsLayout.getLayoutParams();
        if (marginLayoutParams.height != tabsViewHeight) {
            marginLayoutParams.height = tabsViewHeight;
            mainTabsLayout.setLayoutParams(marginLayoutParams);
        }
        int tabsInnerPaddingVertical = getTabsInnerPaddingVertical() + (isMaterial3NavigationBar() ? i3 : 0);
        if (mainTabsLayout.getPaddingBottom() != tabsInnerPaddingVertical) {
            mainTabsLayout.setPadding(mainTabsLayout.getPaddingLeft(), mainTabsLayout.getPaddingTop(), mainTabsLayout.getPaddingRight(), tabsInnerPaddingVertical);
        }
        if (isMaterial3NavigationBar()) {
            i3 = 0;
        }
        view.setPadding(i, 0, i2, i3);
    }

    public static void applyTabsVisibilityScale(View view, View view2, float f) {
        if (isMaterial3NavigationBar()) {
            f = 1.0f;
        }
        view.setPivotX(view2.getLeft() + (view2.getWidth() / 2.0f));
        view.setPivotY(view2.getTop() + (view2.getHeight() / 2.0f));
        view.setScaleX(f);
        view.setScaleY(f);
    }

    public static Drawable createMainTabsScrimBackground(Theme.ResourcesProvider resourcesProvider, boolean z) {
        return createMainTabsScrimBackground(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider), z);
    }

    private static Drawable createMainTabsScrimBackground(int i, boolean z) {
        ShapeDrawable shapeDrawableCreateRoundRectDrawable;
        if (z) {
            shapeDrawableCreateRoundRectDrawable = Theme.createCircleDrawable(AndroidUtilities.dp(40.0f), i);
        } else if (isMaterial3NavigationBar()) {
            ShapeDrawable shapeDrawable = new ShapeDrawable(new MainTabIndicatorShape());
            shapeDrawable.getPaint().setColor(i);
            shapeDrawableCreateRoundRectDrawable = shapeDrawable;
        } else {
            shapeDrawableCreateRoundRectDrawable = Theme.createRoundRectDrawable(AndroidUtilities.dp(28.0f), i);
        }
        shapeDrawableCreateRoundRectDrawable.getPaint().setShadowLayer(AndroidUtilities.dp(6.0f), 0.0f, AndroidUtilities.dp(1.0f), Theme.multAlpha(-16777216, 0.15f));
        return shapeDrawableCreateRoundRectDrawable;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static final class MainTabIndicatorShape extends Shape {
        private MainTabIndicatorShape() {
        }

        @Override // android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            RectF rectF = AndroidUtilities.rectTmp;
            MainTabsUiHelper.setMainTabSelectedIndicatorBounds(rectF, getWidth(), (int) getHeight(), 1.0f);
            float fHeight = rectF.height() / 2.0f;
            canvas.drawRoundRect(rectF, fHeight, fHeight, paint);
        }
    }

    public static float getBackgroundRadius() {
        if (isMaterial3NavigationBar()) {
            return 0.0f;
        }
        return AndroidUtilities.dp(28.0f);
    }

    public static int getBackgroundInset() {
        if (isMaterial3NavigationBar()) {
            return 0;
        }
        return AndroidUtilities.dp(7.666f);
    }

    private static float getMaterial3IndicatorTopDp() {
        if (ExteraConfig.getHideNavigationBarLabels()) {
            return (getMaterial3ContainerHeightDp() - 32) / 2.0f;
        }
        return 6.0f;
    }

    public static float getMainTabIconTopDp() {
        if (isMaterial3NavigationBar()) {
            return getMaterial3IndicatorTopDp() + 4.0f;
        }
        return ExteraConfig.getHideNavigationBarLabels() ? 12.0f : 4.0f;
    }

    public static float getMainTabAvatarTopDp() {
        return getMainTabIconTopDp() + 1.0f;
    }

    public static float getMainTabIconOnlyWidth() {
        return AndroidUtilities.dp(40.0f);
    }

    public static void applyMaterial3MainTabStyle(TextView textView) {
        textView.setIncludeFontPadding(false);
        textView.setLetterSpacing(0.04166667f);
        textView.setLayoutParams(LayoutHelper.createFrame(-1, 16.0f, 49, 0.0f, 42.0f, 0.0f, 0.0f));
    }

    public static <K> SpringAnimation createMaterial3IndicatorSizeSpring(K k, FloatPropertyCompat<K> floatPropertyCompat) {
        return new SpringAnimation(k, floatPropertyCompat).setMinimumVisibleChange(0.01f).setSpring(new SpringForce(0.0f).setDampingRatio(0.8f).setStiffness(380.0f));
    }

    public static <K> SpringAnimation createMaterial3ColorSpring(K k, FloatPropertyCompat<K> floatPropertyCompat) {
        return new SpringAnimation(k, floatPropertyCompat).setMinimumVisibleChange(0.01f).setSpring(new SpringForce(0.0f).setDampingRatio(1.0f).setStiffness(1600.0f));
    }

    public static float getMainTabCounterCenterY(boolean z) {
        return AndroidUtilities.dpf2((z ? getMainTabIconTopDp() : 4.0f) + 6.0f);
    }

    public static float getSelectedBackgroundScale(float f) {
        return AndroidUtilities.lerp(0.6f, 1.0f, f);
    }

    public static int getMainTabSelectedIndicatorColor(int i, float f) {
        return Theme.multAlpha(i, f * 0.125f);
    }

    public static void setMainTabSelectedIndicatorBounds(RectF rectF, float f, int i, float f2) {
        float fMin = Math.min(AndroidUtilities.dp(56.0f), Math.max(0.0f, f - (AndroidUtilities.dp(4.0f) * 2.0f))) * Math.max(0.0f, f2);
        float fMin2 = Math.min(AndroidUtilities.dp(32.0f), i);
        float f3 = (f - fMin) / 2.0f;
        float fDp = AndroidUtilities.dp(getMaterial3IndicatorTopDp());
        rectF.set(f3, fDp, fMin + f3, fMin2 + fDp);
    }

    public static void applyBackgroundStroke(BlurredBackgroundProviderBuilder blurredBackgroundProviderBuilder) {
        if (isMaterial3NavigationBar()) {
            blurredBackgroundProviderBuilder.setStrokeColorTop(0, 0).setStrokeColorBottom(0, 0).setStrokeColorFull(0, 0).setStrokeWidth(0.0f, 0.0f);
        } else {
            blurredBackgroundProviderBuilder.setStrokeColorTop(285212672, 117440511).setStrokeColorBottom(536870912, 301989887).setStrokeWidth(AndroidUtilities.dpf2(0.4f), AndroidUtilities.dpf2(0.4f));
        }
    }

    public static void setBlurBounds(RectF rectF, View view, int i) {
        int measuredHeight;
        int iDp;
        if (isMaterial3NavigationBar()) {
            measuredHeight = view.getMeasuredHeight();
            iDp = (measuredHeight - AndroidUtilities.dp(getMaterial3ContainerHeightDp())) - i;
        } else {
            measuredHeight = (view.getMeasuredHeight() - i) - AndroidUtilities.dp(8.0f);
            iDp = measuredHeight - AndroidUtilities.dp(56.0f);
        }
        rectF.set(0.0f, iDp, view.getMeasuredWidth(), measuredHeight);
    }
}
