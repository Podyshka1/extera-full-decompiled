package org.telegram.ui;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.VibrationEffect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.exteragram.messenger.utils.system.VibratorUtils;
import java.util.ArrayList;
import java.util.List;
import me.vkryl.core.reference.ReferenceList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.WebFile;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.ContextLinkCell;
import org.telegram.ui.Cells.StickerCell;
import org.telegram.ui.Cells.StickerEmojiCell;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EmojiPacksAlert;
import org.telegram.ui.Components.EmojiView;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.PaintingOverlay;
import org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.Components.ReactionsContainerLayout;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScrimOptions;
import org.telegram.ui.Components.StickersDialogs;
import org.telegram.ui.Components.SuggestEmojiView;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceBitmap;
import org.telegram.ui.Components.blur3.utils.Blur3Utils;
import org.telegram.ui.Components.chat.ViewPositionWatcher;
import org.telegram.ui.Components.poll.RecentVotersCell;
import org.telegram.ui.ContentPreviewViewer;
import org.telegram.ui.Stories.DarkThemeResourceProvider;

/* JADX INFO: loaded from: classes6.dex */
public class ContentPreviewViewer {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile ContentPreviewViewer Instance;
    private static TextPaint textPaint;
    private ColorDrawable backgroundDrawable;
    private float blurProgress;
    private Bitmap blurrBitmap;
    public ImageReceiver centerImage;
    private boolean clearsInputField;
    private boolean closeOnDismiss;
    private FrameLayoutDrawer containerView;
    private int currentAccount;
    private int currentContentType;
    private TLRPC.Document currentDocument;
    private float currentMoveY;
    private float currentMoveYProgress;
    private View currentPreviewCell;
    private String currentQuery;
    private TLRPC.InputStickerSet currentStickerSet;
    private ContentPreviewViewerDelegate delegate;
    private boolean drawEffect;
    private ImageReceiver effectImage;
    private float finalMoveY;
    private SendMessagesHelper.ImportingSticker importingSticker;
    private TLRPC.BotInlineResult inlineResult;
    private boolean isPhotoEditor;
    private boolean isRecentSticker;
    private boolean isStickerEditor;
    private boolean isVisible;
    private int keyboardHeight;
    private float lastTouchY;
    private long lastUpdateTime;
    private boolean menuVisible;
    private Runnable openPreviewRunnable;
    private final Paint paint;
    public PaintingOverlay paintingOverlay;
    private Path paintingOverlayClipPath;
    private Activity parentActivity;
    private Object parentObject;
    private View popupLayout;
    ActionBarPopupWindow popupWindow;
    private boolean preparingBitmap;
    private ReactionsContainerLayout reactionsLayout;
    private FrameLayout reactionsLayoutContainer;
    private Theme.ResourcesProvider resourcesProvider;
    private final BlurredBackgroundDrawableViewFactory scrimBlur3Factory;
    private final BlurredBackgroundSourceBitmap scrimBlur3SourceBitmap;
    private ArrayList<String> selectedEmojis;
    private float showProgress;
    private final Runnable showSheetRunnable;
    private Drawable slideUpDrawable;
    private float startMoveY;
    private int startX;
    private int startY;
    private StaticLayout stickerEmojiLayout;
    private TLRPC.TL_messages_stickerSet stickerSetForCustomSticker;
    private UnlockPremiumView unlockPremiumView;
    private VibrationEffect vibrationEffect;
    private WindowManager.LayoutParams windowLayoutParams;
    private FrameLayout windowView;
    private float moveY = 0.0f;
    private Insets lastInsets = Insets.NONE;

    public interface ContentPreviewViewerDelegate {
        default void addCaptionToGif(Object obj, Object obj2, boolean z, int i, int i2) {
        }

        default void addToFavoriteSelected(String str) {
        }

        default boolean can() {
            return true;
        }

        default boolean canAddCaption(TLRPC.Document document) {
            return false;
        }

        default boolean canDeleteSticker(TLRPC.Document document) {
            return false;
        }

        default boolean canEditSticker() {
            return false;
        }

        default boolean canSchedule() {
            return false;
        }

        default boolean canSendSticker() {
            return true;
        }

        default Boolean canSetAsStatus(TLRPC.Document document) {
            return null;
        }

        default void copyEmoji(TLRPC.Document document) {
        }

        default void deleteSticker(TLRPC.Document document) {
        }

        default void editSticker(TLRPC.Document document) {
        }

        default ItemOptions getCustomItemOptions(ViewGroup viewGroup, View view) {
            return null;
        }

        long getDialogId();

        default TLRPC.TL_messageMediaPoll getPoll() {
            return null;
        }

        default TLRPC.PollAnswer getPollAnswer() {
            return null;
        }

        default MessageObject getPollMessageObject() {
            return null;
        }

        default String getQuery(boolean z) {
            return null;
        }

        default void gifAddedOrDeleted() {
        }

        default boolean isInScheduleMode() {
            return false;
        }

        default boolean isPhotoEditor() {
            return false;
        }

        default boolean isReplacedSticker() {
            return false;
        }

        default boolean isSettingIntroSticker() {
            return false;
        }

        default boolean isStickerEditor() {
            return false;
        }

        default boolean needCopy(TLRPC.Document document) {
            return false;
        }

        default boolean needMenu() {
            return true;
        }

        default boolean needOpen() {
            return true;
        }

        default boolean needRemove() {
            return false;
        }

        default boolean needRemoveFromRecent(TLRPC.Document document) {
            return false;
        }

        default boolean needSend(int i) {
            return false;
        }

        default boolean needShowEmojiSet(TLRPC.Document document) {
            return false;
        }

        default void newStickerPackSelected(CharSequence charSequence, String str, Utilities.Callback<Boolean> callback) {
        }

        default void openSet(TLRPC.InputStickerSet inputStickerSet, boolean z) {
        }

        default void remove(SendMessagesHelper.ImportingSticker importingSticker) {
        }

        default void removeFromRecent(TLRPC.Document document) {
        }

        default void resetTouch() {
        }

        default void retractVote() {
        }

        default void sendEmoji(TLRPC.Document document) {
        }

        default void sendGif(Object obj, Object obj2, boolean z, int i, int i2) {
        }

        default void sendSticker(String str) {
        }

        default void sendSticker(TLRPC.Document document, String str, Object obj, boolean z, int i, int i2) {
        }

        default void sendVote() {
        }

        default void setAsBadge(TLRPC.Document document) {
        }

        default void setAsEmojiStatus(TLRPC.Document document, Integer num) {
        }

        default void setIntroSticker(String str) {
        }

        default void showEmojiSet(TLRPC.Document document) {
        }

        default void stickerSetSelected(TLRPC.StickerSet stickerSet, String str) {
        }
    }

