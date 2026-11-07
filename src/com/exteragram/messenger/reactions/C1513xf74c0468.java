package com.exteragram.messenger.reactions;

import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import com.exteragram.messenger.reactions.ChannelReactionsEditActivity;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.ui.ActionBar.BaseFragment;

/* JADX INFO: renamed from: com.exteragram.messenger.reactions.ChannelReactionsEditActivity$createRootLayout$1$adjustPanLayoutHelper$1 */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0014J\b\u0010\b\u001a\u00020\u0005H\u0014J\b\u0010\t\u001a\u00020\u0005H\u0014¨\u0006\n"}, d2 = {"com/exteragram/messenger/reactions/ChannelReactionsEditActivity$createRootLayout$1$adjustPanLayoutHelper$1", "Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;", "onTransitionStart", _UrlKt.FRAGMENT_ENCODE_SET, "keyboardVisible", _UrlKt.FRAGMENT_ENCODE_SET, "contentHeight", _UrlKt.FRAGMENT_ENCODE_SET, "applyTranslation", "heightAnimationEnabled", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class C1513xf74c0468 extends AdjustPanLayoutHelper {
    final /* synthetic */ ChannelReactionsEditActivity this$0;

    @Override // org.telegram.ui.ActionBar.AdjustPanLayoutHelper
    public boolean applyTranslation() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1513xf74c0468(ChannelReactionsEditActivity.C15121 c15121, ChannelReactionsEditActivity channelReactionsEditActivity) {
        super(c15121);
        this.this$0 = channelReactionsEditActivity;
    }

    @Override // org.telegram.ui.ActionBar.AdjustPanLayoutHelper
    public void onTransitionStart(final boolean keyboardVisible, int contentHeight) {
        if (this.this$0.actionButtonShown) {
            FrameLayout frameLayout = this.this$0.actionButtonContainer;
            if (frameLayout == null) {
                frameLayout = null;
            }
            frameLayout.setVisibility(0);
            FrameLayout frameLayout2 = this.this$0.actionButtonContainer;
            ViewPropertyAnimator viewPropertyAnimatorAlpha = (frameLayout2 != null ? frameLayout2 : null).animate().alpha(keyboardVisible ? 0.0f : 1.0f);
            final ChannelReactionsEditActivity channelReactionsEditActivity = this.this$0;
            viewPropertyAnimatorAlpha.withEndAction(new Runnable() { // from class: com.exteragram.messenger.reactions.ChannelReactionsEditActivity$createRootLayout$1$adjustPanLayoutHelper$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C1513xf74c0468.m3289$r8$lambda$ukX2JGrlDbUrL80ti15I8LZE5M(keyboardVisible, channelReactionsEditActivity);
                }
            }).start();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$ukX-2JGrlDbUrL80ti15I8LZE5M, reason: not valid java name */
    public static void m3289$r8$lambda$ukX2JGrlDbUrL80ti15I8LZE5M(boolean z, ChannelReactionsEditActivity channelReactionsEditActivity) {
        if (z) {
            FrameLayout frameLayout = channelReactionsEditActivity.actionButtonContainer;
            if (frameLayout == null) {
                frameLayout = null;
            }
            frameLayout.setVisibility(4);
        }
    }

    @Override // org.telegram.ui.ActionBar.AdjustPanLayoutHelper
    public boolean heightAnimationEnabled() {
        return (((BaseFragment) this.this$0).inPreviewMode || ((BaseFragment) this.this$0).inBubbleMode || AndroidUtilities.isTablet() || AndroidUtilities.isInMultiwindow || ((BaseFragment) this.this$0).parentLayout == null) ? false : true;
    }
}
