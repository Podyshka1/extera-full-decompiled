package org.telegram.p029ui.bots;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.net.Uri;
import android.text.SpannableStringBuilder;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.URLSpan;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class BotAdView extends FrameLayout {
    public final TextView channelTitleView;
    public final ImageView closeView;
    public final BackupImageView imageView;
    private final LinearLayout layout;
    public final TextView removeView;
    private final Theme.ResourcesProvider resourcesProvider;
    public final LinkSpanDrawable.LinksTextView textView;
    public final TextView titleView;

    public static /* synthetic */ void $r8$lambda$P25H35BgaKK2z3c9Musq0lGku4E(View view) {
    }

    public BotAdView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        LinearLayout linearLayout = new LinearLayout(context);
        this.layout = linearLayout;
        linearLayout.setOrientation(0);
        linearLayout.setPadding(AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(5.0f));
        ScaleStateListAnimator.apply(linearLayout, 0.025f, 1.4f);
        addView(linearLayout, LayoutHelper.createFrame(-1, -1, 119));
        int i = Theme.key_featuredStickers_addButton;
        setBackground(Theme.createRadSelectorDrawable(Theme.multAlpha(Theme.getColor(i, resourcesProvider), 0.1f), 0, 0));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 3));
        LinearLayout linearLayout3 = new LinearLayout(context);
        linearLayout3.setOrientation(0);
        linearLayout2.addView(linearLayout3, LayoutHelper.createLinear(-1, -2, 0.0f, 51, 0, 0, 0, 0));
        TextView textView = new TextView(context);
        this.titleView = textView;
        textView.setTextSize(1, 14.0f);
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(Theme.getColor(i2, resourcesProvider));
        textView.setTypeface(AndroidUtilities.bold());
        linearLayout3.addView(textView, LayoutHelper.createLinear(-2, -2, 0.0f, 16));
        NotificationCenter.listenEmojiLoading(textView);
        TextView textView2 = new TextView(context);
        this.removeView = textView2;
        textView2.setTextSize(1, 11.0f);
        textView2.setTextColor(Theme.getColor(i, resourcesProvider));
        ScaleStateListAnimator.apply(textView2, 0.1f, 1.5f);
        textView2.setPadding(AndroidUtilities.m1124dp(6.33f), 0, AndroidUtilities.m1124dp(6.33f), 0);
        textView2.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(9.0f), Theme.multAlpha(Theme.getColor(i, resourcesProvider), 0.1f)));
        textView2.setText(LocaleController.getString(C2888R.string.BotAdWhat));
        linearLayout3.addView(textView2, LayoutHelper.createLinear(-2, 17, 0.0f, 19, 5, 1, 0, 0));
        TextView textView3 = new TextView(context);
        this.channelTitleView = textView3;
        textView3.setVisibility(8);
        textView3.setTextSize(1, 14.0f);
        textView3.setTextColor(Theme.getColor(i2, resourcesProvider));
        textView3.setTypeface(AndroidUtilities.bold());
        linearLayout2.addView(textView3, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 2.0f));
        NotificationCenter.listenEmojiLoading(textView3);
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
        this.textView = linksTextView;
        linksTextView.setTextSize(1, 13.0f);
        linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
        linksTextView.setTextColor(Theme.getColor(i2, resourcesProvider));
        linearLayout2.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 0.0f));
        NotificationCenter.listenEmojiLoading(linksTextView);
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m1124dp(4.0f));
        backupImageView.setVisibility(8);
        linearLayout.addView(backupImageView, LayoutHelper.createLinear(48, 48, 53, 10, 0, 2, 2));
        ImageView imageView = new ImageView(context);
        this.closeView = imageView;
        imageView.setBackground(Theme.createSelectorDrawable(5, Theme.multAlpha(Theme.getColor(Theme.key_dialogEmptyImage, resourcesProvider), 0.2f)));
        ScaleStateListAnimator.apply(imageView);
        imageView.setImageResource(C2888R.drawable.msg_close);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chat_topPanelClose, resourcesProvider), PorterDuff.Mode.SRC_IN));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.BotAdView$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BotAdView.$r8$lambda$P25H35BgaKK2z3c9Musq0lGku4E(view);
            }
        });
        imageView.setVisibility(8);
        linearLayout.addView(imageView, LayoutHelper.createLinear(32, 32, 53, 10, 3, 0, 2));
    }

    public void set(final ChatActivity chatActivity, final MessageObject messageObject, final Runnable runnable, final Runnable runnable2) {
        if (messageObject == null) {
            return;
        }
        CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(messageObject.sponsoredTitle, this.titleView.getPaint().getFontMetricsInt(), false);
        CharSequence charSequenceReplaceEmoji2 = Emoji.replaceEmoji(messageObject.messageText, this.textView.getPaint().getFontMetricsInt(), false);
        final String str = messageObject.sponsoredUrl;
        boolean z = true;
        if (messageObject.sponsoredMedia != null) {
            this.imageView.setVisibility(0);
            this.closeView.setVisibility(8);
            TLRPC.MessageMedia messageMedia = messageObject.sponsoredMedia;
            TLRPC.Document document = messageMedia.document;
            if (document != null) {
                this.imageView.setImage(ImageLocation.getForDocument(messageObject.sponsoredMedia.document), "48_48", ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 48), messageObject.sponsoredMedia.document), "48_48", (String) null, 0L, 0, (Object) null);
            } else {
                TLRPC.Photo photo = messageMedia.photo;
                if (photo != null) {
                    TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(photo.sizes, 48, true, null, true);
                    this.imageView.setImage(ImageLocation.getForPhoto(closestPhotoSizeWithSize, messageObject.sponsoredMedia.photo), "48_48", ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(messageObject.sponsoredMedia.photo.sizes, 48, true, closestPhotoSizeWithSize, false), messageObject.sponsoredMedia.photo), "48_48", (String) null, 0L, 0, (Object) null);
                }
            }
        } else {
            TLRPC.Photo photo2 = messageObject.sponsoredPhoto;
            if (photo2 != null) {
                TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(photo2.sizes, 48, true, null, true);
                this.imageView.setImage(ImageLocation.getForPhoto(closestPhotoSizeWithSize2, messageObject.sponsoredPhoto), "48_48", ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(messageObject.sponsoredPhoto.sizes, 48, true, closestPhotoSizeWithSize2, false), messageObject.sponsoredPhoto), "48_48", (String) null, 0L, 0, (Object) null);
                this.imageView.setVisibility(0);
                this.closeView.setVisibility(8);
            } else {
                this.imageView.setVisibility(8);
                this.closeView.setVisibility(0);
                z = false;
            }
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(C2888R.string.SponsoredMessageAd));
        int i = Theme.key_featuredStickers_addButton;
        spannableStringBuilder.setSpan(new ForegroundColorSpan(Theme.getColor(i, this.resourcesProvider)), 0, spannableStringBuilder.length(), 33);
        spannableStringBuilder.append((CharSequence) " \u2009");
        spannableStringBuilder.append(charSequenceReplaceEmoji);
        if (this.titleView.getPaint().measureText(spannableStringBuilder.toString()) > (((AndroidUtilities.displaySize.x - AndroidUtilities.m1124dp(44.660004f)) - this.removeView.getPaint().measureText(this.removeView.getText().toString())) - AndroidUtilities.m1124dp(32.0f)) - AndroidUtilities.m1124dp(z ? 58.0f : 0.0f)) {
            spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(C2888R.string.SponsoredMessageAd));
            spannableStringBuilder.setSpan(new ForegroundColorSpan(Theme.getColor(i, this.resourcesProvider)), 0, spannableStringBuilder.length(), 33);
            this.channelTitleView.setVisibility(0);
            this.channelTitleView.setText(charSequenceReplaceEmoji);
        } else {
            this.channelTitleView.setVisibility(8);
        }
        this.titleView.setText(spannableStringBuilder);
        this.textView.setText(charSequenceReplaceEmoji2);
        this.textView.setOnLinkPressListener(new LinkSpanDrawable.LinksTextView.OnLinkPress() { // from class: org.telegram.ui.bots.BotAdView$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.LinkSpanDrawable.LinksTextView.OnLinkPress
            public final void run(ClickableSpan clickableSpan) {
                this.f$0.lambda$set$1(chatActivity, messageObject, clickableSpan);
            }
        });
        this.removeView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.BotAdView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BotAdView.m20535$r8$lambda$puxQK1wOL9Nff1GJAcexXGGAU(runnable, view);
            }
        });
        setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.BotAdView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$set$3(chatActivity, messageObject, str, view);
            }
        });
        this.closeView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.BotAdView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BotAdView.$r8$lambda$Va83yWJilzRQbxEY2IMw9hPpCRQ(runnable2, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$1(ChatActivity chatActivity, MessageObject messageObject, ClickableSpan clickableSpan) {
        if (chatActivity != null) {
            chatActivity.logSponsoredClicked(messageObject, false, false);
        }
        if (clickableSpan instanceof URLSpan) {
            String url = ((URLSpan) clickableSpan).getURL();
            if (url != null) {
                url = url.trim();
            }
            if (chatActivity != null && url != null && (url.startsWith("$") || url.startsWith("#"))) {
                chatActivity.openHashtagSearch(url, true);
                return;
            }
        }
        clickableSpan.onClick(this.textView);
    }

    /* JADX INFO: renamed from: $r8$lambda$puxQK1w-OL9Nff1GJAcexXGGA-U, reason: not valid java name */
    public static /* synthetic */ void m20535$r8$lambda$puxQK1wOL9Nff1GJAcexXGGAU(Runnable runnable, View view) {
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$3(ChatActivity chatActivity, MessageObject messageObject, String str, View view) {
        if (chatActivity != null) {
            chatActivity.logSponsoredClicked(messageObject, false, false);
        }
        Browser.openUrl(getContext(), Uri.parse(str), true, false, false, null, null, false, MessagesController.getInstance(UserConfig.selectedAccount).sponsoredLinksInappAllow, false);
    }

    public static /* synthetic */ void $r8$lambda$Va83yWJilzRQbxEY2IMw9hPpCRQ(Runnable runnable, View view) {
        if (runnable != null) {
            runnable.run();
        }
    }
}
