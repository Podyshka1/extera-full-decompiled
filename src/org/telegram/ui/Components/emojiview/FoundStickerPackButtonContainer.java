package org.telegram.ui.Components.emojiview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.utils.GradientProtectionDrawable;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"ViewConstructor"})
public class FoundStickerPackButtonContainer extends FrameLayout {
    private final GradientProtectionDrawable gradientProtectionDrawable;
    private final Theme.ResourcesProvider resourcesProvider;

    public FoundStickerPackButtonContainer(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.gradientProtectionDrawable = new GradientProtectionDrawable(8);
        this.resourcesProvider = resourcesProvider;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.gradientProtectionDrawable.setBounds(0, 0, i, i2);
        this.gradientProtectionDrawable.setInsets(0, 0, 0, getPaddingBottom() + AndroidUtilities.dp(24.0f));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        this.gradientProtectionDrawable.setColor(Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider), 0.65f));
        this.gradientProtectionDrawable.draw(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        super.dispatchTouchEvent(motionEvent);
        return true;
    }
}
