package org.telegram.p029ui.ActionBar;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.Insets;
import androidx.core.util.Supplier;
import androidx.core.view.WindowInsetsCompat;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.icons.p012ui.picker.IconObserver;
import java.util.ArrayList;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.GiftAuctionController;
import org.telegram.messenger.LocationController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.SecretChatHelper;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.p029ui.ActionBar.ActionBarLayout;
import org.telegram.p029ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.INavigationLayout;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ArticleViewer;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.EmptyBaseFragment;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.Stories.StoryViewer;
import org.telegram.tgnet.ConnectionsManager;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseFragment {
    protected ActionBar actionBar;
    protected Bundle arguments;
    private int bottomInset;
    protected boolean finishing;
    protected boolean fragmentBeginToShow;
    public View fragmentView;
    private Runnable fullyVisibleListener;
    protected boolean inBubbleMode;
    protected boolean inMenuMode;
    protected boolean inPreviewMode;
    public boolean isFinished;
    private boolean isFullyVisible;
    protected Dialog parentDialog;
    protected INavigationLayout parentLayout;
    private PreviewDelegate previewDelegate;
    private boolean removingFromStack;
    protected Theme.ResourcesProvider resourceProvider;
    public ArrayList<AttachedSheet> sheetsStack;
    public Dialog visibleDialog;
    protected int currentAccount = UserConfig.selectedAccount;
    protected boolean hasOwnBackground = false;
    protected boolean isPaused = true;
    protected boolean inTransitionAnimation = false;
    protected int classGuid = ConnectionsManager.generateClassGuid();

    public interface AttachedSheetWindow {
    }

    public static class BottomSheetParams {
        public boolean allowNestedScroll;
        public boolean occupyNavigationBar;
        public Runnable onDismiss;
        public Runnable onOpenAnimationFinished;
        public Runnable onPreFinished;
        public boolean transitionFromLeft;
    }

    public interface PreviewDelegate {
        void finishFragment();
    }

    public boolean allowFinishFragmentInsteadOfRemoveFromStack() {
        return true;
    }

    protected boolean allowPresentFragment() {
        return true;
    }

    public boolean canBeginSlide() {
        return true;
    }

    public boolean closeLastFragment() {
        return false;
    }

    public View createView(Context context) {
        return null;
    }

    public boolean dismissDialogOnPause(Dialog dialog) {
        return true;
    }

    public boolean extendActionMode(Menu menu) {
        return false;
    }

    public Animator getCustomSlideTransition(boolean z, boolean z2, float f) {
        return null;
    }

    public int getPreviewHeight() {
        return -1;
    }

    public boolean hasForceLightStatusBar() {
        return false;
    }

    protected boolean hideKeyboardOnShow() {
        return true;
    }

    public boolean isSupportEdgeToEdge() {
        return false;
    }

    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public boolean needDelayOpenAnimation() {
        return false;
    }

    public void onBottomSheetCreated() {
    }

    public void onConfigurationChanged(Configuration configuration) {
    }

    public AnimatorSet onCustomTransitionAnimation(boolean z, Runnable runnable) {
        return null;
    }

    protected void onDialogDismiss(Dialog dialog) {
    }

    public void onFragmentClosed() {
    }

    public boolean onFragmentCreate() {
        return true;
    }

    public void onInsets(int i, int i2, int i3, int i4) {
    }

    public void onLowMemory() {
    }

    protected void onPanTransitionEnd() {
    }

    protected void onPanTransitionStart() {
    }

    protected void onPanTranslationUpdate(float f) {
    }

    public void onPreviewOpenAnimationEnd() {
    }

    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
    }

    public void onSlideProgress(boolean z, float f) {
    }

    public void onTransitionAnimationProgress(boolean z, float f) {
    }

    public void onUserLeaveHint() {
    }

    public void prepareFragmentToSlide(boolean z, boolean z2) {
    }

    public void restoreSelfArgs(Bundle bundle) {
    }

    public void saveKeyboardPositionBeforeTransition() {
    }

    public void saveSelfArgs(Bundle bundle) {
    }

    public void setPreviewOpenedProgress(float f) {
    }

    public void setPreviewReplaceProgress(float f) {
    }

    protected boolean shouldOverrideSlideTransition(boolean z, boolean z2) {
        return false;
    }

    public interface AttachedSheet {
        boolean attachedToParent();

        void dismiss();

        void dismiss(boolean z);

        BulletinFactory getBulletinFactory();

        int getNavigationBarColor(int i);

        /* JADX INFO: renamed from: getWindowView */
        View mo6088getWindowView();

        boolean isAttachedLightStatusBar();

        boolean isFullyVisible();

        boolean isShown();

        boolean onAttachedBackPressed();

        void setKeyboardHeightFromParent(int i);

        void setLastVisible(boolean z);

        void setOnDismissListener(Runnable runnable);

        boolean showDialog(Dialog dialog);

        /* JADX INFO: renamed from: org.telegram.ui.ActionBar.BaseFragment$AttachedSheet$-CC, reason: invalid class name */
        /* JADX INFO: loaded from: classes6.dex */
        public abstract /* synthetic */ class CC {
            public static void $default$setLastVisible(AttachedSheet attachedSheet, boolean z) {
            }

            public static BulletinFactory $default$getBulletinFactory(AttachedSheet attachedSheet) {
                return null;
            }
        }
    }

    public StoryViewer getLastStoryViewer() {
        ArrayList<AttachedSheet> arrayList = this.sheetsStack;
        if (arrayList != null && !arrayList.isEmpty()) {
            for (int size = this.sheetsStack.size() - 1; size >= 0; size--) {
                if ((this.sheetsStack.get(size) instanceof StoryViewer) && this.sheetsStack.get(size).isShown()) {
                    return (StoryViewer) this.sheetsStack.get(size);
                }
            }
        }
        return null;
    }

    public AttachedSheet getLastSheet() {
        ArrayList<AttachedSheet> arrayList = this.sheetsStack;
        if (arrayList != null && !arrayList.isEmpty()) {
            for (int size = this.sheetsStack.size() - 1; size >= 0; size--) {
                if (this.sheetsStack.get(size).isShown()) {
                    return this.sheetsStack.get(size);
                }
            }
        }
        return null;
    }

    public boolean hasStoryViewer() {
        return getLastStoryViewer() != null;
    }

    public boolean hasSheet() {
        ArrayList<AttachedSheet> arrayList = this.sheetsStack;
        return (arrayList == null || arrayList.isEmpty()) ? false : true;
    }

    public boolean hasShownSheet() {
        if (!hasSheet()) {
            return false;
        }
        for (int size = this.sheetsStack.size() - 1; size >= 0; size--) {
            if (this.sheetsStack.get(size).isShown()) {
                return true;
            }
        }
        return false;
    }

    public boolean hasShownFullyVisibleSheet() {
        if (!hasSheet()) {
            return false;
        }
        for (int size = this.sheetsStack.size() - 1; size >= 0; size--) {
            if (this.sheetsStack.get(size).isShown() && this.sheetsStack.get(size).isFullyVisible()) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasSheets(BaseFragment baseFragment) {
        EmptyBaseFragment sheetFragment;
        if (baseFragment == null) {
            return false;
        }
        if (baseFragment.hasShownSheet()) {
            return true;
        }
        return (baseFragment.getParentLayout() instanceof ActionBarLayout) && (sheetFragment = ((ActionBarLayout) baseFragment.getParentLayout()).getSheetFragment(false)) != null && sheetFragment.hasShownSheet();
    }

    public static boolean hasFullyVisibleSheets(BaseFragment baseFragment) {
        EmptyBaseFragment sheetFragment;
        if (baseFragment == null) {
            return false;
        }
        if (baseFragment.hasShownFullyVisibleSheet()) {
            return true;
        }
        return (baseFragment.getParentLayout() instanceof ActionBarLayout) && (sheetFragment = ((ActionBarLayout) baseFragment.getParentLayout()).getSheetFragment(false)) != null && sheetFragment.hasShownFullyVisibleSheet();
    }

    public void clearSheets() {
        ArrayList<AttachedSheet> arrayList = this.sheetsStack;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        for (int size = this.sheetsStack.size() - 1; size >= 0; size--) {
            this.sheetsStack.get(size).dismiss(true);
        }
        this.sheetsStack.clear();
    }

    public BaseFragment() {
    }

    public BaseFragment(Bundle bundle) {
        this.arguments = bundle;
    }

    public void setCurrentAccount(int i) {
        if (this.fragmentView != null) {
            throw new IllegalStateException("trying to set current account when fragment UI already created");
        }
        this.currentAccount = i;
    }

    public boolean hasOwnBackground() {
        return this.hasOwnBackground;
    }

    public void setHasOwnBackground(boolean z) {
        this.hasOwnBackground = z;
    }

    public boolean getFragmentBeginToShow() {
        return this.fragmentBeginToShow;
    }

    public ActionBar getActionBar() {
        return this.actionBar;
    }

    public View getFragmentView() {
        return this.fragmentView;
    }

    public void setFragmentView(View view) {
        this.fragmentView = view;
    }

    public Bundle getArguments() {
        return this.arguments;
    }

    public int getCurrentAccount() {
        return this.currentAccount;
    }

    public int getClassGuid() {
        return this.classGuid;
    }

    public void setInBubbleMode(boolean z) {
        this.inBubbleMode = z;
    }

    public boolean isInBubbleMode() {
        return this.inBubbleMode;
    }

    public boolean isInPreviewMode() {
        return this.inPreviewMode;
    }

    public boolean getInPassivePreviewMode() {
        INavigationLayout iNavigationLayout = this.parentLayout;
        return iNavigationLayout != null && iNavigationLayout.isInPassivePreviewMode();
    }

    public boolean isActionBarCrossfadeEnabled() {
        return this.actionBar != null;
    }

    public INavigationLayout.BackButtonState getBackButtonState() {
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            return actionBar.getBackButtonState();
        }
        return null;
    }

    public void setInPreviewMode(boolean z) {
        this.inPreviewMode = z;
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setOccupyStatusBar(!z);
        }
    }

    public void setInMenuMode(boolean z) {
        this.inMenuMode = z;
    }

    public void clearViews() {
        View view = this.fragmentView;
        if (view != null) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                try {
                    onRemoveFromParent();
                    viewGroup.removeViewInLayout(this.fragmentView);
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
            }
            this.fragmentView = null;
        }
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            ViewGroup viewGroup2 = (ViewGroup) actionBar.getParent();
            if (viewGroup2 != null) {
                try {
                    viewGroup2.removeViewInLayout(this.actionBar);
                } catch (Exception e2) {
                    FileLog.m1136e(e2);
                }
            }
            this.actionBar = null;
        }
        clearSheets();
        this.parentLayout = null;
    }

    public void onRemoveFromParent() {
        ArrayList<AttachedSheet> arrayList = this.sheetsStack;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        updateSheetsVisibility();
    }

    public void setParentFragment(BaseFragment baseFragment) {
        setParentLayout(baseFragment.parentLayout);
        this.fragmentView = createView(this.parentLayout.getView().getContext());
    }

    public void setParentLayout(INavigationLayout iNavigationLayout) {
        ViewGroup viewGroup;
        if (this.parentLayout != iNavigationLayout) {
            this.parentLayout = iNavigationLayout;
            boolean z = false;
            this.inBubbleMode = iNavigationLayout != null && iNavigationLayout.isInBubbleMode();
            View view = this.fragmentView;
            if (view != null) {
                ViewGroup viewGroup2 = (ViewGroup) view.getParent();
                if (viewGroup2 != null) {
                    try {
                        onRemoveFromParent();
                        viewGroup2.removeViewInLayout(this.fragmentView);
                    } catch (Exception e) {
                        FileLog.m1136e(e);
                    }
                }
                INavigationLayout iNavigationLayout2 = this.parentLayout;
                if (iNavigationLayout2 != null && iNavigationLayout2.getView().getContext() != this.fragmentView.getContext()) {
                    this.fragmentView = null;
                    clearSheets();
                }
            }
            if (this.actionBar != null) {
                INavigationLayout iNavigationLayout3 = this.parentLayout;
                if (iNavigationLayout3 != null && iNavigationLayout3.getView().getContext() != this.actionBar.getContext()) {
                    z = true;
                }
                if ((this.actionBar.shouldAddToContainer() || z) && (viewGroup = (ViewGroup) this.actionBar.getParent()) != null) {
                    try {
                        viewGroup.removeViewInLayout(this.actionBar);
                    } catch (Exception e2) {
                        FileLog.m1136e(e2);
                    }
                }
                if (z) {
                    this.actionBar = null;
                }
            }
            INavigationLayout iNavigationLayout4 = this.parentLayout;
            if (iNavigationLayout4 == null || this.actionBar != null) {
                return;
            }
            ActionBar actionBarCreateActionBar = createActionBar(iNavigationLayout4.getView().getContext());
            this.actionBar = actionBarCreateActionBar;
            if (actionBarCreateActionBar != null) {
                actionBarCreateActionBar.parentFragment = this;
            }
        }
    }

    public ActionBar createActionBar(Context context) {
        ActionBar actionBar = new ActionBar(context, getResourceProvider());
        actionBar.setBackgroundColor(getThemedColor(Theme.key_actionBarDefault));
        actionBar.setItemsBackgroundColor(getThemedColor(Theme.key_actionBarDefaultSelector), false);
        actionBar.setItemsBackgroundColor(getThemedColor(Theme.key_actionBarActionModeDefaultSelector), true);
        actionBar.setItemsColor(getThemedColor(Theme.key_actionBarDefaultIcon), false);
        actionBar.setItemsColor(getThemedColor(Theme.key_actionBarActionModeDefaultIcon), true);
        if (!this.inPreviewMode && !this.inBubbleMode) {
            return actionBar;
        }
        actionBar.setOccupyStatusBar(false);
        return actionBar;
    }

    public void movePreviewFragment(float f) {
        this.parentLayout.movePreviewFragment(f);
    }

    public void finishPreviewFragment() {
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null) {
            iNavigationLayout.finishPreviewFragment();
        }
    }

    public void finishFragment() {
        PreviewDelegate previewDelegate;
        Dialog dialog = this.parentDialog;
        if (dialog != null) {
            dialog.dismiss();
        } else if (this.inPreviewMode && (previewDelegate = this.previewDelegate) != null) {
            previewDelegate.finishFragment();
        } else {
            finishFragment(true);
        }
    }

    public void setFinishing(boolean z) {
        this.finishing = z;
    }

    public boolean finishFragment(boolean z) {
        INavigationLayout iNavigationLayout;
        if (this.isFinished || (iNavigationLayout = this.parentLayout) == null) {
            return false;
        }
        this.finishing = true;
        iNavigationLayout.closeLastFragment(z);
        return true;
    }

    public void removeSelfFromStack() {
        removeSelfFromStack(false);
    }

    public void removeSelfFromStack(boolean z) {
        INavigationLayout iNavigationLayout;
        if (this.isFinished || (iNavigationLayout = this.parentLayout) == null) {
            return;
        }
        Dialog dialog = this.parentDialog;
        if (dialog != null) {
            dialog.dismiss();
        } else {
            iNavigationLayout.removeFragmentFromStack(this, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isFinishing() {
        return this.finishing;
    }

    public void onFragmentDestroy() {
        getConnectionsManager().cancelRequestsForGuid(this.classGuid);
        getMessagesStorage().cancelTasksForGuid(this.classGuid);
        this.isFinished = true;
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setEnabled(false);
        }
        IconObserver.INSTANCE.removeSource(this);
        if (hasForceLightStatusBar() && !AndroidUtilities.isTablet() && getParentLayout().getLastFragment() == this && getParentActivity() != null && !this.finishing) {
            AndroidUtilities.setLightStatusBar(getParentActivity().getWindow(), Theme.getColor(Theme.key_actionBarDefault) == -1);
        }
        ArrayList<AttachedSheet> arrayList = this.sheetsStack;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                AttachedSheet attachedSheet = this.sheetsStack.get(size);
                attachedSheet.setLastVisible(false);
                attachedSheet.dismiss(true);
                this.sheetsStack.remove(size);
            }
        }
    }

    protected void resumeDelayedFragmentAnimation() {
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null) {
            iNavigationLayout.resumeDelayedFragmentAnimation();
        }
    }

    public void onResume() {
        this.isPaused = false;
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.onResume();
        }
        if (getLastStoryViewer() != null) {
            getLastStoryViewer().onResume();
            getLastStoryViewer().updatePlayingMode();
        }
    }

    public void onPause() {
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.onPause();
        }
        this.isPaused = true;
        try {
            Dialog dialog = this.visibleDialog;
            if (dialog != null && dialog.isShowing() && dismissDialogOnPause(this.visibleDialog)) {
                this.visibleDialog.dismiss();
                this.visibleDialog = null;
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        if (getLastStoryViewer() != null) {
            getLastStoryViewer().onPause();
            getLastStoryViewer().updatePlayingMode();
        }
    }

    public void setPaused(boolean z) {
        if (this.isPaused == z) {
            return;
        }
        if (z) {
            onPause();
        } else {
            onResume();
        }
    }

    public boolean isPaused() {
        return this.isPaused;
    }

    public BaseFragment getFragmentForAlert(int i) {
        INavigationLayout iNavigationLayout = this.parentLayout;
        return (iNavigationLayout == null || iNavigationLayout.getFragmentStack().size() <= i + 1) ? this : (BaseFragment) this.parentLayout.getFragmentStack().get((this.parentLayout.getFragmentStack().size() - 2) - i);
    }

    public boolean onBackPressed(boolean z) {
        if (!hasShownSheet()) {
            return true;
        }
        if (!z) {
            return false;
        }
        closeSheet();
        return false;
    }

    public boolean closeSheet() {
        ArrayList<AttachedSheet> arrayList = this.sheetsStack;
        if (arrayList == null) {
            return false;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (this.sheetsStack.get(size).isShown()) {
                return this.sheetsStack.get(size).onAttachedBackPressed();
            }
        }
        return false;
    }

    public void onActivityResultFragment(int i, int i2, Intent intent) {
        IconManager.INSTANCE.onActivityResult(i, i2, intent);
    }

    public boolean isLastFragment() {
        INavigationLayout iNavigationLayout = this.parentLayout;
        return iNavigationLayout != null && iNavigationLayout.getLastFragment() == this;
    }

    public INavigationLayout getParentLayout() {
        return this.parentLayout;
    }

    public FrameLayout getLayoutContainer() {
        View view = this.fragmentView;
        if (view == null) {
            return null;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof FrameLayout) {
            return (FrameLayout) parent;
        }
        return null;
    }

    public boolean presentFragmentAsPreview(BaseFragment baseFragment) {
        INavigationLayout iNavigationLayout;
        return allowPresentFragment() && (iNavigationLayout = this.parentLayout) != null && iNavigationLayout.presentFragmentAsPreview(baseFragment);
    }

    public boolean presentFragmentAsPreviewWithMenu(BaseFragment baseFragment, ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout) {
        INavigationLayout iNavigationLayout;
        return allowPresentFragment() && (iNavigationLayout = this.parentLayout) != null && iNavigationLayout.presentFragmentAsPreviewWithMenu(baseFragment, actionBarPopupWindowLayout);
    }

    public boolean presentFragment(BaseFragment baseFragment) {
        INavigationLayout iNavigationLayout;
        return allowPresentFragment() && (iNavigationLayout = this.parentLayout) != null && iNavigationLayout.presentFragment(baseFragment);
    }

    public boolean presentFragment(BaseFragment baseFragment, boolean z) {
        INavigationLayout iNavigationLayout;
        return allowPresentFragment() && (iNavigationLayout = this.parentLayout) != null && iNavigationLayout.presentFragment(baseFragment, z);
    }

    public boolean presentFragment(BaseFragment baseFragment, boolean z, boolean z2) {
        INavigationLayout iNavigationLayout;
        return allowPresentFragment() && (iNavigationLayout = this.parentLayout) != null && iNavigationLayout.presentFragment(baseFragment, z, z2, true, false, null);
    }

    public boolean presentFragment(INavigationLayout.NavigationParams navigationParams) {
        INavigationLayout iNavigationLayout;
        return allowPresentFragment() && (iNavigationLayout = this.parentLayout) != null && iNavigationLayout.presentFragment(navigationParams);
    }

    public Activity getParentActivity() {
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null) {
            return iNavigationLayout.getParentActivity();
        }
        return null;
    }

    public Context getContext() {
        return getParentActivity();
    }

    protected void setParentActivityTitle(CharSequence charSequence) {
        Activity parentActivity = getParentActivity();
        if (parentActivity != null) {
            parentActivity.setTitle(charSequence);
        }
    }

    public void startActivityForResult(Intent intent, int i) {
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null) {
            iNavigationLayout.startActivityForResult(intent, i);
        }
    }

    public void dismissCurrentDialog() {
        Dialog dialog = this.visibleDialog;
        if (dialog == null) {
            return;
        }
        try {
            dialog.dismiss();
            this.visibleDialog = null;
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public void onBeginSlide() {
        try {
            Dialog dialog = this.visibleDialog;
            if (dialog != null && dialog.isShowing()) {
                this.visibleDialog.dismiss();
                this.visibleDialog = null;
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.onPause();
        }
    }

    public void onTransitionAnimationStart(boolean z, boolean z2) {
        this.inTransitionAnimation = true;
        if (z) {
            this.fragmentBeginToShow = true;
        }
    }

    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        this.inTransitionAnimation = false;
    }

    public void onBecomeFullyVisible() {
        ActionBar actionBar;
        this.isFullyVisible = true;
        if (((AccessibilityManager) ApplicationLoader.applicationContext.getSystemService("accessibility")).isEnabled() && (actionBar = getActionBar()) != null) {
            String title = actionBar.getTitle();
            if (!TextUtils.isEmpty(title)) {
                setParentActivityTitle(title);
            }
        }
        Runnable runnable = this.fullyVisibleListener;
        if (runnable != null) {
            this.fullyVisibleListener = null;
            runnable.run();
        }
        updateSheetsVisibility();
        checkSystemBarColors();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkSystemBarColors() {
        Activity parentActivity = getParentActivity();
        if (parentActivity instanceof LaunchActivity) {
            ((LaunchActivity) parentActivity).checkSystemBarColors(true, true, true);
        }
    }

    protected void updateSheetsVisibility() {
        if (this.sheetsStack == null) {
            return;
        }
        for (int i = 0; i < this.sheetsStack.size(); i++) {
            AttachedSheet attachedSheet = this.sheetsStack.get(i);
            boolean z = true;
            if (i != this.sheetsStack.size() - 1 || !this.isFullyVisible) {
                z = false;
            }
            attachedSheet.setLastVisible(z);
        }
    }

    public void whenFullyVisible(Runnable runnable) {
        this.fullyVisibleListener = runnable;
    }

    public void onBecomeFullyHidden() {
        this.isFullyVisible = false;
        updateSheetsVisibility();
    }

    public Dialog showDialog(Dialog dialog) {
        return showDialog(dialog, false, null);
    }

    public Dialog showDialog(Dialog dialog, DialogInterface.OnDismissListener onDismissListener) {
        return showDialog(dialog, false, onDismissListener);
    }

    public Dialog showDialog(Dialog dialog, boolean z, final DialogInterface.OnDismissListener onDismissListener) {
        INavigationLayout iNavigationLayout;
        if (dialog != null && (iNavigationLayout = this.parentLayout) != null && !iNavigationLayout.isTransitionAnimationInProgress() && !this.parentLayout.isSwipeInProgress() && (z || !this.parentLayout.checkTransitionAnimation())) {
            ArrayList<AttachedSheet> arrayList = this.sheetsStack;
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (this.sheetsStack.get(size).isShown() && this.sheetsStack.get(size).showDialog(dialog)) {
                        return dialog;
                    }
                }
            }
            try {
                Dialog dialog2 = this.visibleDialog;
                if (dialog2 != null) {
                    dialog2.dismiss();
                }
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
            try {
                this.visibleDialog = dialog;
                dialog.setCanceledOnTouchOutside(true);
                this.visibleDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.ActionBar.BaseFragment$$ExternalSyntheticLambda1
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        this.f$0.lambda$showDialog$0(onDismissListener, dialogInterface);
                    }
                });
                this.visibleDialog.show();
                return this.visibleDialog;
            } catch (Exception e2) {
                FileLog.m1136e(e2);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDialog$0(DialogInterface.OnDismissListener onDismissListener, DialogInterface dialogInterface) {
        if (onDismissListener != null) {
            onDismissListener.onDismiss(dialogInterface);
        }
        onDialogDismiss((Dialog) dialogInterface);
        if (dialogInterface == this.visibleDialog) {
            this.visibleDialog = null;
        }
    }

    public Dialog getVisibleDialog() {
        return this.visibleDialog;
    }

    public void setVisibleDialog(Dialog dialog) {
        this.visibleDialog = dialog;
    }

    public ArrayList<ThemeDescription> getThemeDescriptions() {
        return new ArrayList<>();
    }

    public AccountInstance getAccountInstance() {
        return AccountInstance.getInstance(this.currentAccount);
    }

    public MessagesController getMessagesController() {
        return getAccountInstance().getMessagesController();
    }

    public GiftAuctionController getGiftAuctionsController() {
        return getAccountInstance().getGiftAuctionsController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ContactsController getContactsController() {
        return getAccountInstance().getContactsController();
    }

    public MediaDataController getMediaDataController() {
        return getAccountInstance().getMediaDataController();
    }

    public ConnectionsManager getConnectionsManager() {
        return getAccountInstance().getConnectionsManager();
    }

    public LocationController getLocationController() {
        return getAccountInstance().getLocationController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public NotificationsController getNotificationsController() {
        return getAccountInstance().getNotificationsController();
    }

    public MessagesStorage getMessagesStorage() {
        return getAccountInstance().getMessagesStorage();
    }

    public SendMessagesHelper getSendMessagesHelper() {
        return getAccountInstance().getSendMessagesHelper();
    }

    public FileLoader getFileLoader() {
        return getAccountInstance().getFileLoader();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SecretChatHelper getSecretChatHelper() {
        return getAccountInstance().getSecretChatHelper();
    }

    public DownloadController getDownloadController() {
        return getAccountInstance().getDownloadController();
    }

    protected SharedPreferences getNotificationsSettings() {
        return getAccountInstance().getNotificationsSettings();
    }

    public NotificationCenter getNotificationCenter() {
        return getAccountInstance().getNotificationCenter();
    }

    public MediaController getMediaController() {
        return MediaController.getInstance();
    }

    public UserConfig getUserConfig() {
        return getAccountInstance().getUserConfig();
    }

    public void setFragmentPanTranslationOffset(int i) {
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null) {
            iNavigationLayout.setFragmentPanTranslationOffset(i);
        }
    }

    public INavigationLayout[] showAsSheet(BaseFragment baseFragment) {
        return showAsSheet(baseFragment, null);
    }

    public INavigationLayout[] showAsSheet(BaseFragment baseFragment, BottomSheetParams bottomSheetParams) {
        if (getParentActivity() == null) {
            return null;
        }
        INavigationLayout[] iNavigationLayoutArr = {INavigationLayout.CC.newLayout(getParentActivity(), false, new Supplier() { // from class: org.telegram.ui.ActionBar.BaseFragment$$ExternalSyntheticLambda0
            @Override // androidx.core.util.Supplier
            public final Object get() {
                return BaseFragment.$r8$lambda$aMpXmKmokozlm5AWV_1jB0NtqhE(bottomSheetArr);
            }
        })};
        iNavigationLayoutArr[0].setIsSheet(true);
        LaunchActivity.instance.sheetFragmentsStack.add(iNavigationLayoutArr[0]);
        baseFragment.onTransitionAnimationStart(true, false);
        DialogC30521 dialogC30521 = new DialogC30521(getParentActivity(), true, baseFragment.getResourceProvider(), bottomSheetParams, iNavigationLayoutArr, baseFragment, bottomSheetArr);
        final BottomSheet[] bottomSheetArr = {dialogC30521};
        if (bottomSheetParams != null) {
            dialogC30521.setAllowNestedScroll(bottomSheetParams.allowNestedScroll);
            bottomSheetArr[0].transitionFromRight(bottomSheetParams.transitionFromLeft);
        }
        baseFragment.setParentDialog(bottomSheetArr[0]);
        bottomSheetArr[0].setOpenNoDelay(true);
        bottomSheetArr[0].show();
        return iNavigationLayoutArr;
    }

    public static /* synthetic */ BottomSheet $r8$lambda$aMpXmKmokozlm5AWV_1jB0NtqhE(BottomSheet[] bottomSheetArr) {
        return bottomSheetArr[0];
    }

    /* JADX INFO: renamed from: org.telegram.ui.ActionBar.BaseFragment$1 */
    /* JADX INFO: loaded from: classes6.dex */
    class DialogC30521 extends BottomSheet {
        final /* synthetic */ INavigationLayout[] val$actionBarLayout;
        final /* synthetic */ BottomSheet[] val$bottomSheet;
        final /* synthetic */ BaseFragment val$fragment;
        final /* synthetic */ BottomSheetParams val$params;

        @Override // org.telegram.p029ui.ActionBar.BottomSheet
        protected boolean canDismissWithSwipe() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        DialogC30521(Context context, boolean z, Theme.ResourcesProvider resourcesProvider, final BottomSheetParams bottomSheetParams, INavigationLayout[] iNavigationLayoutArr, final BaseFragment baseFragment, BottomSheet[] bottomSheetArr) {
            super(context, z, resourcesProvider);
            this.val$params = bottomSheetParams;
            this.val$actionBarLayout = iNavigationLayoutArr;
            this.val$fragment = baseFragment;
            this.val$bottomSheet = bottomSheetArr;
            boolean z2 = bottomSheetParams != null && bottomSheetParams.occupyNavigationBar;
            this.occupyNavigationBar = z2;
            this.drawNavigationBar = true ^ z2;
            iNavigationLayoutArr[0].setFragmentStack(new ArrayList());
            iNavigationLayoutArr[0].addFragmentToStack(baseFragment);
            iNavigationLayoutArr[0].showLastFragment();
            ViewGroup view = iNavigationLayoutArr[0].getView();
            int i = this.backgroundPaddingLeft;
            view.setPadding(i, 0, i, 0);
            this.containerView = iNavigationLayoutArr[0].getView();
            setApplyBottomPadding(false);
            setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.ActionBar.BaseFragment$1$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    BaseFragment.DialogC30521.$r8$lambda$Rx21TGQLU2yUDDxrvshPgjTbRus(baseFragment, bottomSheetParams, dialogInterface);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$Rx21TGQLU2yUDDxrvshPgjTbRus(BaseFragment baseFragment, BottomSheetParams bottomSheetParams, DialogInterface dialogInterface) {
            Runnable runnable;
            baseFragment.onPause();
            baseFragment.onFragmentDestroy();
            if (bottomSheetParams == null || (runnable = bottomSheetParams.onDismiss) == null) {
                return;
            }
            runnable.run();
        }

        @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog
        protected void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            this.val$actionBarLayout[0].setWindow(this.val$bottomSheet[0].getWindow());
            BottomSheetParams bottomSheetParams = this.val$params;
            if (bottomSheetParams == null || !bottomSheetParams.occupyNavigationBar) {
                fixNavigationBar(Theme.getColor(Theme.key_dialogBackgroundGray, this.val$fragment.getResourceProvider()));
            } else {
                AndroidUtilities.setLightNavigationBar((Dialog) this.val$bottomSheet[0], true);
            }
            AndroidUtilities.setLightStatusBar(getWindow(), this.val$fragment.isLightStatusBar());
            this.val$fragment.onBottomSheetCreated();
        }

        @Override // org.telegram.p029ui.ActionBar.BottomSheet
        protected boolean canSwipeToBack(MotionEvent motionEvent) {
            INavigationLayout iNavigationLayout;
            BottomSheetParams bottomSheetParams = this.val$params;
            if (bottomSheetParams == null || !bottomSheetParams.transitionFromLeft || (iNavigationLayout = this.val$actionBarLayout[0]) == null || iNavigationLayout.getFragmentStack().size() > 1) {
                return false;
            }
            return this.val$actionBarLayout[0].getFragmentStack().size() != 1 || ((BaseFragment) this.val$actionBarLayout[0].getFragmentStack().get(0)).isSwipeBackEnabled(motionEvent);
        }

        @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog
        /* JADX INFO: renamed from: onBackPressed */
        public void lambda$openCrafting$8() {
            INavigationLayout iNavigationLayout = this.val$actionBarLayout[0];
            if (iNavigationLayout == null || iNavigationLayout.getFragmentStack().size() <= 1) {
                super.lambda$openCrafting$8();
            } else {
                this.val$actionBarLayout[0].onBackPressed();
            }
        }

        @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
        public void dismiss() {
            BottomSheetParams bottomSheetParams;
            Runnable runnable;
            if (!isDismissed() && (bottomSheetParams = this.val$params) != null && (runnable = bottomSheetParams.onPreFinished) != null) {
                runnable.run();
            }
            super.dismiss();
            LaunchActivity.instance.sheetFragmentsStack.remove(this.val$actionBarLayout[0]);
            this.val$actionBarLayout[0] = null;
        }

        @Override // org.telegram.p029ui.ActionBar.BottomSheet
        public void onOpenAnimationEnd() {
            Runnable runnable;
            this.val$fragment.onTransitionAnimationEnd(true, false);
            BottomSheetParams bottomSheetParams = this.val$params;
            if (bottomSheetParams == null || (runnable = bottomSheetParams.onOpenAnimationFinished) == null) {
                return;
            }
            runnable.run();
        }

        @Override // org.telegram.p029ui.ActionBar.BottomSheet
        protected void onInsetsChanged() {
            INavigationLayout iNavigationLayout = this.val$actionBarLayout[0];
            if (iNavigationLayout != null) {
                for (BaseFragment baseFragment : iNavigationLayout.getFragmentStack()) {
                    if (baseFragment.getFragmentView() != null) {
                        baseFragment.getFragmentView().requestLayout();
                    }
                }
            }
        }
    }

    public int getThemedColor(int i) {
        return Theme.getColor(i, getResourceProvider());
    }

    public Paint getThemedPaint(String str) {
        Paint paint = getResourceProvider() != null ? getResourceProvider().getPaint(str) : null;
        return paint != null ? paint : Theme.getThemePaint(str);
    }

    public Drawable getThemedDrawable(String str) {
        return Theme.getThemeDrawable(str);
    }

    public int getNavigationBarColor() {
        int color = Theme.getColor(Theme.key_windowBackgroundGray, getResourceProvider());
        if (this.sheetsStack != null) {
            for (int i = 0; i < this.sheetsStack.size(); i++) {
                AttachedSheet attachedSheet = this.sheetsStack.get(i);
                if (attachedSheet.attachedToParent()) {
                    color = attachedSheet.getNavigationBarColor(color);
                }
            }
        }
        return color;
    }

    public void setNavigationBarColor(int i) {
        if (isSupportEdgeToEdge()) {
            return;
        }
        Activity parentActivity = getParentActivity();
        if (parentActivity instanceof LaunchActivity) {
            ((LaunchActivity) parentActivity).setNavigationBarColor(i);
        } else if (parentActivity != null) {
            Window window = parentActivity.getWindow();
            if (Build.VERSION.SDK_INT >= 26 && window != null) {
                window.getNavigationBarColor();
            }
        }
        AndroidUtilities.setLightNavigationBar(parentActivity, AndroidUtilities.computePerceivedBrightness(i) >= 0.721f);
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null) {
            iNavigationLayout.setNavigationBarColor(i);
        }
    }

    public boolean isBeginToShow() {
        return this.fragmentBeginToShow;
    }

    private void setParentDialog(Dialog dialog) {
        this.parentDialog = dialog;
    }

    public Theme.ResourcesProvider getResourceProvider() {
        return this.resourceProvider;
    }

    public boolean isRemovingFromStack() {
        return this.removingFromStack;
    }

    public void setRemovingFromStack(boolean z) {
        this.removingFromStack = z;
    }

    public boolean isLightStatusBar() {
        int color;
        if (getLastStoryViewer() != null && getLastStoryViewer().isShown()) {
            return false;
        }
        if (hasForceLightStatusBar() && !Theme.getCurrentTheme().isDark()) {
            return true;
        }
        Theme.ResourcesProvider resourceProvider = getResourceProvider();
        int i = Theme.key_actionBarDefault;
        ActionBar actionBar = this.actionBar;
        if (actionBar != null && actionBar.isActionModeShowed()) {
            i = Theme.key_actionBarActionModeDefault;
        }
        if (resourceProvider != null) {
            color = resourceProvider.getColorOrDefault(i);
        } else {
            color = Theme.getColor(i, null, true);
        }
        return ColorUtils.calculateLuminance(color) > 0.699999988079071d;
    }

    public void setPreviewDelegate(PreviewDelegate previewDelegate) {
        this.previewDelegate = previewDelegate;
    }

    public void resetFragment() {
        if (this.isFinished) {
            clearViews();
            this.isFinished = false;
            this.finishing = false;
        }
    }

    public void setResourceProvider(Theme.ResourcesProvider resourcesProvider) {
        this.resourceProvider = resourcesProvider;
    }

    public void attachSheets(ActionBarLayout.LayoutContainer layoutContainer) {
        if (this.sheetsStack != null) {
            for (int i = 0; i < this.sheetsStack.size(); i++) {
                AttachedSheet attachedSheet = this.sheetsStack.get(i);
                if (attachedSheet != null && attachedSheet.attachedToParent()) {
                    AndroidUtilities.removeFromParent(attachedSheet.mo6088getWindowView());
                    layoutContainer.addView(attachedSheet.mo6088getWindowView());
                }
            }
        }
    }

    public void detachSheets() {
        if (this.sheetsStack != null) {
            for (int i = 0; i < this.sheetsStack.size(); i++) {
                AttachedSheet attachedSheet = this.sheetsStack.get(i);
                if (attachedSheet != null && attachedSheet.attachedToParent()) {
                    AndroidUtilities.removeFromParent(attachedSheet.mo6088getWindowView());
                }
            }
        }
    }

    public boolean isStoryViewer(View view) {
        if (this.sheetsStack != null) {
            for (int i = 0; i < this.sheetsStack.size(); i++) {
                AttachedSheet attachedSheet = this.sheetsStack.get(i);
                if ((attachedSheet instanceof StoryViewer) && view == attachedSheet.mo6088getWindowView()) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isBotView(View view) {
        if (this.sheetsStack != null) {
            for (int i = 0; i < this.sheetsStack.size(); i++) {
                this.sheetsStack.get(i);
            }
        }
        return false;
    }

    public void setKeyboardHeightFromParent(int i) {
        if (this.sheetsStack != null) {
            for (int i2 = 0; i2 < this.sheetsStack.size(); i2++) {
                AttachedSheet attachedSheet = this.sheetsStack.get(i2);
                if (attachedSheet != null) {
                    attachedSheet.setKeyboardHeightFromParent(i);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public StoryViewer getOrCreateStoryViewer() {
        StoryViewer storyViewer;
        if (this.sheetsStack == null) {
            this.sheetsStack = new ArrayList<>();
        }
        if (!this.sheetsStack.isEmpty()) {
            ArrayList<AttachedSheet> arrayList = this.sheetsStack;
            if (arrayList.get(arrayList.size() - 1) instanceof StoryViewer) {
                ArrayList<AttachedSheet> arrayList2 = this.sheetsStack;
                storyViewer = (StoryViewer) arrayList2.get(arrayList2.size() - 1);
            } else {
                storyViewer = null;
            }
        }
        if (storyViewer == null) {
            storyViewer = new StoryViewer(this);
            INavigationLayout iNavigationLayout = this.parentLayout;
            if (iNavigationLayout != null && iNavigationLayout.isSheet()) {
                storyViewer.fromBottomSheet = true;
            }
            this.sheetsStack.add(storyViewer);
            updateSheetsVisibility();
        }
        return storyViewer;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public StoryViewer getOrCreateStoryViewer(int i) {
        StoryViewer storyViewer;
        if (this.sheetsStack == null) {
            this.sheetsStack = new ArrayList<>();
        }
        StoryViewer storyViewer2 = null;
        if (!this.sheetsStack.isEmpty()) {
            ArrayList<AttachedSheet> arrayList = this.sheetsStack;
            if (arrayList.get(arrayList.size() - 1) instanceof StoryViewer) {
                ArrayList<AttachedSheet> arrayList2 = this.sheetsStack;
                storyViewer = (StoryViewer) arrayList2.get(arrayList2.size() - 1);
            } else {
                storyViewer = null;
            }
        }
        if (storyViewer == null || storyViewer.currentAccount == i) {
            storyViewer2 = storyViewer;
        } else {
            storyViewer.close(true);
            removeSheet(storyViewer);
        }
        if (storyViewer2 != null) {
            return storyViewer2;
        }
        StoryViewer storyViewer3 = new StoryViewer(this);
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null && iNavigationLayout.isSheet()) {
            storyViewer3.fromBottomSheet = true;
        }
        this.sheetsStack.add(storyViewer3);
        updateSheetsVisibility();
        return storyViewer3;
    }

    public void setTitleOverlayTextIfActionBarAttached(String str, int i, Runnable runnable) {
        ActionBar actionBar = this.actionBar;
        if (actionBar == null || !actionBar.shouldAddToContainer()) {
            return;
        }
        setTitleOverlayText(str, i, runnable);
    }

    public void setTitleOverlayText(String str, int i, Runnable runnable) {
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setTitleOverlayText(str, i, runnable);
        }
    }

    public void removeSheet(AttachedSheet attachedSheet) {
        ArrayList<AttachedSheet> arrayList = this.sheetsStack;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(attachedSheet);
        updateSheetsVisibility();
    }

    public void addSheet(AttachedSheet attachedSheet) {
        if (this.sheetsStack == null) {
            this.sheetsStack = new ArrayList<>();
        }
        StoryViewer lastStoryViewer = getLastStoryViewer();
        if (lastStoryViewer != null) {
            lastStoryViewer.listenToAttachedSheet(attachedSheet);
        }
        this.sheetsStack.add(attachedSheet);
        updateSheetsVisibility();
    }

    public StoryViewer createOverlayStoryViewer() {
        if (this.sheetsStack == null) {
            this.sheetsStack = new ArrayList<>();
        }
        StoryViewer storyViewer = new StoryViewer(this);
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null && iNavigationLayout.isSheet()) {
            storyViewer.fromBottomSheet = true;
        }
        this.sheetsStack.add(storyViewer);
        updateSheetsVisibility();
        return storyViewer;
    }

    public ArticleViewer createArticleViewer(boolean z) {
        if (this.sheetsStack == null) {
            this.sheetsStack = new ArrayList<>();
        }
        if (!z) {
            if ((getLastSheet() instanceof ArticleViewer.Sheet) && getLastSheet().isShown()) {
                return ((ArticleViewer.Sheet) getLastSheet()).getArticleViewer();
            }
            INavigationLayout iNavigationLayout = this.parentLayout;
            if ((iNavigationLayout instanceof ActionBarLayout) && ((ActionBarLayout) iNavigationLayout).getSheetFragment(false) != null && (((ActionBarLayout) this.parentLayout).getSheetFragment(false).getLastSheet() instanceof ArticleViewer.Sheet)) {
                ArticleViewer.Sheet sheet = (ArticleViewer.Sheet) ((ActionBarLayout) this.parentLayout).getSheetFragment(false).getLastSheet();
                if (sheet.isShown()) {
                    return sheet.getArticleViewer();
                }
            }
        }
        ArticleViewer articleViewerMakeSheet = ArticleViewer.makeSheet(this);
        addSheet(articleViewerMakeSheet.sheet);
        BottomSheetTabDialog.checkSheet(articleViewerMakeSheet.sheet);
        return articleViewerMakeSheet;
    }

    public boolean drawEdgeNavigationBar() {
        return isSupportEdgeToEdge();
    }

    public WindowInsetsCompat onInsetsInternal(View view, WindowInsetsCompat windowInsetsCompat) {
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.navigationBars() | WindowInsetsCompat.Type.statusBars());
        int i = insets.left;
        int i2 = insets.top;
        int i3 = insets.right;
        int i4 = insets.bottom;
        this.bottomInset = i4;
        onInsets(i, i2, i3, i4);
        return WindowInsetsCompat.CONSUMED;
    }

    public int getBottomInset() {
        return this.bottomInset;
    }
}
