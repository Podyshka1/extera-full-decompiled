package org.telegram.p029ui.Components.Premium.boosts.cells;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.ImageView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class ChatCell extends BaseCell {
    private TLRPC.Chat chat;
    private ChatDeleteListener chatDeleteListener;
    private final ImageView deleteImageView;
    private boolean removable;

    public interface ChatDeleteListener {
        void onChatDeleted(TLRPC.Chat chat);
    }

    @Override // org.telegram.p029ui.Components.Premium.boosts.cells.BaseCell
    protected boolean needCheck() {
        return false;
    }

    public ChatCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        this.titleTextView.setTypeface(AndroidUtilities.bold());
        ImageView imageView = new ImageView(context);
        this.deleteImageView = imageView;
        imageView.setFocusable(false);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_stickers_menuSelector)));
        imageView.setImageResource(C2888R.drawable.poll_remove);
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.MULTIPLY));
        imageView.setContentDescription(LocaleController.getString(C2888R.string.Delete));
        boolean z = LocaleController.isRTL;
        addView(imageView, LayoutHelper.createFrame(48, 50.0f, (z ? 3 : 5) | 17, z ? 3.0f : 0.0f, 0.0f, z ? 0.0f : 3.0f, 0.0f));
        this.titleTextView.setPadding(AndroidUtilities.m1124dp(LocaleController.isRTL ? 24.0f : 0.0f), 0, AndroidUtilities.m1124dp(LocaleController.isRTL ? 0.0f : 24.0f), 0);
    }

    @Override // org.telegram.p029ui.Components.Premium.boosts.cells.BaseCell, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.deleteImageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(48.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(48.0f), TLObject.FLAG_30));
    }

    public TLRPC.Chat getChat() {
        return this.chat;
    }

    public void setChat(final TLRPC.Chat chat, int i, boolean z, int i2) {
        String string;
        this.removable = z;
        this.chat = chat;
        this.avatarDrawable.setInfo(chat);
        this.imageView.setRoundRadius(AndroidUtilities.m1124dp(20.0f));
        this.imageView.setForUserOrChat(chat, this.avatarDrawable);
        this.titleTextView.setText(Emoji.replaceEmoji(chat.title, this.titleTextView.getPaint().getFontMetricsInt(), false));
        boolean zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(chat);
        if (z) {
            if (i2 >= 1) {
                string = LocaleController.formatPluralString(zIsChannelAndNotMegaGroup ? "Subscribers" : "Members", i2, new Object[0]);
            } else {
                string = LocaleController.getString(zIsChannelAndNotMegaGroup ? C2888R.string.DiscussChannel : C2888R.string.AccDescrGroup);
            }
            setSubtitle(string);
        } else {
            setSubtitle(LocaleController.formatPluralString(zIsChannelAndNotMegaGroup ? "BoostingChannelWillReceiveBoost" : "BoostingGroupWillReceiveBoost", i, new Object[0]));
        }
        this.subtitleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextGray3, this.resourcesProvider));
        setDivider(true);
        if (z) {
            this.deleteImageView.setVisibility(0);
        } else {
            this.deleteImageView.setVisibility(4);
        }
        this.deleteImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.cells.ChatCell$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$setChat$0(chat, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setChat$0(TLRPC.Chat chat, View view) {
        ChatDeleteListener chatDeleteListener = this.chatDeleteListener;
        if (chatDeleteListener != null) {
            chatDeleteListener.onChatDeleted(chat);
        }
    }

    public void setChatDeleteListener(ChatDeleteListener chatDeleteListener) {
        this.chatDeleteListener = chatDeleteListener;
    }

    public void setCounter(int i, int i2) {
        String string;
        boolean zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(this.chat);
        if (!this.removable) {
            setSubtitle(LocaleController.formatPluralString(zIsChannelAndNotMegaGroup ? "BoostingChannelWillReceiveBoost" : "BoostingGroupWillReceiveBoost", i, new Object[0]));
            return;
        }
        if (i2 >= 1) {
            string = LocaleController.formatPluralString(zIsChannelAndNotMegaGroup ? "Subscribers" : "Members", i2, new Object[0]);
        } else {
            string = LocaleController.getString(zIsChannelAndNotMegaGroup ? C2888R.string.DiscussChannel : C2888R.string.AccDescrGroup);
        }
        setSubtitle(string);
    }
}
