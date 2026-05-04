package org.telegram.p029ui;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.utils.chats.ChatUtils;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
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
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p029ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.ContextLinkCell;
import org.telegram.p029ui.Cells.StickerCell;
import org.telegram.p029ui.Cells.StickerEmojiCell;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.AnimatedEmojiDrawable;
import org.telegram.p029ui.Components.AnimatedEmojiSpan;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.EmojiPacksAlert;
import org.telegram.p029ui.Components.EmojiView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.PaintingOverlay;
import org.telegram.p029ui.Components.Reactions.CustomEmojiReactionsWindow;
import org.telegram.p029ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p029ui.Components.ReactionsContainerLayout;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.StickersDialogs;
import org.telegram.p029ui.Components.SuggestEmojiView;
import org.telegram.p029ui.ContentPreviewViewer;
import org.telegram.p029ui.Stories.DarkThemeResourceProvider;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public class ContentPreviewViewer {
    private static volatile ContentPreviewViewer Instance;
    private static TextPaint textPaint;
    private float blurProgress;
    private Bitmap blurrBitmap;
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
    private float finalMoveY;
    private SendMessagesHelper.ImportingSticker importingSticker;
    private TLRPC.BotInlineResult inlineResult;
    private boolean isPhotoEditor;
    private boolean isRecentSticker;
    private boolean isStickerEditor;
    private WindowInsets lastInsets;
    private float lastTouchY;
    private long lastUpdateTime;
    private boolean menuVisible;
    private Runnable openPreviewRunnable;
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
    private ArrayList selectedEmojis;
    private float showProgress;
    private Drawable slideUpDrawable;
    private float startMoveY;
    private int startX;
    private int startY;
    private StaticLayout stickerEmojiLayout;
    private TLRPC.TL_messages_stickerSet stickerSetForCustomSticker;
    private UnlockPremiumView unlockPremiumView;
    private WindowManager.LayoutParams windowLayoutParams;
    private FrameLayout windowView;
    private float moveY = 0.0f;
    private ColorDrawable backgroundDrawable = new ColorDrawable(1895825408);
    public ImageReceiver centerImage = new ImageReceiver();
    private ImageReceiver effectImage = new ImageReceiver();
    private boolean isVisible = false;
    private int keyboardHeight = AndroidUtilities.m1124dp(200.0f);
    private Paint paint = new Paint(1);
    private final Runnable showSheetRunnable = new RunnableC54741();

    /* JADX INFO: loaded from: classes6.dex */
    private class FrameLayoutDrawer extends FrameLayout {
        public FrameLayoutDrawer(Context context) {
            super(context);
            setWillNotDraw(false);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            ContentPreviewViewer.this.onDraw(canvas);
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            if (view instanceof PaintingOverlay) {
                return false;
            }
            return super.drawChild(canvas, view, j);
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public interface ContentPreviewViewerDelegate {
        void addCaptionToGif(Object obj, Object obj2, boolean z, int i, int i2);

        void addToFavoriteSelected(String str);

        boolean can();

        boolean canAddCaption(TLRPC.Document document);

        boolean canDeleteSticker(TLRPC.Document document);

        boolean canEditSticker();

        boolean canSchedule();

        boolean canSendSticker();

        Boolean canSetAsStatus(TLRPC.Document document);

        void copyEmoji(TLRPC.Document document);

        void deleteSticker(TLRPC.Document document);

        void editSticker(TLRPC.Document document);

        long getDialogId();

        String getQuery(boolean z);

        void gifAddedOrDeleted();

        boolean isInScheduleMode();

        boolean isPhotoEditor();

        boolean isReplacedSticker();

        boolean isSettingIntroSticker();

        boolean isStickerEditor();

        boolean needCopy(TLRPC.Document document);

        boolean needMenu();

        boolean needOpen();

        boolean needRemove();

        boolean needRemoveFromRecent(TLRPC.Document document);

        boolean needSend(int i);

        void newStickerPackSelected(CharSequence charSequence, String str, Utilities.Callback callback);

        void openSet(TLRPC.InputStickerSet inputStickerSet, boolean z);

        void remove(SendMessagesHelper.ImportingSticker importingSticker);

        void removeFromRecent(TLRPC.Document document);

        void resetTouch();

        void sendEmoji(TLRPC.Document document);

        void sendGif(Object obj, Object obj2, boolean z, int i, int i2);

        void sendSticker(String str);

        void sendSticker(TLRPC.Document document, String str, Object obj, boolean z, int i, int i2);

        void setAsBadge(TLRPC.Document document);

        void setAsEmojiStatus(TLRPC.Document document, Integer num);

        void setIntroSticker(String str);

        void stickerSetSelected(TLRPC.StickerSet stickerSet, String str);

        /* JADX INFO: renamed from: org.telegram.ui.ContentPreviewViewer$ContentPreviewViewerDelegate$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static boolean $default$can(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
                return true;
            }

            public static void $default$openSet(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC.InputStickerSet inputStickerSet, boolean z) {
            }

            public static boolean $default$needSend(ContentPreviewViewerDelegate contentPreviewViewerDelegate, int i) {
                return false;
            }

            public static void $default$stickerSetSelected(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC.StickerSet stickerSet, String str) {
            }

            public static void $default$newStickerPackSelected(ContentPreviewViewerDelegate contentPreviewViewerDelegate, CharSequence charSequence, String str, Utilities.Callback callback) {
            }

            public static void $default$setIntroSticker(ContentPreviewViewerDelegate contentPreviewViewerDelegate, String str) {
            }

            public static void $default$addToFavoriteSelected(ContentPreviewViewerDelegate contentPreviewViewerDelegate, String str) {
            }

            public static void $default$sendSticker(ContentPreviewViewerDelegate contentPreviewViewerDelegate, String str) {
            }

            public static void $default$sendSticker(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC.Document document, String str, Object obj, boolean z, int i, int i2) {
            }

            public static void $default$sendGif(ContentPreviewViewerDelegate contentPreviewViewerDelegate, Object obj, Object obj2, boolean z, int i, int i2) {
            }

            public static void $default$sendEmoji(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC.Document document) {
            }

            public static boolean $default$canSchedule(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
                return false;
            }

            public static boolean $default$isInScheduleMode(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
                return false;
            }

            public static boolean $default$needRemove(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
                return false;
            }

            public static void $default$remove(ContentPreviewViewerDelegate contentPreviewViewerDelegate, SendMessagesHelper.ImportingSticker importingSticker) {
            }

            public static boolean $default$canDeleteSticker(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC.Document document) {
                return false;
            }

            public static void $default$deleteSticker(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC.Document document) {
            }

            public static boolean $default$canAddCaption(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC.Document document) {
                return false;
            }

            public static void $default$addCaptionToGif(ContentPreviewViewerDelegate contentPreviewViewerDelegate, Object obj, Object obj2, boolean z, int i, int i2) {
            }

            public static boolean $default$canEditSticker(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
                return false;
            }

            public static void $default$editSticker(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC.Document document) {
            }

            public static boolean $default$isReplacedSticker(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
                return false;
            }

            public static boolean $default$canSendSticker(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
                return true;
            }

            public static boolean $default$isSettingIntroSticker(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
                return false;
            }

            public static String $default$getQuery(ContentPreviewViewerDelegate contentPreviewViewerDelegate, boolean z) {
                return null;
            }

            public static boolean $default$needOpen(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
                return true;
            }

            public static void $default$gifAddedOrDeleted(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
            }

            public static boolean $default$needMenu(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
                return true;
            }

            public static Boolean $default$canSetAsStatus(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC.Document document) {
                return null;
            }

            public static void $default$setAsEmojiStatus(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC.Document document, Integer num) {
            }

            public static void $default$setAsBadge(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC.Document document) {
            }

            public static boolean $default$needCopy(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC.Document document) {
                return false;
            }

            public static void $default$copyEmoji(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC.Document document) {
            }

            public static void $default$resetTouch(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
            }

            public static boolean $default$needRemoveFromRecent(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC.Document document) {
                return false;
            }

            public static void $default$removeFromRecent(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC.Document document) {
            }

            public static boolean $default$isPhotoEditor(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
                return false;
            }

            public static boolean $default$isStickerEditor(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
                return false;
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.ContentPreviewViewer$1 */
    class RunnableC54741 implements Runnable {
        RunnableC54741() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$2(View view, int i) {
            TLRPC.StickerSetCovered cover = ((StickerPackNameView) view).getCover();
            CustomEmojiReactionsWindow reactionsWindow = ContentPreviewViewer.this.reactionsLayout.getReactionsWindow();
            if (reactionsWindow != null && reactionsWindow.isShowing()) {
                reactionsWindow.dismiss();
            }
            if (cover instanceof TLRPC.TL_stickerSetNoCovered) {
                StickersDialogs.showNameEditorDialog(null, ContentPreviewViewer.this.resourcesProvider, ContentPreviewViewer.this.containerView.getContext(), new Utilities.Callback2() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda7
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$run$1((CharSequence) obj, (Utilities.Callback) obj2);
                    }
                });
                return;
            }
            if (ContentPreviewViewer.this.delegate != null) {
                ContentPreviewViewer.this.delegate.stickerSetSelected(cover.set, TextUtils.join(_UrlKt.FRAGMENT_ENCODE_SET, ContentPreviewViewer.this.selectedEmojis));
            }
            ContentPreviewViewer.this.dismissPopupWindow();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(CharSequence charSequence, final Utilities.Callback callback) {
            if (ContentPreviewViewer.this.delegate != null) {
                ContentPreviewViewer.this.delegate.newStickerPackSelected(charSequence, TextUtils.join(_UrlKt.FRAGMENT_ENCODE_SET, ContentPreviewViewer.this.selectedEmojis), callback != null ? new Utilities.Callback() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda10
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$run$0(callback, (Boolean) obj);
                    }
                } : null);
                if (callback == null) {
                    ContentPreviewViewer.this.dismissPopupWindow();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(Utilities.Callback callback, Boolean bool) {
            callback.run(bool);
            if (bool.booleanValue()) {
                ContentPreviewViewer.this.dismissPopupWindow();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$3(ArrayList arrayList, RecyclerListView recyclerListView, LinearLayout linearLayout, ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout, View view) {
            if (ContentPreviewViewer.this.parentActivity == null) {
                return;
            }
            int iIntValue = ((Integer) view.getTag()).intValue();
            if (((Integer) arrayList.get(iIntValue)).intValue() == 2) {
                if (ContentPreviewViewer.this.stickerSetForCustomSticker == null) {
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
            if (ContentPreviewViewer.this.delegate != null) {
                if (((Integer) arrayList.get(iIntValue)).intValue() == 1) {
                    ContentPreviewViewer.this.delegate.addToFavoriteSelected(TextUtils.join(_UrlKt.FRAGMENT_ENCODE_SET, ContentPreviewViewer.this.selectedEmojis));
                } else if (((Integer) arrayList.get(iIntValue)).intValue() == 0) {
                    if (ContentPreviewViewer.this.delegate.isSettingIntroSticker()) {
                        ContentPreviewViewer.this.delegate.setIntroSticker(TextUtils.join(_UrlKt.FRAGMENT_ENCODE_SET, ContentPreviewViewer.this.selectedEmojis));
                    } else {
                        ContentPreviewViewer.this.delegate.sendSticker(TextUtils.join(_UrlKt.FRAGMENT_ENCODE_SET, ContentPreviewViewer.this.selectedEmojis));
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
            int stableInsetTop;
            int stableInsetBottom;
            int stableInsetTop2;
            int stableInsetBottom2;
            int stableInsetTop3;
            int stableInsetBottom3;
            float fMin;
            int iMin;
            int stableInsetTop4;
            int stableInsetBottom4;
            int i = 0;
            if (ContentPreviewViewer.this.parentActivity == null || ContentPreviewViewer.this.isPhotoEditor) {
                return;
            }
            ContentPreviewViewer.this.closeOnDismiss = true;
            final ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout2 = new ActionBarPopupWindow.ActionBarPopupWindowLayout(ContentPreviewViewer.this.containerView.getContext(), C2888R.drawable.popup_fixed_alert4, ContentPreviewViewer.this.resourcesProvider, ContentPreviewViewer.this.currentContentType == 3 ? 1 : 0);
            if (ContentPreviewViewer.this.currentContentType == 3) {
                ArrayList arrayList = new ArrayList();
                final ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                if (ContentPreviewViewer.this.stickerSetForCustomSticker == null) {
                    if (ContentPreviewViewer.this.delegate != null && ContentPreviewViewer.this.delegate.isSettingIntroSticker()) {
                        arrayList.add(LocaleController.getString(C2888R.string.SetIntroSticker));
                        arrayList3.add(Integer.valueOf(C2888R.drawable.menu_sticker_add));
                        arrayList2.add(0);
                    } else {
                        if (ContentPreviewViewer.this.delegate.canSendSticker()) {
                            arrayList.add(LocaleController.getString(C2888R.string.SendStickerPreview));
                            arrayList3.add(Integer.valueOf(C2888R.drawable.msg_send));
                            arrayList2.add(0);
                        }
                        arrayList.add(LocaleController.getString(C2888R.string.AddToFavorites));
                        arrayList3.add(Integer.valueOf(C2888R.drawable.msg_fave));
                        arrayList2.add(1);
                    }
                }
                if (ContentPreviewViewer.this.delegate == null || !ContentPreviewViewer.this.delegate.isSettingIntroSticker()) {
                    arrayList.add(LocaleController.getString((ContentPreviewViewer.this.delegate == null || !ContentPreviewViewer.this.delegate.isReplacedSticker()) ? C2888R.string.AddToStickerPack : C2888R.string.StickersReplaceSticker));
                    arrayList3.add(Integer.valueOf((ContentPreviewViewer.this.delegate == null || !ContentPreviewViewer.this.delegate.isReplacedSticker()) ? C2888R.drawable.menu_sticker_add : C2888R.drawable.msg_replace));
                    arrayList2.add(2);
                }
                ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem((Context) ContentPreviewViewer.this.parentActivity, true, false, ContentPreviewViewer.this.resourcesProvider);
                actionBarMenuSubItem.setItemHeight(44);
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(C2888R.string.Back), C2888R.drawable.msg_arrow_back);
                actionBarMenuSubItem.getTextView().setPadding(LocaleController.isRTL ? 0 : AndroidUtilities.m1124dp(40.0f), 0, LocaleController.isRTL ? AndroidUtilities.m1124dp(40.0f) : 0, 0);
                FrameLayout frameLayout = new FrameLayout(ContentPreviewViewer.this.containerView.getContext());
                final LinearLayout linearLayout = new LinearLayout(ContentPreviewViewer.this.containerView.getContext());
                linearLayout.setBackgroundColor(ContentPreviewViewer.this.getThemedColor(Theme.key_actionBarDefaultSubmenuBackground));
                linearLayout.setOrientation(1);
                final RecyclerListView recyclerListViewCreateMyStickerPacksListView = ContentPreviewViewer.this.createMyStickerPacksListView();
                recyclerListViewCreateMyStickerPacksListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda0
                    @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
                    public final void onItemClick(View view, int i2) {
                        this.f$0.lambda$run$2(view, i2);
                    }
                });
                frameLayout.addView(actionBarMenuSubItem);
                linearLayout.addView(frameLayout);
                linearLayout.addView(new ActionBarPopupWindow.GapView(ContentPreviewViewer.this.containerView.getContext(), ContentPreviewViewer.this.resourcesProvider), LayoutHelper.createLinear(-1, 8));
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$run$3(arrayList2, recyclerListViewCreateMyStickerPacksListView, linearLayout, actionBarPopupWindowLayout2, view);
                    }
                };
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    ActionBarMenuSubItem actionBarMenuSubItemAddItem = ActionBarMenuItem.addItem(actionBarPopupWindowLayout2, ((Integer) arrayList3.get(i2)).intValue(), (CharSequence) arrayList.get(i2), false, ContentPreviewViewer.this.resourcesProvider);
                    actionBarMenuSubItemAddItem.setTag(Integer.valueOf(i2));
                    actionBarMenuSubItemAddItem.setOnClickListener(onClickListener);
                }
                actionBarPopupWindowLayout2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(1000.0f), Integer.MIN_VALUE));
                linearLayout.addView(recyclerListViewCreateMyStickerPacksListView, new LinearLayout.LayoutParams(actionBarPopupWindowLayout2.getMeasuredWidth() - AndroidUtilities.m1124dp(16.0f), (int) (actionBarPopupWindowLayout2.getMeasuredHeight() * 1.5f)));
                actionBarPopupWindowLayout2.addViewToSwipeBack(linearLayout);
                frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        actionBarPopupWindowLayout2.getSwipeBack().closeForeground();
                    }
                });
                if (ContentPreviewViewer.this.lastInsets != null) {
                    stableInsetBottom4 = ContentPreviewViewer.this.lastInsets.getStableInsetBottom() + ContentPreviewViewer.this.lastInsets.getStableInsetTop();
                    stableInsetTop4 = ContentPreviewViewer.this.lastInsets.getStableInsetTop();
                } else {
                    stableInsetTop4 = AndroidUtilities.statusBarHeight;
                    stableInsetBottom4 = 0;
                }
                int iMin2 = ((int) (Math.min(ContentPreviewViewer.this.containerView.getWidth(), ContentPreviewViewer.this.containerView.getHeight() - stableInsetBottom4) / 1.8f)) / 2;
                ContentPreviewViewer.this.containerView.addView(actionBarPopupWindowLayout2, LayoutHelper.createFrame(-2, -2.0f, 49, 0.0f, (((int) ((ContentPreviewViewer.this.moveY + Math.max(stableInsetTop4 + iMin2, ((ContentPreviewViewer.this.containerView.getHeight() - stableInsetBottom4) - ContentPreviewViewer.this.keyboardHeight) / 2)) + iMin2)) + AndroidUtilities.m1124dp(84.0f)) / AndroidUtilities.density, 0.0f, 0.0f));
                ContentPreviewViewer.this.popupLayout = actionBarPopupWindowLayout2;
                ContentPreviewViewer.this.popupLayout.setTranslationY(-AndroidUtilities.m1124dp(12.0f));
                ContentPreviewViewer.this.popupLayout.setAlpha(0.0f);
                ContentPreviewViewer.this.popupLayout.setScaleX(0.8f);
                ContentPreviewViewer.this.popupLayout.setScaleY(0.8f);
                ContentPreviewViewer.this.popupLayout.setPivotY(0.0f);
                ContentPreviewViewer.this.popupLayout.setPivotX(ContentPreviewViewer.this.popupLayout.getMeasuredWidth() / 2.0f);
                ContentPreviewViewer.this.popupLayout.animate().translationY(0.0f).alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(320L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
                ContentPreviewViewer.this.showEmojiSelectorForStickers();
                ContentPreviewViewer.this.menuVisible = true;
                ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.this;
                contentPreviewViewer.runLongPressHaptic(contentPreviewViewer.containerView);
                ContentPreviewViewer.this.containerView.invalidate();
                actionBarPopupWindowLayout = actionBarPopupWindowLayout2;
            } else {
                ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout3 = actionBarPopupWindowLayout2;
                if (ContentPreviewViewer.this.currentContentType == 0) {
                    if (MessageObject.isPremiumSticker(ContentPreviewViewer.this.currentDocument) && !AccountInstance.getInstance(ContentPreviewViewer.this.currentAccount).getUserConfig().isPremium()) {
                        ContentPreviewViewer.this.showUnlockPremiumView();
                        ContentPreviewViewer.this.menuVisible = true;
                        ContentPreviewViewer.this.containerView.invalidate();
                        ContentPreviewViewer contentPreviewViewer2 = ContentPreviewViewer.this;
                        contentPreviewViewer2.runLongPressHaptic(contentPreviewViewer2.containerView);
                        return;
                    }
                    boolean zIsStickerInFavorites = MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).isStickerInFavorites(ContentPreviewViewer.this.currentDocument);
                    ArrayList arrayList4 = new ArrayList();
                    ArrayList arrayList5 = new ArrayList();
                    int i3 = 8;
                    ArrayList arrayList6 = new ArrayList();
                    if (ContentPreviewViewer.this.delegate != null) {
                        if (ContentPreviewViewer.this.delegate.needSend(ContentPreviewViewer.this.currentContentType) && !ContentPreviewViewer.this.delegate.isInScheduleMode()) {
                            arrayList4.add(LocaleController.getString(C2888R.string.SendStickerPreview));
                            arrayList6.add(Integer.valueOf(C2888R.drawable.msg_send));
                            arrayList5.add(0);
                        }
                        if (ContentPreviewViewer.this.delegate.needSend(ContentPreviewViewer.this.currentContentType) && !ContentPreviewViewer.this.delegate.isInScheduleMode()) {
                            arrayList4.add(LocaleController.getString(C2888R.string.SendWithoutSound));
                            arrayList6.add(Integer.valueOf(C2888R.drawable.input_notify_off));
                            arrayList5.add(6);
                        }
                        if (ContentPreviewViewer.this.delegate.canSchedule()) {
                            arrayList4.add(LocaleController.getString(C2888R.string.Schedule));
                            arrayList6.add(Integer.valueOf(C2888R.drawable.msg_autodelete));
                            arrayList5.add(3);
                        }
                        if (ContentPreviewViewer.this.currentStickerSet != null && !(ContentPreviewViewer.this.currentStickerSet instanceof TLRPC.TL_inputStickerSetEmpty) && ContentPreviewViewer.this.delegate.needOpen()) {
                            arrayList4.add(LocaleController.formatString("ViewPackPreview", C2888R.string.ViewPackPreview, new Object[0]));
                            arrayList6.add(Integer.valueOf(C2888R.drawable.msg_media));
                            arrayList5.add(1);
                        }
                        if (MessageObject.isStickerDocument(ContentPreviewViewer.this.currentDocument)) {
                            arrayList4.add(LocaleController.formatString("SaveToGallery", C2888R.string.SaveToGallery, new Object[0]));
                            arrayList6.add(Integer.valueOf(C2888R.drawable.msg_gallery));
                            arrayList5.add(10);
                        }
                        if (ContentPreviewViewer.this.delegate.needRemove()) {
                            arrayList4.add(LocaleController.getString(C2888R.string.ImportStickersRemoveMenu));
                            arrayList6.add(Integer.valueOf(C2888R.drawable.msg_delete));
                            arrayList5.add(5);
                        }
                    }
                    if (!MessageObject.isMaskDocument(ContentPreviewViewer.this.currentDocument) && (zIsStickerInFavorites || (MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).canAddStickerToFavorites() && MessageObject.isStickerHasSet(ContentPreviewViewer.this.currentDocument)))) {
                        arrayList4.add(LocaleController.getString(zIsStickerInFavorites ? C2888R.string.DeleteFromFavorites : C2888R.string.AddToFavorites));
                        arrayList6.add(Integer.valueOf(zIsStickerInFavorites ? C2888R.drawable.msg_unfave : C2888R.drawable.msg_fave));
                        arrayList5.add(2);
                    }
                    if (ContentPreviewViewer.this.isRecentSticker) {
                        arrayList4.add(LocaleController.getString(C2888R.string.DeleteFromRecent));
                        arrayList6.add(Integer.valueOf(C2888R.drawable.msg_delete));
                        arrayList5.add(4);
                    }
                    if (ContentPreviewViewer.this.currentStickerSet != null && ContentPreviewViewer.this.currentDocument != null) {
                        TLRPC.TL_messages_stickerSet stickerSet = MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).getStickerSet(ContentPreviewViewer.this.currentStickerSet, true);
                        if (stickerSet != null && ContentPreviewViewer.this.delegate != null && ContentPreviewViewer.this.delegate.canEditSticker()) {
                            TLRPC.StickerSet stickerSet2 = stickerSet.set;
                            if (!stickerSet2.emojis && !stickerSet2.masks) {
                                arrayList4.add(LocaleController.getString(C2888R.string.EditSticker));
                                arrayList6.add(Integer.valueOf(C2888R.drawable.msg_edit));
                                arrayList5.add(7);
                            }
                        }
                        if (stickerSet != null && stickerSet.set.creator && ContentPreviewViewer.this.delegate != null && ContentPreviewViewer.this.delegate.canDeleteSticker(ContentPreviewViewer.this.currentDocument)) {
                            arrayList4.add(LocaleController.getString(C2888R.string.DeleteSticker));
                            arrayList6.add(Integer.valueOf(C2888R.drawable.msg_delete));
                            arrayList5.add(8);
                        }
                    }
                    if (arrayList4.isEmpty()) {
                        return;
                    }
                    ContentPreviewViewer.this.menuVisible = true;
                    ContentPreviewViewer.this.containerView.invalidate();
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(arrayList5, zIsStickerInFavorites);
                    int i4 = 0;
                    while (i4 < arrayList4.size()) {
                        ActionBarMenuSubItem actionBarMenuSubItemAddItem2 = ActionBarMenuItem.addItem(actionBarPopupWindowLayout3, ((Integer) arrayList6.get(i4)).intValue(), (CharSequence) arrayList4.get(i4), false, ContentPreviewViewer.this.resourcesProvider);
                        actionBarMenuSubItemAddItem2.setTag(Integer.valueOf(i4));
                        actionBarMenuSubItemAddItem2.setOnClickListener(anonymousClass1);
                        int i5 = i3;
                        if (((Integer) arrayList5.get(i4)).intValue() == i5) {
                            int themedColor = ContentPreviewViewer.this.getThemedColor(Theme.key_text_RedBold);
                            actionBarMenuSubItemAddItem2.setColors(themedColor, themedColor);
                            actionBarMenuSubItemAddItem2.setSelectorColor(Theme.multAlpha(themedColor, 0.1f));
                        }
                        i4++;
                        i3 = i5;
                    }
                    int i6 = -2;
                    ContentPreviewViewer.this.popupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout3, i6, i6) { // from class: org.telegram.ui.ContentPreviewViewer.1.2
                        @Override // org.telegram.p029ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
                        public void dismiss() {
                            super.dismiss();
                            ContentPreviewViewer contentPreviewViewer3 = ContentPreviewViewer.this;
                            contentPreviewViewer3.popupWindow = null;
                            contentPreviewViewer3.menuVisible = false;
                            if (ContentPreviewViewer.this.closeOnDismiss) {
                                ContentPreviewViewer.this.close();
                            }
                            if (ContentPreviewViewer.this.currentPreviewCell != null) {
                                if (ContentPreviewViewer.this.currentPreviewCell instanceof StickerEmojiCell) {
                                    ((StickerEmojiCell) ContentPreviewViewer.this.currentPreviewCell).setScaled(false);
                                } else if (ContentPreviewViewer.this.currentPreviewCell instanceof StickerCell) {
                                    ((StickerCell) ContentPreviewViewer.this.currentPreviewCell).setScaled(false);
                                } else if (ContentPreviewViewer.this.currentPreviewCell instanceof ContextLinkCell) {
                                    ((ContextLinkCell) ContentPreviewViewer.this.currentPreviewCell).setScaled(false);
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
                    ContentPreviewViewer.this.popupWindow.setAnimationStyle(C2888R.style.PopupContextAnimation);
                    ContentPreviewViewer.this.popupWindow.setFocusable(true);
                    actionBarPopupWindowLayout3.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(1000.0f), Integer.MIN_VALUE));
                    ContentPreviewViewer.this.popupWindow.setInputMethodMode(2);
                    ContentPreviewViewer.this.popupWindow.getContentView().setFocusableInTouchMode(true);
                    if (ContentPreviewViewer.this.lastInsets != null) {
                        stableInsetBottom3 = ContentPreviewViewer.this.lastInsets.getStableInsetBottom() + ContentPreviewViewer.this.lastInsets.getStableInsetTop();
                        stableInsetTop3 = ContentPreviewViewer.this.lastInsets.getStableInsetTop();
                    } else {
                        stableInsetTop3 = AndroidUtilities.statusBarHeight;
                        stableInsetBottom3 = 0;
                    }
                    if (ContentPreviewViewer.this.currentContentType == 1) {
                        iMin = Math.min(ContentPreviewViewer.this.containerView.getWidth(), ContentPreviewViewer.this.containerView.getHeight() - stableInsetBottom3) - AndroidUtilities.m1124dp(40.0f);
                    } else {
                        if (ContentPreviewViewer.this.drawEffect) {
                            fMin = Math.min(ContentPreviewViewer.this.containerView.getWidth(), ContentPreviewViewer.this.containerView.getHeight() - stableInsetBottom3) - AndroidUtilities.dpf2(40.0f);
                        } else {
                            fMin = Math.min(ContentPreviewViewer.this.containerView.getWidth(), ContentPreviewViewer.this.containerView.getHeight() - stableInsetBottom3) / 1.8f;
                        }
                        iMin = (int) fMin;
                    }
                    int iMax = ((int) (ContentPreviewViewer.this.moveY + Math.max(stableInsetTop3 + r3 + (ContentPreviewViewer.this.stickerEmojiLayout != null ? AndroidUtilities.m1124dp(40.0f) : 0), ((ContentPreviewViewer.this.containerView.getHeight() - stableInsetBottom3) - ContentPreviewViewer.this.keyboardHeight) / 2) + (iMin / 2))) + AndroidUtilities.m1124dp(24.0f);
                    if (ContentPreviewViewer.this.drawEffect) {
                        iMax += AndroidUtilities.m1124dp(24.0f);
                    }
                    ContentPreviewViewer contentPreviewViewer3 = ContentPreviewViewer.this;
                    contentPreviewViewer3.popupWindow.showAtLocation(contentPreviewViewer3.containerView, 0, (int) ((ContentPreviewViewer.this.containerView.getMeasuredWidth() - actionBarPopupWindowLayout3.getMeasuredWidth()) / 2.0f), iMax);
                    ContentPreviewViewer contentPreviewViewer4 = ContentPreviewViewer.this;
                    contentPreviewViewer4.runLongPressHaptic(contentPreviewViewer4.containerView);
                    actionBarPopupWindowLayout = actionBarPopupWindowLayout3;
                } else if (ContentPreviewViewer.this.currentContentType == 2 && ContentPreviewViewer.this.delegate != null) {
                    ArrayList arrayList7 = new ArrayList();
                    final ArrayList arrayList8 = new ArrayList();
                    ArrayList arrayList9 = new ArrayList();
                    if (ContentPreviewViewer.this.delegate.needSend(ContentPreviewViewer.this.currentContentType)) {
                        arrayList7.add(LocaleController.getString(C2888R.string.SendEmojiPreview));
                        arrayList9.add(Integer.valueOf(C2888R.drawable.msg_send));
                        arrayList8.add(0);
                    }
                    Boolean boolCanSetAsStatus = ContentPreviewViewer.this.delegate.canSetAsStatus(ContentPreviewViewer.this.currentDocument);
                    if (boolCanSetAsStatus != null) {
                        if (boolCanSetAsStatus.booleanValue()) {
                            arrayList7.add(LocaleController.getString(C2888R.string.SetAsEmojiStatus));
                            arrayList9.add(Integer.valueOf(C2888R.drawable.msg_smile_status));
                            arrayList8.add(1);
                        } else {
                            arrayList7.add(LocaleController.getString(C2888R.string.RemoveStatus));
                            arrayList9.add(Integer.valueOf(C2888R.drawable.msg_smile_status));
                            arrayList8.add(2);
                        }
                    }
                    if (BadgesController.INSTANCE.canChangeBadge()) {
                        arrayList7.add(LocaleController.getString(C2888R.string.SetAsBadge));
                        arrayList9.add(Integer.valueOf(C2888R.drawable.extera_outline));
                        arrayList8.add(77);
                    }
                    if (ContentPreviewViewer.this.delegate.needCopy(ContentPreviewViewer.this.currentDocument)) {
                        arrayList7.add(LocaleController.getString(C2888R.string.CopyEmojiPreview));
                        arrayList9.add(Integer.valueOf(C2888R.drawable.msg_copy));
                        arrayList8.add(3);
                    }
                    if (ChatUtils.getInstance().isEmoji(ContentPreviewViewer.this.currentDocument)) {
                        arrayList7.add(LocaleController.formatString("SaveToGallery", C2888R.string.SaveToGallery, new Object[0]));
                        arrayList9.add(Integer.valueOf(C2888R.drawable.msg_gallery));
                        arrayList8.add(10);
                    }
                    if (ContentPreviewViewer.this.delegate.needRemoveFromRecent(ContentPreviewViewer.this.currentDocument)) {
                        arrayList7.add(LocaleController.getString(C2888R.string.RemoveFromRecent));
                        arrayList9.add(Integer.valueOf(C2888R.drawable.msg_delete));
                        arrayList8.add(4);
                    }
                    final boolean zIsStickerInFavorites2 = MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).isStickerInFavorites(ContentPreviewViewer.this.currentDocument);
                    if (!MessageObject.isAnimatedEmoji(ContentPreviewViewer.this.currentDocument) && !MessageObject.isMaskDocument(ContentPreviewViewer.this.currentDocument) && (zIsStickerInFavorites2 || (MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).canAddStickerToFavorites() && MessageObject.isStickerHasSet(ContentPreviewViewer.this.currentDocument)))) {
                        arrayList7.add(LocaleController.getString(zIsStickerInFavorites2 ? C2888R.string.DeleteFromFavorites : C2888R.string.AddToFavorites));
                        arrayList9.add(Integer.valueOf(zIsStickerInFavorites2 ? C2888R.drawable.msg_unfave : C2888R.drawable.msg_fave));
                        arrayList8.add(5);
                    }
                    if (arrayList7.isEmpty()) {
                        return;
                    }
                    ContentPreviewViewer.this.menuVisible = true;
                    ContentPreviewViewer.this.containerView.invalidate();
                    int[] iArr = new int[arrayList9.size()];
                    for (int i7 = 0; i7 < arrayList9.size(); i7++) {
                        iArr[i7] = ((Integer) arrayList9.get(i7)).intValue();
                    }
                    View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$run$6(arrayList8, zIsStickerInFavorites2, view);
                        }
                    };
                    int i8 = 0;
                    while (i8 < arrayList7.size()) {
                        ArrayList arrayList10 = arrayList9;
                        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout4 = actionBarPopupWindowLayout3;
                        ActionBarMenuSubItem actionBarMenuSubItemAddItem3 = ActionBarMenuItem.addItem(i8 == 0, i8 == arrayList7.size() + (-1), actionBarPopupWindowLayout4, ((Integer) arrayList9.get(i8)).intValue(), (CharSequence) arrayList7.get(i8), false, ContentPreviewViewer.this.resourcesProvider);
                        if (((Integer) arrayList8.get(i8)).intValue() == 4) {
                            actionBarMenuSubItemAddItem3.setIconColor(ContentPreviewViewer.this.getThemedColor(Theme.key_text_RedRegular));
                            actionBarMenuSubItemAddItem3.setTextColor(ContentPreviewViewer.this.getThemedColor(Theme.key_text_RedBold));
                        }
                        actionBarMenuSubItemAddItem3.setTag(Integer.valueOf(i8));
                        actionBarMenuSubItemAddItem3.setOnClickListener(onClickListener2);
                        i8++;
                        arrayList9 = arrayList10;
                        actionBarPopupWindowLayout3 = actionBarPopupWindowLayout4;
                    }
                    actionBarPopupWindowLayout = actionBarPopupWindowLayout3;
                    int i9 = -2;
                    ContentPreviewViewer.this.popupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, i9, i9) { // from class: org.telegram.ui.ContentPreviewViewer.1.3
                        @Override // org.telegram.p029ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
                        public void dismiss() {
                            super.dismiss();
                            ContentPreviewViewer contentPreviewViewer5 = ContentPreviewViewer.this;
                            contentPreviewViewer5.popupWindow = null;
                            contentPreviewViewer5.menuVisible = false;
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
                    ContentPreviewViewer.this.popupWindow.setAnimationStyle(C2888R.style.PopupContextAnimation);
                    ContentPreviewViewer.this.popupWindow.setFocusable(true);
                    actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(1000.0f), Integer.MIN_VALUE));
                    ContentPreviewViewer.this.popupWindow.setInputMethodMode(2);
                    ContentPreviewViewer.this.popupWindow.getContentView().setFocusableInTouchMode(true);
                    if (ContentPreviewViewer.this.lastInsets != null) {
                        stableInsetBottom2 = ContentPreviewViewer.this.lastInsets.getStableInsetBottom() + ContentPreviewViewer.this.lastInsets.getStableInsetTop();
                        stableInsetTop2 = ContentPreviewViewer.this.lastInsets.getStableInsetTop();
                    } else {
                        stableInsetTop2 = AndroidUtilities.statusBarHeight;
                        stableInsetBottom2 = 0;
                    }
                    int iMin3 = (Math.min(ContentPreviewViewer.this.containerView.getWidth(), ContentPreviewViewer.this.containerView.getHeight() - stableInsetBottom2) - AndroidUtilities.m1124dp(40.0f)) / 2;
                    int iMax2 = (int) (((int) (ContentPreviewViewer.this.moveY + Math.max(stableInsetTop2 + iMin3 + (ContentPreviewViewer.this.stickerEmojiLayout != null ? AndroidUtilities.m1124dp(40.0f) : 0), ((ContentPreviewViewer.this.containerView.getHeight() - stableInsetBottom2) - ContentPreviewViewer.this.keyboardHeight) / 2) + iMin3)) + (AndroidUtilities.m1124dp(24.0f) - ContentPreviewViewer.this.moveY));
                    ContentPreviewViewer contentPreviewViewer5 = ContentPreviewViewer.this;
                    contentPreviewViewer5.popupWindow.showAtLocation(contentPreviewViewer5.containerView, 0, (int) ((ContentPreviewViewer.this.containerView.getMeasuredWidth() - actionBarPopupWindowLayout.getMeasuredWidth()) / 2.0f), iMax2);
                    ActionBarPopupWindow.startAnimation(actionBarPopupWindowLayout);
                    ContentPreviewViewer contentPreviewViewer6 = ContentPreviewViewer.this;
                    contentPreviewViewer6.runLongPressHaptic(contentPreviewViewer6.containerView);
                    if (ContentPreviewViewer.this.moveY != 0.0f) {
                        if (ContentPreviewViewer.this.finalMoveY == 0.0f) {
                            ContentPreviewViewer.this.finalMoveY = 0.0f;
                            ContentPreviewViewer contentPreviewViewer7 = ContentPreviewViewer.this;
                            contentPreviewViewer7.startMoveY = contentPreviewViewer7.moveY;
                        }
                        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda4
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                this.f$0.lambda$run$7(valueAnimator);
                            }
                        });
                        valueAnimatorOfFloat.setDuration(350L);
                        valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
                        valueAnimatorOfFloat.start();
                    }
                } else {
                    actionBarPopupWindowLayout = actionBarPopupWindowLayout3;
                    if (ContentPreviewViewer.this.delegate != null) {
                        ArrayList arrayList11 = new ArrayList();
                        final ArrayList arrayList12 = new ArrayList();
                        ArrayList arrayList13 = new ArrayList();
                        if (ContentPreviewViewer.this.delegate.needSend(ContentPreviewViewer.this.currentContentType) && !ContentPreviewViewer.this.delegate.isInScheduleMode()) {
                            arrayList11.add(LocaleController.getString(C2888R.string.SendGifPreview));
                            arrayList13.add(Integer.valueOf(C2888R.drawable.msg_send));
                            arrayList12.add(0);
                        }
                        if (ContentPreviewViewer.this.delegate.needSend(ContentPreviewViewer.this.currentContentType) && !ContentPreviewViewer.this.delegate.isInScheduleMode()) {
                            arrayList11.add(LocaleController.getString(C2888R.string.SendWithoutSound));
                            arrayList13.add(Integer.valueOf(C2888R.drawable.input_notify_off));
                            arrayList12.add(4);
                        }
                        if (ContentPreviewViewer.this.delegate.canSchedule()) {
                            arrayList11.add(LocaleController.getString(C2888R.string.Schedule));
                            arrayList13.add(Integer.valueOf(C2888R.drawable.msg_autodelete));
                            arrayList12.add(3);
                        }
                        if (ContentPreviewViewer.this.currentDocument != null && ContentPreviewViewer.this.delegate.canAddCaption(ContentPreviewViewer.this.currentDocument)) {
                            arrayList11.add(LocaleController.getString(C2888R.string.AddACaption));
                            arrayList13.add(Integer.valueOf(C2888R.drawable.outline_caption_24));
                            arrayList12.add(11);
                        }
                        if (ContentPreviewViewer.this.currentDocument != null) {
                            boolean zHasRecentGif = MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).hasRecentGif(ContentPreviewViewer.this.currentDocument);
                            if (zHasRecentGif) {
                                arrayList11.add(LocaleController.formatString("Delete", C2888R.string.Delete, new Object[0]));
                                arrayList13.add(Integer.valueOf(C2888R.drawable.msg_delete));
                                arrayList12.add(1);
                            } else {
                                arrayList11.add(LocaleController.formatString("SaveToGIFs", C2888R.string.SaveToGIFs, new Object[0]));
                                arrayList13.add(Integer.valueOf(C2888R.drawable.msg_gif_add));
                                arrayList12.add(2);
                            }
                            z = zHasRecentGif;
                        } else {
                            z = false;
                        }
                        if (arrayList11.isEmpty()) {
                            return;
                        }
                        ContentPreviewViewer.this.menuVisible = true;
                        ContentPreviewViewer.this.containerView.invalidate();
                        int[] iArr2 = new int[arrayList13.size()];
                        for (int i10 = 0; i10 < arrayList13.size(); i10++) {
                            iArr2[i10] = ((Integer) arrayList13.get(i10)).intValue();
                        }
                        View.OnClickListener onClickListener3 = new View.OnClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$run$9(arrayList12, view);
                            }
                        };
                        for (int i11 = 0; i11 < arrayList11.size(); i11++) {
                            ActionBarMenuSubItem actionBarMenuSubItemAddItem4 = ActionBarMenuItem.addItem(actionBarPopupWindowLayout, ((Integer) arrayList13.get(i11)).intValue(), (CharSequence) arrayList11.get(i11), false, ContentPreviewViewer.this.resourcesProvider);
                            actionBarMenuSubItemAddItem4.setTag(Integer.valueOf(i11));
                            actionBarMenuSubItemAddItem4.setOnClickListener(onClickListener3);
                            if (z && i11 == arrayList11.size() - 1) {
                                actionBarMenuSubItemAddItem4.setColors(ContentPreviewViewer.this.getThemedColor(Theme.key_text_RedBold), ContentPreviewViewer.this.getThemedColor(Theme.key_text_RedRegular));
                            }
                        }
                        int i12 = -2;
                        ContentPreviewViewer.this.popupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, i12, i12) { // from class: org.telegram.ui.ContentPreviewViewer.1.4
                            @Override // org.telegram.p029ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
                            public void dismiss() {
                                super.dismiss();
                                ContentPreviewViewer contentPreviewViewer8 = ContentPreviewViewer.this;
                                contentPreviewViewer8.popupWindow = null;
                                contentPreviewViewer8.menuVisible = false;
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
                        ContentPreviewViewer.this.popupWindow.setAnimationStyle(C2888R.style.PopupContextAnimation);
                        ContentPreviewViewer.this.popupWindow.setFocusable(true);
                        actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(1000.0f), Integer.MIN_VALUE));
                        ContentPreviewViewer.this.popupWindow.setInputMethodMode(2);
                        ContentPreviewViewer.this.popupWindow.getContentView().setFocusableInTouchMode(true);
                        if (ContentPreviewViewer.this.lastInsets != null) {
                            stableInsetBottom = ContentPreviewViewer.this.lastInsets.getStableInsetBottom() + ContentPreviewViewer.this.lastInsets.getStableInsetTop();
                            stableInsetTop = ContentPreviewViewer.this.lastInsets.getStableInsetTop();
                        } else {
                            stableInsetTop = AndroidUtilities.statusBarHeight;
                            stableInsetBottom = 0;
                        }
                        int iMin4 = (Math.min(ContentPreviewViewer.this.containerView.getWidth(), ContentPreviewViewer.this.containerView.getHeight() - stableInsetBottom) - AndroidUtilities.m1124dp(40.0f)) / 2;
                        int iMax3 = (int) (((int) (ContentPreviewViewer.this.moveY + Math.max(stableInsetTop + iMin4 + (ContentPreviewViewer.this.stickerEmojiLayout != null ? AndroidUtilities.m1124dp(40.0f) : 0), ((ContentPreviewViewer.this.containerView.getHeight() - stableInsetBottom) - ContentPreviewViewer.this.keyboardHeight) / 2) + iMin4)) + (AndroidUtilities.m1124dp(24.0f) - ContentPreviewViewer.this.moveY));
                        ContentPreviewViewer contentPreviewViewer8 = ContentPreviewViewer.this;
                        i = 0;
                        contentPreviewViewer8.popupWindow.showAtLocation(contentPreviewViewer8.containerView, 0, (int) ((ContentPreviewViewer.this.containerView.getMeasuredWidth() - actionBarPopupWindowLayout.getMeasuredWidth()) / 2.0f), iMax3);
                        ContentPreviewViewer contentPreviewViewer9 = ContentPreviewViewer.this;
                        contentPreviewViewer9.runLongPressHaptic(contentPreviewViewer9.containerView);
                        if (ContentPreviewViewer.this.moveY != 0.0f) {
                            if (ContentPreviewViewer.this.finalMoveY == 0.0f) {
                                ContentPreviewViewer.this.finalMoveY = 0.0f;
                                ContentPreviewViewer contentPreviewViewer10 = ContentPreviewViewer.this;
                                contentPreviewViewer10.startMoveY = contentPreviewViewer10.moveY;
                            }
                            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
                            valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda6
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    this.f$0.lambda$run$10(valueAnimator);
                                }
                            });
                            valueAnimatorOfFloat2.setDuration(350L);
                            valueAnimatorOfFloat2.setInterpolator(CubicBezierInterpolator.DEFAULT);
                            valueAnimatorOfFloat2.start();
                        }
                    }
                }
                i = 0;
            }
            int i13 = i;
            while (i13 < actionBarPopupWindowLayout.getItemsCount()) {
                View itemAt = actionBarPopupWindowLayout.getItemAt(i13);
                if (itemAt instanceof ActionBarMenuSubItem) {
                    ((ActionBarMenuSubItem) itemAt).updateSelectorBackground(i13 == 0 ? 1 : i, i13 == actionBarPopupWindowLayout.getItemsCount() + (-1) ? 1 : i, 12);
                }
                i13++;
            }
        }

        /* JADX INFO: renamed from: org.telegram.ui.ContentPreviewViewer$1$1, reason: invalid class name */
        /* JADX INFO: loaded from: classes6.dex */
        class AnonymousClass1 implements View.OnClickListener {
            final /* synthetic */ ArrayList val$actions;
            final /* synthetic */ boolean val$inFavs;

            AnonymousClass1(ArrayList arrayList, boolean z) {
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
                        AlertsCreator.createScheduleDatePickerDialog(ContentPreviewViewer.this.parentActivity, contentPreviewViewerDelegate.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.ContentPreviewViewer$1$1$$ExternalSyntheticLambda0
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
                    ChatUtils.getInstance().saveStickerToGallery(ContentPreviewViewer.this.parentActivity, ContentPreviewViewer.this.currentDocument, new Utilities.Callback() { // from class: org.telegram.ui.ContentPreviewViewer$1$1$$ExternalSyntheticLambda1
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
        public /* synthetic */ void lambda$run$6(ArrayList arrayList, boolean z, View view) {
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
            } else if (iIntValue2 == 4) {
                ContentPreviewViewer.this.delegate.removeFromRecent(ContentPreviewViewer.this.currentDocument);
            } else if (iIntValue2 == 5) {
                MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).addRecentSticker(2, ContentPreviewViewer.this.parentObject, ContentPreviewViewer.this.currentDocument, (int) (System.currentTimeMillis() / 1000), z);
            } else if (((Integer) arrayList.get(iIntValue)).intValue() == 10) {
                ChatUtils.getInstance().saveStickerToGallery(ContentPreviewViewer.this.parentActivity, ContentPreviewViewer.this.currentDocument, new Utilities.Callback() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda9
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 11);
                    }
                });
            }
            ContentPreviewViewer.this.dismissPopupWindow();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$7(ValueAnimator valueAnimator) {
            ContentPreviewViewer.this.currentMoveYProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.this;
            contentPreviewViewer.moveY = contentPreviewViewer.startMoveY + ((ContentPreviewViewer.this.finalMoveY - ContentPreviewViewer.this.startMoveY) * ContentPreviewViewer.this.currentMoveYProgress);
            ContentPreviewViewer.this.containerView.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$9(ArrayList arrayList, View view) {
            if (ContentPreviewViewer.this.parentActivity == null) {
                return;
            }
            int iIntValue = ((Integer) view.getTag()).intValue();
            if (((Integer) arrayList.get(iIntValue)).intValue() == 0) {
                ContentPreviewViewer.this.delegate.sendGif(ContentPreviewViewer.this.currentDocument != null ? ContentPreviewViewer.this.currentDocument : ContentPreviewViewer.this.inlineResult, ContentPreviewViewer.this.parentObject, true, 0, 0);
            } else if (((Integer) arrayList.get(iIntValue)).intValue() == 4) {
                ContentPreviewViewer.this.delegate.sendGif(ContentPreviewViewer.this.currentDocument != null ? ContentPreviewViewer.this.currentDocument : ContentPreviewViewer.this.inlineResult, ContentPreviewViewer.this.parentObject, false, 0, 0);
            } else if (((Integer) arrayList.get(iIntValue)).intValue() == 1) {
                MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).removeRecentGif(ContentPreviewViewer.this.currentDocument);
                ContentPreviewViewer.this.delegate.gifAddedOrDeleted();
            } else if (((Integer) arrayList.get(iIntValue)).intValue() == 2) {
                MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).addRecentGif(ContentPreviewViewer.this.currentDocument, (int) (System.currentTimeMillis() / 1000), true);
                MessagesController.getInstance(ContentPreviewViewer.this.currentAccount).saveGif("gif", ContentPreviewViewer.this.currentDocument);
                ContentPreviewViewer.this.delegate.gifAddedOrDeleted();
            } else if (((Integer) arrayList.get(iIntValue)).intValue() == 3) {
                final TLRPC.Document document = ContentPreviewViewer.this.currentDocument;
                final TLRPC.BotInlineResult botInlineResult = ContentPreviewViewer.this.inlineResult;
                final Object obj = ContentPreviewViewer.this.parentObject;
                final ContentPreviewViewerDelegate contentPreviewViewerDelegate = ContentPreviewViewer.this.delegate;
                AlertsCreator.createScheduleDatePickerDialog(ContentPreviewViewer.this.parentActivity, contentPreviewViewerDelegate.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.ContentPreviewViewer$1$$ExternalSyntheticLambda8
                    @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                    public final void didSelectDate(boolean z, int i, int i2) {
                        ContentPreviewViewer.RunnableC54741.$r8$lambda$K7s5MIHucILE4yEv6mnviO21yQc(contentPreviewViewerDelegate, document, botInlineResult, obj, z, i, i2);
                    }
                }, ContentPreviewViewer.this.resourcesProvider);
            } else if (((Integer) arrayList.get(iIntValue)).intValue() == 11) {
                ContentPreviewViewer.this.delegate.addCaptionToGif(ContentPreviewViewer.this.currentDocument != null ? ContentPreviewViewer.this.currentDocument : ContentPreviewViewer.this.inlineResult, ContentPreviewViewer.this.parentObject, true, 0, 0);
            }
            ContentPreviewViewer.this.dismissPopupWindow();
        }

        public static /* synthetic */ void $r8$lambda$K7s5MIHucILE4yEv6mnviO21yQc(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC.Document document, TLRPC.BotInlineResult botInlineResult, Object obj, boolean z, int i, int i2) {
            Object obj2 = document;
            if (document == null) {
                obj2 = botInlineResult;
            }
            contentPreviewViewerDelegate.sendGif(obj2, obj, z, i, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$10(ValueAnimator valueAnimator) {
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
        ContentPreviewViewer contentPreviewViewer;
        if (this.reactionsLayout == null) {
            contentPreviewViewer = this;
            ReactionsContainerLayout reactionsContainerLayout = new ReactionsContainerLayout(4, null, this.containerView.getContext(), UserConfig.selectedAccount, this.resourcesProvider) { // from class: org.telegram.ui.ContentPreviewViewer.2
                @Override // org.telegram.p029ui.Components.ReactionsContainerLayout
                public void invalidateLoopViews() {
                    super.invalidateLoopViews();
                    ContentPreviewViewer.this.setFocusable(getReactionsWindow() != null);
                }
            };
            contentPreviewViewer.reactionsLayout = reactionsContainerLayout;
            reactionsContainerLayout.skipEnterAnimation = true;
            reactionsContainerLayout.setPadding(0, AndroidUtilities.m1124dp(22.0f), 0, AndroidUtilities.m1124dp(22.0f));
            contentPreviewViewer.reactionsLayout.setClipChildren(false);
            contentPreviewViewer.reactionsLayout.setClipToPadding(false);
            contentPreviewViewer.reactionsLayout.setVisibility(0);
            contentPreviewViewer.reactionsLayout.setHint(LocaleController.getString(C2888R.string.StickersSetEmojiForSticker));
            contentPreviewViewer.reactionsLayout.setBubbleOffset(-AndroidUtilities.m1124dp(105.0f));
            contentPreviewViewer.reactionsLayout.setMiniBubblesOffset(-AndroidUtilities.m1124dp(14.0f));
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
            public /* synthetic */ boolean allowLongPress() {
                return ReactionsContainerLayout.ReactionsContainerDelegate.CC.$default$allowLongPress(this);
            }

            @Override // org.telegram.ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
            public /* synthetic */ boolean drawBackground() {
                return ReactionsContainerLayout.ReactionsContainerDelegate.CC.$default$drawBackground(this);
            }

            @Override // org.telegram.ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
            public /* synthetic */ void drawRoundRect(Canvas canvas, RectF rectF, float f, float f2, float f3, int i, boolean z) {
                ReactionsContainerLayout.ReactionsContainerDelegate.CC.$default$drawRoundRect(this, canvas, rectF, f, f2, f3, i, z);
            }

            @Override // org.telegram.ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
            public /* synthetic */ boolean needEnterText() {
                return ReactionsContainerLayout.ReactionsContainerDelegate.CC.$default$needEnterText(this);
            }

            @Override // org.telegram.ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
            public /* synthetic */ void onEmojiWindowDismissed() {
                ReactionsContainerLayout.ReactionsContainerDelegate.CC.$default$onEmojiWindowDismissed(this);
            }

            @Override // org.telegram.ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
            public final void onReactionClicked(View view, ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z, boolean z2) {
                this.f$0.lambda$showEmojiSelectorForStickers$0(view, visibleReaction, z, z2);
            }
        });
        contentPreviewViewer.reactionsLayout.setMessage(null, null, false);
        contentPreviewViewer.reactionsLayoutContainer.setScaleY(0.6f);
        contentPreviewViewer.reactionsLayoutContainer.setScaleX(0.6f);
        contentPreviewViewer.reactionsLayoutContainer.setAlpha(0.0f);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showEmojiSelectorForStickers$1();
            }
        }, 10L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showEmojiSelectorForStickers$0(View view, ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z, boolean z2) {
        if (visibleReaction == null) {
            return;
        }
        CustomEmojiReactionsWindow reactionsWindow = this.reactionsLayout.getReactionsWindow();
        if (this.selectedEmojis.contains(visibleReaction.emojicon)) {
            if (this.selectedEmojis.size() <= 1) {
                return;
            } else {
                this.selectedEmojis.remove(visibleReaction.emojicon);
            }
        } else {
            this.selectedEmojis.add(visibleReaction.emojicon);
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
    public /* synthetic */ void lambda$showEmojiSelectorForStickers$1() {
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
                    this.f$0.lambda$showUnlockPremiumView$2(view);
                }
            });
            this.unlockPremiumView.premiumButtonView.buttonLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$showUnlockPremiumView$3(view);
                }
            });
        }
        AndroidUtilities.updateViewVisibilityAnimated(this.unlockPremiumView, false, 1.0f, false);
        AndroidUtilities.updateViewVisibilityAnimated(this.unlockPremiumView, true);
        this.unlockPremiumView.setTranslationY(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showUnlockPremiumView$2(View view) {
        this.menuVisible = false;
        this.containerView.invalidate();
        close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showUnlockPremiumView$3(View view) {
        Activity activity = this.parentActivity;
        if (activity instanceof LaunchActivity) {
            LaunchActivity launchActivity = (LaunchActivity) activity;
            if (launchActivity.getActionBarLayout() != null && launchActivity.getActionBarLayout().getLastFragment() != null) {
                launchActivity.getActionBarLayout().getLastFragment().dismissCurrentDialog();
            }
            launchActivity.lambda$runLinkRequest$106(new PremiumPreviewFragment(PremiumPreviewFragment.featureTypeToServerString(5)));
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
        TLRPC.Document document;
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
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        ContentPreviewViewer.m13574$r8$lambda$PzikLvtjZR18wZ7QUF4AN50g_s(recyclerListView, obj);
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
                                    } else if (f < (-AndroidUtilities.m1124dp(60.0f))) {
                                        this.currentMoveY = -AndroidUtilities.m1124dp(60.0f);
                                    }
                                    this.moveY = rubberYPoisition(this.currentMoveY, AndroidUtilities.m1124dp(200.0f));
                                    this.containerView.invalidate();
                                    if (this.currentMoveY <= (-AndroidUtilities.m1124dp(55.0f))) {
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
                                        this.centerImage.setRoundRadius(AndroidUtilities.m1124dp(6.0f));
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
                                            TLRPC.Document document2 = contextLinkCell2.getDocument();
                                            ContentPreviewViewerDelegate contentPreviewViewerDelegate6 = this.delegate;
                                            open(document2, null, null, contentPreviewViewerDelegate6 != null ? contentPreviewViewerDelegate6.getQuery(true) : null, contextLinkCell2.getBotInlineResult(), i2, false, contextLinkCell2.getBotInlineResult() != null ? contextLinkCell2.getInlineBot() : contextLinkCell2.getParentObject(), resourcesProvider);
                                            if (i2 != 1 || this.isPhotoEditor) {
                                                contextLinkCell2.setScaled(true);
                                            }
                                        } else if (childAt instanceof EmojiPacksAlert.EmojiImageView) {
                                            TLRPC.Document document3 = ((EmojiPacksAlert.EmojiImageView) childAt).getDocument();
                                            if (document3 != null) {
                                                open(document3, null, MessageObject.findAnimatedEmojiEmoticon(document3, null, Integer.valueOf(this.currentAccount)), null, null, i2, false, null, resourcesProvider);
                                            }
                                        } else if (childAt instanceof EmojiView.ImageViewEmoji) {
                                            AnimatedEmojiSpan span = ((EmojiView.ImageViewEmoji) childAt).getSpan();
                                            if (span != null) {
                                                TLRPC.Document documentFindDocument = span.document;
                                                if (documentFindDocument == null) {
                                                    documentFindDocument = AnimatedEmojiDrawable.findDocument(this.currentAccount, span.getDocumentId());
                                                }
                                                document = documentFindDocument;
                                            } else {
                                                document = null;
                                            }
                                            if (document == null) {
                                                return false;
                                            }
                                            open(document, null, MessageObject.findAnimatedEmojiEmoticon(document, null, Integer.valueOf(this.currentAccount)), null, null, i2, false, null, resourcesProvider);
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
                if (this.openPreviewRunnable != null && (motionEvent.getAction() != 2 || Math.hypot(this.startX - motionEvent.getX(), this.startY - motionEvent.getY()) > AndroidUtilities.m1124dp(10.0f))) {
                    AndroidUtilities.cancelRunOnUIThread(this.openPreviewRunnable);
                    this.openPreviewRunnable = null;
                }
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: $r8$lambda$PzikLvtjZR18wZ7QUF4AN50-g_s, reason: not valid java name */
    public static /* synthetic */ void m13574$r8$lambda$PzikLvtjZR18wZ7QUF4AN50g_s(RecyclerListView recyclerListView, Object obj) {
        if (OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(recyclerListView)) {
            recyclerListView.setOnItemClickListener((RecyclerListView.OnItemClickListener) obj);
        }
    }

    protected void runSmoothHaptic() {
        if (ExteraConfig.inAppVibration) {
            try {
                this.containerView.performHapticFeedback(3, 3);
            } catch (Exception unused) {
            }
        }
    }

    protected void runLongPressHaptic(View view) {
        if (!ExteraConfig.inAppVibration || view == null) {
            return;
        }
        try {
            view.performHapticFeedback(0, 3);
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
                            this.centerImage.setRoundRadius(AndroidUtilities.m1124dp(6.0f));
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
                    Runnable runnable = new Runnable() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onInterceptTouchEvent$5(recyclerListView, i2, resourcesProvider);
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
    public /* synthetic */ void lambda$onInterceptTouchEvent$5(RecyclerListView recyclerListView, int i, Theme.ResourcesProvider resourcesProvider) {
        TLRPC.Document document;
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
            TLRPC.Document document2 = contextLinkCell.getDocument();
            ContentPreviewViewerDelegate contentPreviewViewerDelegate3 = this.delegate;
            open(document2, null, null, contentPreviewViewerDelegate3 != null ? contentPreviewViewerDelegate3.getQuery(true) : null, contextLinkCell.getBotInlineResult(), i, false, contextLinkCell.getBotInlineResult() != null ? contextLinkCell.getInlineBot() : contextLinkCell.getParentObject(), resourcesProvider);
            if (i != 1 || this.isPhotoEditor) {
                contextLinkCell.setScaled(true);
            }
        } else if (view instanceof EmojiPacksAlert.EmojiImageView) {
            TLRPC.Document document3 = ((EmojiPacksAlert.EmojiImageView) view).getDocument();
            if (document3 == null) {
                return;
            } else {
                open(document3, null, MessageObject.findAnimatedEmojiEmoticon(document3, null, Integer.valueOf(this.currentAccount)), null, null, i, false, null, resourcesProvider);
            }
        } else if (view instanceof EmojiView.ImageViewEmoji) {
            AnimatedEmojiSpan span = ((EmojiView.ImageViewEmoji) view).getSpan();
            if (span != null) {
                TLRPC.Document documentFindDocument = span.document;
                if (documentFindDocument == null) {
                    documentFindDocument = AnimatedEmojiDrawable.findDocument(this.currentAccount, span.getDocumentId());
                }
                document = documentFindDocument;
            } else {
                document = null;
            }
            if (document == null) {
                return;
            } else {
                open(document, null, MessageObject.findAnimatedEmojiEmoticon(document, null, Integer.valueOf(this.currentAccount)), null, null, i, false, null, resourcesProvider);
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
        this.slideUpDrawable = activity.getResources().getDrawable(C2888R.drawable.preview_arrow);
        FrameLayout frameLayout = new FrameLayout(activity) { // from class: org.telegram.ui.ContentPreviewViewer.3
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
        };
        this.windowView = frameLayout;
        frameLayout.setFocusable(true);
        this.windowView.setFocusableInTouchMode(true);
        this.windowView.setSystemUiVisibility(1792);
        this.windowView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda7
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                return this.f$0.lambda$setParentActivity$6(view, windowInsets);
            }
        });
        FrameLayoutDrawer frameLayoutDrawer = new FrameLayoutDrawer(activity) { // from class: org.telegram.ui.ContentPreviewViewer.4
            @Override // android.view.ViewGroup, android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                ContentPreviewViewer.this.centerImage.onAttachedToWindow();
                ContentPreviewViewer.this.effectImage.onAttachedToWindow();
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                ContentPreviewViewer.this.centerImage.onDetachedFromWindow();
                ContentPreviewViewer.this.effectImage.onDetachedFromWindow();
            }
        };
        this.containerView = frameLayoutDrawer;
        frameLayoutDrawer.setFocusable(false);
        this.containerView.setHapticFeedbackEnabled(ExteraConfig.inAppVibration);
        this.windowView.addView(this.containerView, LayoutHelper.createFrame(-1, -1, 51));
        this.containerView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda8
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f$0.lambda$setParentActivity$7(view, motionEvent);
            }
        });
        MessagesController.getInstance(this.currentAccount);
        this.keyboardHeight = MessagesController.getGlobalEmojiSettings().getInt("kbd_height", AndroidUtilities.m1124dp(200.0f));
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.windowLayoutParams = layoutParams;
        layoutParams.height = -1;
        layoutParams.format = -3;
        layoutParams.width = -1;
        layoutParams.gravity = 48;
        layoutParams.type = 99;
        layoutParams.flags = -2147286784;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            layoutParams.layoutInDisplayCutoutMode = i2 >= 30 ? 3 : 1;
        }
        this.centerImage.setAspectFit(true);
        this.centerImage.setInvalidateAll(true);
        this.centerImage.setParentView(this.containerView);
        this.effectImage.setAspectFit(true);
        this.effectImage.setInvalidateAll(true);
        this.effectImage.setParentView(this.containerView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsets lambda$setParentActivity$6(View view, WindowInsets windowInsets) {
        this.lastInsets = windowInsets;
        return windowInsets;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$setParentActivity$7(View view, MotionEvent motionEvent) {
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
        if (z) {
            WindowManager.LayoutParams layoutParams = this.windowLayoutParams;
            layoutParams.flags &= -131073;
            layoutParams.softInputMode = 16;
        } else {
            this.windowLayoutParams.flags |= 131072;
        }
        try {
            ((WindowManager) this.parentActivity.getSystemService("window")).updateViewLayout(this.windowView, this.windowLayoutParams);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public void open(TLRPC.Document document, SendMessagesHelper.ImportingSticker importingSticker, String str, String str2, TLRPC.BotInlineResult botInlineResult, int i, boolean z, Object obj, Theme.ResourcesProvider resourcesProvider) {
        boolean z2;
        TLRPC.InputStickerSet inputStickerSet;
        ContentPreviewViewerDelegate contentPreviewViewerDelegate;
        int i2;
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
                if (documentVideoThumb != null) {
                    this.centerImage.setImage(forDocument, null, ImageLocation.getForDocument(documentVideoThumb, document), null, ImageLocation.getForDocument(closestPhotoSizeWithSize, document), "90_90_b", null, document.size, null, "gif" + document, 0);
                } else {
                    this.centerImage.setImage(forDocument, null, ImageLocation.getForDocument(closestPhotoSizeWithSize, document), "90_90_b", document.size, null, "gif" + document, 0);
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
                textPaint2.setTextSize(AndroidUtilities.m1124dp(24.0f));
            }
            this.effectImage.clearImage();
            this.drawEffect = false;
            if (document != null) {
                int i3 = 0;
                while (true) {
                    if (i3 >= document.attributes.size()) {
                        inputStickerSet = null;
                        break;
                    }
                    TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i3);
                    if ((documentAttribute instanceof TLRPC.TL_documentAttributeSticker) && (inputStickerSet = documentAttribute.stickerset) != null) {
                        break;
                    } else {
                        i3++;
                    }
                }
                if (str != null) {
                    this.stickerEmojiLayout = new StaticLayout(AndroidUtilities.replaceCharSequence("…", TextUtils.ellipsize(Emoji.replaceEmoji(str, textPaint.getFontMetricsInt(), false), textPaint, AndroidUtilities.m1124dp(200.0f), TextUtils.TruncateAt.END), _UrlKt.FRAGMENT_ENCODE_SET), textPaint, AndroidUtilities.m1124dp(200.0f), Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
                }
                if ((inputStickerSet != null || i == 2) && ((contentPreviewViewerDelegate = this.delegate) == null || contentPreviewViewerDelegate.needMenu())) {
                    AndroidUtilities.cancelRunOnUIThread(this.showSheetRunnable);
                    AndroidUtilities.runOnUIThread(this.showSheetRunnable, 800L);
                }
                TLRPC.TL_messages_stickerSet stickerSet = MediaDataController.getInstance(this.currentAccount).getStickerSet(inputStickerSet, true);
                this.currentStickerSet = (stickerSet == null || !stickerSet.documents.isEmpty()) ? inputStickerSet : null;
                TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 90);
                if (MessageObject.isVideoStickerDocument(document)) {
                    this.centerImage.setImage(ImageLocation.getForDocument(document), null, ImageLocation.getForDocument(closestPhotoSizeWithSize2, document), null, null, 0L, "webp", this.currentStickerSet, 1);
                } else {
                    this.centerImage.setImage(ImageLocation.getForDocument(document), (String) null, ImageLocation.getForDocument(closestPhotoSizeWithSize2, document), (String) null, "webp", this.currentStickerSet, 1);
                    if (MessageObject.isPremiumSticker(document)) {
                        this.drawEffect = true;
                        this.effectImage.setImage(ImageLocation.getForDocument(MessageObject.getPremiumStickerAnimation(document), document), (String) null, (ImageLocation) null, (String) null, "tgs", this.currentStickerSet, 1);
                    }
                }
                if (MessageObject.isTextColorEmoji(document)) {
                    this.centerImage.setColorFilter(Theme.getAnimatedEmojiColorFilter(resourcesProvider));
                }
                if (this.stickerEmojiLayout == null) {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= document.attributes.size()) {
                            break;
                        }
                        TLRPC.DocumentAttribute documentAttribute2 = document.attributes.get(i4);
                        if ((documentAttribute2 instanceof TLRPC.TL_documentAttributeSticker) && !TextUtils.isEmpty(documentAttribute2.alt)) {
                            this.stickerEmojiLayout = new StaticLayout(AndroidUtilities.replaceCharSequence("…", TextUtils.ellipsize(Emoji.replaceEmoji(documentAttribute2.alt, textPaint.getFontMetricsInt(), false), textPaint, AndroidUtilities.m1124dp(200.0f), TextUtils.TruncateAt.END), _UrlKt.FRAGMENT_ENCODE_SET), textPaint, AndroidUtilities.m1124dp(200.0f), Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
                            break;
                        }
                        i4++;
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
                    this.stickerEmojiLayout = new StaticLayout(AndroidUtilities.replaceCharSequence("…", TextUtils.ellipsize(Emoji.replaceEmoji(str, textPaint.getFontMetricsInt(), z2), textPaint, AndroidUtilities.m1124dp(200.0f), TextUtils.TruncateAt.END), _UrlKt.FRAGMENT_ENCODE_SET), textPaint, AndroidUtilities.m1124dp(200.0f), Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
                }
                if (this.delegate.needMenu()) {
                    AndroidUtilities.cancelRunOnUIThread(this.showSheetRunnable);
                    AndroidUtilities.runOnUIThread(this.showSheetRunnable, 800L);
                }
            }
        }
        if (this.centerImage.getLottieAnimation() != null) {
            i2 = 0;
            this.centerImage.getLottieAnimation().setCurrentFrame(0);
        } else {
            i2 = 0;
        }
        if (this.drawEffect && this.effectImage.getLottieAnimation() != null) {
            this.effectImage.getLottieAnimation().setCurrentFrame(i2);
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
            FileLog.m1136e(e);
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
                this.f$0.lambda$close$8();
            }
        }, 200L);
        UnlockPremiumView unlockPremiumView = this.unlockPremiumView;
        if (unlockPremiumView != null) {
            unlockPremiumView.animate().alpha(0.0f).translationY(AndroidUtilities.m1124dp(56.0f)).setDuration(150L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
        }
        FrameLayout frameLayout = this.reactionsLayoutContainer;
        if (frameLayout != null) {
            frameLayout.animate().alpha(0.0f).setDuration(150L).scaleX(0.6f).scaleY(0.6f).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$close$8() {
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
            FileLog.m1136e(e);
        }
        Instance = null;
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 8);
    }

    private float rubberYPoisition(float f, float f2) {
        return (-((1.0f - (1.0f / (((Math.abs(f) * 0.55f) / f2) + 1.0f))) * f2)) * (f >= 0.0f ? -1.0f : 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDraw(Canvas canvas) {
        int stableInsetTop;
        int stableInsetBottom;
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
                    canvas.save();
                    canvas.scale(12.0f, 12.0f);
                    canvas.drawColor(Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundGray, this.resourcesProvider), this.blurProgress));
                    canvas.drawBitmap(this.blurrBitmap, 0.0f, 0.0f, this.paint);
                    canvas.restore();
                }
            }
        }
        this.backgroundDrawable.setAlpha((int) (this.showProgress * 180.0f));
        this.backgroundDrawable.setBounds(0, 0, this.containerView.getWidth(), this.containerView.getHeight());
        this.backgroundDrawable.draw(canvas);
        canvas.save();
        WindowInsets windowInsets = this.lastInsets;
        if (windowInsets != null) {
            stableInsetBottom = windowInsets.getStableInsetBottom() + this.lastInsets.getStableInsetTop();
            stableInsetTop = this.lastInsets.getStableInsetTop();
        } else {
            stableInsetTop = AndroidUtilities.statusBarHeight;
            stableInsetBottom = 0;
        }
        if (this.currentContentType == 1) {
            iMin = Math.min(this.containerView.getWidth(), this.containerView.getHeight() - stableInsetBottom) - AndroidUtilities.m1124dp(40.0f);
        } else {
            if (this.drawEffect) {
                fMin = Math.min(this.containerView.getWidth(), this.containerView.getHeight() - stableInsetBottom) - AndroidUtilities.dpf2(40.0f);
            } else {
                fMin = Math.min(this.containerView.getWidth(), this.containerView.getHeight() - stableInsetBottom) / 1.8f;
            }
            iMin = (int) fMin;
        }
        float fMax = Math.max((iMin / 2) + stableInsetTop + (this.stickerEmojiLayout != null ? AndroidUtilities.m1124dp(40.0f) : 0), ((this.containerView.getHeight() - stableInsetBottom) - this.keyboardHeight) / 2);
        if (this.drawEffect) {
            fMax += AndroidUtilities.m1124dp(40.0f);
        }
        canvas.translate(this.containerView.getWidth() / 2, this.moveY + fMax);
        int i = (int) (iMin * ((this.showProgress * 0.8f) / 0.8f));
        if (this.currentContentType == 3) {
            canvas.translate(0.0f, AndroidUtilities.m1124dp(70.0f));
        }
        if (this.drawEffect) {
            float f6 = i;
            float f7 = 0.6669f * f6;
            this.centerImage.setAlpha(this.showProgress);
            float f8 = f6 - f7;
            float f9 = f6 / 2.0f;
            this.centerImage.setImageCoords((f8 - f9) - (0.0546875f * f6), (f8 / 2.0f) - f9, f7, f7);
            this.centerImage.draw(canvas);
            this.effectImage.setAlpha(this.showProgress);
            float f10 = (-i) / 2.0f;
            this.effectImage.setImageCoords(f10, f10, f6, f6);
            this.effectImage.draw(canvas);
        } else {
            this.centerImage.setAlpha(this.showProgress);
            float f11 = (-i) / 2.0f;
            float f12 = i;
            this.centerImage.setImageCoords(f11, f11, f12, f12);
            this.centerImage.draw(canvas);
        }
        if (this.paintingOverlay != null) {
            canvas.save();
            float f13 = (-i) / 2.0f;
            canvas.translate(f13, f13);
            float f14 = i;
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
            int iM1124dp = (int) (this.centerImage.getDrawRegion().top - AndroidUtilities.m1124dp(((this.currentMoveY / AndroidUtilities.m1124dp(60.0f)) * 6.0f) + 17.0f));
            this.slideUpDrawable.setAlpha((int) ((1.0f - this.currentMoveYProgress) * 255.0f));
            this.slideUpDrawable.setBounds((-intrinsicWidth) / 2, (-intrinsicHeight) + iM1124dp, intrinsicWidth / 2, iM1124dp);
            this.slideUpDrawable.draw(canvas);
        }
        if (this.stickerEmojiLayout != null) {
            if (this.drawEffect) {
                canvas.translate((-r0.getWidth()) / 2.0f, ((-this.effectImage.getImageHeight()) / 2.0f) - AndroidUtilities.m1124dp(30.0f));
            } else {
                canvas.translate((-r0.getWidth()) / 2.0f, ((-this.centerImage.getImageHeight()) / 2.0f) - AndroidUtilities.m1124dp(30.0f));
            }
            textPaint.setAlpha((int) (this.showProgress * 255.0f));
            this.stickerEmojiLayout.draw(canvas);
        }
        canvas.restore();
        if (this.isVisible) {
            if (this.showProgress != 1.0f) {
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
        if (this.showProgress != 0.0f) {
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
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onDraw$9();
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
                    FileLog.m1136e(e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDraw$9() {
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
        AndroidUtilities.makeGlobalBlurBitmap(new Utilities.Callback() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda12
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$prepareBlurBitmap$10((Bitmap) obj);
            }
        }, 12.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareBlurBitmap$10(Bitmap bitmap) {
        this.centerImage.setVisible(true, false);
        this.blurrBitmap = bitmap;
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

    public void showCustomStickerActions(String str, VideoEditedInfo videoEditedInfo, View view, ArrayList arrayList, ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
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

    private void getMyStickersRemote(final TLRPC.TL_messages_getMyStickers tL_messages_getMyStickers, final List list) {
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getMyStickers, new RequestDelegate() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda5
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$getMyStickersRemote$12(list, tL_messages_getMyStickers, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMyStickersRemote$12(final List list, final TLRPC.TL_messages_getMyStickers tL_messages_getMyStickers, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getMyStickersRemote$11(tL_error, tLObject, list, tL_messages_getMyStickers);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMyStickersRemote$11(TLRPC.TL_error tL_error, TLObject tLObject, List list, TLRPC.TL_messages_getMyStickers tL_messages_getMyStickers) {
        if (tL_error == null && (tLObject instanceof TLRPC.TL_messages_myStickers)) {
            TLRPC.TL_messages_myStickers tL_messages_myStickers = (TLRPC.TL_messages_myStickers) tLObject;
            ArrayList arrayList = tL_messages_myStickers.sets;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                TLRPC.StickerSetCovered stickerSetCovered = (TLRPC.StickerSetCovered) obj;
                TLRPC.StickerSet stickerSet = stickerSetCovered.set;
                if (!stickerSet.emojis && !stickerSet.masks) {
                    TLRPC.TL_inputStickerSetID tL_inputStickerSetID = new TLRPC.TL_inputStickerSetID();
                    tL_inputStickerSetID.f1685id = stickerSetCovered.set.f1696id;
                    TLRPC.TL_messages_stickerSet stickerSet2 = MediaDataController.getInstance(this.currentAccount).getStickerSet(tL_inputStickerSetID, true);
                    if (stickerSet2 == null || stickerSet2.documents.size() < 120) {
                        list.add(stickerSetCovered);
                    }
                }
            }
            if (tL_messages_myStickers.sets.size() == tL_messages_getMyStickers.limit) {
                ArrayList arrayList2 = tL_messages_myStickers.sets;
                tL_messages_getMyStickers.offset_id = ((TLRPC.StickerSetCovered) arrayList2.get(arrayList2.size() - 1)).set.f1696id;
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
            @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            protected void onMeasure(int i, int i2) {
                int size = View.MeasureSpec.getSize(i2);
                int iM1124dp = AndroidUtilities.m1124dp(4.0f) + (AndroidUtilities.m1124dp(50.0f) * getAdapter().getItemCount());
                if (iM1124dp <= size) {
                    size = iM1124dp;
                }
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30));
            }
        };
        recyclerListView.setLayoutManager(new LinearLayoutManager(this.parentActivity));
        recyclerListView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: org.telegram.ui.ContentPreviewViewer.6
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                if (recyclerView.getChildAdapterPosition(view) == arrayList.size() - 1) {
                    rect.bottom = AndroidUtilities.m1124dp(4.0f);
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
                stickerPackNameView.setLayoutParams(new RecyclerView.LayoutParams(-2, AndroidUtilities.m1124dp(48.0f)));
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

    /* JADX INFO: loaded from: classes6.dex */
    private static class StickerPackNameView extends LinearLayout {
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
            if (stickerSetCovered instanceof TLRPC.TL_stickerSetNoCovered) {
                this.textView.setText(LocaleController.getString(C2888R.string.NewStickerPack));
                this.imageView.setImageResource(C2888R.drawable.msg_addbot);
                return;
            }
            this.textView.setText(stickerSetCovered.set.title);
            TLRPC.Document document = stickerSetCovered.cover;
            if (document != null) {
                TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 90);
                SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(stickerSetCovered.cover, Theme.key_windowBackgroundGray, 1.0f, 1.0f, this.resourcesProvider);
                if (svgThumb == null) {
                    this.imageView.setImage(ImageLocation.getForDocument(closestPhotoSizeWithSize, stickerSetCovered.cover), (String) null, "webp", (Drawable) null, stickerSetCovered);
                    return;
                } else if (closestPhotoSizeWithSize != null) {
                    this.imageView.setImage(ImageLocation.getForDocument(closestPhotoSizeWithSize, stickerSetCovered.cover), (String) null, "webp", svgThumb, stickerSetCovered);
                    return;
                } else {
                    this.imageView.setImage(ImageLocation.getForDocument(stickerSetCovered.cover), (String) null, "webp", svgThumb, stickerSetCovered);
                    return;
                }
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
            view.animate().alpha(0.0f).scaleX(0.8f).scaleY(0.8f).translationY(AndroidUtilities.m1124dp(-12.0f)).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(320L).start();
            this.popupLayout = null;
            this.menuVisible = false;
            if (this.closeOnDismiss) {
                close();
            }
        }
    }
}
