package org.telegram.p029ui;

import android.content.Context;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p029ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p029ui.Components.ColoredImageSpan;
import org.telegram.p029ui.Components.PopupSwipeBackLayout;
import org.telegram.p029ui.Components.VideoPlayer;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public class ChooseDownloadQualityLayout {
    public final LinearLayout buttonsLayout;
    private final Callback callback;
    public final ActionBarPopupWindow.ActionBarPopupWindowLayout layout;

    /* JADX INFO: loaded from: classes6.dex */
    public interface Callback {
        void onQualitySelected(MessageObject messageObject, VideoPlayer.Quality quality);
    }

    public ChooseDownloadQualityLayout(Context context, final PopupSwipeBackLayout popupSwipeBackLayout, Callback callback) {
        this.callback = callback;
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(context, 0, null);
        this.layout = actionBarPopupWindowLayout;
        actionBarPopupWindowLayout.setFitItems(true);
        ActionBarMenuSubItem actionBarMenuSubItemAddItem = ActionBarMenuItem.addItem(actionBarPopupWindowLayout, C2888R.drawable.msg_arrow_back, LocaleController.getString(C2888R.string.Back), false, null);
        actionBarMenuSubItemAddItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChooseDownloadQualityLayout$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                popupSwipeBackLayout.closeForeground();
            }
        });
        actionBarMenuSubItemAddItem.setColors(-328966, -328966);
        actionBarMenuSubItemAddItem.setSelectorColor(268435455);
        View view = new FrameLayout(context) { // from class: org.telegram.ui.ChooseDownloadQualityLayout.1
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(i, i2);
            }
        };
        view.setMinimumWidth(AndroidUtilities.m1124dp(196.0f));
        view.setBackgroundColor(-15198184);
        actionBarPopupWindowLayout.addView(view);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        if (LocaleController.isRTL) {
            layoutParams.gravity = 5;
        }
        layoutParams.width = -1;
        layoutParams.height = AndroidUtilities.m1124dp(8.0f);
        view.setLayoutParams(layoutParams);
        LinearLayout linearLayout = new LinearLayout(context);
        this.buttonsLayout = linearLayout;
        linearLayout.setOrientation(1);
        actionBarPopupWindowLayout.addView(linearLayout);
    }

    public boolean update(final MessageObject messageObject) {
        TLRPC.Message message;
        if (messageObject == null || (message = messageObject.messageOwner) == null || message.media == null || !messageObject.hasVideoQualities()) {
            return false;
        }
        int i = messageObject.currentAccount;
        TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
        ArrayList qualities = VideoPlayer.getQualities(i, messageMedia.document, messageMedia.alt_documents, 0, false);
        this.buttonsLayout.removeAllViews();
        for (int i2 = 0; i2 < qualities.size(); i2++) {
            final VideoPlayer.Quality quality = (VideoPlayer.Quality) qualities.get(i2);
            VideoPlayer.VideoUri downloadUri = quality.getDownloadUri();
            StringBuilder sb = new StringBuilder();
            sb.append(LocaleController.formatString(C2888R.string.QualitySaveIn, Integer.valueOf(quality.m1276p())));
            sb.append(quality.original ? " (" + LocaleController.getString(C2888R.string.QualitySource) + ")" : _UrlKt.FRAGMENT_ENCODE_SET);
            String string = sb.toString();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            if (downloadUri.isCached()) {
                spannableStringBuilder.append(AndroidUtilities.formatFileSize(downloadUri.document.size));
                spannableStringBuilder.append(LocaleController.getString(C2888R.string.QualityCached));
            } else {
                SpannableString spannableString = new SpannableString("s ");
                ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.msg_mini_arrow_mediabold);
                coloredImageSpan.rotate(90.0f);
                coloredImageSpan.translate(0.0f, AndroidUtilities.m1124dp(1.0f));
                coloredImageSpan.spaceScaleX = 0.85f;
                spannableString.setSpan(coloredImageSpan, 0, 1, 33);
                spannableStringBuilder.append((CharSequence) spannableString);
                spannableStringBuilder.append(AndroidUtilities.formatFileSize(downloadUri.document.size));
            }
            ActionBarMenuSubItem actionBarMenuSubItemAddItem = ActionBarMenuItem.addItem(this.buttonsLayout, 0, string, false, null);
            actionBarMenuSubItemAddItem.setSubtext(spannableStringBuilder);
            actionBarMenuSubItemAddItem.setColors(-328966, -328966);
            actionBarMenuSubItemAddItem.subtextView.setPadding(0, 0, 0, 0);
            actionBarMenuSubItemAddItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChooseDownloadQualityLayout$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$update$1(messageObject, quality, view);
                }
            });
            actionBarMenuSubItemAddItem.setSelectorColor(268435455);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$update$1(MessageObject messageObject, VideoPlayer.Quality quality, View view) {
        this.callback.onQualitySelected(messageObject, quality);
    }
}
