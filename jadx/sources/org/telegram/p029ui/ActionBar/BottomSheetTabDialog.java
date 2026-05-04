package org.telegram.p029ui.ActionBar;

import android.app.Dialog;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.p029ui.ActionBar.BottomSheetTabsOverlay;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.LaunchActivity;

/* JADX INFO: loaded from: classes6.dex */
public class BottomSheetTabDialog extends Dialog {
    private boolean attached;
    public final View navigationBar;
    public final Paint navigationBarPaint;
    public final BottomSheetTabsOverlay.Sheet sheet;
    public final BottomSheetTabsOverlay.SheetView sheetView;
    public final WindowView windowView;

    public static BottomSheetTabsOverlay.Sheet checkSheet(BottomSheetTabsOverlay.Sheet sheet) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null && (AndroidUtilities.isTablet() || sheet.hadDialog() || AndroidUtilities.hasDialogOnTop(safeLastFragment))) {
            BottomSheetTabDialog bottomSheetTabDialog = new BottomSheetTabDialog(sheet);
            if (sheet.setDialog(bottomSheetTabDialog)) {
                bottomSheetTabDialog.windowView.putView();
            }
        }
        return sheet;
    }

    public BottomSheetTabDialog(BottomSheetTabsOverlay.Sheet sheet) {
        super(sheet.mo6088getWindowView().getContext(), C2888R.style.TransparentDialog);
        Paint paint = new Paint(1);
        this.navigationBarPaint = paint;
        this.sheet = sheet;
        BottomSheetTabsOverlay.SheetView sheetViewMo6088getWindowView = sheet.mo6088getWindowView();
        this.sheetView = sheetViewMo6088getWindowView;
        View view = new View(getContext()) { // from class: org.telegram.ui.ActionBar.BottomSheetTabDialog.1
            @Override // android.view.View
            protected void dispatchDraw(Canvas canvas) {
                canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), BottomSheetTabDialog.this.navigationBarPaint);
            }

            @Override // android.view.View
            protected void onMeasure(int i, int i2) {
                setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.navigationBarHeight);
                setTranslationY(AndroidUtilities.navigationBarHeight);
            }
        };
        this.navigationBar = view;
        paint.setColor(Theme.getColor(Theme.key_windowBackgroundGray));
        WindowView windowView = new WindowView(sheetViewMo6088getWindowView);
        this.windowView = windowView;
        setContentView(windowView, new ViewGroup.LayoutParams(-1, -1));
        windowView.addView(view, LayoutHelper.createFrame(-1, -2, 80));
        windowView.setClipToPadding(false);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            window.addFlags(-2147483392);
        } else {
            window.addFlags(-2147417856);
        }
        window.setWindowAnimations(C2888R.style.DialogNoAnimation);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.gravity = 51;
        attributes.dimAmount = 0.0f;
        attributes.flags &= -3;
        attributes.softInputMode = 16;
        attributes.height = -1;
        if (i >= 28) {
            attributes.layoutInDisplayCutoutMode = 1;
        }
        window.setAttributes(attributes);
        window.setStatusBarColor(0);
        this.windowView.setFitsSystemWindows(true);
        this.windowView.setSystemUiVisibility(1792);
        this.windowView.setPadding(0, 0, 0, 0);
        this.windowView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: org.telegram.ui.ActionBar.BottomSheetTabDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                return BottomSheetTabDialog.$r8$lambda$mi9mEbznhj0FGRXpR2lBBTI87Mo(view, windowInsets);
            }
        });
    }

    public static /* synthetic */ WindowInsets $r8$lambda$mi9mEbznhj0FGRXpR2lBBTI87Mo(View view, WindowInsets windowInsets) {
        view.setPadding(0, 0, 0, windowInsets.getSystemWindowInsetBottom());
        if (Build.VERSION.SDK_INT >= 30) {
            return WindowInsets.CONSUMED;
        }
        return windowInsets.consumeSystemWindowInsets();
    }

    public void updateNavigationBarColor() {
        int navigationBarColor = this.sheet.getNavigationBarColor(Theme.getColor(Theme.key_windowBackgroundGray));
        this.navigationBarPaint.setColor(navigationBarColor);
        this.navigationBar.invalidate();
        AndroidUtilities.setNavigationBarColor(this, navigationBarColor);
        AndroidUtilities.setLightNavigationBar(this, AndroidUtilities.computePerceivedBrightness(navigationBarColor) >= 0.721f);
        LaunchActivity.instance.checkSystemBarColors(true, true, true);
    }

    public static class WindowView extends FrameLayout implements BottomSheetTabsOverlay.SheetView {
        public final BottomSheetTabsOverlay.SheetView sheetView;

        public WindowView(BottomSheetTabsOverlay.SheetView sheetView) {
            super(sheetView.getContext());
            this.sheetView = sheetView;
        }

        public void putView() {
            View view = (View) this.sheetView;
            AndroidUtilities.removeFromParent(view);
            addView(view, LayoutHelper.createFrame(-1, -1, 119));
        }

        @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.SheetView
        public void setDrawingFromOverlay(boolean z) {
            this.sheetView.setDrawingFromOverlay(z);
        }

        @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.SheetView
        public RectF getRect() {
            return this.sheetView.getRect();
        }

        @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.SheetView
        public float drawInto(Canvas canvas, RectF rectF, float f, RectF rectF2, float f2, boolean z) {
            return this.sheetView.drawInto(canvas, rectF, f, rectF2, f2, z);
        }
    }

    public void attach() {
        if (this.attached) {
            return;
        }
        this.attached = true;
        try {
            super.show();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public void detach() {
        this.sheet.setDialog(null);
        if (this.attached) {
            this.attached = false;
            try {
                super.dismiss();
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.sheet.dismiss(false);
    }
}