    public ContentPreviewViewer() {
        BlurredBackgroundSourceBitmap blurredBackgroundSourceBitmap = new BlurredBackgroundSourceBitmap();
        this.scrimBlur3SourceBitmap = blurredBackgroundSourceBitmap;
        this.scrimBlur3Factory = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceBitmap);
        this.backgroundDrawable = new ColorDrawable(1895825408);
        this.centerImage = new ImageReceiver();
        this.effectImage = new ImageReceiver();
        this.isVisible = false;
        this.keyboardHeight = AndroidUtilities.dp(200.0f);
        this.paint = new Paint(1);
        this.showSheetRunnable = new RunnableC49601();
    }

    public class FrameLayoutDrawer extends FrameLayout {
        public FrameLayoutDrawer(Context context) {
            super(context);
            setWillNotDraw(false);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            ContentPreviewViewer.this.onDraw(canvas);
        }

        @Override // android.view.ViewGroup
        public boolean drawChild(Canvas canvas, View view, long j) {
            if (view instanceof PaintingOverlay) {
                return false;
            }
            return super.drawChild(canvas, view, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean canShowFullVotersList() {
        ContentPreviewViewerDelegate contentPreviewViewerDelegate = this.delegate;
        if (contentPreviewViewerDelegate == null) {
            return false;
        }
        TLRPC.TL_messageMediaPoll poll = contentPreviewViewerDelegate.getPoll();
        TLRPC.PollAnswer pollAnswer = this.delegate.getPollAnswer();
        if (poll == null || poll.poll == null || pollAnswer == null) {
            return false;
        }
        TLRPC.PollAnswerVoters pollResult = MessageObject.getPollResult(poll, pollAnswer.option);
        if (pollResult == null || pollResult.voters <= 0) {
            return true;
        }
        MessageObject.canShowVotersList(poll);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addVoteOptions$1(BaseFragment baseFragment, Long l) {
        Bundle bundle = new Bundle();
        if (l.longValue() >= 0) {
            bundle.putLong("user_id", l.longValue());
        } else {
            bundle.putLong("chat_id", -l.longValue());
        }
        baseFragment.presentFragment(new ProfileActivity(bundle));
        dismissPopupWindow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean addVoteOptions(final ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout) {
        boolean z;
        boolean z2;
        final int i;
        int i2;
        ContentPreviewViewerDelegate contentPreviewViewerDelegate = this.delegate;
        if (contentPreviewViewerDelegate == null) {
            return false;
        }
        TLRPC.TL_messageMediaPoll poll = contentPreviewViewerDelegate.getPoll();
        TLRPC.PollAnswer pollAnswer = this.delegate.getPollAnswer();
        if (poll == null || poll.poll == null || pollAnswer == null) {
            return false;
        }
        TLRPC.PollAnswerVoters pollResult = MessageObject.getPollResult(poll, pollAnswer.option);
        boolean z3 = pollResult != null && pollResult.voters > 0 && MessageObject.canShowVotersList(poll);
        boolean z4 = (MessageObject.isVoted(poll) || poll.poll.closed || this.delegate.isInScheduleMode()) ? false : true;
        boolean z5 = !z4 && MessageObject.canUnvote(poll);
        if (z3) {
            RecentVotersCell recentVotersCell = new RecentVotersCell(actionBarPopupWindowLayout.getContext(), this.currentAccount, this.resourcesProvider);
            ItemOptions itemOptionsSwipeback = ItemOptions.swipeback(actionBarPopupWindowLayout, this.resourcesProvider);
            int iAddViewToSwipeBack = actionBarPopupWindowLayout.addViewToSwipeBack(itemOptionsSwipeback.getLinearLayout());
            int i3 = Theme.key_actionBarDefaultSubmenuItem;
            itemOptionsSwipeback.setGapBackgroundColor(Theme.multAlpha(Theme.getColor(i3, this.resourcesProvider), 0.06f));
            itemOptionsSwipeback.setBlurBackgroundForSwipeback(this.scrimBlur3Factory, BlurredBackgroundProviderImpl.scrimMenuBackground(this.resourcesProvider), true);
            z = true;
            itemOptionsSwipeback.add(C2807R.drawable.ic_ab_back, LocaleController.getString(C2807R.string.Back), new Runnable() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    actionBarPopupWindowLayout.getSwipeBack().closeForeground();
                }
            });
            itemOptionsSwipeback.addGap();
            MessageObject pollMessageObject = this.delegate.getPollMessageObject();
            Activity activity = this.parentActivity;
            if ((activity instanceof LaunchActivity) && pollMessageObject != null) {
                LaunchActivity launchActivity = (LaunchActivity) activity;
                final BaseFragment lastFragment = (launchActivity.getActionBarLayout() == null || launchActivity.getActionBarLayout().getLastFragment() == null) ? null : launchActivity.getActionBarLayout().getLastFragment();
                if (lastFragment != null) {
                    i2 = i3;
                    i = iAddViewToSwipeBack;
                    itemOptionsSwipeback.addView(recentVotersCell.createListView(lastFragment, pollMessageObject.getDialogId(), pollMessageObject.getId(), pollAnswer.option, pollResult.voters, new Utilities.Callback() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda6
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$addVoteOptions$1(lastFragment, (Long) obj);
                        }
                    }));
                }
                recentVotersCell.setText(LocaleController.formatPluralString("PollVotesCount", pollResult.voters, new Object[0]));
                recentVotersCell.setRecentVoters(pollResult.recent_voters, false);
                recentVotersCell.setLayoutParams(LayoutHelper.createLinear(-1, 48));
                recentVotersCell.setBackground(Theme.createRadSelectorDrawable(getThemedColor(Theme.key_dialogButtonSelector), 12, 0));
                recentVotersCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        actionBarPopupWindowLayout.getSwipeBack().openForeground(i);
                    }
                });
                actionBarPopupWindowLayout.addView(recentVotersCell);
                ActionBarPopupWindow.GapView gapView = new ActionBarPopupWindow.GapView(actionBarPopupWindowLayout.getContext(), this.resourcesProvider);
                gapView.setTag(C2807R.id.fit_width_tag, 1);
                gapView.setColor(Theme.multAlpha(Theme.getColor(i2, this.resourcesProvider), 0.06f));
                gapView.setLayoutParams(LayoutHelper.createLinear(-1, 8));
                actionBarPopupWindowLayout.addView(gapView);
            } else {
                i = iAddViewToSwipeBack;
                i2 = i3;
                recentVotersCell.setText(LocaleController.formatPluralString("PollVotesCount", pollResult.voters, new Object[0]));
                recentVotersCell.setRecentVoters(pollResult.recent_voters, false);
                recentVotersCell.setLayoutParams(LayoutHelper.createLinear(-1, 48));
                recentVotersCell.setBackground(Theme.createRadSelectorDrawable(getThemedColor(Theme.key_dialogButtonSelector), 12, 0));
                recentVotersCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        actionBarPopupWindowLayout.getSwipeBack().openForeground(i);
                    }
                });
                actionBarPopupWindowLayout.addView(recentVotersCell);
                ActionBarPopupWindow.GapView gapView2 = new ActionBarPopupWindow.GapView(actionBarPopupWindowLayout.getContext(), this.resourcesProvider);
                gapView2.setTag(C2807R.id.fit_width_tag, 1);
                gapView2.setColor(Theme.multAlpha(Theme.getColor(i2, this.resourcesProvider), 0.06f));
                gapView2.setLayoutParams(LayoutHelper.createLinear(-1, 8));
                actionBarPopupWindowLayout.addView(gapView2);
            }
        } else {
            z = true;
        }
        if (z4) {
            z2 = false;
            ActionBarMenuItem.addItem(actionBarPopupWindowLayout, C2807R.drawable.msg_select, LocaleController.getString(C2807R.string.PollSubmitVotesNoCaps), false, this.resourcesProvider).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$addVoteOptions$3(view);
                }
            });
        } else {
            z2 = false;
        }
        if (z5) {
            ActionBarMenuItem.addItem(actionBarPopupWindowLayout, C2807R.drawable.msg_unvote, LocaleController.getString(C2807R.string.Unvote), z2, this.resourcesProvider).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$addVoteOptions$4(view);
                }
            });
        }
        if (!z3 && (z4 || z5)) {
            ActionBarPopupWindow.GapView gapView3 = new ActionBarPopupWindow.GapView(actionBarPopupWindowLayout.getContext(), this.resourcesProvider);
            gapView3.setTag(C2807R.id.fit_width_tag, 1);
            gapView3.setColor(Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, this.resourcesProvider), 0.06f));
            gapView3.setLayoutParams(LayoutHelper.createLinear(-1, 8));
            actionBarPopupWindowLayout.addView(gapView3);
        }
        if (z3 || z4 || z5) {
            return z;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addVoteOptions$3(View view) {
        ContentPreviewViewerDelegate contentPreviewViewerDelegate = this.delegate;
        if (contentPreviewViewerDelegate != null) {
            contentPreviewViewerDelegate.sendVote();
        }
        dismissPopupWindow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addVoteOptions$4(View view) {
        ContentPreviewViewerDelegate contentPreviewViewerDelegate = this.delegate;
        if (contentPreviewViewerDelegate != null) {
            contentPreviewViewerDelegate.retractVote();
        }
        dismissPopupWindow();
    }

    /* JADX INFO: renamed from: org.telegram.ui.ContentPreviewViewer$1 */
    public class RunnableC49601 implements Runnable {
        public RunnableC49601() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0() {
            ContentPreviewViewer.this.dismissPopupWindow();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(ValueAnimator valueAnimator) {
            ContentPreviewViewer.this.currentMoveYProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.this;
            contentPreviewViewer.moveY = contentPreviewViewer.startMoveY + ((ContentPreviewViewer.this.finalMoveY - ContentPreviewViewer.this.startMoveY) * ContentPreviewViewer.this.currentMoveYProgress);
            ContentPreviewViewer.this.containerView.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$4(View view, int i) {
            TLRPC.StickerSetCovered cover = ((StickerPackNameView) view).getCover();
            CustomEmojiReactionsWindow reactionsWindow = ContentPreviewViewer.this.reactionsLayout.getReactionsWindow();
            if (reactionsWindow != null && reactionsWindow.isShowing()) {
                reactionsWindow.dismiss();
            }
            boolean z = cover instanceof TLRPC.TL_stickerSetNoCovered;
            ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.this;
            if (z) {
                StickersDialogs.showNameEditorDialog(null, contentPreviewViewer.resourcesProvider, ContentPreviewViewer.this.containerView.getContext(), new Utilities.Callback2() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda9
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$run$3((CharSequence) obj, (Utilities.Callback) obj2);
                    }
                });
                return;
            }
            if (contentPreviewViewer.delegate != null) {
                ContentPreviewViewer.this.delegate.stickerSetSelected(cover.set, TextUtils.join(_UrlKt.FRAGMENT_ENCODE_SET, ContentPreviewViewer.this.selectedEmojis));
            }
            ContentPreviewViewer.this.dismissPopupWindow();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$3(CharSequence charSequence, final Utilities.Callback callback) {
            if (ContentPreviewViewer.this.delegate != null) {
                ContentPreviewViewer.this.delegate.newStickerPackSelected(charSequence, TextUtils.join(_UrlKt.FRAGMENT_ENCODE_SET, ContentPreviewViewer.this.selectedEmojis), callback != null ? new Utilities.Callback() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda13
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$run$2(callback, (Boolean) obj);
                    }
                } : null);
                if (callback == null) {
                    ContentPreviewViewer.this.dismissPopupWindow();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$2(Utilities.Callback callback, Boolean bool) {
            callback.run(bool);
            if (bool.booleanValue()) {
                ContentPreviewViewer.this.dismissPopupWindow();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$5(ArrayList arrayList, RecyclerListView recyclerListView, LinearLayout linearLayout, ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout, View view) {
            if (ContentPreviewViewer.this.parentActivity == null) {
                return;
            }
            int iIntValue = ((Integer) view.getTag()).intValue();
            int iIntValue2 = ((Integer) arrayList.get(iIntValue)).intValue();
            ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.this;
            if (iIntValue2 == 2) {
                if (contentPreviewViewer.stickerSetForCustomSticker == null) {
                    recyclerListView.requestLayout();
                    linearLayout.requestLayout();
                    recyclerListView.getAdapter().notifyDataSetChanged();
                    actionBarPopupWindowLayout.getSwipeBack().openForeground(1);
                    return;
                }
                if (ContentPreviewViewer.this.delegate != null) {
                    ContentPreviewViewer.this.delegate.stickerSetSelected(ContentPreviewViewer.this.stickerSetForCustomSticker.set, TextUtils.join(_UrlKt.FRAGMENT_ENCODE_SET, ContentPreviewViewer.this.selectedEmojis));
                }
                ContentPreviewViewer.this.dismissPopupWindow();
                return;
            }
            if (contentPreviewViewer.delegate != null) {
                if (((Integer) arrayList.get(iIntValue)).intValue() == 1) {
                    ContentPreviewViewer.this.delegate.addToFavoriteSelected(TextUtils.join(_UrlKt.FRAGMENT_ENCODE_SET, ContentPreviewViewer.this.selectedEmojis));
                } else if (((Integer) arrayList.get(iIntValue)).intValue() == 0) {
                    boolean zIsSettingIntroSticker = ContentPreviewViewer.this.delegate.isSettingIntroSticker();
                    ContentPreviewViewer contentPreviewViewer2 = ContentPreviewViewer.this;
                    if (zIsSettingIntroSticker) {
                        contentPreviewViewer2.delegate.setIntroSticker(TextUtils.join(_UrlKt.FRAGMENT_ENCODE_SET, ContentPreviewViewer.this.selectedEmojis));
                    } else {
                        contentPreviewViewer2.delegate.sendSticker(TextUtils.join(_UrlKt.FRAGMENT_ENCODE_SET, ContentPreviewViewer.this.selectedEmojis));
                    }
                }
            }
            ContentPreviewViewer.this.dismissPopupWindow();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout;
            boolean z;
            float fMin;
            int iMin;
            ItemOptions customItemOptions;
            int i = 0;
            if (ContentPreviewViewer.this.parentActivity == null || ContentPreviewViewer.this.isPhotoEditor) {
                return;
            }
            ContentPreviewViewer.this.closeOnDismiss = true;
            int i2 = -2;
            if (ContentPreviewViewer.this.delegate != null && (customItemOptions = ContentPreviewViewer.this.delegate.getCustomItemOptions(ContentPreviewViewer.this.containerView, ContentPreviewViewer.this.containerView)) != null) {
                customItemOptions.setBlurBackground(ContentPreviewViewer.this.scrimBlur3Factory, BlurredBackgroundProviderImpl.scrimMenuBackground(ContentPreviewViewer.this.resourcesProvider), true);
                customItemOptions.setDrawScrim(false);
                customItemOptions.setupSelectors();
                customItemOptions.setOnDismiss(new Runnable() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$0();
                    }
                });
                ViewGroup layout = customItemOptions.getLayout();
                ContentPreviewViewer.this.popupWindow = new ActionBarPopupWindow(layout, i2, i2) { // from class: org.telegram.ui.ContentPreviewViewer.1.1
                    @Override // org.telegram.ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
                    public void dismiss() {
                        super.dismiss();
                        ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.this;
                        contentPreviewViewer.popupWindow = null;
                        contentPreviewViewer.menuVisible = false;
                        if (ContentPreviewViewer.this.closeOnDismiss) {
                            ContentPreviewViewer.this.close();
                        }
                    }
                };
                ContentPreviewViewer.this.popupWindow.setPauseNotifications(true);
                ContentPreviewViewer.this.popupWindow.setDismissAnimationDuration(150);
                ContentPreviewViewer.this.popupWindow.setScaleOut(true);
                ContentPreviewViewer.this.popupWindow.setOutsideTouchable(true);
                ContentPreviewViewer.this.popupWindow.setClippingEnabled(true);
                ContentPreviewViewer.this.popupWindow.setAnimationStyle(C2807R.style.PopupContextAnimation);
                ContentPreviewViewer.this.popupWindow.setFocusable(true);
                layout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE));
                ContentPreviewViewer.this.popupWindow.setInputMethodMode(2);
                ContentPreviewViewer.this.popupWindow.getContentView().setFocusableInTouchMode(true);
                int i3 = ContentPreviewViewer.this.lastInsets.bottom + ContentPreviewViewer.this.lastInsets.top;
                int i4 = ContentPreviewViewer.this.lastInsets.top;
                int iMin2 = (Math.min(ContentPreviewViewer.this.containerView.getWidth(), ContentPreviewViewer.this.containerView.getHeight() - i3) - AndroidUtilities.dp(40.0f)) / 2;
                int iMax = (int) (((int) (ContentPreviewViewer.this.moveY + Math.max(i4 + iMin2 + (ContentPreviewViewer.this.stickerEmojiLayout != null ? AndroidUtilities.dp(40.0f) : 0), ((ContentPreviewViewer.this.containerView.getHeight() - i3) - ContentPreviewViewer.this.keyboardHeight) / 2) + iMin2)) + (AndroidUtilities.dp(24.0f) - ContentPreviewViewer.this.moveY));
                ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.this;
                contentPreviewViewer.popupWindow.showAtLocation(contentPreviewViewer.containerView, 0, (int) ((ContentPreviewViewer.this.containerView.getMeasuredWidth() - layout.getMeasuredWidth()) / 2.0f), iMax);
                ContentPreviewViewer contentPreviewViewer2 = ContentPreviewViewer.this;
                contentPreviewViewer2.runLongPressHaptic(contentPreviewViewer2.containerView);
                if (ContentPreviewViewer.this.moveY != 0.0f) {
                    if (ContentPreviewViewer.this.finalMoveY == 0.0f) {
                        ContentPreviewViewer.this.finalMoveY = 0.0f;
                        ContentPreviewViewer contentPreviewViewer3 = ContentPreviewViewer.this;
                        contentPreviewViewer3.startMoveY = contentPreviewViewer3.moveY;
                    }
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                    valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$run$1(valueAnimator);
                        }
                    });
                    valueAnimatorOfFloat.setDuration(350L);
                    valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
                    valueAnimatorOfFloat.start();
                }
                ContentPreviewViewer.this.menuVisible = true;
                return;
            }
            final ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout2 = new ActionBarPopupWindow.ActionBarPopupWindowLayout(ContentPreviewViewer.this.containerView.getContext(), C2807R.drawable.popup_fixed_alert4, ContentPreviewViewer.this.resourcesProvider, (ContentPreviewViewer.this.currentContentType == 3 || ContentPreviewViewer.this.canShowFullVotersList()) ? 1 : 0);
            actionBarPopupWindowLayout2.setBackground(ContentPreviewViewer.this.scrimBlur3Factory.create((View) actionBarPopupWindowLayout2, true).setColorProvider(BlurredBackgroundProviderImpl.scrimMenuBackground(ContentPreviewViewer.this.resourcesProvider)).setRadius(AndroidUtilities.dp(12.0f)).setPadding(AndroidUtilities.dp(8.0f)).setHasPadding(true));
            if (ContentPreviewViewer.this.currentContentType == 3) {
                ArrayList arrayList = new ArrayList();
                final ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                if (ContentPreviewViewer.this.stickerSetForCustomSticker == null) {
                    if (ContentPreviewViewer.this.delegate != null && ContentPreviewViewer.this.delegate.isSettingIntroSticker()) {
                        arrayList.add(LocaleController.getString(C2807R.string.SetIntroSticker));
                        arrayList3.add(Integer.valueOf(C2807R.drawable.menu_sticker_add));
                        arrayList2.add(0);
                    } else {
                        if (ContentPreviewViewer.this.delegate.canSendSticker()) {
                            arrayList.add(LocaleController.getString(C2807R.string.SendStickerPreview));
                            arrayList3.add(Integer.valueOf(C2807R.drawable.msg_send));
                            arrayList2.add(0);
                        }
                        arrayList.add(LocaleController.getString(C2807R.string.AddToFavorites));
                        arrayList3.add(Integer.valueOf(C2807R.drawable.msg_fave));
                        arrayList2.add(1);
                    }
                }
                if (ContentPreviewViewer.this.delegate == null || !ContentPreviewViewer.this.delegate.isSettingIntroSticker()) {
                    arrayList.add(LocaleController.getString((ContentPreviewViewer.this.delegate == null || !ContentPreviewViewer.this.delegate.isReplacedSticker()) ? C2807R.string.AddToStickerPack : C2807R.string.StickersReplaceSticker));
                    arrayList3.add(Integer.valueOf((ContentPreviewViewer.this.delegate == null || !ContentPreviewViewer.this.delegate.isReplacedSticker()) ? C2807R.drawable.menu_sticker_add : C2807R.drawable.msg_replace));
                    arrayList2.add(2);
                }
                ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem((Context) ContentPreviewViewer.this.parentActivity, true, false, ContentPreviewViewer.this.resourcesProvider);
                actionBarMenuSubItem.setItemHeight(44);
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(C2807R.string.Back), C2807R.drawable.msg_arrow_back);
                actionBarMenuSubItem.getTextView().setPadding(LocaleController.isRTL ? 0 : AndroidUtilities.dp(40.0f), 0, LocaleController.isRTL ? AndroidUtilities.dp(40.0f) : 0, 0);
                FrameLayout frameLayout = new FrameLayout(ContentPreviewViewer.this.containerView.getContext());
                final LinearLayout linearLayout = new LinearLayout(ContentPreviewViewer.this.containerView.getContext());
                linearLayout.setBackgroundColor(ContentPreviewViewer.this.getThemedColor(Theme.key_actionBarDefaultSubmenuBackground));
                linearLayout.setOrientation(1);
                final RecyclerListView recyclerListViewCreateMyStickerPacksListView = ContentPreviewViewer.this.createMyStickerPacksListView();
                recyclerListViewCreateMyStickerPacksListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda2
                    @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
                    public final void onItemClick(View view, int i5) {
                        this.f$0.lambda$run$4(view, i5);
                    }
                });
                frameLayout.addView(actionBarMenuSubItem);
                linearLayout.addView(frameLayout);
                linearLayout.addView(new ActionBarPopupWindow.GapView(ContentPreviewViewer.this.containerView.getContext(), ContentPreviewViewer.this.resourcesProvider), LayoutHelper.createLinear(-1, 8));
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$run$5(arrayList2, recyclerListViewCreateMyStickerPacksListView, linearLayout, actionBarPopupWindowLayout2, view);
                    }
                };
                for (int i5 = 0; i5 < arrayList.size(); i5++) {
                    ActionBarMenuSubItem actionBarMenuSubItemAddItem = ActionBarMenuItem.addItem(actionBarPopupWindowLayout2, ((Integer) arrayList3.get(i5)).intValue(), (CharSequence) arrayList.get(i5), false, ContentPreviewViewer.this.resourcesProvider);
                    actionBarMenuSubItemAddItem.setTag(Integer.valueOf(i5));
                    actionBarMenuSubItemAddItem.setOnClickListener(onClickListener);
                }
                actionBarPopupWindowLayout2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE));
                linearLayout.addView(recyclerListViewCreateMyStickerPacksListView, new LinearLayout.LayoutParams(actionBarPopupWindowLayout2.getMeasuredWidth() - AndroidUtilities.dp(16.0f), (int) (actionBarPopupWindowLayout2.getMeasuredHeight() * 1.5f)));
                actionBarPopupWindowLayout2.addViewToSwipeBack(linearLayout);
                frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        actionBarPopupWindowLayout2.getSwipeBack().closeForeground();
                    }
                });
                int i6 = ContentPreviewViewer.this.lastInsets.bottom + ContentPreviewViewer.this.lastInsets.top;
                int i7 = ContentPreviewViewer.this.lastInsets.top;
                int iMin3 = ((int) (Math.min(ContentPreviewViewer.this.containerView.getWidth(), ContentPreviewViewer.this.containerView.getHeight() - i6) / 1.8f)) / 2;
                ContentPreviewViewer.this.containerView.addView(actionBarPopupWindowLayout2, LayoutHelper.createFrame(-2, -2.0f, 49, 0.0f, (((int) ((ContentPreviewViewer.this.moveY + Math.max(i7 + iMin3, ((ContentPreviewViewer.this.containerView.getHeight() - i6) - ContentPreviewViewer.this.keyboardHeight) / 2)) + iMin3)) + AndroidUtilities.dp(84.0f)) / AndroidUtilities.density, 0.0f, 0.0f));
                ContentPreviewViewer.this.popupLayout = actionBarPopupWindowLayout2;
                ContentPreviewViewer.this.popupLayout.setTranslationY(-AndroidUtilities.dp(12.0f));
                ContentPreviewViewer.this.popupLayout.setAlpha(0.0f);
                ContentPreviewViewer.this.popupLayout.setScaleX(0.8f);
                ContentPreviewViewer.this.popupLayout.setScaleY(0.8f);
                ContentPreviewViewer.this.popupLayout.setPivotY(0.0f);
                ContentPreviewViewer.this.popupLayout.setPivotX(ContentPreviewViewer.this.popupLayout.getMeasuredWidth() / 2.0f);
                ContentPreviewViewer.this.popupLayout.animate().translationY(0.0f).alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(320L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
                ContentPreviewViewer.this.showEmojiSelectorForStickers();
                ContentPreviewViewer.this.menuVisible = true;
                ContentPreviewViewer contentPreviewViewer4 = ContentPreviewViewer.this;
                contentPreviewViewer4.runLongPressHaptic(contentPreviewViewer4.containerView);
                ContentPreviewViewer.this.containerView.invalidate();
                actionBarPopupWindowLayout = actionBarPopupWindowLayout2;
            } else {
                int i8 = ContentPreviewViewer.this.currentContentType;
                ContentPreviewViewer contentPreviewViewer5 = ContentPreviewViewer.this;
                if (i8 == 0) {
                    if (MessageObject.isPremiumSticker(contentPreviewViewer5.currentDocument) && !AccountInstance.getInstance(ContentPreviewViewer.this.currentAccount).getUserConfig().isPremium()) {
                        ContentPreviewViewer.this.showUnlockPremiumView();
                        ContentPreviewViewer.this.menuVisible = true;
                        ContentPreviewViewer.this.containerView.invalidate();
                        ContentPreviewViewer contentPreviewViewer6 = ContentPreviewViewer.this;
                        contentPreviewViewer6.runLongPressHaptic(contentPreviewViewer6.containerView);
                        return;
                    }
                    boolean zIsStickerInFavorites = MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).isStickerInFavorites(ContentPreviewViewer.this.currentDocument);
                    ArrayList arrayList4 = new ArrayList();
                    ArrayList arrayList5 = new ArrayList();
                    int i9 = 8;
                    ArrayList arrayList6 = new ArrayList();
                    if (ContentPreviewViewer.this.delegate != null) {
                        if (ContentPreviewViewer.this.delegate.needSend(ContentPreviewViewer.this.currentContentType) && !ContentPreviewViewer.this.delegate.isInScheduleMode()) {
                            arrayList4.add(LocaleController.getString(C2807R.string.SendStickerPreview));
                            arrayList6.add(Integer.valueOf(C2807R.drawable.msg_send));
                            arrayList5.add(0);
                        }
                        if (ContentPreviewViewer.this.delegate.needSend(ContentPreviewViewer.this.currentContentType) && !ContentPreviewViewer.this.delegate.isInScheduleMode()) {
                            arrayList4.add(LocaleController.getString(C2807R.string.SendWithoutSound));
                            arrayList6.add(Integer.valueOf(C2807R.drawable.input_notify_off));
                            arrayList5.add(6);
                        }
                        if (ContentPreviewViewer.this.delegate.canSchedule()) {
                            arrayList4.add(LocaleController.getString(C2807R.string.Schedule));
                            arrayList6.add(Integer.valueOf(C2807R.drawable.msg_autodelete));
                            arrayList5.add(3);
                        }
                        if (MessageObject.isStickerDocument(ContentPreviewViewer.this.currentDocument)) {
                            arrayList4.add(LocaleController.formatString("SaveToGallery", C2807R.string.SaveToGallery, new Object[0]));
                            arrayList6.add(Integer.valueOf(C2807R.drawable.msg_gallery));
                            arrayList5.add(10);
                        }
                        if (ContentPreviewViewer.this.delegate.needRemove()) {
                            arrayList4.add(LocaleController.getString(C2807R.string.ImportStickersRemoveMenu));
                            arrayList6.add(Integer.valueOf(C2807R.drawable.msg_delete));
                            arrayList5.add(5);
                        }
                    }
                    if (!MessageObject.isMaskDocument(ContentPreviewViewer.this.currentDocument) && (zIsStickerInFavorites || (MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).canAddStickerToFavorites() && MessageObject.isStickerHasSet(ContentPreviewViewer.this.currentDocument)))) {
                        arrayList4.add(LocaleController.getString(zIsStickerInFavorites ? C2807R.string.DeleteFromFavorites : C2807R.string.AddToFavorites));
                        arrayList6.add(Integer.valueOf(zIsStickerInFavorites ? C2807R.drawable.msg_unfave : C2807R.drawable.msg_fave));
                        arrayList5.add(2);
                    }
                    if (ContentPreviewViewer.this.delegate != null && ContentPreviewViewer.this.currentStickerSet != null && !(ContentPreviewViewer.this.currentStickerSet instanceof TLRPC.TL_inputStickerSetEmpty) && ContentPreviewViewer.this.delegate.needOpen()) {
                        arrayList4.add(LocaleController.formatString(C2807R.string.ViewPackPreview, new Object[0]));
                        arrayList6.add(Integer.valueOf(C2807R.drawable.msg_media));
                        arrayList5.add(1);
                    }
                    if (ContentPreviewViewer.this.isRecentSticker) {
                        arrayList4.add(LocaleController.getString(C2807R.string.DeleteFromRecent));
                        arrayList6.add(Integer.valueOf(C2807R.drawable.msg_delete));
                        arrayList5.add(4);
                    }
                    if (ContentPreviewViewer.this.currentStickerSet != null && ContentPreviewViewer.this.currentDocument != null) {
                        TLRPC.TL_messages_stickerSet stickerSet = MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).getStickerSet(ContentPreviewViewer.this.currentStickerSet, true);
                        if (stickerSet != null && ContentPreviewViewer.this.delegate != null && ContentPreviewViewer.this.delegate.canEditSticker()) {
                            TLRPC.StickerSet stickerSet2 = stickerSet.set;
                            if (!stickerSet2.emojis && !stickerSet2.masks) {
                                arrayList4.add(LocaleController.getString(C2807R.string.EditSticker));
                                arrayList6.add(Integer.valueOf(C2807R.drawable.msg_edit));
                                arrayList5.add(7);
                            }
                        }
                        if (stickerSet != null && stickerSet.set.creator && ContentPreviewViewer.this.delegate != null && ContentPreviewViewer.this.delegate.canDeleteSticker(ContentPreviewViewer.this.currentDocument)) {
                            arrayList4.add(LocaleController.getString(C2807R.string.DeleteSticker));
                            arrayList6.add(Integer.valueOf(C2807R.drawable.msg_delete));
                            arrayList5.add(8);
                        }
                    }
                    if (arrayList4.isEmpty()) {
                        return;
                    }
                    ContentPreviewViewer.this.menuVisible = true;
                    ContentPreviewViewer.this.containerView.invalidate();
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(arrayList5, zIsStickerInFavorites);
                    ContentPreviewViewer.this.addVoteOptions(actionBarPopupWindowLayout2);
                    int i10 = 0;
                    while (i10 < arrayList4.size()) {
                        ActionBarMenuSubItem actionBarMenuSubItemAddItem2 = ActionBarMenuItem.addItem(actionBarPopupWindowLayout2, ((Integer) arrayList6.get(i10)).intValue(), (CharSequence) arrayList4.get(i10), false, ContentPreviewViewer.this.resourcesProvider);
                        actionBarMenuSubItemAddItem2.setTag(Integer.valueOf(i10));
                        actionBarMenuSubItemAddItem2.setOnClickListener(anonymousClass2);
                        int i11 = i9;
                        if (((Integer) arrayList5.get(i10)).intValue() == i11) {
                            int themedColor = ContentPreviewViewer.this.getThemedColor(Theme.key_text_RedBold);
                            actionBarMenuSubItemAddItem2.setColors(themedColor, themedColor);
                            actionBarMenuSubItemAddItem2.setSelectorColor(Theme.multAlpha(themedColor, 0.1f));
                        }
                        i10++;
                        i9 = i11;
                    }
                    int i12 = -2;
                    ContentPreviewViewer.this.popupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout2, i12, i12) { // from class: org.telegram.ui.ContentPreviewViewer.1.3
                        @Override // org.telegram.ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
                        public void dismiss() {
                            super.dismiss();
                            ContentPreviewViewer contentPreviewViewer7 = ContentPreviewViewer.this;
                            contentPreviewViewer7.popupWindow = null;
                            contentPreviewViewer7.menuVisible = false;
                            if (ContentPreviewViewer.this.closeOnDismiss) {
                                ContentPreviewViewer.this.close();
                            }
                            if (ContentPreviewViewer.this.currentPreviewCell != null) {
                                boolean z2 = ContentPreviewViewer.this.currentPreviewCell instanceof StickerEmojiCell;
                                RunnableC49601 runnableC49601 = RunnableC49601.this;
                                if (z2) {
                                    ((StickerEmojiCell) ContentPreviewViewer.this.currentPreviewCell).setScaled(false);
                                } else {
                                    boolean z3 = ContentPreviewViewer.this.currentPreviewCell instanceof StickerCell;
                                    RunnableC49601 runnableC496012 = RunnableC49601.this;
                                    if (z3) {
                                        ((StickerCell) ContentPreviewViewer.this.currentPreviewCell).setScaled(false);
                                    } else if (ContentPreviewViewer.this.currentPreviewCell instanceof ContextLinkCell) {
                                        ((ContextLinkCell) ContentPreviewViewer.this.currentPreviewCell).setScaled(false);
                                    }
                                }
                                ContentPreviewViewer.this.currentPreviewCell = null;
                            }
                        }
                    };
                    ContentPreviewViewer.this.popupWindow.setPauseNotifications(true);
                    ContentPreviewViewer.this.popupWindow.setDismissAnimationDuration(100);
                    ContentPreviewViewer.this.popupWindow.setScaleOut(true);
                    ContentPreviewViewer.this.popupWindow.setOutsideTouchable(true);
                    ContentPreviewViewer.this.popupWindow.setClippingEnabled(true);
                    ContentPreviewViewer.this.popupWindow.setAnimationStyle(C2807R.style.PopupContextAnimation);
                    ContentPreviewViewer.this.popupWindow.setFocusable(true);
                    actionBarPopupWindowLayout2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE));
                    ContentPreviewViewer.this.popupWindow.setInputMethodMode(2);
                    ContentPreviewViewer.this.popupWindow.getContentView().setFocusableInTouchMode(true);
                    int i13 = ContentPreviewViewer.this.lastInsets.bottom + ContentPreviewViewer.this.lastInsets.top;
                    int i14 = ContentPreviewViewer.this.lastInsets.top;
                    int i15 = ContentPreviewViewer.this.currentContentType;
                    ContentPreviewViewer contentPreviewViewer7 = ContentPreviewViewer.this;
                    if (i15 == 1) {
                        iMin = Math.min(contentPreviewViewer7.containerView.getWidth(), ContentPreviewViewer.this.containerView.getHeight() - i13) - AndroidUtilities.dp(40.0f);
                    } else {
                        boolean z2 = contentPreviewViewer7.drawEffect;
                        ContentPreviewViewer contentPreviewViewer8 = ContentPreviewViewer.this;
                        if (z2) {
                            fMin = Math.min(contentPreviewViewer8.containerView.getWidth(), ContentPreviewViewer.this.containerView.getHeight() - i13) - AndroidUtilities.dpf2(40.0f);
                        } else {
                            fMin = Math.min(contentPreviewViewer8.containerView.getWidth(), ContentPreviewViewer.this.containerView.getHeight() - i13) / 1.8f;
                        }
                        iMin = (int) fMin;
                    }
                    int iMax2 = ((int) (ContentPreviewViewer.this.moveY + Math.max(i14 + r3 + (ContentPreviewViewer.this.stickerEmojiLayout != null ? AndroidUtilities.dp(40.0f) : 0), ((ContentPreviewViewer.this.containerView.getHeight() - i13) - ContentPreviewViewer.this.keyboardHeight) / 2) + (iMin / 2))) + AndroidUtilities.dp(24.0f);
                    if (ContentPreviewViewer.this.drawEffect) {
                        iMax2 += AndroidUtilities.dp(24.0f);
                    }
                    ContentPreviewViewer contentPreviewViewer9 = ContentPreviewViewer.this;
                    contentPreviewViewer9.popupWindow.showAtLocation(contentPreviewViewer9.containerView, 0, (int) ((ContentPreviewViewer.this.containerView.getMeasuredWidth() - actionBarPopupWindowLayout2.getMeasuredWidth()) / 2.0f), iMax2);
                    ContentPreviewViewer contentPreviewViewer10 = ContentPreviewViewer.this;
                    contentPreviewViewer10.runLongPressHaptic(contentPreviewViewer10.containerView);
                    actionBarPopupWindowLayout = actionBarPopupWindowLayout2;
                } else if (contentPreviewViewer5.currentContentType == 2 && ContentPreviewViewer.this.delegate != null) {
                    ArrayList arrayList7 = new ArrayList();
                    final ArrayList arrayList8 = new ArrayList();
                    ArrayList arrayList9 = new ArrayList();
                    if (ContentPreviewViewer.this.delegate.needSend(ContentPreviewViewer.this.currentContentType)) {
                        arrayList7.add(LocaleController.getString(C2807R.string.SendEmojiPreview));
                        arrayList9.add(Integer.valueOf(C2807R.drawable.msg_send));
                        arrayList8.add(0);
                    }
                    Boolean boolCanSetAsStatus = ContentPreviewViewer.this.delegate.canSetAsStatus(ContentPreviewViewer.this.currentDocument);
                    if (boolCanSetAsStatus != null) {
                        if (boolCanSetAsStatus.booleanValue()) {
                            arrayList7.add(LocaleController.getString(C2807R.string.SetAsEmojiStatus));
                            arrayList9.add(Integer.valueOf(C2807R.drawable.msg_smile_status));
                            arrayList8.add(1);
                        } else {
                            arrayList7.add(LocaleController.getString(C2807R.string.RemoveStatus));
                            arrayList9.add(Integer.valueOf(C2807R.drawable.msg_smile_status));
                            arrayList8.add(2);
                        }
                    }
                    if (BadgesController.INSTANCE.canChangeBadge()) {
                        arrayList7.add(LocaleController.getString(C2807R.string.SetAsBadge));
                        arrayList9.add(Integer.valueOf(C2807R.drawable.extera_outline));
                        arrayList8.add(77);
                    }
                    if (ContentPreviewViewer.this.delegate.needCopy(ContentPreviewViewer.this.currentDocument)) {
                        arrayList7.add(LocaleController.getString(C2807R.string.CopyEmojiPreview));
                        arrayList9.add(Integer.valueOf(C2807R.drawable.msg_copy));
                        arrayList8.add(3);
                    }
                    if (ContentPreviewViewer.this.delegate.needShowEmojiSet(ContentPreviewViewer.this.currentDocument)) {
                        arrayList7.add(LocaleController.getString(C2807R.string.ViewEmojiSet));
                        arrayList9.add(Integer.valueOf(C2807R.drawable.msg_media));
                        arrayList8.add(11);
                    }
                    if (ChatUtils.getInstance().isEmoji(ContentPreviewViewer.this.currentDocument)) {
                        arrayList7.add(LocaleController.formatString("SaveToGallery", C2807R.string.SaveToGallery, new Object[0]));
                        arrayList9.add(Integer.valueOf(C2807R.drawable.msg_gallery));
                        arrayList8.add(10);
                    }
                    if (ContentPreviewViewer.this.delegate.needRemoveFromRecent(ContentPreviewViewer.this.currentDocument)) {
                        arrayList7.add(LocaleController.getString(C2807R.string.RemoveFromRecent));
                        arrayList9.add(Integer.valueOf(C2807R.drawable.msg_delete));
                        arrayList8.add(4);
                    }
                    final boolean zIsStickerInFavorites2 = MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).isStickerInFavorites(ContentPreviewViewer.this.currentDocument);
                    if (!MessageObject.isAnimatedEmoji(ContentPreviewViewer.this.currentDocument) && !MessageObject.isMaskDocument(ContentPreviewViewer.this.currentDocument) && (zIsStickerInFavorites2 || (MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).canAddStickerToFavorites() && MessageObject.isStickerHasSet(ContentPreviewViewer.this.currentDocument)))) {
                        arrayList7.add(LocaleController.getString(zIsStickerInFavorites2 ? C2807R.string.DeleteFromFavorites : C2807R.string.AddToFavorites));
                        arrayList9.add(Integer.valueOf(zIsStickerInFavorites2 ? C2807R.drawable.msg_unfave : C2807R.drawable.msg_fave));
                        arrayList8.add(5);
                    }
                    if (arrayList7.isEmpty()) {
                        return;
                    }
                    ContentPreviewViewer.this.menuVisible = true;
                    ContentPreviewViewer.this.containerView.invalidate();
                    int[] iArr = new int[arrayList9.size()];
                    for (int i16 = 0; i16 < arrayList9.size(); i16++) {
                        iArr[i16] = ((Integer) arrayList9.get(i16)).intValue();
                    }
                    View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$run$8(arrayList8, zIsStickerInFavorites2, view);
                        }
                    };
                    boolean zAddVoteOptions = ContentPreviewViewer.this.addVoteOptions(actionBarPopupWindowLayout2);
                    int i17 = 0;
                    while (i17 < arrayList7.size()) {
                        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout3 = actionBarPopupWindowLayout2;
                        ActionBarMenuSubItem actionBarMenuSubItemAddItem3 = ActionBarMenuItem.addItem(!zAddVoteOptions && i17 == 0, i17 == arrayList7.size() + (-1), actionBarPopupWindowLayout3, ((Integer) arrayList9.get(i17)).intValue(), (CharSequence) arrayList7.get(i17), false, ContentPreviewViewer.this.resourcesProvider);
                        if (((Integer) arrayList8.get(i17)).intValue() == 4) {
                            actionBarMenuSubItemAddItem3.setIconColor(ContentPreviewViewer.this.getThemedColor(Theme.key_text_RedRegular));
                            actionBarMenuSubItemAddItem3.setTextColor(ContentPreviewViewer.this.getThemedColor(Theme.key_text_RedBold));
                        }
                        actionBarMenuSubItemAddItem3.setTag(Integer.valueOf(i17));
                        actionBarMenuSubItemAddItem3.setOnClickListener(onClickListener2);
                        i17++;
                        actionBarPopupWindowLayout2 = actionBarPopupWindowLayout3;
                    }
                    actionBarPopupWindowLayout = actionBarPopupWindowLayout2;
                    int i18 = -2;
                    ContentPreviewViewer.this.popupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, i18, i18) { // from class: org.telegram.ui.ContentPreviewViewer.1.4
                        @Override // org.telegram.ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
                        public void dismiss() {
                            super.dismiss();
                            ContentPreviewViewer contentPreviewViewer11 = ContentPreviewViewer.this;
                            contentPreviewViewer11.popupWindow = null;
                            contentPreviewViewer11.menuVisible = false;
                            if (ContentPreviewViewer.this.closeOnDismiss) {
                                ContentPreviewViewer.this.close();
                            }
                        }
                    };
                    ContentPreviewViewer.this.popupWindow.setPauseNotifications(true);
                    ContentPreviewViewer.this.popupWindow.setDismissAnimationDuration(150);
                    ContentPreviewViewer.this.popupWindow.setScaleOut(true);
                    ContentPreviewViewer.this.popupWindow.setOutsideTouchable(true);
                    ContentPreviewViewer.this.popupWindow.setClippingEnabled(true);
                    ContentPreviewViewer.this.popupWindow.setAnimationStyle(C2807R.style.PopupContextAnimation);
                    ContentPreviewViewer.this.popupWindow.setFocusable(true);
                    actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE));
                    ContentPreviewViewer.this.popupWindow.setInputMethodMode(2);
                    ContentPreviewViewer.this.popupWindow.getContentView().setFocusableInTouchMode(true);
                    int i19 = ContentPreviewViewer.this.lastInsets.bottom + ContentPreviewViewer.this.lastInsets.top;
                    int i20 = ContentPreviewViewer.this.lastInsets.top;
                    int iMin4 = (Math.min(ContentPreviewViewer.this.containerView.getWidth(), ContentPreviewViewer.this.containerView.getHeight() - i19) - AndroidUtilities.dp(40.0f)) / 2;
                    int iMax3 = (int) (((int) (ContentPreviewViewer.this.moveY + Math.max(i20 + iMin4 + (ContentPreviewViewer.this.stickerEmojiLayout != null ? AndroidUtilities.dp(40.0f) : 0), ((ContentPreviewViewer.this.containerView.getHeight() - i19) - ContentPreviewViewer.this.keyboardHeight) / 2) + iMin4)) + (AndroidUtilities.dp(24.0f) - ContentPreviewViewer.this.moveY));
                    ContentPreviewViewer contentPreviewViewer11 = ContentPreviewViewer.this;
                    contentPreviewViewer11.popupWindow.showAtLocation(contentPreviewViewer11.containerView, 0, (int) ((ContentPreviewViewer.this.containerView.getMeasuredWidth() - actionBarPopupWindowLayout.getMeasuredWidth()) / 2.0f), iMax3);
                    ActionBarPopupWindow.startAnimation(actionBarPopupWindowLayout);
                    ContentPreviewViewer contentPreviewViewer12 = ContentPreviewViewer.this;
                    contentPreviewViewer12.runLongPressHaptic(contentPreviewViewer12.containerView);
                    if (ContentPreviewViewer.this.moveY != 0.0f) {
                        if (ContentPreviewViewer.this.finalMoveY == 0.0f) {
                            ContentPreviewViewer.this.finalMoveY = 0.0f;
                            ContentPreviewViewer contentPreviewViewer13 = ContentPreviewViewer.this;
                            contentPreviewViewer13.startMoveY = contentPreviewViewer13.moveY;
                        }
                        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
                        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda6
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                this.f$0.lambda$run$9(valueAnimator);
                            }
                        });
                        valueAnimatorOfFloat2.setDuration(350L);
                        valueAnimatorOfFloat2.setInterpolator(CubicBezierInterpolator.DEFAULT);
                        valueAnimatorOfFloat2.start();
                    }
                } else {
                    actionBarPopupWindowLayout = actionBarPopupWindowLayout2;
                    if (ContentPreviewViewer.this.delegate != null) {
                        ArrayList arrayList10 = new ArrayList();
                        final ArrayList arrayList11 = new ArrayList();
                        ArrayList arrayList12 = new ArrayList();
                        if (ContentPreviewViewer.this.delegate.needSend(ContentPreviewViewer.this.currentContentType) && !ContentPreviewViewer.this.delegate.isInScheduleMode()) {
                            arrayList10.add(LocaleController.getString(C2807R.string.SendGifPreview));
                            arrayList12.add(Integer.valueOf(C2807R.drawable.msg_send));
                            arrayList11.add(0);
                        }
                        if (ContentPreviewViewer.this.delegate.needSend(ContentPreviewViewer.this.currentContentType) && !ContentPreviewViewer.this.delegate.isInScheduleMode()) {
                            arrayList10.add(LocaleController.getString(C2807R.string.SendWithoutSound));
                            arrayList12.add(Integer.valueOf(C2807R.drawable.input_notify_off));
                            arrayList11.add(4);
                        }
                        if (ContentPreviewViewer.this.delegate.canSchedule()) {
                            arrayList10.add(LocaleController.getString(C2807R.string.Schedule));
                            arrayList12.add(Integer.valueOf(C2807R.drawable.msg_autodelete));
                            arrayList11.add(3);
                        }
                        if (ContentPreviewViewer.this.currentDocument != null && ContentPreviewViewer.this.delegate.canAddCaption(ContentPreviewViewer.this.currentDocument)) {
                            arrayList10.add(LocaleController.getString(C2807R.string.AddACaption));
                            arrayList12.add(Integer.valueOf(C2807R.drawable.outline_caption_24));
                            arrayList11.add(11);
                        }
                        boolean zIsNewGifDocument = ContentPreviewViewer.this.currentDocument != null && MessageObject.isNewGifDocument(ContentPreviewViewer.this.currentDocument);
                        if (!zIsNewGifDocument && ContentPreviewViewer.this.inlineResult != null && ContentPreviewViewer.this.inlineResult.content != null) {
                            zIsNewGifDocument = MessageObject.isNewGifDocument(WebFile.createWithWebDocument(ContentPreviewViewer.this.inlineResult.content));
                        }
                        if (zIsNewGifDocument) {
                            arrayList10.add(LocaleController.formatString("SaveToGallery", C2807R.string.SaveToGallery, new Object[0]));
                            arrayList12.add(Integer.valueOf(C2807R.drawable.msg_gallery));
                            arrayList11.add(10);
                        }
                        if (ContentPreviewViewer.this.currentDocument != null) {
                            boolean zHasRecentGif = MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).hasRecentGif(ContentPreviewViewer.this.currentDocument);
                            if (zHasRecentGif) {
                                arrayList10.add(LocaleController.formatString("Delete", C2807R.string.Delete, new Object[0]));
                                arrayList12.add(Integer.valueOf(C2807R.drawable.msg_delete));
                                arrayList11.add(1);
                            } else {
                                arrayList10.add(LocaleController.formatString("SaveToGIFs", C2807R.string.SaveToGIFs, new Object[0]));
                                arrayList12.add(Integer.valueOf(C2807R.drawable.msg_gif_add));
                                arrayList11.add(2);
                            }
                            z = zHasRecentGif;
                        } else {
                            z = false;
                        }
                        if (arrayList10.isEmpty()) {
                            return;
                        }
                        ContentPreviewViewer.this.menuVisible = true;
                        ContentPreviewViewer.this.containerView.invalidate();
                        int[] iArr2 = new int[arrayList12.size()];
                        for (int i21 = 0; i21 < arrayList12.size(); i21++) {
                            iArr2[i21] = ((Integer) arrayList12.get(i21)).intValue();
                        }
                        View.OnClickListener onClickListener3 = new View.OnClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$run$12(arrayList11, view);
                            }
                        };
                        for (int i22 = 0; i22 < arrayList10.size(); i22++) {
                            ActionBarMenuSubItem actionBarMenuSubItemAddItem4 = ActionBarMenuItem.addItem(actionBarPopupWindowLayout, ((Integer) arrayList12.get(i22)).intValue(), (CharSequence) arrayList10.get(i22), false, ContentPreviewViewer.this.resourcesProvider);
                            actionBarMenuSubItemAddItem4.setTag(Integer.valueOf(i22));
                            actionBarMenuSubItemAddItem4.setOnClickListener(onClickListener3);
                            if (z && i22 == arrayList10.size() - 1) {
                                actionBarMenuSubItemAddItem4.setColors(ContentPreviewViewer.this.getThemedColor(Theme.key_text_RedBold), ContentPreviewViewer.this.getThemedColor(Theme.key_text_RedRegular));
                            }
                        }
                        int i23 = -2;
                        ContentPreviewViewer.this.popupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, i23, i23) { // from class: org.telegram.ui.ContentPreviewViewer.1.5
                            @Override // org.telegram.ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
                            public void dismiss() {
                                super.dismiss();
                                ContentPreviewViewer contentPreviewViewer14 = ContentPreviewViewer.this;
                                contentPreviewViewer14.popupWindow = null;
                                contentPreviewViewer14.menuVisible = false;
                                if (ContentPreviewViewer.this.closeOnDismiss) {
                                    ContentPreviewViewer.this.close();
                                }
                            }
                        };
                        ContentPreviewViewer.this.popupWindow.setPauseNotifications(true);
                        ContentPreviewViewer.this.popupWindow.setDismissAnimationDuration(150);
                        ContentPreviewViewer.this.popupWindow.setScaleOut(true);
                        ContentPreviewViewer.this.popupWindow.setOutsideTouchable(true);
                        ContentPreviewViewer.this.popupWindow.setClippingEnabled(true);
                        ContentPreviewViewer.this.popupWindow.setAnimationStyle(C2807R.style.PopupContextAnimation);
                        ContentPreviewViewer.this.popupWindow.setFocusable(true);
                        actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE));
                        ContentPreviewViewer.this.popupWindow.setInputMethodMode(2);
                        ContentPreviewViewer.this.popupWindow.getContentView().setFocusableInTouchMode(true);
                        int i24 = ContentPreviewViewer.this.lastInsets.bottom + ContentPreviewViewer.this.lastInsets.top;
                        int i25 = ContentPreviewViewer.this.lastInsets.top;
                        int iMin5 = (Math.min(ContentPreviewViewer.this.containerView.getWidth(), ContentPreviewViewer.this.containerView.getHeight() - i24) - AndroidUtilities.dp(40.0f)) / 2;
                        int iMax4 = (int) (((int) (ContentPreviewViewer.this.moveY + Math.max(i25 + iMin5 + (ContentPreviewViewer.this.stickerEmojiLayout != null ? AndroidUtilities.dp(40.0f) : 0), ((ContentPreviewViewer.this.containerView.getHeight() - i24) - ContentPreviewViewer.this.keyboardHeight) / 2) + iMin5)) + (AndroidUtilities.dp(24.0f) - ContentPreviewViewer.this.moveY));
                        ContentPreviewViewer contentPreviewViewer14 = ContentPreviewViewer.this;
                        i = 0;
                        contentPreviewViewer14.popupWindow.showAtLocation(contentPreviewViewer14.containerView, 0, (int) ((ContentPreviewViewer.this.containerView.getMeasuredWidth() - actionBarPopupWindowLayout.getMeasuredWidth()) / 2.0f), iMax4);
                        ContentPreviewViewer contentPreviewViewer15 = ContentPreviewViewer.this;
                        contentPreviewViewer15.runLongPressHaptic(contentPreviewViewer15.containerView);
                        if (ContentPreviewViewer.this.moveY != 0.0f) {
                            if (ContentPreviewViewer.this.finalMoveY == 0.0f) {
                                ContentPreviewViewer.this.finalMoveY = 0.0f;
                                ContentPreviewViewer contentPreviewViewer16 = ContentPreviewViewer.this;
                                contentPreviewViewer16.startMoveY = contentPreviewViewer16.moveY;
                            }
                            ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
                            valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda8
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    this.f$0.lambda$run$13(valueAnimator);
                                }
                            });
                            valueAnimatorOfFloat3.setDuration(350L);
                            valueAnimatorOfFloat3.setInterpolator(CubicBezierInterpolator.DEFAULT);
                            valueAnimatorOfFloat3.start();
                        }
                    }
                }
                i = 0;
            }
            int i26 = i;
            while (i26 < actionBarPopupWindowLayout.getItemsCount()) {
                View itemAt = actionBarPopupWindowLayout.getItemAt(i26);
                if (itemAt instanceof ActionBarMenuSubItem) {
                    ((ActionBarMenuSubItem) itemAt).updateSelectorBackground(i26 == 0 ? 1 : i, i26 == actionBarPopupWindowLayout.getItemsCount() + (-1) ? 1 : i, 12);
                }
                i26++;
            }
        }

        /* JADX INFO: renamed from: org.telegram.ui.ContentPreviewViewer$1$2, reason: invalid class name */
        public class AnonymousClass2 implements View.OnClickListener {
            final /* synthetic */ ArrayList val$actions;
            final /* synthetic */ boolean val$inFavs;

            public AnonymousClass2(ArrayList arrayList, boolean z) {
                this.val$actions = arrayList;
                this.val$inFavs = z;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ContentPreviewViewer.this.parentActivity == null) {
                    return;
                }
                int iIntValue = ((Integer) view.getTag()).intValue();
                if (((Integer) this.val$actions.get(iIntValue)).intValue() == 0 || ((Integer) this.val$actions.get(iIntValue)).intValue() == 6) {
                    if (ContentPreviewViewer.this.delegate != null) {
                        ContentPreviewViewer.this.delegate.sendSticker(ContentPreviewViewer.this.currentDocument, ContentPreviewViewer.this.currentQuery, ContentPreviewViewer.this.parentObject, ((Integer) this.val$actions.get(iIntValue)).intValue() == 0, 0, 0);
                    }
                } else if (((Integer) this.val$actions.get(iIntValue)).intValue() == 1) {
                    if (ContentPreviewViewer.this.delegate != null) {
                        ContentPreviewViewer.this.delegate.openSet(ContentPreviewViewer.this.currentStickerSet, ContentPreviewViewer.this.clearsInputField);
                    }
                } else if (((Integer) this.val$actions.get(iIntValue)).intValue() == 2) {
                    MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).addRecentSticker(2, ContentPreviewViewer.this.parentObject, ContentPreviewViewer.this.currentDocument, (int) (System.currentTimeMillis() / 1000), this.val$inFavs);
                } else if (((Integer) this.val$actions.get(iIntValue)).intValue() == 3) {
                    final TLRPC.Document document = ContentPreviewViewer.this.currentDocument;
                    final Object obj = ContentPreviewViewer.this.parentObject;
                    final String str = ContentPreviewViewer.this.currentQuery;
                    final ContentPreviewViewerDelegate contentPreviewViewerDelegate = ContentPreviewViewer.this.delegate;
                    if (contentPreviewViewerDelegate == null) {
                        return;
                    } else {
                        AlertsCreator.createScheduleDatePickerDialog(ContentPreviewViewer.this.parentActivity, contentPreviewViewerDelegate.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.ContentPreviewViewer$1$2$$ExternalSyntheticLambda0
                            @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                            public final void didSelectDate(boolean z, int i, int i2) {
                                contentPreviewViewerDelegate.sendSticker(document, str, obj, z, i, i2);
                            }
                        });
                    }
                } else if (((Integer) this.val$actions.get(iIntValue)).intValue() == 4) {
                    MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).addRecentSticker(0, ContentPreviewViewer.this.parentObject, ContentPreviewViewer.this.currentDocument, (int) (System.currentTimeMillis() / 1000), true);
                } else if (((Integer) this.val$actions.get(iIntValue)).intValue() == 5) {
                    ContentPreviewViewer.this.delegate.remove(ContentPreviewViewer.this.importingSticker);
                } else if (((Integer) this.val$actions.get(iIntValue)).intValue() == 10) {
                    ChatUtils.getInstance().saveStickerToGallery(ContentPreviewViewer.this.parentActivity, ContentPreviewViewer.this.currentDocument, new Utilities.Callback() { // from class: org.telegram.ui.ContentPreviewViewer$1$2$$ExternalSyntheticLambda1
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj2) {
                            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 10);
                        }
                    });
                } else if (((Integer) this.val$actions.get(iIntValue)).intValue() == 7) {
                    ContentPreviewViewer.this.delegate.editSticker(ContentPreviewViewer.this.currentDocument);
                } else if (((Integer) this.val$actions.get(iIntValue)).intValue() == 8) {
                    ContentPreviewViewer.this.delegate.deleteSticker(ContentPreviewViewer.this.currentDocument);
                }
                ContentPreviewViewer.this.dismissPopupWindow();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$8(ArrayList arrayList, boolean z, View view) {
            if (ContentPreviewViewer.this.parentActivity == null || ContentPreviewViewer.this.delegate == null) {
                return;
            }
            int iIntValue = ((Integer) view.getTag()).intValue();
            int iIntValue2 = ((Integer) arrayList.get(iIntValue)).intValue();
            if (iIntValue2 == 0) {
                ContentPreviewViewer.this.delegate.sendEmoji(ContentPreviewViewer.this.currentDocument);
            } else if (iIntValue2 == 1) {
                ContentPreviewViewer.this.delegate.setAsEmojiStatus(ContentPreviewViewer.this.currentDocument, null);
            } else if (iIntValue2 == 2) {
                ContentPreviewViewer.this.delegate.setAsEmojiStatus(null, null);
            } else if (iIntValue2 == 77) {
                ContentPreviewViewer.this.delegate.setAsBadge(ContentPreviewViewer.this.currentDocument);
            } else if (iIntValue2 == 3) {
                ContentPreviewViewer.this.delegate.copyEmoji(ContentPreviewViewer.this.currentDocument);
            } else if (iIntValue2 == 11) {
                ContentPreviewViewer.this.delegate.showEmojiSet(ContentPreviewViewer.this.currentDocument);
            } else if (iIntValue2 == 4) {
                ContentPreviewViewer.this.delegate.removeFromRecent(ContentPreviewViewer.this.currentDocument);
            } else if (iIntValue2 == 5) {
                MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).addRecentSticker(2, ContentPreviewViewer.this.parentObject, ContentPreviewViewer.this.currentDocument, (int) (System.currentTimeMillis() / 1000), z);
            } else if (((Integer) arrayList.get(iIntValue)).intValue() == 10) {
                ChatUtils.getInstance().saveStickerToGallery(ContentPreviewViewer.this.parentActivity, ContentPreviewViewer.this.currentDocument, new Utilities.Callback() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda10
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 11);
                    }
                });
            }
            ContentPreviewViewer.this.dismissPopupWindow();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$9(ValueAnimator valueAnimator) {
            ContentPreviewViewer.this.currentMoveYProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.this;
            contentPreviewViewer.moveY = contentPreviewViewer.startMoveY + ((ContentPreviewViewer.this.finalMoveY - ContentPreviewViewer.this.startMoveY) * ContentPreviewViewer.this.currentMoveYProgress);
            ContentPreviewViewer.this.containerView.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$12(ArrayList arrayList, View view) {
            if (ContentPreviewViewer.this.parentActivity == null) {
                return;
            }
            int iIntValue = ((Integer) view.getTag()).intValue();
            if (((Integer) arrayList.get(iIntValue)).intValue() == 0) {
                ContentPreviewViewerDelegate contentPreviewViewerDelegate = ContentPreviewViewer.this.delegate;
                TLRPC.Document document = ContentPreviewViewer.this.currentDocument;
                ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.this;
                contentPreviewViewerDelegate.sendGif(document != null ? contentPreviewViewer.currentDocument : contentPreviewViewer.inlineResult, ContentPreviewViewer.this.parentObject, true, 0, 0);
            } else if (((Integer) arrayList.get(iIntValue)).intValue() == 4) {
                ContentPreviewViewerDelegate contentPreviewViewerDelegate2 = ContentPreviewViewer.this.delegate;
                TLRPC.Document document2 = ContentPreviewViewer.this.currentDocument;
                ContentPreviewViewer contentPreviewViewer2 = ContentPreviewViewer.this;
                contentPreviewViewerDelegate2.sendGif(document2 != null ? contentPreviewViewer2.currentDocument : contentPreviewViewer2.inlineResult, ContentPreviewViewer.this.parentObject, false, 0, 0);
            } else if (((Integer) arrayList.get(iIntValue)).intValue() == 1) {
                MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).removeRecentGif(ContentPreviewViewer.this.currentDocument);
                ContentPreviewViewer.this.delegate.gifAddedOrDeleted();
            } else if (((Integer) arrayList.get(iIntValue)).intValue() == 2) {
                MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).addRecentGif(ContentPreviewViewer.this.currentDocument, (int) (System.currentTimeMillis() / 1000), true);
                MessagesController.getInstance(ContentPreviewViewer.this.currentAccount).saveGif("gif", ContentPreviewViewer.this.currentDocument);
                ContentPreviewViewer.this.delegate.gifAddedOrDeleted();
            } else if (((Integer) arrayList.get(iIntValue)).intValue() == 3) {
                final TLRPC.Document document3 = ContentPreviewViewer.this.currentDocument;
                final TLRPC.BotInlineResult botInlineResult = ContentPreviewViewer.this.inlineResult;
                final Object obj = ContentPreviewViewer.this.parentObject;
                final ContentPreviewViewerDelegate contentPreviewViewerDelegate3 = ContentPreviewViewer.this.delegate;
                AlertsCreator.createScheduleDatePickerDialog(ContentPreviewViewer.this.parentActivity, contentPreviewViewerDelegate3.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda11
                    @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                    public final void didSelectDate(boolean z, int i, int i2) {
                        ContentPreviewViewer.RunnableC49601.m15845$r8$lambda$xZ6OpnvmIxb3UCjxjQ2ZX130uQ(contentPreviewViewerDelegate3, document3, botInlineResult, obj, z, i, i2);
                    }
                }, ContentPreviewViewer.this.resourcesProvider);
            } else if (((Integer) arrayList.get(iIntValue)).intValue() == 10) {
                ChatUtils.getInstance().saveGifToGallery(ContentPreviewViewer.this.parentActivity, ContentPreviewViewer.this.currentDocument, ContentPreviewViewer.this.inlineResult, new Utilities.Callback() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda12
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj2) {
                        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 12);
                    }
                });
            } else if (((Integer) arrayList.get(iIntValue)).intValue() == 11) {
                ContentPreviewViewerDelegate contentPreviewViewerDelegate4 = ContentPreviewViewer.this.delegate;
                TLRPC.Document document4 = ContentPreviewViewer.this.currentDocument;
                ContentPreviewViewer contentPreviewViewer3 = ContentPreviewViewer.this;
                contentPreviewViewerDelegate4.addCaptionToGif(document4 != null ? contentPreviewViewer3.currentDocument : contentPreviewViewer3.inlineResult, ContentPreviewViewer.this.parentObject, true, 0, 0);
            }
            ContentPreviewViewer.this.dismissPopupWindow();
        }

        /* JADX INFO: renamed from: $r8$lambda$-xZ6OpnvmIxb3UCjxjQ2ZX130uQ, reason: not valid java name */
        public static /* synthetic */ void m15845$r8$lambda$xZ6OpnvmIxb3UCjxjQ2ZX130uQ(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC.Document document, TLRPC.BotInlineResult botInlineResult, Object obj, boolean z, int i, int i2) {
            Object obj2 = document;
            if (document == null) {
                obj2 = botInlineResult;
            }
            contentPreviewViewerDelegate.sendGif(obj2, obj, z, i, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$13(ValueAnimator valueAnimator) {
            ContentPreviewViewer.this.currentMoveYProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.this;
            contentPreviewViewer.moveY = contentPreviewViewer.startMoveY + ((ContentPreviewViewer.this.finalMoveY - ContentPreviewViewer.this.startMoveY) * ContentPreviewViewer.this.currentMoveYProgress);
            ContentPreviewViewer.this.containerView.invalidate();
        }
    }

    public void setStickerSetForCustomSticker(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        this.stickerSetForCustomSticker = tL_messages_stickerSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showEmojiSelectorForStickers() {
        final ContentPreviewViewer contentPreviewViewer;
        if (this.reactionsLayout == null) {
            contentPreviewViewer = this;
            ReactionsContainerLayout reactionsContainerLayout = new ReactionsContainerLayout(4, null, this.containerView.getContext(), UserConfig.selectedAccount, this.resourcesProvider) { // from class: org.telegram.ui.ContentPreviewViewer.2
                @Override // org.telegram.ui.Components.ReactionsContainerLayout
                public void invalidateLoopViews() {
                    super.invalidateLoopViews();
                    ContentPreviewViewer.this.setFocusable(getReactionsWindow() != null);
                }
            };
            contentPreviewViewer.reactionsLayout = reactionsContainerLayout;
            reactionsContainerLayout.skipEnterAnimation = true;
            reactionsContainerLayout.setPadding(0, AndroidUtilities.dp(22.0f), 0, AndroidUtilities.dp(22.0f));
            contentPreviewViewer.reactionsLayout.setClipChildren(false);
            contentPreviewViewer.reactionsLayout.setClipToPadding(false);
            contentPreviewViewer.reactionsLayout.setVisibility(0);
            contentPreviewViewer.reactionsLayout.setHint(LocaleController.getString(C2807R.string.StickersSetEmojiForSticker));
            contentPreviewViewer.reactionsLayout.setBubbleOffset(-AndroidUtilities.dp(105.0f));
            contentPreviewViewer.reactionsLayout.setMiniBubblesOffset(-AndroidUtilities.dp(14.0f));
            FrameLayout frameLayout = new FrameLayout(contentPreviewViewer.containerView.getContext());
            contentPreviewViewer.reactionsLayoutContainer = frameLayout;
            frameLayout.addView(contentPreviewViewer.reactionsLayout, LayoutHelper.createFrame(-2, 116.0f, 1, 0.0f, 0.0f, 0.0f, 0.0f));
            contentPreviewViewer.containerView.addView(contentPreviewViewer.reactionsLayoutContainer, LayoutHelper.createFrame(-2, -2.0f, 1, 0.0f, 100.0f, 0.0f, 0.0f));
        } else {
            contentPreviewViewer = this;
        }
        contentPreviewViewer.reactionsLayout.setSelectedEmojis(contentPreviewViewer.selectedEmojis);
        contentPreviewViewer.reactionsLayout.setDelegate(new ReactionsContainerLayout.ReactionsContainerDelegate() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
            public final void onReactionClicked(View view, ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z, boolean z2) {
                this.f$0.lambda$showEmojiSelectorForStickers$5(view, visibleReaction, z, z2);
            }
        });
        contentPreviewViewer.reactionsLayout.setMessage(null, null, false);
        contentPreviewViewer.reactionsLayoutContainer.setScaleY(0.6f);
        contentPreviewViewer.reactionsLayoutContainer.setScaleX(0.6f);
        contentPreviewViewer.reactionsLayoutContainer.setAlpha(0.0f);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showEmojiSelectorForStickers$6();
            }
        }, 10L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showEmojiSelectorForStickers$5(View view, ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z, boolean z2) {
        if (visibleReaction == null) {
            return;
        }
        CustomEmojiReactionsWindow reactionsWindow = this.reactionsLayout.getReactionsWindow();
        boolean zContains = this.selectedEmojis.contains(visibleReaction.emojicon);
        ArrayList<String> arrayList = this.selectedEmojis;
        if (zContains) {
            if (arrayList.size() <= 1) {
                return;
            } else {
                this.selectedEmojis.remove(visibleReaction.emojicon);
            }
        } else {
            arrayList.add(visibleReaction.emojicon);
            if (this.selectedEmojis.size() > 7) {
                this.selectedEmojis.remove(0);
            }
        }
        this.reactionsLayout.setSelectedEmojis(this.selectedEmojis);
        if (reactionsWindow != null) {
            this.reactionsLayout.setMessage(null, null, false);
            if (reactionsWindow.getSelectAnimatedEmojiDialog() != null) {
                reactionsWindow.getSelectAnimatedEmojiDialog().setSelectedReactions(this.selectedEmojis);
                reactionsWindow.getSelectAnimatedEmojiDialog().setRecentReactions(this.reactionsLayout.allReactionsList);
            }
            reactionsWindow.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showEmojiSelectorForStickers$6() {
        this.reactionsLayoutContainer.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(420L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showUnlockPremiumView() {
        if (this.unlockPremiumView == null) {
            UnlockPremiumView unlockPremiumView = new UnlockPremiumView(this.containerView.getContext(), 0, this.resourcesProvider);
            this.unlockPremiumView = unlockPremiumView;
            this.containerView.addView(unlockPremiumView, LayoutHelper.createFrame(-1, -1.0f));
            this.unlockPremiumView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$showUnlockPremiumView$7(view);
                }
            });
            this.unlockPremiumView.premiumButtonView.buttonLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$showUnlockPremiumView$8(view);
                }
            });
        }
        AndroidUtilities.updateViewVisibilityAnimated(this.unlockPremiumView, false, 1.0f, false);
        AndroidUtilities.updateViewVisibilityAnimated(this.unlockPremiumView, true);
        this.unlockPremiumView.setTranslationY(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showUnlockPremiumView$7(View view) {
        this.menuVisible = false;
        this.containerView.invalidate();
        close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showUnlockPremiumView$8(View view) {
        Activity activity = this.parentActivity;
        if (activity instanceof LaunchActivity) {
            LaunchActivity launchActivity = (LaunchActivity) activity;
            if (launchActivity.getActionBarLayout() != null && launchActivity.getActionBarLayout().getLastFragment() != null) {
                launchActivity.getActionBarLayout().getLastFragment().dismissCurrentDialog();
            }
            launchActivity.lambda$runLinkRequest$108(new PremiumPreviewFragment(PremiumPreviewFragment.featureTypeToServerString(5)));
        }
        this.menuVisible = false;
        this.containerView.invalidate();
        close();
    }

    public static ContentPreviewViewer getInstance() {
        ContentPreviewViewer contentPreviewViewer;
        ContentPreviewViewer contentPreviewViewer2 = Instance;
        if (contentPreviewViewer2 != null) {
            return contentPreviewViewer2;
        }
        synchronized (PhotoViewer.class) {
            try {
                contentPreviewViewer = Instance;
                if (contentPreviewViewer == null) {
                    contentPreviewViewer = new ContentPreviewViewer();
                    Instance = contentPreviewViewer;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return contentPreviewViewer;
    }

    public static boolean hasInstance() {
        return Instance != null;
    }

    public void reset() {
        Runnable runnable = this.openPreviewRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.openPreviewRunnable = null;
        }
        View view = this.currentPreviewCell;
        if (view != null) {
            if (view instanceof StickerEmojiCell) {
                ((StickerEmojiCell) view).setScaled(false);
            } else if (view instanceof StickerCell) {
                ((StickerCell) view).setScaled(false);
            } else if (view instanceof ContextLinkCell) {
                ((ContextLinkCell) view).setScaled(false);
            }
            this.currentPreviewCell = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0180  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouch(MotionEvent motionEvent, final RecyclerListView recyclerListView, int i, final Object obj, ContentPreviewViewerDelegate contentPreviewViewerDelegate, Theme.ResourcesProvider resourcesProvider) {
        int i2;
        ContentPreviewViewerDelegate contentPreviewViewerDelegate2;
        View view;
        this.delegate = contentPreviewViewerDelegate;
        if (contentPreviewViewerDelegate != null) {
            this.isPhotoEditor = contentPreviewViewerDelegate.isPhotoEditor();
            this.isStickerEditor = this.delegate.isStickerEditor();
        }
        ContentPreviewViewerDelegate contentPreviewViewerDelegate3 = this.delegate;
        if (contentPreviewViewerDelegate3 != null && !contentPreviewViewerDelegate3.can()) {
            return false;
        }
        if (this.openPreviewRunnable != null || isVisible()) {
            if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3 || motionEvent.getAction() == 6) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        ContentPreviewViewer.$r8$lambda$FmTosfgd_vLKZGk4ogAPD85QkJ4(recyclerListView, obj);
                    }
                }, 150L);
                Runnable runnable = this.openPreviewRunnable;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                    this.openPreviewRunnable = null;
                } else if (isVisible()) {
                    close();
                    View view2 = this.currentPreviewCell;
                    if (view2 != null) {
                        if (view2 instanceof StickerEmojiCell) {
                            ((StickerEmojiCell) view2).setScaled(false);
                        } else if (view2 instanceof StickerCell) {
                            ((StickerCell) view2).setScaled(false);
                        } else if (view2 instanceof ContextLinkCell) {
                            ((ContextLinkCell) view2).setScaled(false);
                        }
                        this.currentPreviewCell = null;
                    }
                }
            } else if (motionEvent.getAction() != 0) {
                int i3 = 2;
                if (this.isVisible) {
                    if (motionEvent.getAction() == 2) {
                        if (this.currentContentType == 1 && !this.isPhotoEditor) {
                            if (!this.menuVisible && this.showProgress == 1.0f) {
                                if (this.lastTouchY == -10000.0f) {
                                    this.lastTouchY = motionEvent.getY();
                                    this.currentMoveY = 0.0f;
                                    this.moveY = 0.0f;
                                } else {
                                    float y = motionEvent.getY();
                                    float f = this.currentMoveY + (y - this.lastTouchY);
                                    this.currentMoveY = f;
                                    this.lastTouchY = y;
                                    if (f > 0.0f) {
                                        this.currentMoveY = 0.0f;
                                    } else if (f < (-AndroidUtilities.dp(60.0f))) {
                                        this.currentMoveY = -AndroidUtilities.dp(60.0f);
                                    }
                                    this.moveY = rubberYPoisition(this.currentMoveY, AndroidUtilities.dp(200.0f));
                                    this.containerView.invalidate();
                                    if (this.currentMoveY <= (-AndroidUtilities.dp(55.0f))) {
                                        AndroidUtilities.cancelRunOnUIThread(this.showSheetRunnable);
                                        this.showSheetRunnable.run();
                                    }
                                }
                            }
                            return true;
                        }
                        int x = (int) motionEvent.getX();
                        int y2 = (int) motionEvent.getY();
                        int childCount = recyclerListView.getChildCount();
                        int i4 = 0;
                        while (true) {
                            if (i4 >= childCount) {
                                break;
                            }
                            View childAt = recyclerListView.getChildAt(i4);
                            if (childAt == null) {
                                return false;
                            }
                            int top = childAt.getTop();
                            int bottom = childAt.getBottom();
                            int left = childAt.getLeft();
                            int right = childAt.getRight();
                            if (top > y2 || bottom < y2 || left > x || right < x) {
                                i4++;
                            } else if ((childAt instanceof StickerEmojiCell) || (childAt instanceof StickerCell)) {
                                this.centerImage.setRoundRadius(0);
                                i2 = 0;
                                if (i2 != -1) {
                                }
                            } else {
                                if (childAt instanceof ContextLinkCell) {
                                    ContextLinkCell contextLinkCell = (ContextLinkCell) childAt;
                                    if (contextLinkCell.isSticker()) {
                                        this.centerImage.setRoundRadius(0);
                                        i3 = 0;
                                    } else if (contextLinkCell.isGif()) {
                                        this.centerImage.setRoundRadius(AndroidUtilities.dp(6.0f));
                                        i3 = 1;
                                    } else {
                                        i3 = -1;
                                    }
                                } else if (childAt instanceof EmojiPacksAlert.EmojiImageView) {
                                    this.centerImage.setRoundRadius(0);
                                } else if ((childAt instanceof EmojiView.ImageViewEmoji) && ((EmojiView.ImageViewEmoji) childAt).getSpan() != null) {
                                    this.centerImage.setRoundRadius(0);
                                } else {
                                    i2 = -1;
                                    if (i2 != -1 && childAt != this.currentPreviewCell) {
                                        contentPreviewViewerDelegate2 = this.delegate;
                                        if (contentPreviewViewerDelegate2 != null) {
                                            contentPreviewViewerDelegate2.resetTouch();
                                        }
                                        view = this.currentPreviewCell;
                                        if (!(view instanceof StickerEmojiCell)) {
                                            ((StickerEmojiCell) view).setScaled(false);
                                        } else if (view instanceof StickerCell) {
                                            ((StickerCell) view).setScaled(false);
                                        } else if (view instanceof ContextLinkCell) {
                                            ((ContextLinkCell) view).setScaled(false);
                                        }
                                        this.clearsInputField = false;
                                        this.menuVisible = false;
                                        this.closeOnDismiss = false;
                                        dismissPopupWindow();
                                        AndroidUtilities.updateViewVisibilityAnimated(this.unlockPremiumView, false);
                                        this.currentPreviewCell = childAt;
                                        if (!(childAt instanceof StickerEmojiCell)) {
                                            StickerEmojiCell stickerEmojiCell = (StickerEmojiCell) childAt;
                                            TLRPC.Document sticker = stickerEmojiCell.getSticker();
                                            SendMessagesHelper.ImportingSticker stickerPath = stickerEmojiCell.getStickerPath();
                                            String strFindAnimatedEmojiEmoticon = MessageObject.findAnimatedEmojiEmoticon(stickerEmojiCell.getSticker(), null, Integer.valueOf(this.currentAccount));
                                            ContentPreviewViewerDelegate contentPreviewViewerDelegate4 = this.delegate;
                                            open(sticker, stickerPath, strFindAnimatedEmojiEmoticon, contentPreviewViewerDelegate4 != null ? contentPreviewViewerDelegate4.getQuery(false) : null, null, i2, stickerEmojiCell.isRecent(), stickerEmojiCell.getParentObject(), resourcesProvider);
                                            stickerEmojiCell.setScaled(true);
                                        } else if (childAt instanceof StickerCell) {
                                            StickerCell stickerCell = (StickerCell) childAt;
                                            TLRPC.Document sticker2 = stickerCell.getSticker();
                                            String strFindAnimatedEmojiEmoticon2 = MessageObject.findAnimatedEmojiEmoticon(stickerCell.getSticker(), null, Integer.valueOf(this.currentAccount));
                                            ContentPreviewViewerDelegate contentPreviewViewerDelegate5 = this.delegate;
                                            open(sticker2, null, strFindAnimatedEmojiEmoticon2, contentPreviewViewerDelegate5 != null ? contentPreviewViewerDelegate5.getQuery(false) : null, null, i2, false, stickerCell.getParentObject(), resourcesProvider);
                                            stickerCell.setScaled(true);
                                            this.clearsInputField = stickerCell.isClearsInputField();
                                        } else if (childAt instanceof ContextLinkCell) {
                                            ContextLinkCell contextLinkCell2 = (ContextLinkCell) childAt;
                                            TLRPC.Document document = contextLinkCell2.getDocument();
                                            ContentPreviewViewerDelegate contentPreviewViewerDelegate6 = this.delegate;
                                            open(document, null, null, contentPreviewViewerDelegate6 != null ? contentPreviewViewerDelegate6.getQuery(true) : null, contextLinkCell2.getBotInlineResult(), i2, false, contextLinkCell2.getBotInlineResult() != null ? contextLinkCell2.getInlineBot() : contextLinkCell2.getParentObject(), resourcesProvider);
                                            if (i2 != 1 || this.isPhotoEditor) {
                                                contextLinkCell2.setScaled(true);
                                            }
                                        } else if (childAt instanceof EmojiPacksAlert.EmojiImageView) {
                                            TLRPC.Document document2 = ((EmojiPacksAlert.EmojiImageView) childAt).getDocument();
                                            if (document2 != null) {
                                                open(document2, null, MessageObject.findAnimatedEmojiEmoticon(document2, null, Integer.valueOf(this.currentAccount)), null, null, i2, false, null, resourcesProvider);
                                            }
                                        } else if (childAt instanceof EmojiView.ImageViewEmoji) {
                                            TLRPC.Document document3 = ((EmojiView.ImageViewEmoji) childAt).getDocument();
                                            if (document3 == null) {
                                                return false;
                                            }
                                            open(document3, null, MessageObject.findAnimatedEmojiEmoticon(document3, null, Integer.valueOf(this.currentAccount)), null, null, i2, false, null, resourcesProvider);
                                        } else if (childAt instanceof SuggestEmojiView.EmojiImageView) {
                                            Drawable drawable = ((SuggestEmojiView.EmojiImageView) childAt).drawable;
                                            TLRPC.Document document4 = drawable instanceof AnimatedEmojiDrawable ? ((AnimatedEmojiDrawable) drawable).getDocument() : null;
                                            if (document4 == null) {
                                                return false;
                                            }
                                            open(document4, null, MessageObject.findAnimatedEmojiEmoticon(document4, null, Integer.valueOf(this.currentAccount)), null, null, i2, false, null, resourcesProvider);
                                        }
                                        runSmoothHaptic();
                                        return true;
                                    }
                                }
                                i2 = i3;
                                if (i2 != -1) {
                                    contentPreviewViewerDelegate2 = this.delegate;
                                    if (contentPreviewViewerDelegate2 != null) {
                                    }
                                    view = this.currentPreviewCell;
                                    if (!(view instanceof StickerEmojiCell)) {
                                    }
                                    this.clearsInputField = false;
                                    this.menuVisible = false;
                                    this.closeOnDismiss = false;
                                    dismissPopupWindow();
                                    AndroidUtilities.updateViewVisibilityAnimated(this.unlockPremiumView, false);
                                    this.currentPreviewCell = childAt;
                                    if (!(childAt instanceof StickerEmojiCell)) {
                                    }
                                    runSmoothHaptic();
                                    return true;
                                }
                            }
                        }
                    }
                    return true;
                }
                if (this.openPreviewRunnable != null && (motionEvent.getAction() != 2 || Math.hypot(this.startX - motionEvent.getX(), this.startY - motionEvent.getY()) > AndroidUtilities.dp(10.0f))) {
                    AndroidUtilities.cancelRunOnUIThread(this.openPreviewRunnable);
                    this.openPreviewRunnable = null;
                }
            }
        }
        return false;
    }

    public static /* synthetic */ void $r8$lambda$FmTosfgd_vLKZGk4ogAPD85QkJ4(RecyclerListView recyclerListView, Object obj) {
        if (recyclerListView != null) {
            recyclerListView.setOnItemClickListener((RecyclerListView.OnItemClickListener) obj);
        }
    }

    public void runSmoothHaptic() {
        if (ExteraConfig.getInAppVibration()) {
            try {
                if (Build.VERSION.SDK_INT >= 26) {
                    if (this.vibrationEffect == null) {
                        this.vibrationEffect = VibrationEffect.createWaveform(new long[]{0, 2}, -1);
                    }
                    VibratorUtils.vibrateEffect(this.vibrationEffect);
                }
            } catch (Exception unused) {
            }
        }
    }

    public void runLongPressHaptic(View view) {
        if (!ExteraConfig.getInAppVibration() || view == null) {
            return;
        }
        try {
            view.performHapticFeedback(VibratorUtils.getType(0), 3);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x00de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onInterceptTouchEvent(MotionEvent motionEvent, final RecyclerListView recyclerListView, int i, ContentPreviewViewerDelegate contentPreviewViewerDelegate, final Theme.ResourcesProvider resourcesProvider) {
        final int i2;
        this.delegate = contentPreviewViewerDelegate;
        if (contentPreviewViewerDelegate != null) {
            this.isPhotoEditor = contentPreviewViewerDelegate.isPhotoEditor();
            this.isStickerEditor = this.delegate.isStickerEditor();
        }
        ContentPreviewViewerDelegate contentPreviewViewerDelegate2 = this.delegate;
        if ((contentPreviewViewerDelegate2 == null || contentPreviewViewerDelegate2.can()) && motionEvent.getAction() == 0) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int childCount = recyclerListView.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = recyclerListView.getChildAt(i3);
                if (childAt == null) {
                    return false;
                }
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                int left = childAt.getLeft();
                int right = childAt.getRight();
                if (top <= y && bottom >= y && left <= x && right >= x) {
                    if (childAt instanceof StickerEmojiCell) {
                        if (((StickerEmojiCell) childAt).showingBitmap()) {
                            this.centerImage.setRoundRadius(0);
                            i2 = 0;
                        }
                        i2 = -1;
                    } else if (childAt instanceof StickerCell) {
                        if (((StickerCell) childAt).showingBitmap()) {
                            this.centerImage.setRoundRadius(0);
                            i2 = 0;
                        }
                        i2 = -1;
                    } else if (childAt instanceof ContextLinkCell) {
                        ContextLinkCell contextLinkCell = (ContextLinkCell) childAt;
                        if (!contextLinkCell.showingBitmap()) {
                            i2 = -1;
                        } else if (contextLinkCell.isSticker()) {
                            this.centerImage.setRoundRadius(0);
                            i2 = 0;
                        } else if (contextLinkCell.isGif()) {
                            this.centerImage.setRoundRadius(AndroidUtilities.dp(6.0f));
                            i2 = 1;
                        }
                    } else {
                        if (childAt instanceof EmojiPacksAlert.EmojiImageView) {
                            this.centerImage.setRoundRadius(0);
                        } else if ((childAt instanceof EmojiView.ImageViewEmoji) && ((EmojiView.ImageViewEmoji) childAt).getSpan() != null) {
                            this.centerImage.setRoundRadius(0);
                        } else {
                            if ((childAt instanceof SuggestEmojiView.EmojiImageView) && (((SuggestEmojiView.EmojiImageView) childAt).drawable instanceof AnimatedEmojiDrawable)) {
                                this.centerImage.setRoundRadius(0);
                            }
                            i2 = -1;
                        }
                        i2 = 2;
                    }
                    if (i2 == -1) {
                        return false;
                    }
                    this.startX = x;
                    this.startY = y;
                    this.currentPreviewCell = childAt;
                    Runnable runnable = new Runnable() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda15
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onInterceptTouchEvent$10(recyclerListView, i2, resourcesProvider);
                        }
                    };
                    this.openPreviewRunnable = runnable;
                    AndroidUtilities.runOnUIThread(runnable, 200L);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onInterceptTouchEvent$10(RecyclerListView recyclerListView, int i, Theme.ResourcesProvider resourcesProvider) {
        if (this.openPreviewRunnable == null) {
            return;
        }
        recyclerListView.setOnItemClickListener((RecyclerListView.OnItemClickListener) null);
        recyclerListView.requestDisallowInterceptTouchEvent(true);
        this.openPreviewRunnable = null;
        setParentActivity(AndroidUtilities.findActivity(recyclerListView.getContext()));
        this.clearsInputField = false;
        View view = this.currentPreviewCell;
        if (view instanceof StickerEmojiCell) {
            StickerEmojiCell stickerEmojiCell = (StickerEmojiCell) view;
            TLRPC.Document sticker = stickerEmojiCell.getSticker();
            SendMessagesHelper.ImportingSticker stickerPath = stickerEmojiCell.getStickerPath();
            String strFindAnimatedEmojiEmoticon = MessageObject.findAnimatedEmojiEmoticon(stickerEmojiCell.getSticker(), null, Integer.valueOf(this.currentAccount));
            ContentPreviewViewerDelegate contentPreviewViewerDelegate = this.delegate;
            open(sticker, stickerPath, strFindAnimatedEmojiEmoticon, contentPreviewViewerDelegate != null ? contentPreviewViewerDelegate.getQuery(false) : null, null, i, stickerEmojiCell.isRecent(), stickerEmojiCell.getParentObject(), this.resourcesProvider);
            stickerEmojiCell.setScaled(true);
        } else if (view instanceof StickerCell) {
            StickerCell stickerCell = (StickerCell) view;
            TLRPC.Document sticker2 = stickerCell.getSticker();
            ContentPreviewViewerDelegate contentPreviewViewerDelegate2 = this.delegate;
            open(sticker2, null, null, contentPreviewViewerDelegate2 != null ? contentPreviewViewerDelegate2.getQuery(false) : null, null, i, false, stickerCell.getParentObject(), resourcesProvider);
            stickerCell.setScaled(true);
            this.clearsInputField = stickerCell.isClearsInputField();
        } else if (view instanceof ContextLinkCell) {
            ContextLinkCell contextLinkCell = (ContextLinkCell) view;
            TLRPC.Document document = contextLinkCell.getDocument();
            ContentPreviewViewerDelegate contentPreviewViewerDelegate3 = this.delegate;
            open(document, null, null, contentPreviewViewerDelegate3 != null ? contentPreviewViewerDelegate3.getQuery(true) : null, contextLinkCell.getBotInlineResult(), i, false, contextLinkCell.getBotInlineResult() != null ? contextLinkCell.getInlineBot() : contextLinkCell.getParentObject(), resourcesProvider);
            if (i != 1 || this.isPhotoEditor) {
                contextLinkCell.setScaled(true);
            }
        } else if (view instanceof EmojiPacksAlert.EmojiImageView) {
            TLRPC.Document document2 = ((EmojiPacksAlert.EmojiImageView) view).getDocument();
            if (document2 == null) {
                return;
            } else {
                open(document2, null, MessageObject.findAnimatedEmojiEmoticon(document2, null, Integer.valueOf(this.currentAccount)), null, null, i, false, null, resourcesProvider);
            }
        } else if (view instanceof EmojiView.ImageViewEmoji) {
            TLRPC.Document document3 = ((EmojiView.ImageViewEmoji) view).getDocument();
            if (document3 == null) {
                return;
            } else {
                open(document3, null, MessageObject.findAnimatedEmojiEmoticon(document3, null, Integer.valueOf(this.currentAccount)), null, null, i, false, null, resourcesProvider);
            }
        } else {
            if (!(view instanceof SuggestEmojiView.EmojiImageView)) {
                return;
            }
            Drawable drawable = ((SuggestEmojiView.EmojiImageView) view).drawable;
            TLRPC.Document document4 = drawable instanceof AnimatedEmojiDrawable ? ((AnimatedEmojiDrawable) drawable).getDocument() : null;
            if (document4 == null) {
                return;
            } else {
                open(document4, null, MessageObject.findAnimatedEmojiEmoticon(document4, null, Integer.valueOf(this.currentAccount)), null, null, i, false, null, resourcesProvider);
            }
        }
        try {
            runLongPressHaptic(this.currentPreviewCell);
        } catch (Exception unused) {
        }
        ContentPreviewViewerDelegate contentPreviewViewerDelegate4 = this.delegate;
        if (contentPreviewViewerDelegate4 != null) {
            contentPreviewViewerDelegate4.resetTouch();
        }
    }

    public void setDelegate(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
        this.delegate = contentPreviewViewerDelegate;
        if (contentPreviewViewerDelegate != null) {
            this.isPhotoEditor = contentPreviewViewerDelegate.isPhotoEditor();
            this.isStickerEditor = this.delegate.isStickerEditor();
        }
    }

    public void setParentActivity(Activity activity) {
        int i = UserConfig.selectedAccount;
        this.currentAccount = i;
        this.centerImage.setCurrentAccount(i);
        this.centerImage.setLayerNum(Integer.MAX_VALUE);
        this.effectImage.setCurrentAccount(this.currentAccount);
        this.effectImage.setLayerNum(Integer.MAX_VALUE);
        if (this.parentActivity == activity) {
            return;
        }
        this.parentActivity = activity;
        this.slideUpDrawable = activity.getResources().getDrawable(C2807R.drawable.preview_arrow);
        this.windowView = new FrameLayout(activity) { // from class: org.telegram.ui.ContentPreviewViewer.3
            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchKeyEvent(KeyEvent keyEvent) {
                if (keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
                    if (ContentPreviewViewer.this.isStickerEditor || ContentPreviewViewer.this.menuVisible) {
                        ContentPreviewViewer.this.closeWithMenu();
                    } else {
                        ContentPreviewViewer.this.close();
                    }
                    return true;
                }
                return super.dispatchKeyEvent(keyEvent);
            }

            @Override // android.view.View
            public void onSizeChanged(int i2, int i3, int i4, int i5) {
                super.onSizeChanged(i2, i3, i4, i5);
                Blur3Utils.checkBitmapSourceMatrixScale(ContentPreviewViewer.this.scrimBlur3SourceBitmap, ContentPreviewViewer.this.windowView);
                ContentPreviewViewer.this.scrimBlur3Factory.invalidateAllLinkedViews();
            }
        };
        this.scrimBlur3Factory.setSourceRootView(new ViewPositionWatcher(this.windowView), this.windowView);
        this.scrimBlur3Factory.setLinkedViewsRef(new ReferenceList<>());
        this.windowView.setFocusable(true);
        this.windowView.setFocusableInTouchMode(true);
        this.windowView.setSystemUiVisibility(1792);
        ViewCompat.setOnApplyWindowInsetsListener(this.windowView, new OnApplyWindowInsetsListener() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda13
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return this.f$0.lambda$setParentActivity$11(view, windowInsetsCompat);
            }
        });
        FrameLayoutDrawer frameLayoutDrawer = new FrameLayoutDrawer(activity) { // from class: org.telegram.ui.ContentPreviewViewer.4
            @Override // android.view.ViewGroup, android.view.View
            public void onAttachedToWindow() {
                super.onAttachedToWindow();
                ContentPreviewViewer.this.centerImage.onAttachedToWindow();
                ContentPreviewViewer.this.effectImage.onAttachedToWindow();
            }

            @Override // android.view.ViewGroup, android.view.View
            public void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                ContentPreviewViewer.this.centerImage.onDetachedFromWindow();
                ContentPreviewViewer.this.effectImage.onDetachedFromWindow();
            }
        };
        this.containerView = frameLayoutDrawer;
        frameLayoutDrawer.setFocusable(false);
        this.containerView.setHapticFeedbackEnabled(ExteraConfig.getInAppVibration());
        this.windowView.addView(this.containerView, LayoutHelper.createFrame(-1, -1, 51));
        this.containerView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda14
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f$0.lambda$setParentActivity$12(view, motionEvent);
            }
        });
        MessagesController.getInstance(this.currentAccount);
        this.keyboardHeight = MessagesController.getGlobalEmojiSettings().getInt("kbd_height", AndroidUtilities.dp(200.0f));
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.windowLayoutParams = layoutParams;
        layoutParams.height = -1;
        layoutParams.format = -3;
        layoutParams.width = -1;
        layoutParams.gravity = 48;
        layoutParams.type = 99;
        layoutParams.flags = -2147286784;
        AndroidUtilities.applyEdgeToEdgeLayoutParams(layoutParams);
        this.centerImage.setAspectFit(true);
        this.centerImage.setInvalidateAll(true);
        this.centerImage.setParentView(this.containerView);
        this.effectImage.setAspectFit(true);
        this.effectImage.setInvalidateAll(true);
        this.effectImage.setParentView(this.containerView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsetsCompat lambda$setParentActivity$11(View view, WindowInsetsCompat windowInsetsCompat) {
        this.lastInsets = AndroidUtilities.getDefaultWindowInsets(windowInsetsCompat, false);
        return windowInsetsCompat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$setParentActivity$12(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 6 || motionEvent.getAction() == 3) {
            if (this.isStickerEditor) {
                closeWithMenu();
            } else {
                close();
            }
        }
        return true;
    }

    public void setFocusable(boolean z) {
        WindowManager.LayoutParams layoutParams = this.windowLayoutParams;
        if (z) {
            layoutParams.flags &= -131073;
            layoutParams.softInputMode = 16;
        } else {
            layoutParams.flags |= 131072;
        }
        try {
            ((WindowManager) this.parentActivity.getSystemService("window")).updateViewLayout(this.windowView, this.windowLayoutParams);
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    public void open(TLRPC.Document document, SendMessagesHelper.ImportingSticker importingSticker, String str, String str2, TLRPC.BotInlineResult botInlineResult, int i, boolean z, Object obj, Theme.ResourcesProvider resourcesProvider) {
        open(document, importingSticker, str, str2, botInlineResult, i, z, obj, resourcesProvider, 0);
    }

    public void open(TLRPC.Document document, SendMessagesHelper.ImportingSticker importingSticker, String str, String str2, TLRPC.BotInlineResult botInlineResult, int i, boolean z, Object obj, Theme.ResourcesProvider resourcesProvider, int i2) {
        boolean z2;
        TLRPC.InputStickerSet inputStickerSet;
        ContentPreviewViewerDelegate contentPreviewViewerDelegate;
        int i3;
        if (this.parentActivity == null || this.windowView == null) {
            return;
        }
        this.resourcesProvider = resourcesProvider;
        this.isRecentSticker = z;
        this.stickerEmojiLayout = null;
        this.backgroundDrawable.setColor(AndroidUtilities.isDarkColor(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider)) ? 1895825408 : 1692853990);
        this.drawEffect = false;
        this.centerImage.setColorFilter(null);
        if (i != 0 && i != 2 && i != 3) {
            if (document != null) {
                TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 90);
                TLRPC.VideoSize documentVideoThumb = MessageObject.getDocumentVideoThumb(document);
                ImageLocation forDocument = ImageLocation.getForDocument(document);
                forDocument.imageType = 2;
                ImageReceiver imageReceiver = this.centerImage;
                if (documentVideoThumb != null) {
                    imageReceiver.setImage(forDocument, null, ImageLocation.getForDocument(documentVideoThumb, document), null, ImageLocation.getForDocument(closestPhotoSizeWithSize, document), "90_90_b", null, document.size, null, "gif" + document, 0);
                } else {
                    imageReceiver.setImage(forDocument, null, ImageLocation.getForDocument(closestPhotoSizeWithSize, document), "90_90_b", document.size, null, "gif" + document, 0);
                }
            } else {
                if (botInlineResult == null || botInlineResult.content == null) {
                    return;
                }
                TLRPC.WebDocument webDocument = botInlineResult.thumb;
                if ((webDocument instanceof TLRPC.TL_webDocument) && "video/mp4".equals(webDocument.mime_type)) {
                    this.centerImage.setImage(ImageLocation.getForWebFile(WebFile.createWithWebDocument(botInlineResult.content)), null, ImageLocation.getForWebFile(WebFile.createWithWebDocument(botInlineResult.thumb)), null, ImageLocation.getForWebFile(WebFile.createWithWebDocument(botInlineResult.thumb)), "90_90_b", null, botInlineResult.content.size, null, "gif" + botInlineResult, 1);
                } else {
                    this.centerImage.setImage(ImageLocation.getForWebFile(WebFile.createWithWebDocument(botInlineResult.content)), null, ImageLocation.getForWebFile(WebFile.createWithWebDocument(botInlineResult.thumb)), "90_90_b", botInlineResult.content.size, null, "gif" + botInlineResult, 1);
                }
            }
            AndroidUtilities.cancelRunOnUIThread(this.showSheetRunnable);
            AndroidUtilities.runOnUIThread(this.showSheetRunnable, 800L);
        } else {
            if (document == null && importingSticker == null) {
                return;
            }
            if (textPaint == null) {
                TextPaint textPaint2 = new TextPaint(1);
                textPaint = textPaint2;
                textPaint2.setTextSize(AndroidUtilities.dp(24.0f));
            }
            this.effectImage.clearImage();
            this.drawEffect = false;
            if (document != null) {
                int i4 = 0;
                while (true) {
                    if (i4 >= document.attributes.size()) {
                        inputStickerSet = null;
                        break;
                    }
                    TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i4);
                    if ((documentAttribute instanceof TLRPC.TL_documentAttributeSticker) && (inputStickerSet = documentAttribute.stickerset) != null) {
                        break;
                    } else {
                        i4++;
                    }
                }
                if (str != null) {
                    this.stickerEmojiLayout = new StaticLayout(AndroidUtilities.replaceCharSequence("…", TextUtils.ellipsize(Emoji.replaceEmoji(str, textPaint.getFontMetricsInt(), false), textPaint, AndroidUtilities.dp(200.0f), TextUtils.TruncateAt.END), _UrlKt.FRAGMENT_ENCODE_SET), textPaint, AndroidUtilities.dp(200.0f), Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
                }
                if ((inputStickerSet != null || i == 2) && ((contentPreviewViewerDelegate = this.delegate) == null || contentPreviewViewerDelegate.needMenu())) {
                    AndroidUtilities.cancelRunOnUIThread(this.showSheetRunnable);
                    AndroidUtilities.runOnUIThread(this.showSheetRunnable, i2 > 0 ? i2 : 800L);
                }
                TLRPC.TL_messages_stickerSet stickerSet = MediaDataController.getInstance(this.currentAccount).getStickerSet(inputStickerSet, true);
                if (stickerSet != null && stickerSet.documents.isEmpty()) {
                    inputStickerSet = null;
                }
                this.currentStickerSet = inputStickerSet;
                TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 90);
                boolean zIsVideoStickerDocument = MessageObject.isVideoStickerDocument(document);
                ImageReceiver imageReceiver2 = this.centerImage;
                if (zIsVideoStickerDocument) {
                    imageReceiver2.setImage(ImageLocation.getForDocument(document), null, ImageLocation.getForDocument(closestPhotoSizeWithSize2, document), null, null, 0L, "webp", this.currentStickerSet, 1);
                } else {
                    imageReceiver2.setImage(ImageLocation.getForDocument(document), (String) null, ImageLocation.getForDocument(closestPhotoSizeWithSize2, document), (String) null, "webp", this.currentStickerSet, 1);
                    if (MessageObject.isPremiumSticker(document)) {
                        this.drawEffect = true;
                        this.effectImage.setImage(ImageLocation.getForDocument(MessageObject.getPremiumStickerAnimation(document), document), (String) null, (ImageLocation) null, (String) null, "tgs", this.currentStickerSet, 1);
                    }
                }
                if (MessageObject.isTextColorEmoji(document)) {
                    this.centerImage.setColorFilter(Theme.getAnimatedEmojiColorFilter(resourcesProvider));
                }
                if (this.stickerEmojiLayout == null) {
                    int i5 = 0;
                    while (true) {
                        if (i5 >= document.attributes.size()) {
                            break;
                        }
                        TLRPC.DocumentAttribute documentAttribute2 = document.attributes.get(i5);
                        if ((documentAttribute2 instanceof TLRPC.TL_documentAttributeSticker) && !TextUtils.isEmpty(documentAttribute2.alt)) {
                            this.stickerEmojiLayout = new StaticLayout(AndroidUtilities.replaceCharSequence("…", TextUtils.ellipsize(Emoji.replaceEmoji(documentAttribute2.alt, textPaint.getFontMetricsInt(), false), textPaint, AndroidUtilities.dp(200.0f), TextUtils.TruncateAt.END), _UrlKt.FRAGMENT_ENCODE_SET), textPaint, AndroidUtilities.dp(200.0f), Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
                            break;
                        }
                        i5++;
                    }
                }
            } else if (importingSticker != null) {
                this.centerImage.setImage(importingSticker.path, null, null, importingSticker.animated ? "tgs" : null, 0L);
                if (importingSticker.videoEditedInfo != null) {
                    if (this.paintingOverlay == null) {
                        PaintingOverlay paintingOverlay = new PaintingOverlay(this.containerView.getContext());
                        this.paintingOverlay = paintingOverlay;
                        this.containerView.addView(paintingOverlay, new FrameLayout.LayoutParams(512, 512));
                    }
                    z2 = false;
                    this.paintingOverlay.setEntities(importingSticker.videoEditedInfo.mediaEntities, true, true, false);
                } else {
                    z2 = false;
                }
                if (str != null) {
                    this.stickerEmojiLayout = new StaticLayout(AndroidUtilities.replaceCharSequence("…", TextUtils.ellipsize(Emoji.replaceEmoji(str, textPaint.getFontMetricsInt(), z2), textPaint, AndroidUtilities.dp(200.0f), TextUtils.TruncateAt.END), _UrlKt.FRAGMENT_ENCODE_SET), textPaint, AndroidUtilities.dp(200.0f), Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
                }
                if (this.delegate.needMenu()) {
                    AndroidUtilities.cancelRunOnUIThread(this.showSheetRunnable);
                    AndroidUtilities.runOnUIThread(this.showSheetRunnable, i2 > 0 ? i2 : 800L);
                }
            }
        }
        if (this.centerImage.getLottieAnimation() != null) {
            i3 = 0;
            this.centerImage.getLottieAnimation().setCurrentFrame(0);
        } else {
            i3 = 0;
        }
        if (this.drawEffect && this.effectImage.getLottieAnimation() != null) {
            this.effectImage.getLottieAnimation().setCurrentFrame(i3);
        }
        this.currentContentType = i;
        this.currentDocument = document;
        this.importingSticker = importingSticker;
        this.currentQuery = str2;
        this.inlineResult = botInlineResult;
        this.parentObject = obj;
        this.resourcesProvider = resourcesProvider;
        this.containerView.invalidate();
        if (this.isVisible) {
            return;
        }
        AndroidUtilities.lockOrientation(this.parentActivity);
        try {
            if (this.windowView.getParent() != null) {
                ((WindowManager) this.parentActivity.getSystemService("window")).removeView(this.windowView);
            }
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
        ((WindowManager) this.parentActivity.getSystemService("window")).addView(this.windowView, this.windowLayoutParams);
        this.isVisible = true;
        this.showProgress = 0.0f;
        this.lastTouchY = -10000.0f;
        this.currentMoveYProgress = 0.0f;
        this.finalMoveY = 0.0f;
        this.currentMoveY = 0.0f;
        this.moveY = 0.0f;
        this.lastUpdateTime = System.currentTimeMillis();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 8);
    }

    public boolean isVisible() {
        return this.isVisible;
    }

    public void closeWithMenu() {
        CustomEmojiReactionsWindow reactionsWindow;
        ReactionsContainerLayout reactionsContainerLayout = this.reactionsLayout;
        if (reactionsContainerLayout != null && (reactionsWindow = reactionsContainerLayout.getReactionsWindow()) != null && reactionsWindow.isShowing()) {
            reactionsWindow.dismiss();
            return;
        }
        this.menuVisible = false;
        dismissPopupWindow();
        close();
    }

    public void close() {
        if (this.parentActivity == null || this.menuVisible) {
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(this.showSheetRunnable);
        this.showProgress = 1.0f;
        this.lastUpdateTime = System.currentTimeMillis();
        this.containerView.invalidate();
        this.currentDocument = null;
        this.currentStickerSet = null;
        this.currentQuery = null;
        this.delegate = null;
        this.isVisible = false;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$close$13();
            }
        }, 200L);
        UnlockPremiumView unlockPremiumView = this.unlockPremiumView;
        if (unlockPremiumView != null) {
            unlockPremiumView.animate().alpha(0.0f).translationY(AndroidUtilities.dp(56.0f)).setDuration(150L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
        }
        FrameLayout frameLayout = this.reactionsLayoutContainer;
        if (frameLayout != null) {
            frameLayout.animate().alpha(0.0f).setDuration(150L).scaleX(0.6f).scaleY(0.6f).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$close$13() {
        this.resourcesProvider = null;
    }

    public void clearDelegate(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
        if (this.delegate == contentPreviewViewerDelegate) {
            this.currentDocument = null;
            this.currentStickerSet = null;
            this.currentQuery = null;
            this.delegate = null;
            this.resourcesProvider = null;
            reset();
        }
    }

    public void destroy() {
        this.isVisible = false;
        this.delegate = null;
        this.currentDocument = null;
        this.currentQuery = null;
        this.currentStickerSet = null;
        if (this.parentActivity == null || this.windowView == null) {
            return;
        }
        Bitmap bitmap = this.blurrBitmap;
        if (bitmap != null) {
            bitmap.recycle();
            this.blurrBitmap = null;
        }
        this.blurProgress = 0.0f;
        this.menuVisible = false;
        try {
            if (this.windowView.getParent() != null) {
                ((WindowManager) this.parentActivity.getSystemService("window")).removeViewImmediate(this.windowView);
            }
            this.windowView = null;
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
        Instance = null;
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 8);
    }

    private float rubberYPoisition(float f, float f2) {
        return (-((1.0f - (1.0f / (((Math.abs(f) * 0.55f) / f2) + 1.0f))) * f2)) * (f >= 0.0f ? -1.0f : 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003a  */
    @SuppressLint({"DrawAllocation"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDraw(Canvas canvas) {
        float fMin;
        int iMin;
        Drawable drawable;
        if (this.containerView == null || this.backgroundDrawable == null) {
            return;
        }
        if (this.menuVisible && this.blurrBitmap == null) {
            prepareBlurBitmap();
        }
        if (this.blurrBitmap != null) {
            boolean z = this.menuVisible;
            if (z) {
                float f = this.blurProgress;
                if (f != 1.0f) {
                    float f2 = f + 0.13333334f;
                    this.blurProgress = f2;
                    if (f2 > 1.0f) {
                        this.blurProgress = 1.0f;
                    }
                    this.containerView.invalidate();
                } else if (!z) {
                    float f3 = this.blurProgress;
                    if (f3 != 0.0f) {
                        float f4 = f3 - 0.13333334f;
                        this.blurProgress = f4;
                        if (f4 < 0.0f) {
                            this.blurProgress = 0.0f;
                        }
                        this.containerView.invalidate();
                    }
                }
                float f5 = this.blurProgress;
                if (f5 != 0.0f && this.blurrBitmap != null) {
                    this.paint.setAlpha((int) (f5 * 255.0f));
                    if (this.paint.getAlpha() != 255) {
                        canvas.drawColor(Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundGray, this.resourcesProvider), this.blurProgress));
                    }
                    canvas.drawPaint(this.paint);
                }
            }
        }
        this.backgroundDrawable.setAlpha((int) (this.showProgress * 180.0f));
        this.backgroundDrawable.setBounds(0, 0, this.containerView.getWidth(), this.containerView.getHeight());
        this.backgroundDrawable.draw(canvas);
        canvas.save();
        Insets insets = this.lastInsets;
        int i = insets.bottom;
        int i2 = insets.top;
        int i3 = i + i2;
        if (this.currentContentType == 1) {
            iMin = Math.min(this.containerView.getWidth(), this.containerView.getHeight() - i3) - AndroidUtilities.dp(40.0f);
        } else {
            boolean z2 = this.drawEffect;
            FrameLayoutDrawer frameLayoutDrawer = this.containerView;
            if (z2) {
                fMin = Math.min(frameLayoutDrawer.getWidth(), this.containerView.getHeight() - i3) - AndroidUtilities.dpf2(40.0f);
            } else {
                fMin = Math.min(frameLayoutDrawer.getWidth(), this.containerView.getHeight() - i3) / 1.8f;
            }
            iMin = (int) fMin;
        }
        float fMax = Math.max((iMin / 2) + i2 + (this.stickerEmojiLayout != null ? AndroidUtilities.dp(40.0f) : 0), ((this.containerView.getHeight() - i3) - this.keyboardHeight) / 2);
        if (this.drawEffect) {
            fMax += AndroidUtilities.dp(40.0f);
        }
        canvas.translate(this.containerView.getWidth() / 2, this.moveY + fMax);
        int i4 = (int) (iMin * ((this.showProgress * 0.8f) / 0.8f));
        if (this.currentContentType == 3) {
            canvas.translate(0.0f, AndroidUtilities.dp(70.0f));
        }
        boolean z3 = this.drawEffect;
        ImageReceiver imageReceiver = this.centerImage;
        if (z3) {
            float f6 = i4;
            float f7 = 0.6669f * f6;
            imageReceiver.setAlpha(this.showProgress);
            float f8 = f6 - f7;
            float f9 = f6 / 2.0f;
            this.centerImage.setImageCoords((f8 - f9) - (0.0546875f * f6), (f8 / 2.0f) - f9, f7, f7);
            this.centerImage.draw(canvas);
            this.effectImage.setAlpha(this.showProgress);
            float f10 = (-i4) / 2.0f;
            this.effectImage.setImageCoords(f10, f10, f6, f6);
            this.effectImage.draw(canvas);
        } else {
            imageReceiver.setAlpha(this.showProgress);
            float f11 = (-i4) / 2.0f;
            float f12 = i4;
            this.centerImage.setImageCoords(f11, f11, f12, f12);
            this.centerImage.draw(canvas);
        }
        if (this.paintingOverlay != null) {
            canvas.save();
            float f13 = (-i4) / 2.0f;
            canvas.translate(f13, f13);
            float f14 = i4;
            canvas.scale(f14 / this.paintingOverlay.getWidth(), f14 / this.paintingOverlay.getHeight());
            this.paintingOverlay.setAlpha(this.showProgress);
            if (this.paintingOverlayClipPath == null) {
                this.paintingOverlayClipPath = new Path();
            }
            this.paintingOverlayClipPath.rewind();
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(0.0f, 0.0f, this.paintingOverlay.getWidth(), this.paintingOverlay.getHeight());
            float f15 = f14 / 8.0f;
            this.paintingOverlayClipPath.addRoundRect(rectF, f15, f15, Path.Direction.CW);
            canvas.clipPath(this.paintingOverlayClipPath);
            this.paintingOverlay.draw(canvas);
            canvas.restore();
        }
        if (this.currentContentType == 1 && !this.isPhotoEditor && (drawable = this.slideUpDrawable) != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = this.slideUpDrawable.getIntrinsicHeight();
            int iDp = (int) (this.centerImage.getDrawRegion().top - AndroidUtilities.dp(((this.currentMoveY / AndroidUtilities.dp(60.0f)) * 6.0f) + 17.0f));
            this.slideUpDrawable.setAlpha((int) ((1.0f - this.currentMoveYProgress) * 255.0f));
            this.slideUpDrawable.setBounds((-intrinsicWidth) / 2, (-intrinsicHeight) + iDp, intrinsicWidth / 2, iDp);
            this.slideUpDrawable.draw(canvas);
        }
        if (this.stickerEmojiLayout != null) {
            if (this.drawEffect) {
                canvas.translate((-r0.getWidth()) / 2.0f, ((-this.effectImage.getImageHeight()) / 2.0f) - AndroidUtilities.dp(30.0f));
            } else {
                canvas.translate((-r0.getWidth()) / 2.0f, ((-this.centerImage.getImageHeight()) / 2.0f) - AndroidUtilities.dp(30.0f));
            }
            textPaint.setAlpha((int) (this.showProgress * 255.0f));
            this.stickerEmojiLayout.draw(canvas);
        }
        canvas.restore();
        boolean z4 = this.isVisible;
        float f16 = this.showProgress;
        if (z4) {
            if (f16 != 1.0f) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j = jCurrentTimeMillis - this.lastUpdateTime;
                this.lastUpdateTime = jCurrentTimeMillis;
                this.showProgress += j / 120.0f;
                this.containerView.invalidate();
                if (this.showProgress > 1.0f) {
                    this.showProgress = 1.0f;
                    return;
                }
                return;
            }
            return;
        }
        if (f16 != 0.0f) {
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            long j2 = jCurrentTimeMillis2 - this.lastUpdateTime;
            this.lastUpdateTime = jCurrentTimeMillis2;
            this.showProgress -= j2 / 120.0f;
            this.containerView.invalidate();
            if (this.showProgress < 0.0f) {
                this.showProgress = 0.0f;
            }
            if (this.showProgress == 0.0f) {
                this.centerImage.setImageBitmap((Drawable) null);
                AndroidUtilities.unlockOrientation(this.parentActivity);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda16
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onDraw$14();
                    }
                });
                Bitmap bitmap = this.blurrBitmap;
                if (bitmap != null) {
                    bitmap.recycle();
                    this.blurrBitmap = null;
                }
                AndroidUtilities.updateViewVisibilityAnimated(this.unlockPremiumView, false, 1.0f, false);
                this.blurProgress = 0.0f;
                try {
                    if (this.windowView.getParent() != null) {
                        ((WindowManager) this.parentActivity.getSystemService("window")).removeView(this.windowView);
                    }
                } catch (Exception e) {
                    FileLog.m1040e(e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDraw$14() {
        this.centerImage.setImageBitmap((Bitmap) null);
        PaintingOverlay paintingOverlay = this.paintingOverlay;
        if (paintingOverlay != null) {
            paintingOverlay.reset();
            this.containerView.removeView(this.paintingOverlay);
            this.paintingOverlay = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    private void prepareBlurBitmap() {
        if (this.parentActivity == null || this.preparingBitmap) {
            return;
        }
        this.preparingBitmap = true;
        this.centerImage.setVisible(false, false);
        ScrimOptions.makeGlobalBlurBitmaps(new Utilities.Callback2() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda17
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$prepareBlurBitmap$15((Bitmap) obj, (Bitmap) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareBlurBitmap$15(Bitmap bitmap, Bitmap bitmap2) {
        this.centerImage.setVisible(true, false);
        this.blurrBitmap = bitmap;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setScale(15.0f, 15.0f);
        bitmapShader.setLocalMatrix(matrix);
        if (Build.VERSION.SDK_INT >= 33) {
            bitmapShader.setFilterMode(2);
        }
        this.paint.setFilterBitmap(true);
        this.paint.setShader(bitmapShader);
        this.scrimBlur3SourceBitmap.setBitmap(bitmap2);
        Blur3Utils.checkBitmapSourceMatrixScale(this.scrimBlur3SourceBitmap, this.windowView);
        this.scrimBlur3Factory.invalidateAllLinkedViews();
        this.preparingBitmap = false;
        FrameLayoutDrawer frameLayoutDrawer = this.containerView;
        if (frameLayoutDrawer != null) {
            frameLayoutDrawer.invalidate();
        }
    }

    public boolean showMenuFor(View view) {
        if (!(view instanceof StickerEmojiCell)) {
            return false;
        }
        Activity activityFindActivity = AndroidUtilities.findActivity(view.getContext());
        if (activityFindActivity == null) {
            return true;
        }
        setParentActivity(activityFindActivity);
        StickerEmojiCell stickerEmojiCell = (StickerEmojiCell) view;
        View view2 = this.currentPreviewCell;
        if (view2 instanceof StickerEmojiCell) {
            ((StickerEmojiCell) view2).setScaled(false);
        } else if (view2 instanceof StickerCell) {
            ((StickerCell) view2).setScaled(false);
        } else if (view2 instanceof ContextLinkCell) {
            ((ContextLinkCell) view2).setScaled(false);
        }
        this.currentPreviewCell = stickerEmojiCell;
        TLRPC.Document sticker = stickerEmojiCell.getSticker();
        SendMessagesHelper.ImportingSticker stickerPath = stickerEmojiCell.getStickerPath();
        String strFindAnimatedEmojiEmoticon = MessageObject.findAnimatedEmojiEmoticon(stickerEmojiCell.getSticker(), null, Integer.valueOf(this.currentAccount));
        ContentPreviewViewerDelegate contentPreviewViewerDelegate = this.delegate;
        open(sticker, stickerPath, strFindAnimatedEmojiEmoticon, contentPreviewViewerDelegate != null ? contentPreviewViewerDelegate.getQuery(false) : null, null, 0, stickerEmojiCell.isRecent(), stickerEmojiCell.getParentObject(), this.resourcesProvider);
        AndroidUtilities.cancelRunOnUIThread(this.showSheetRunnable);
        AndroidUtilities.runOnUIThread(this.showSheetRunnable, 16L);
        stickerEmojiCell.setScaled(true);
        return true;
    }

    public void showCustomStickerActions(String str, VideoEditedInfo videoEditedInfo, View view, ArrayList<String> arrayList, ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
        Activity activityFindActivity = AndroidUtilities.findActivity(view.getContext());
        if (activityFindActivity == null) {
            return;
        }
        setParentActivity(activityFindActivity);
        setDelegate(contentPreviewViewerDelegate);
        SendMessagesHelper.ImportingSticker importingSticker = new SendMessagesHelper.ImportingSticker();
        importingSticker.path = str;
        importingSticker.videoEditedInfo = videoEditedInfo;
        this.selectedEmojis = arrayList;
        open(null, importingSticker, null, null, null, 3, false, null, new DarkThemeResourceProvider());
        AndroidUtilities.cancelRunOnUIThread(this.showSheetRunnable);
        AndroidUtilities.runOnUIThread(this.showSheetRunnable, 16L);
    }

    private void getMyStickersRemote(final TLRPC.TL_messages_getMyStickers tL_messages_getMyStickers, final List<TLRPC.StickerSetCovered> list) {
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getMyStickers, new RequestDelegate() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda10
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$getMyStickersRemote$17(list, tL_messages_getMyStickers, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMyStickersRemote$17(final List list, final TLRPC.TL_messages_getMyStickers tL_messages_getMyStickers, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getMyStickersRemote$16(tL_error, tLObject, list, tL_messages_getMyStickers);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMyStickersRemote$16(TLRPC.TL_error tL_error, TLObject tLObject, List list, TLRPC.TL_messages_getMyStickers tL_messages_getMyStickers) {
        if (tL_error == null && (tLObject instanceof TLRPC.TL_messages_myStickers)) {
            TLRPC.TL_messages_myStickers tL_messages_myStickers = (TLRPC.TL_messages_myStickers) tLObject;
            ArrayList<TLRPC.StickerSetCovered> arrayList = tL_messages_myStickers.sets;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TLRPC.StickerSetCovered stickerSetCovered = arrayList.get(i);
                i++;
                TLRPC.StickerSetCovered stickerSetCovered2 = stickerSetCovered;
                TLRPC.StickerSet stickerSet = stickerSetCovered2.set;
                if (!stickerSet.emojis && !stickerSet.masks) {
                    TLRPC.TL_inputStickerSetID tL_inputStickerSetID = new TLRPC.TL_inputStickerSetID();
                    tL_inputStickerSetID.id = stickerSetCovered2.set.id;
                    TLRPC.TL_messages_stickerSet stickerSet2 = MediaDataController.getInstance(this.currentAccount).getStickerSet((TLRPC.InputStickerSet) tL_inputStickerSetID, true);
                    if (stickerSet2 == null || stickerSet2.documents.size() < 120) {
                        list.add(stickerSetCovered2);
                    }
                }
            }
            if (tL_messages_myStickers.sets.size() == tL_messages_getMyStickers.limit) {
                ArrayList<TLRPC.StickerSetCovered> arrayList2 = tL_messages_myStickers.sets;
                tL_messages_getMyStickers.offset_id = arrayList2.get(arrayList2.size() - 1).set.id;
                getMyStickersRemote(tL_messages_getMyStickers, list);
            }
        }
    }

    public RecyclerListView createMyStickerPacksListView() {
        if (this.parentActivity == null) {
            return null;
        }
        final ArrayList arrayList = new ArrayList();
        arrayList.add(new TLRPC.TL_stickerSetNoCovered());
        TLRPC.TL_messages_getMyStickers tL_messages_getMyStickers = new TLRPC.TL_messages_getMyStickers();
        tL_messages_getMyStickers.limit = 100;
        getMyStickersRemote(tL_messages_getMyStickers, arrayList);
        RecyclerListView recyclerListView = new RecyclerListView(this.parentActivity) { // from class: org.telegram.ui.ContentPreviewViewer.5
            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            public void onMeasure(int i, int i2) {
                int size = View.MeasureSpec.getSize(i2);
                int iDp = AndroidUtilities.dp(4.0f) + (AndroidUtilities.dp(50.0f) * getAdapter().getItemCount());
                if (iDp <= size) {
                    size = iDp;
                }
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30));
            }
        };
        recyclerListView.setLayoutManager(new LinearLayoutManager(this.parentActivity));
        recyclerListView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: org.telegram.ui.ContentPreviewViewer.6
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                if (recyclerView.getChildAdapterPosition(view) == arrayList.size() - 1) {
                    rect.bottom = AndroidUtilities.dp(4.0f);
                }
            }
        });
        recyclerListView.setAdapter(new RecyclerListView.SelectionAdapter() { // from class: org.telegram.ui.ContentPreviewViewer.7
            @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return true;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                StickerPackNameView stickerPackNameView = new StickerPackNameView(viewGroup.getContext(), ContentPreviewViewer.this.resourcesProvider);
                stickerPackNameView.setLayoutParams(new RecyclerView.LayoutParams(-2, AndroidUtilities.dp(48.0f)));
                return new RecyclerListView.Holder(stickerPackNameView);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                ((StickerPackNameView) viewHolder.itemView).bind((TLRPC.StickerSetCovered) arrayList.get(i));
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return arrayList.size();
            }
        });
        return recyclerListView;
    }

    public static class StickerPackNameView extends LinearLayout {
        private TLRPC.StickerSetCovered cover;
        private final BackupImageView imageView;
        private final Theme.ResourcesProvider resourcesProvider;
        private final SimpleTextView textView;

        public StickerPackNameView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.textView = simpleTextView;
            simpleTextView.setTextSize(16);
            simpleTextView.setTextColor(-1);
            setOrientation(0);
            addView(backupImageView, LayoutHelper.createLinear(24, 24, 17, 17, 0, 17, 0));
            addView(simpleTextView, LayoutHelper.createLinear(-2, -2, 17, 0, 0, 12, 0));
        }

        public TLRPC.StickerSetCovered getCover() {
            return this.cover;
        }

        public void bind(TLRPC.StickerSetCovered stickerSetCovered) {
            this.cover = stickerSetCovered;
            boolean z = stickerSetCovered instanceof TLRPC.TL_stickerSetNoCovered;
            SimpleTextView simpleTextView = this.textView;
            if (z) {
                simpleTextView.setText(LocaleController.getString(C2807R.string.NewStickerPack));
                this.imageView.setImageResource(C2807R.drawable.msg_addbot);
                return;
            }
            simpleTextView.setText(stickerSetCovered.set.title);
            TLRPC.Document document = stickerSetCovered.cover;
            if (document != null) {
                TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 90);
                SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(stickerSetCovered.cover, Theme.key_windowBackgroundGray, 1.0f, 1.0f, this.resourcesProvider);
                if (svgThumb != null) {
                    BackupImageView backupImageView = this.imageView;
                    if (closestPhotoSizeWithSize != null) {
                        backupImageView.setImage(ImageLocation.getForDocument(closestPhotoSizeWithSize, stickerSetCovered.cover), (String) null, "webp", svgThumb, stickerSetCovered);
                        return;
                    } else {
                        backupImageView.setImage(ImageLocation.getForDocument(stickerSetCovered.cover), (String) null, "webp", svgThumb, stickerSetCovered);
                        return;
                    }
                }
                this.imageView.setImage(ImageLocation.getForDocument(closestPhotoSizeWithSize, stickerSetCovered.cover), (String) null, "webp", (Drawable) null, stickerSetCovered);
                return;
            }
            this.imageView.setImage((ImageLocation) null, (String) null, (ImageLocation) null, (String) null, (Drawable) null, (Object) 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissPopupWindow() {
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow != null) {
            actionBarPopupWindow.dismiss();
            this.popupWindow = null;
            return;
        }
        View view = this.popupLayout;
        if (view != null) {
            view.animate().alpha(0.0f).scaleX(0.8f).scaleY(0.8f).translationY(AndroidUtilities.dp(-12.0f)).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(320L).start();
            this.popupLayout = null;
            this.menuVisible = false;
            if (this.closeOnDismiss) {
                close();
            }
        }
    }
}
