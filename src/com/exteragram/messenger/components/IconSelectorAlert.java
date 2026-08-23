package com.exteragram.messenger.components;

import android.app.Activity;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import androidx.core.content.ContextCompat;
import com.android.p003dx.p006io.Opcodes;
import com.exteragram.messenger.utils.p017ui.FolderIcons;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.p029ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.LayoutHelper;

/* JADX INFO: loaded from: classes4.dex */
public abstract class IconSelectorAlert {
    private static final Paint selectedPaint = new Paint(1);

    public interface OnIconSelectedListener {
        void onIconSelected(String str);
    }

    public static void show(BaseFragment baseFragment, View view, final String str, final OnIconSelectedListener onIconSelectedListener) {
        selectedPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteValueText));
        final Activity parentActivity = baseFragment.getParentActivity();
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(parentActivity, C2888R.drawable.popup_fixed_alert3, null);
        Rect rect = new Rect();
        baseFragment.getParentActivity().getResources().getDrawable(C2888R.drawable.popup_fixed_alert3).mutate().getPadding(rect);
        actionBarPopupWindowLayout.setBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground));
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int iM1124dp = ((iArr[0] - AndroidUtilities.m1124dp(8.0f)) - rect.left) + view.getMeasuredWidth();
        int iM1124dp2 = ((iArr[1] - AndroidUtilities.m1124dp(8.0f)) - rect.top) + view.getMeasuredHeight();
        final AtomicReference atomicReference = new AtomicReference();
        GridLayout gridLayout = new GridLayout(parentActivity);
        int i = 6;
        while (AndroidUtilities.displaySize.x - iM1124dp < (i * 48) + AndroidUtilities.m1124dp(8.0f)) {
            i--;
        }
        gridLayout.setColumnCount(i);
        for (final String str2 : (String[]) FolderIcons.folderIcons.keySet().toArray(new String[0])) {
            FrameLayout frameLayout = new FrameLayout(parentActivity) { // from class: com.exteragram.messenger.components.IconSelectorAlert.1
                @Override // android.view.View
                protected void onDraw(Canvas canvas) {
                    int iM1124dp3 = AndroidUtilities.m1124dp(6.0f);
                    Drawable drawable = ContextCompat.getDrawable(parentActivity, FolderIcons.getTabIcon(str2));
                    drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(isSelected() ? Theme.key_windowBackgroundWhiteValueText : Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.MULTIPLY));
                    drawable.setBounds(iM1124dp3, iM1124dp3, getMeasuredWidth() - iM1124dp3, getMeasuredHeight() - iM1124dp3);
                    if (isSelected()) {
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
                        IconSelectorAlert.selectedPaint.setAlpha(40);
                        canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(7.0f), AndroidUtilities.m1124dp(7.0f), IconSelectorAlert.selectedPaint);
                    }
                    drawable.draw(canvas);
                    super.onDraw(canvas);
                }
            };
            frameLayout.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector), 7, 7));
            frameLayout.setSelected(str2.equals(str));
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.IconSelectorAlert$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    IconSelectorAlert.$r8$lambda$zWlOK7uYtffwDPGgFsTq_6wRtOo(str, str2, atomicReference, onIconSelectedListener, view2);
                }
            });
            gridLayout.addView(frameLayout, LayoutHelper.createFrame(48, 48.0f, 17, 1.0f, 1.0f, 1.0f, 1.0f));
        }
        actionBarPopupWindowLayout.addView((View) gridLayout, LayoutHelper.createLinear(-1, -2, 4.0f, 4.0f, 4.0f, 4.0f));
        ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, -2, -2);
        atomicReference.set(actionBarPopupWindow);
        actionBarPopupWindow.setPauseNotifications(true);
        actionBarPopupWindow.setDismissAnimationDuration(Opcodes.REM_INT_LIT8);
        actionBarPopupWindow.setOutsideTouchable(true);
        actionBarPopupWindow.setClippingEnabled(true);
        actionBarPopupWindow.setAnimationStyle(C2888R.style.PopupContextAnimation);
        actionBarPopupWindow.setFocusable(true);
        actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(1000.0f), Integer.MIN_VALUE));
        actionBarPopupWindow.setInputMethodMode(2);
        actionBarPopupWindow.setSoftInputMode(0);
        actionBarPopupWindow.getContentView().setFocusableInTouchMode(true);
        actionBarPopupWindow.showAtLocation(view, 51, iM1124dp, iM1124dp2);
        actionBarPopupWindow.dimBehind();
    }

    public static /* synthetic */ void $r8$lambda$zWlOK7uYtffwDPGgFsTq_6wRtOo(String str, String str2, AtomicReference atomicReference, OnIconSelectedListener onIconSelectedListener, View view) {
        if (str.equals(str2)) {
            return;
        }
        if (atomicReference.get() != null) {
            ((ActionBarPopupWindow) atomicReference.getAndSet(null)).dismiss();
        }
        onIconSelectedListener.onIconSelected(str2);
    }
}
