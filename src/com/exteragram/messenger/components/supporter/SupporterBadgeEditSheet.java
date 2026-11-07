package com.exteragram.messenger.components.supporter;

import android.app.Activity;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.math.MathUtils;
import com.exteragram.messenger.api.dto.BadgeDTO;
import com.exteragram.messenger.badges.BadgesController;
import java.util.function.Consumer;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.EditTextCell;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.SelectAnimatedEmojiDialog;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes4.dex */
public class SupporterBadgeEditSheet extends SupporterSheet {
    private final EditTextCell captionCell;
    private final TextView captionPreview;
    private final long defaultId;
    private long documentId;
    private SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow emojiDialog;
    private final long initialId;
    private final String initialText;
    private final Runnable onSaved;
    private final ButtonWithCounterView resetButton;

    public static SupporterBadgeEditSheet show(BaseFragment baseFragment, Runnable runnable) {
        if (baseFragment.getParentActivity() == null) {
            return null;
        }
        SupporterBadgeEditSheet supporterBadgeEditSheet = new SupporterBadgeEditSheet(baseFragment, baseFragment.getResourceProvider(), runnable);
        if (baseFragment.showDialog(supporterBadgeEditSheet) != null) {
            return supporterBadgeEditSheet;
        }
        return null;
    }

