package com.exteragram.messenger.utils.ui;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.debug.DebugConfig;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessageObject;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.ChatActivityTopPanelLayout;
import org.telegram.ui.Components.ChatAvatarContainer;
import org.telegram.ui.Components.chat.ViewPositionWatcher;
import org.telegram.ui.Components.chat.layouts.ChatActivityFadeView;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ChatHeaderUiHelper {
    public static boolean isMaterial3ChatHeaderStyle() {
        return ExteraConfig.getNewChatHeaderStyle();
    }

    public static int getChatAvatarSizeDp() {
        return isMaterial3ChatHeaderStyle() ? 46 : 42;
    }

    public static int getAvatarInsetPx() {
        return !isMaterial3ChatHeaderStyle() ? 1 : 0;
    }

    public static float getGlassPillExtraRightPaddingDp() {
        return isMaterial3ChatHeaderStyle() ? 0.0f : 6.0f;
    }

    public static int getAvatarSizePx(int i) {
        return AndroidUtilities.dp(i) - (getAvatarInsetPx() * 2);
    }

    public static int getAvatarRadius(int i, boolean z) {
        if (isMaterial3ChatHeaderStyle()) {
            return ExteraConfig.getAvatarCorners(i, false, z);
        }
        return ExteraConfig.getAvatarCorners(getAvatarSizePx(i), true, z);
    }

    public static int getChatFadeColorKey() {
        return DebugConfig.getChatFadeUseWhiteBackground() ? Theme.key_windowBackgroundWhite : Theme.key_windowBackgroundGray;
    }

    public static void setupGlassAvatarContainer(ChatAvatarContainer chatAvatarContainer) {
        chatAvatarContainer.setGlassMode();
        if (isMaterial3ChatHeaderStyle()) {
            chatAvatarContainer.setAvatarSizeInDp(46);
        }
    }

    public static void applyChatHeaderGlassStyle(ActionBar actionBar) {
        applyChatHeaderGlassStyle(actionBar, isMaterial3ChatHeaderStyle());
    }

    public static void applyChatHeaderGlassStyle(ActionBar actionBar, boolean z) {
        if (z) {
            actionBar.setDrawGlassMiddlePill(false);
            actionBar.setGlassShadowAlpha(0.0f);
        }
    }

    public static void setupChatTopFade(ChatActivityFadeView chatActivityFadeView, ActionBar actionBar, int i, int i2) {
        setupChatTopFade(chatActivityFadeView, actionBar, i, i2, isMaterial3ChatHeaderStyle());
    }

    public static void setupChatTopFade(ChatActivityFadeView chatActivityFadeView, ActionBar actionBar, int i, int i2, boolean z) {
        chatActivityFadeView.setTopFadeAnchor(actionBar);
        chatActivityFadeView.setFadeTopAlpha(actionBar.getVisibility() == 0 ? 255 : 0);
        int chatTopFadeZone = getChatTopFadeZone(i2, z);
        if (z) {
            chatActivityFadeView.setFadeZoneTop(getScaledChatTopFadeZone(actionBar, chatTopFadeZone, z));
            chatActivityFadeView.setTopFadeColor(i);
        } else {
            chatActivityFadeView.setFadeZoneTop(chatTopFadeZone);
        }
        chatActivityFadeView.setFadeHeightTop(getChatTopFadeHeight(z));
    }

    public static boolean scrimReachesTopFade(ChatActivityFadeView chatActivityFadeView, ViewGroup viewGroup, View view, MessageObject.GroupedMessages groupedMessages, float f) {
        MessageObject.GroupedMessages.TransitionParams transitionParams;
        ChatMessageCell chatMessageCell;
        float fadeZoneTop = chatActivityFadeView.getFadeZoneTop();
        if (f >= fadeZoneTop) {
            return false;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            ChatMessageCell chatMessageCell2 = childAt instanceof ChatMessageCell ? (ChatMessageCell) childAt : null;
            if ((childAt == view || !(groupedMessages == null || chatMessageCell2 == null || chatMessageCell2.getCurrentMessagesGroup() != groupedMessages)) && childAt.getAlpha() != 0.0f && ((chatMessageCell2 != null && chatMessageCell2.getTransitionParams().animateBackgroundBoundsInner) || viewGroup.getY() + childAt.getY() < fadeZoneTop)) {
                return true;
            }
        }
        if (groupedMessages != null && (chatMessageCell = (transitionParams = groupedMessages.transitionParams).cell) != null) {
            float translationY = transitionParams.top + transitionParams.offsetTop;
            if (!transitionParams.backgroundChangeBounds) {
                translationY += chatMessageCell.getTranslationY();
            }
            if (viewGroup.getY() + translationY < fadeZoneTop) {
                return true;
            }
        }
        return false;
    }

    private static int getScaledChatTopFadeZone(ActionBar actionBar, int i, boolean z) {
        int measuredHeight = actionBar.getMeasuredHeight();
        int chatTopFadeZone = getChatTopFadeZone(measuredHeight, z);
        return (measuredHeight == 0 || chatTopFadeZone >= i) ? i : chatTopFadeZone + Math.round((i - chatTopFadeZone) * 0.5f);
    }

    public static boolean isLightChatStatusBar(ActionBar actionBar, int i) {
        return isLightChatStatusBar(actionBar, i, isMaterial3ChatHeaderStyle());
    }

    public static boolean isLightChatStatusBar(ActionBar actionBar, int i, boolean z) {
        if (!z || actionBar.isActionModeShowed()) {
            i = actionBar.getBackgroundColor();
        }
        return AndroidUtilities.computePerceivedBrightness(i) > 0.721f;
    }

    public static int getAvatarContainerLeftMargin(boolean z) {
        if (z) {
            return 4;
        }
        return isMaterial3ChatHeaderStyle() ? 57 : 52;
    }

    public static float getTopPanelActionBarGapOffset(ChatActivityTopPanelLayout chatActivityTopPanelLayout) {
        if (chatActivityTopPanelLayout == null) {
            return 0.0f;
        }
        return getTopPanelActionBarGapOffset(chatActivityTopPanelLayout.getMetadata().getTotalVisibility());
    }

    public static float getTopPanelActionBarGapOffset(float f) {
        if (isMaterial3ChatHeaderStyle()) {
            return AndroidUtilities.dp(4.0f) * f;
        }
        return 0.0f;
    }

    public static float getFinalTopPanelHeight(float f, ChatActivityTopPanelLayout chatActivityTopPanelLayout) {
        return f + getTopPanelActionBarGapOffset(chatActivityTopPanelLayout);
    }

    public static float getFinalTopPanelHeight(float f, float f2) {
        return f + getTopPanelActionBarGapOffset(f2);
    }

    public static float getTopPanelTranslationY(float f, float f2, float f3) {
        return (f + AndroidUtilities.dp(isMaterial3ChatHeaderStyle() ? -1 : -5)) - (f2 * f3);
    }

    public static int getChatTopFadeHeight(boolean z) {
        return AndroidUtilities.dp(z ? 78.0f : 48.0f);
    }

    public static int getChatTopFadeZone(int i, boolean z) {
        return z ? i + AndroidUtilities.dp(42.0f) : i;
    }

    public static final class ProfileTransitionState {
        private float avatarTranslation;
        private float avatarStartY = Float.NaN;
        private float avatarSizeDp = 42.0f;
        private float nameTranslationX = Float.NaN;
        private float nameTranslationY = Float.NaN;
        private float onlineTranslationX = Float.NaN;
        private float onlineTranslationY = Float.NaN;

        public void reset() {
            this.avatarTranslation = 0.0f;
            this.avatarStartY = Float.NaN;
            this.avatarSizeDp = 42.0f;
            this.nameTranslationX = Float.NaN;
            this.nameTranslationY = Float.NaN;
            this.onlineTranslationX = Float.NaN;
            this.onlineTranslationY = Float.NaN;
        }

        public void capture(ChatAvatarContainer chatAvatarContainer, ViewGroup viewGroup, View view, View view2) {
            BackupImageView avatarImageView;
            if (chatAvatarContainer == null || viewGroup == null || (avatarImageView = chatAvatarContainer.getAvatarImageView()) == null) {
                return;
            }
            this.avatarTranslation = ViewPositionWatcher.computeXCoordinateInParent(avatarImageView, viewGroup);
            this.avatarStartY = ViewPositionWatcher.computeYCoordinateInParent(avatarImageView, viewGroup);
            int measuredWidth = avatarImageView.getMeasuredWidth() != 0 ? avatarImageView.getMeasuredWidth() : avatarImageView.getWidth();
            if (measuredWidth > 0) {
                this.avatarSizeDp = measuredWidth / AndroidUtilities.density;
            }
            if (chatAvatarContainer.getTitleTextView() != null && view != null) {
                this.nameTranslationX = ViewPositionWatcher.computeXCoordinateInParent(chatAvatarContainer.getTitleTextView(), viewGroup) - getTransitionLayoutLeft(view);
                this.nameTranslationY = ViewPositionWatcher.computeYCoordinateInParent(chatAvatarContainer.getTitleTextView(), viewGroup) - getTransitionLayoutTop(view);
            }
            View subtitleTextView = chatAvatarContainer.getSubtitleTextView();
            if (subtitleTextView == null || view2 == null) {
                return;
            }
            this.onlineTranslationX = ViewPositionWatcher.computeXCoordinateInParent(subtitleTextView, viewGroup) - getTransitionLayoutLeft(view2);
            this.onlineTranslationY = ViewPositionWatcher.computeYCoordinateInParent(subtitleTextView, viewGroup) - getTransitionLayoutTop(view2);
        }

        public float getAvatarTranslation() {
            return this.avatarTranslation;
        }

        public float getAvatarStartY(ActionBar actionBar) {
            if (!Float.isNaN(this.avatarStartY)) {
                return this.avatarStartY;
            }
            return (((actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + (ActionBar.getCurrentActionBarHeight() / 2.0f)) - AndroidUtilities.dp(this.avatarSizeDp / 2.0f)) + actionBar.getTranslationY();
        }

        public float getAvatarStartScale() {
            return this.avatarSizeDp / 100.0f;
        }

        public float getAvatarSizeDp() {
            return this.avatarSizeDp;
        }

        public float getNameTranslationX() {
            if (!Float.isNaN(this.nameTranslationX)) {
                return this.nameTranslationX;
            }
            return (this.avatarTranslation - AndroidUtilities.dp(109.0f)) + AndroidUtilities.dp(this.avatarSizeDp + 6.0f);
        }

        public float getNameTranslationY(ActionBar actionBar) {
            if (!Float.isNaN(this.nameTranslationY)) {
                return this.nameTranslationY;
            }
            return ((float) Math.floor(getAvatarStartY(actionBar))) + AndroidUtilities.dp(ChatHeaderUiHelper.isMaterial3ChatHeaderStyle() ? 1.66f : 1.3f);
        }

        public float getOnlineTranslationX() {
            if (!Float.isNaN(this.onlineTranslationX)) {
                return this.onlineTranslationX;
            }
            return getNameTranslationX();
        }

        public float getOnlineTranslationY(ActionBar actionBar) {
            if (!Float.isNaN(this.onlineTranslationY)) {
                return this.onlineTranslationY;
            }
            return ((float) Math.floor(getAvatarStartY(actionBar))) + AndroidUtilities.dp(ChatHeaderUiHelper.isMaterial3ChatHeaderStyle() ? 26.66f : 24.0f);
        }

        public void updateBadgePositionsFromCollapsedAvatar(View view, float f, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4) {
            updateBadgePositions(view, (AndroidUtilities.dp(this.avatarSizeDp) * ((f * 100.0f) / this.avatarSizeDp)) - AndroidUtilities.dp(r1), imageView, imageView2, imageView3, imageView4);
        }

        public void updateBadgePositionsFromExpandedAvatar(View view, float f, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4) {
            updateBadgePositions(view, (view.getMeasuredWidth() - AndroidUtilities.dp(this.avatarSizeDp)) * ((f * 100.0f) / this.avatarSizeDp), imageView, imageView2, imageView3, imageView4);
        }

        private void updateBadgePositions(View view, float f, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4) {
            if (imageView != null) {
                imageView.setTranslationX(view.getX() + AndroidUtilities.dp(this.avatarSizeDp - 26.0f) + f);
                imageView.setTranslationY(view.getY() + AndroidUtilities.dp(-10.0f) + f);
            }
            if (imageView2 != null) {
                imageView2.setTranslationX(view.getX() + AndroidUtilities.dp(this.avatarSizeDp - 14.0f) + f);
                imageView2.setTranslationY(view.getY() + AndroidUtilities.dp(this.avatarSizeDp - 15.5f) + f);
            }
            if (imageView3 != null) {
                imageView3.setTranslationX(view.getX() + AndroidUtilities.dp(this.avatarSizeDp - 14.0f) + f);
                imageView3.setTranslationY(view.getY() + AndroidUtilities.dp(this.avatarSizeDp - 18.0f) + f);
            }
            if (imageView4 != null) {
                imageView4.setTranslationX(view.getX() + AndroidUtilities.dp(this.avatarSizeDp - 14.0f) + f);
                imageView4.setTranslationY(view.getY() + AndroidUtilities.dp(this.avatarSizeDp - 18.0f) + f);
            }
        }

        private static int getTransitionLayoutLeft(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            }
            return view.getLeft();
        }

        private static int getTransitionLayoutTop(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            }
            return view.getTop();
        }
    }
}