    public SupporterBadgeEditSheet(final BaseFragment baseFragment, final Theme.ResourcesProvider resourcesProvider, Runnable runnable) {
        super(baseFragment, true, resourcesProvider);
        this.onSaved = runnable;
        Activity parentActivity = baseFragment.getParentActivity();
        TLRPC.User currentUser = UserConfig.getInstance(this.currentAccount).getCurrentUser();
        BadgesController badgesController = BadgesController.INSTANCE;
        BadgeDTO defaultBadge = badgesController.getDefaultBadge(currentUser);
        BadgeDTO badge = badgesController.getBadge(currentUser);
        long documentId = defaultBadge != null ? defaultBadge.getDocumentId() : 0L;
        this.defaultId = documentId;
        documentId = badge != null ? badge.getDocumentId() : documentId;
        this.initialId = documentId;
        String text = (badge == null || badge.getText() == null) ? _UrlKt.FRAGMENT_ENCODE_SET : badge.getText();
        this.initialText = text;
        this.documentId = documentId;
        setBadge(documentId);
        View iconView = getArrowView().getIconView();
        iconView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.supporter.SupporterBadgeEditSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        ScaleStateListAnimator.apply(iconView, 0.05f, 1.5f);
        setContent(LocaleController.getString(C2807R.string.SupporterBadgeEditTitle), LocaleController.getString(C2807R.string.SupporterBadgeEditInfo));
        addNumberPill(BadgesController.getNumber(currentUser));
        final String name = DialogObject.getName(currentUser);
        this.captionPreview = addCaptionBubble(null);
        EditTextCell editTextCell = new EditTextCell(parentActivity, LocaleController.getString(C2807R.string.Caption), false, false, 200, resourcesProvider);
        this.captionCell = editTextCell;
        editTextCell.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(16.0f), getThemedColor(Theme.key_windowBackgroundGray)));
        editTextCell.setMultiline(true);
        editTextCell.setText(text);
        editTextCell.editText.setTypeface(AndroidUtilities.regular());
        FrameLayout frameLayout = new FrameLayout(parentActivity);
        frameLayout.addView(editTextCell, LayoutHelper.createFrame(-1, -2.0f, 48, 12.0f, 0.0f, 12.0f, 0.0f));
        addView(frameLayout);
        TextView textView = new TextView(parentActivity);
        textView.setText(LocaleController.getString(C2807R.string.SupporterBadgeCaptionInfo));
        textView.setTypeface(AndroidUtilities.regular());
        textView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
        textView.setTextSize(1, 13.0f);
        textView.setPadding(AndroidUtilities.dp(33.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(33.0f), AndroidUtilities.dp(8.0f));
        addView(textView);
        this.button.setText(LocaleController.getString(C2807R.string.Save), false);
        this.button.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.supporter.SupporterBadgeEditSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        this.resetButton = addSecondaryButton(LocaleController.getString(C2807R.string.SupporterBadgeReset), new View.OnClickListener() { // from class: com.exteragram.messenger.components.supporter.SupporterBadgeEditSheet$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(view);
            }
        });
        if (SupporterTransfer.canTransfer(this.currentAccount)) {
            addSecondaryButton(LocaleController.getString(C2807R.string.Gift2TransferDo), new View.OnClickListener() { // from class: com.exteragram.messenger.components.supporter.SupporterBadgeEditSheet$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$3(baseFragment, resourcesProvider, view);
                }
            });
        }
        editTextCell.editText.addTextChangedListener(new TextWatcher() { // from class: com.exteragram.messenger.components.supporter.SupporterBadgeEditSheet.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                SupporterBadgeEditSheet.this.updateResetButton();
                SupporterBadgeEditSheet.this.updateCaptionPreview(name);
            }
        });
        updateResetButton();
        updateCaptionPreview(name);
        this.behindKeyboardColorKey = Theme.key_dialogBackground;
        commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        openEmojiPicker();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        save();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        setDocumentId(this.defaultId);
        this.captionCell.setText(_UrlKt.FRAGMENT_ENCODE_SET);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider, View view) {
        SupporterTransfer.start(baseFragment, this.container, view, resourcesProvider, new Runnable() { // from class: com.exteragram.messenger.components.supporter.SupporterBadgeEditSheet$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDocumentId(long j) {
        this.documentId = j;
        setBadge(j);
        updateResetButton();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCaptionPreview(String str) {
        String strTrim = this.captionCell.getText().toString().trim();
        this.captionPreview.setVisibility(strTrim.isEmpty() ? 8 : 0);
        this.captionPreview.setText(strTrim.isEmpty() ? null : BadgesController.formatBadgeCaption(strTrim, str, null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateResetButton() {
        this.resetButton.setEnabled(this.documentId != this.defaultId || this.captionCell.getText().length() > 0);
    }

    private void openEmojiPicker() {
        if (this.emojiDialog != null) {
            return;
        }
        final View iconView = getArrowView().getIconView();
        int[] iArr = new int[2];
        iconView.getLocationOnScreen(iArr);
        int iMin = (int) Math.min(AndroidUtilities.dp(324.0f), AndroidUtilities.displaySize.x * 0.95f);
        int width = iArr[0] + (iconView.getWidth() / 2);
        int iClamp = MathUtils.clamp(width - (iMin / 2), 0, AndroidUtilities.displaySize.x - iMin);
        final int iRound = Math.round(iconView.getHeight() / AndroidUtilities.density);
        final SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[] selectAnimatedEmojiDialogWindowArr = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[1];
        SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = new SelectAnimatedEmojiDialog(this.fragment, getContext(), true, Integer.valueOf(width - iClamp), 0, true, this.resourcesProvider, iRound, getThemedColor(Theme.key_windowBackgroundWhiteBlueIcon), true) { // from class: com.exteragram.messenger.components.supporter.SupporterBadgeEditSheet.2
            @Override // org.telegram.ui.SelectAnimatedEmojiDialog
            public void onEmojiSelected(View view, Long l, TLRPC.Document document, TL_stars.TL_starGiftUnique tL_starGiftUnique, Integer num) {
                SupporterBadgeEditSheet supporterBadgeEditSheet = SupporterBadgeEditSheet.this;
                supporterBadgeEditSheet.setDocumentId(l == null ? supporterBadgeEditSheet.defaultId : l.longValue());
                SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = selectAnimatedEmojiDialogWindowArr[0];
                if (selectAnimatedEmojiDialogWindow != null) {
                    selectAnimatedEmojiDialogWindow.dismiss();
                }
            }

            @Override // org.telegram.ui.SelectAnimatedEmojiDialog
            public float getScrimDrawableTranslationY() {
                return (iconView.getHeight() / 2.0f) - AndroidUtilities.dp(iRound);
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0 && motionEvent.getY() < AndroidUtilities.dp(iRound)) {
                    SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = selectAnimatedEmojiDialogWindowArr[0];
                    if (selectAnimatedEmojiDialogWindow == null) {
                        return true;
                    }
                    selectAnimatedEmojiDialogWindow.dismiss();
                    return true;
                }
                return super.dispatchTouchEvent(motionEvent);
            }
        };
        final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(selectAnimatedEmojiDialog, iconView.getWidth(), 24) { // from class: com.exteragram.messenger.components.supporter.SupporterBadgeEditSheet.3
            private int alpha = 255;

            @Override // org.telegram.ui.Components.AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable, android.graphics.drawable.Drawable
            public void setAlpha(int i) {
                this.alpha = i;
            }

            @Override // org.telegram.ui.Components.AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable, android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                Rect bounds = getBounds();
                canvas.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, this.alpha);
                canvas.translate(bounds.left, bounds.top);
                canvas.scale(bounds.width() / iconView.getWidth(), bounds.height() / iconView.getHeight());
                iconView.draw(canvas);
                canvas.restore();
            }
        };
        swapAnimatedEmojiDrawable.setCurrentAccount(this.currentAccount);
        swapAnimatedEmojiDrawable.setColor(Integer.valueOf(getThemedColor(Theme.key_featuredStickers_addButton)));
        swapAnimatedEmojiDrawable.setBounds(0, 0, iconView.getWidth(), iconView.getHeight());
        swapAnimatedEmojiDrawable.set(this.documentId, false);
        swapAnimatedEmojiDrawable.attach();
        selectAnimatedEmojiDialog.setScrimDrawable(swapAnimatedEmojiDrawable, null);
        long j = this.defaultId;
        if (j != 0) {
            selectAnimatedEmojiDialog.setDefaultBadge(Long.valueOf(j));
        }
        selectAnimatedEmojiDialog.useAccentForPlus = true;
        long j2 = this.documentId;
        selectAnimatedEmojiDialog.setSelected(Long.valueOf(j2 != this.defaultId ? j2 : 0L));
        SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow(selectAnimatedEmojiDialog, -2, -2) { // from class: com.exteragram.messenger.components.supporter.SupporterBadgeEditSheet.4
            @Override // org.telegram.ui.SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow, android.widget.PopupWindow
            public void dismiss() {
                super.dismiss();
                swapAnimatedEmojiDrawable.detach();
                SupporterBadgeEditSheet.this.emojiDialog = null;
            }
        };
        this.emojiDialog = selectAnimatedEmojiDialogWindow;
        selectAnimatedEmojiDialogWindowArr[0] = selectAnimatedEmojiDialogWindow;
        selectAnimatedEmojiDialogWindow.showAsDropDown(iconView, iClamp - iArr[0], -AndroidUtilities.dp(iRound), 51);
        selectAnimatedEmojiDialogWindowArr[0].dimBehind();
    }

    private void save() {
        String strTrim = this.captionCell.getText().toString().trim();
        if (this.documentId == this.initialId && strTrim.equals(this.initialText)) {
            lambda$new$0();
            return;
        }
        AndroidUtilities.hideKeyboard(this.captionCell.editText);
        this.button.setLoading(true);
        BadgesController badgesController = BadgesController.INSTANCE;
        long j = this.documentId;
        if (strTrim.isEmpty()) {
            strTrim = null;
        }
        badgesController.updateBadge(new BadgeDTO(j, strTrim), new Consumer() { // from class: com.exteragram.messenger.components.supporter.SupporterBadgeEditSheet$$ExternalSyntheticLambda5
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$save$5((String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$save$5(final String str) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.components.supporter.SupporterBadgeEditSheet$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$save$4(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$save$4(String str) {
        this.button.setLoading(false);
        if ("ok".equals(str)) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_EMOJI_STATUS));
            Runnable runnable = this.onSaved;
            if (runnable != null) {
                runnable.run();
            }
            lambda$new$0();
            return;
        }
        BulletinFactory.of(this.container, this.resourcesProvider).createErrorBulletin(LocaleController.getString(C2807R.string.UnknownError)).show();
    }

    @Override // com.exteragram.messenger.components.supporter.SupporterSheet, org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = this.emojiDialog;
        if (selectAnimatedEmojiDialogWindow != null) {
            selectAnimatedEmojiDialogWindow.dismiss();
        }
        super.lambda$new$0();
    }
}
