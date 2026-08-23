package org.telegram.ui.Components;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.mediarouter.media.PlatformMediaRouter1RouteProvider;
import com.exteragram.messenger.ExteraConfig;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotGuardHelper;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.Bulletin;

/* JADX INFO: loaded from: classes7.dex */
public class JoinGroupAlert extends BottomSheet {
    private BulletinFactory bulletinFactory;
    private TLRPC.ChatInvite chatInvite;
    private TLRPC.Chat currentChat;
    private final BaseFragment fragment;
    private final String hash;
    private RadialProgressView requestProgressView;
    private TextView requestTextView;

    public JoinGroupAlert(Context context, TLObject tLObject, String str, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider) {
        this(context, tLObject, str, baseFragment, resourcesProvider, -1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:110:0x04a3  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x04a6  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x04ff  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0502  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x022c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JoinGroupAlert(Context context, TLObject tLObject, String str, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider, final int i) {
        String str2;
        final long j;
        LinearLayout linearLayout;
        TLRPC.ChatInvite chatInvite;
        boolean z;
        boolean z2;
        boolean z3;
        int iMax;
        String str3;
        SimpleTextView simpleTextView;
        final boolean z4;
        boolean zIsEmpty;
        TLRPC.ChatInvite chatInvite2;
        boolean z5;
        String lowerCase;
        CharSequence string;
        super(context, false, resourcesProvider);
        setApplyBottomPadding(false);
        setApplyTopPadding(false);
        fixNavigationBar();
        this.fragment = baseFragment;
        if (tLObject instanceof TLRPC.ChatInvite) {
            TLRPC.ChatInvite chatInvite3 = (TLRPC.ChatInvite) tLObject;
            this.chatInvite = chatInvite3;
            TLRPC.Chat chat = chatInvite3.chat;
            j = chat != null ? -chat.id : 0L;
        } else if (tLObject instanceof TLRPC.Chat) {
            TLRPC.Chat chat2 = (TLRPC.Chat) tLObject;
            this.currentChat = chat2;
            j = chat2.id;
        } else {
            str2 = str;
            j = 0;
            this.hash = str2;
            linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            linearLayout.setClickable(true);
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.addView(linearLayout);
            NestedScrollView nestedScrollView = new NestedScrollView(context);
            nestedScrollView.addView(frameLayout);
            setCustomView(nestedScrollView);
            ImageView imageView = new ImageView(context);
            imageView.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
            imageView.setColorFilter(getThemedColor(Theme.key_sheet_other));
            imageView.setImageResource(C2573R.drawable.ic_layer_close);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
            int iDp = AndroidUtilities.dp(8.0f);
            imageView.setPadding(iDp, iDp, iDp, iDp);
            frameLayout.addView(imageView, LayoutHelper.createFrame(36, 36.0f, 8388661, 6.0f, 8.0f, 8.0f, 0.0f));
            BackupImageView backupImageView = new BackupImageView(context);
            backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(90.0f));
            linearLayout.addView(backupImageView, LayoutHelper.createLinear(90, 90, 49, 0, 27, 0, 0));
            chatInvite = this.chatInvite;
            if (chatInvite == null) {
                if (chatInvite.chat != null) {
                    AvatarDrawable avatarDrawable = new AvatarDrawable(this.chatInvite.chat);
                    TLRPC.ChatInvite chatInvite4 = this.chatInvite;
                    TLRPC.Chat chat3 = chatInvite4.chat;
                    str = chat3.title;
                    iMax = chat3.participants_count;
                    backupImageView.setForUserOrChat(chat3, avatarDrawable, chatInvite4);
                } else {
                    AvatarDrawable avatarDrawable2 = new AvatarDrawable();
                    avatarDrawable2.setInfo(0L, this.chatInvite.title, null);
                    TLRPC.ChatInvite chatInvite5 = this.chatInvite;
                    String str4 = chatInvite5.title;
                    iMax = chatInvite5.participants_count;
                    backupImageView.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(chatInvite5.photo.sizes, 50), this.chatInvite.photo), "50_50", avatarDrawable2, this.chatInvite);
                    str = str4;
                }
                TLRPC.ChatInvite chatInvite6 = this.chatInvite;
                str3 = chatInvite6.about;
                z2 = chatInvite6.verified;
                z3 = chatInvite6.fake;
                z = chatInvite6.scam;
            } else if (this.currentChat != null) {
                AvatarDrawable avatarDrawable3 = new AvatarDrawable(this.currentChat);
                String str5 = this.currentChat.title;
                TLRPC.ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(this.currentChat.id);
                str = chatFull != null ? chatFull.about : null;
                iMax = Math.max(this.currentChat.participants_count, chatFull != null ? chatFull.participants_count : 0);
                TLRPC.Chat chat4 = this.currentChat;
                backupImageView.setForUserOrChat(chat4, avatarDrawable3, chat4);
                TLRPC.Chat chat5 = this.currentChat;
                z2 = chat5.verified;
                z3 = chat5.fake;
                String str6 = str;
                str = str5;
                str3 = str6;
                z = chat5.scam;
            } else {
                z = 0;
                z2 = false;
                z3 = false;
                iMax = 0;
                str3 = null;
            }
            simpleTextView = new SimpleTextView(context);
            simpleTextView.setTypeface(AndroidUtilities.bold());
            simpleTextView.setTextSize(20);
            int i2 = Theme.key_dialogTextBlack;
            simpleTextView.setTextColor(getThemedColor(i2));
            simpleTextView.setText(str);
            simpleTextView.setGravity(17);
            linearLayout.addView(simpleTextView, LayoutHelper.createLinear(-2, -2, 49, 10, 10, 10, iMax <= 0 ? 0 : 20));
            if (z == 0 || z3) {
                simpleTextView.setRightDrawable(getScamDrawable(!z));
            } else if (z2) {
                simpleTextView.setRightDrawable(getVerifiedCrossfadeDrawable());
            }
            TLRPC.ChatInvite chatInvite7 = this.chatInvite;
            z4 = (chatInvite7 == null && ((chatInvite7.channel && !chatInvite7.megagroup) || ChatObject.isChannelAndNotMegaGroup(chatInvite7.chat))) || (ChatObject.isChannel(this.currentChat) && !this.currentChat.megagroup);
            zIsEmpty = TextUtils.isEmpty(str3);
            TextView textView = new TextView(context);
            textView.setTextSize(1, 13.0f);
            int i3 = Theme.key_dialogTextGray3;
            textView.setTextColor(getThemedColor(i3));
            textView.setSingleLine(true);
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            textView.setEllipsize(truncateAt);
            textView.setText(LocaleController.formatPluralString(!z4 ? "Subscribers" : "Members", iMax, new Object[0]));
            linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 49, 10, 0, 10, zIsEmpty ? 0 : 20));
            if (!zIsEmpty) {
                TextView textView2 = new TextView(context);
                textView2.setGravity(17);
                textView2.setText(str3);
                textView2.setTextColor(getThemedColor(i2));
                textView2.setTextSize(1, 15.0f);
                linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 48, 24, 10, 24, 20));
            }
            chatInvite2 = this.chatInvite;
            if (chatInvite2 != null || chatInvite2.request_needed) {
                FrameLayout frameLayout2 = new FrameLayout(getContext());
                linearLayout.addView(frameLayout2, LayoutHelper.createLinear(-1, -2));
                RadialProgressView radialProgressView = new RadialProgressView(getContext(), resourcesProvider);
                this.requestProgressView = radialProgressView;
                int i4 = Theme.key_featuredStickers_addButton;
                radialProgressView.setProgressColor(getThemedColor(i4));
                this.requestProgressView.setSize(AndroidUtilities.dp(32.0f));
                this.requestProgressView.setVisibility(4);
                frameLayout2.addView(this.requestProgressView, LayoutHelper.createFrame(48, 48, 17));
                TextView textView3 = new TextView(getContext());
                this.requestTextView = textView3;
                textView3.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(24.0f), getThemedColor(i4), getThemedColor(Theme.key_featuredStickers_addButtonPressed)));
                this.requestTextView.setEllipsize(truncateAt);
                this.requestTextView.setGravity(17);
                this.requestTextView.setSingleLine(true);
                this.requestTextView.setText(LocaleController.getString(!z4 ? C2573R.string.RequestToJoinChannel : C2573R.string.RequestToJoinGroup));
                this.requestTextView.setTextColor(getThemedColor(Theme.key_featuredStickers_buttonText));
                this.requestTextView.setTextSize(1, 14.0f);
                this.requestTextView.setTypeface(AndroidUtilities.bold());
                this.requestTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$8(z4, j, view);
                    }
                });
                frameLayout2.addView(this.requestTextView, LayoutHelper.createLinear(-1, 48, PlatformMediaRouter1RouteProvider.ALL_ROUTE_TYPES, 14, 0, 14, 0));
                TextView textView4 = new TextView(getContext());
                textView4.setGravity(17);
                textView4.setTextSize(1, 14.0f);
                textView4.setText(LocaleController.getString(!z4 ? C2573R.string.RequestToJoinChannelDescription : C2573R.string.RequestToJoinGroupDescription));
                textView4.setTextColor(getThemedColor(i3));
                linearLayout.addView(textView4, LayoutHelper.createLinear(-1, -2, 48, 24, 17, 24, 15));
            }
            if (chatInvite2.participants.isEmpty()) {
                z5 = false;
            } else {
                if (z4) {
                    lowerCase = LocaleController.getString(C2573R.string.ChannelPrivate).toLowerCase();
                } else {
                    lowerCase = LocaleController.getString(C2573R.string.MegaPrivate).toLowerCase();
                }
                textView.setText(lowerCase);
                int iMin = Math.min(this.chatInvite.participants.size(), 3);
                AvatarsImageView avatarsImageView = new AvatarsImageView(context, false);
                avatarsImageView.setAvatarsTextSize(AndroidUtilities.dp(20.0f));
                avatarsImageView.setSize(AndroidUtilities.dp(38.0f));
                avatarsImageView.setCount(iMin);
                avatarsImageView.setStepFactor(0.65f);
                for (int i5 = 0; i5 < iMin; i5++) {
                    avatarsImageView.setObject(i5, UserConfig.selectedAccount, this.chatInvite.participants.get(i5));
                }
                avatarsImageView.commitTransition(false);
                linearLayout.addView(avatarsImageView, LayoutHelper.createLinear((int) (38.0f + ((iMin - 1) * 25.699999f)), 44, 17, 0, 2, 0, 4));
                TextView textView5 = new TextView(context);
                textView5.setTextSize(1, 13.0f);
                textView5.setTextColor(getThemedColor(Theme.key_dialogTextGray3));
                textView5.setGravity(17);
                if (iMin == 1) {
                    z5 = false;
                    string = ellipsize(textView5, this.chatInvite, 0).toString();
                } else {
                    z5 = false;
                    if (iMin == 2) {
                        string = LocaleController.formatString("RequestToJoinMembersTwo", C2573R.string.RequestToJoinMembersTwo, ellipsize(textView5, this.chatInvite, 0), ellipsize(textView5, this.chatInvite, 1));
                    } else if (iMax == 3) {
                        string = LocaleController.formatString("RequestToJoinMembersThree", C2573R.string.RequestToJoinMembersThree, ellipsize(textView5, this.chatInvite, 0), ellipsize(textView5, this.chatInvite, 1), ellipsize(textView5, this.chatInvite, 2));
                        z5 = false;
                    } else {
                        int iMax2 = Math.max(iMax - iMin, 2);
                        z5 = false;
                        string = String.format(LocaleController.getPluralString("RequestToJoinMembersAll", iMax2), ellipsize(textView5, this.chatInvite, 0), ellipsize(textView5, this.chatInvite, 1), Integer.valueOf(iMax2));
                    }
                }
                textView5.setText(string);
                linearLayout.addView(textView5, LayoutHelper.createLinear(-2, -2, 49, 10, 0, 10, 24));
            }
            TLRPC.ChatInvite chatInvite8 = this.chatInvite;
            boolean z6 = ((!chatInvite8.channel || chatInvite8.megagroup) && (!ChatObject.isChannel(chatInvite8.chat) || this.chatInvite.chat.megagroup)) ? z5 : true;
            TextView textView6 = new TextView(getContext());
            textView6.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(24.0f), getThemedColor(Theme.key_featuredStickers_addButton), getThemedColor(Theme.key_featuredStickers_addButtonPressed)));
            ScaleStateListAnimator.apply(textView6, 0.02f, 1.2f);
            textView6.setEllipsize(TextUtils.TruncateAt.END);
            textView6.setGravity(17);
            textView6.setSingleLine(true);
            textView6.setText(LocaleController.getString(z6 ? C2573R.string.ProfileJoinChannel : C2573R.string.ProfileJoinGroup));
            textView6.setTextColor(getThemedColor(Theme.key_featuredStickers_buttonText));
            textView6.setTextSize(1, 14.0f);
            textView6.setTypeface(AndroidUtilities.bold());
            linearLayout.addView(textView6, LayoutHelper.createLinear(-1, 48, PlatformMediaRouter1RouteProvider.ALL_ROUTE_TYPES, 14, 0, 14, 14));
            textView6.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$12(j, i, view);
                }
            });
            return;
        }
        str2 = str;
        this.hash = str2;
        linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setClickable(true);
        FrameLayout frameLayout3 = new FrameLayout(context);
        frameLayout3.addView(linearLayout);
        NestedScrollView nestedScrollView2 = new NestedScrollView(context);
        nestedScrollView2.addView(frameLayout3);
        setCustomView(nestedScrollView2);
        ImageView imageView2 = new ImageView(context);
        imageView2.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        imageView2.setColorFilter(getThemedColor(Theme.key_sheet_other));
        imageView2.setImageResource(C2573R.drawable.ic_layer_close);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        int iDp2 = AndroidUtilities.dp(8.0f);
        imageView2.setPadding(iDp2, iDp2, iDp2, iDp2);
        frameLayout3.addView(imageView2, LayoutHelper.createFrame(36, 36.0f, 8388661, 6.0f, 8.0f, 8.0f, 0.0f));
        BackupImageView backupImageView2 = new BackupImageView(context);
        backupImageView2.setRoundRadius(ExteraConfig.getAvatarCorners(90.0f));
        linearLayout.addView(backupImageView2, LayoutHelper.createLinear(90, 90, 49, 0, 27, 0, 0));
        chatInvite = this.chatInvite;
        if (chatInvite == null) {
        }
        simpleTextView = new SimpleTextView(context);
        simpleTextView.setTypeface(AndroidUtilities.bold());
        simpleTextView.setTextSize(20);
        int i22 = Theme.key_dialogTextBlack;
        simpleTextView.setTextColor(getThemedColor(i22));
        simpleTextView.setText(str);
        simpleTextView.setGravity(17);
        linearLayout.addView(simpleTextView, LayoutHelper.createLinear(-2, -2, 49, 10, 10, 10, iMax <= 0 ? 0 : 20));
        if (z == 0) {
            simpleTextView.setRightDrawable(getScamDrawable(!z));
        }
        TLRPC.ChatInvite chatInvite72 = this.chatInvite;
        if (chatInvite72 == null) {
        }
        zIsEmpty = TextUtils.isEmpty(str3);
        TextView textView7 = new TextView(context);
        textView7.setTextSize(1, 13.0f);
        int i32 = Theme.key_dialogTextGray3;
        textView7.setTextColor(getThemedColor(i32));
        textView7.setSingleLine(true);
        TextUtils.TruncateAt truncateAt2 = TextUtils.TruncateAt.END;
        textView7.setEllipsize(truncateAt2);
        textView7.setText(LocaleController.formatPluralString(!z4 ? "Subscribers" : "Members", iMax, new Object[0]));
        linearLayout.addView(textView7, LayoutHelper.createLinear(-2, -2, 49, 10, 0, 10, zIsEmpty ? 0 : 20));
        if (!zIsEmpty) {
        }
        chatInvite2 = this.chatInvite;
        if (chatInvite2 != null) {
        }
        FrameLayout frameLayout22 = new FrameLayout(getContext());
        linearLayout.addView(frameLayout22, LayoutHelper.createLinear(-1, -2));
        RadialProgressView radialProgressView2 = new RadialProgressView(getContext(), resourcesProvider);
        this.requestProgressView = radialProgressView2;
        int i42 = Theme.key_featuredStickers_addButton;
        radialProgressView2.setProgressColor(getThemedColor(i42));
        this.requestProgressView.setSize(AndroidUtilities.dp(32.0f));
        this.requestProgressView.setVisibility(4);
        frameLayout22.addView(this.requestProgressView, LayoutHelper.createFrame(48, 48, 17));
        TextView textView32 = new TextView(getContext());
        this.requestTextView = textView32;
        textView32.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(24.0f), getThemedColor(i42), getThemedColor(Theme.key_featuredStickers_addButtonPressed)));
        this.requestTextView.setEllipsize(truncateAt2);
        this.requestTextView.setGravity(17);
        this.requestTextView.setSingleLine(true);
        this.requestTextView.setText(LocaleController.getString(!z4 ? C2573R.string.RequestToJoinChannel : C2573R.string.RequestToJoinGroup));
        this.requestTextView.setTextColor(getThemedColor(Theme.key_featuredStickers_buttonText));
        this.requestTextView.setTextSize(1, 14.0f);
        this.requestTextView.setTypeface(AndroidUtilities.bold());
        this.requestTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$8(z4, j, view);
            }
        });
        frameLayout22.addView(this.requestTextView, LayoutHelper.createLinear(-1, 48, PlatformMediaRouter1RouteProvider.ALL_ROUTE_TYPES, 14, 0, 14, 0));
        TextView textView42 = new TextView(getContext());
        textView42.setGravity(17);
        textView42.setTextSize(1, 14.0f);
        textView42.setText(LocaleController.getString(!z4 ? C2573R.string.RequestToJoinChannelDescription : C2573R.string.RequestToJoinGroupDescription));
        textView42.setTextColor(getThemedColor(i32));
        linearLayout.addView(textView42, LayoutHelper.createLinear(-1, -2, 48, 24, 17, 24, 15));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(final boolean z, final long j, View view) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1();
            }
        }, 400L);
        if (this.chatInvite == null && this.currentChat != null) {
            MessagesController.getInstance(this.currentAccount).addUserToChat(this.currentChat.id, UserConfig.getInstance(this.currentAccount).getCurrentUser(), 0, null, null, true, new Runnable() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            }, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                public final boolean run(TLRPC.TL_error tL_error) {
                    return this.f$0.lambda$new$3(z, tL_error);
                }
            });
            return;
        }
        final TLRPC.TL_messages_importChatInvite tL_messages_importChatInvite = new TLRPC.TL_messages_importChatInvite();
        tL_messages_importChatInvite.hash = this.hash;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_importChatInvite, new RequestDelegate() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda7
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$new$7(j, z, tL_messages_importChatInvite, tLObject, tL_error);
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        if (isDismissed()) {
            return;
        }
        this.requestTextView.setVisibility(4);
        this.requestProgressView.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$3(final boolean z, TLRPC.TL_error tL_error) {
        if (tL_error != null && "INVITE_REQUEST_SENT".equals(tL_error.text)) {
            setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda12
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.f$0.lambda$new$2(z, dialogInterface);
                }
            });
        }
        lambda$new$0();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(boolean z, DialogInterface dialogInterface) {
        showBulletin(getContext(), this.fragment, this.bulletinFactory, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(final long j, final boolean z, final TLRPC.TL_messages_importChatInvite tL_messages_importChatInvite, TLObject tLObject, final TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.TL_chatInviteJoinResultOk) {
            MessagesController.getInstance(this.currentAccount).processUpdates(((TLRPC.TL_chatInviteJoinResultOk) tLObject).updates, false);
        } else if (tLObject instanceof TLRPC.TL_chatInviteJoinResultWebView) {
            final TLRPC.TL_chatInviteJoinResultWebView tL_chatInviteJoinResultWebView = (TLRPC.TL_chatInviteJoinResultWebView) tLObject;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$4(tL_chatInviteJoinResultWebView, j);
                }
            });
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$6(tL_error, z, tL_messages_importChatInvite);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(TLRPC.TL_chatInviteJoinResultWebView tL_chatInviteJoinResultWebView, long j) {
        MessagesController.getInstance(this.currentAccount).putUsers(tL_chatInviteJoinResultWebView.users, false);
        BotGuardHelper.getInstance(this.currentAccount).openGuardBotWebApp(j, tL_chatInviteJoinResultWebView.bot_id, tL_chatInviteJoinResultWebView.query_id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(TLRPC.TL_error tL_error, final boolean z, TLRPC.TL_messages_importChatInvite tL_messages_importChatInvite) {
        BaseFragment baseFragment = this.fragment;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        if (tL_error != null) {
            if ("INVITE_REQUEST_SENT".equals(tL_error.text)) {
                setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda13
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        this.f$0.lambda$new$5(z, dialogInterface);
                    }
                });
            } else {
                AlertsCreator.processError(this.currentAccount, tL_error, this.fragment, tL_messages_importChatInvite, new Object[0]);
            }
        }
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(boolean z, DialogInterface dialogInterface) {
        showBulletin(getContext(), this.fragment, this.bulletinFactory, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$12(final long j, final int i, View view) {
        lambda$new$0();
        final TLRPC.TL_messages_importChatInvite tL_messages_importChatInvite = new TLRPC.TL_messages_importChatInvite();
        tL_messages_importChatInvite.hash = this.hash;
        ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(tL_messages_importChatInvite, null, new Utilities.Callback2() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$new$11(j, i, tL_messages_importChatInvite, (TLRPC.ChatInviteJoinResult) obj, (TLRPC.TL_error) obj2);
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11(final long j, final int i, final TLRPC.TL_messages_importChatInvite tL_messages_importChatInvite, TLRPC.ChatInviteJoinResult chatInviteJoinResult, final TLRPC.TL_error tL_error) {
        final TLRPC.Updates updates;
        if (chatInviteJoinResult instanceof TLRPC.TL_chatInviteJoinResultOk) {
            TLRPC.Updates updates2 = ((TLRPC.TL_chatInviteJoinResultOk) chatInviteJoinResult).updates;
            MessagesController.getInstance(this.currentAccount).processUpdates(updates2, false);
            updates = updates2;
        } else {
            if (chatInviteJoinResult instanceof TLRPC.TL_chatInviteJoinResultWebView) {
                final TLRPC.TL_chatInviteJoinResultWebView tL_chatInviteJoinResultWebView = (TLRPC.TL_chatInviteJoinResultWebView) chatInviteJoinResult;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$9(tL_chatInviteJoinResultWebView, j);
                    }
                });
            }
            updates = null;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$10(tL_error, updates, i, tL_messages_importChatInvite);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(TLRPC.TL_chatInviteJoinResultWebView tL_chatInviteJoinResultWebView, long j) {
        MessagesController.getInstance(this.currentAccount).putUsers(tL_chatInviteJoinResultWebView.users, false);
        BotGuardHelper.getInstance(this.currentAccount).openGuardBotWebApp(j, tL_chatInviteJoinResultWebView.bot_id, tL_chatInviteJoinResultWebView.query_id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(TLRPC.TL_error tL_error, TLRPC.Updates updates, int i, TLRPC.TL_messages_importChatInvite tL_messages_importChatInvite) {
        TLRPC.ChatInvite chatInvite;
        TLRPC.Chat chat;
        BaseFragment baseFragment = this.fragment;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        if (tL_error == null) {
            if (updates == null || updates.chats.isEmpty()) {
                return;
            }
            TLRPC.Chat chat2 = updates.chats.get(0);
            chat2.left = false;
            chat2.kicked = false;
            MessagesController.getInstance(this.currentAccount).putUsers(updates.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(updates.chats, false);
            openChat(chat2.id, !ChatObject.isChannelAndNotMegaGroup(chat2));
            return;
        }
        if ("USER_ALREADY_PARTICIPANT".equals(tL_error.text) && i == 0 && (chatInvite = this.chatInvite) != null && (chat = chatInvite.chat) != null) {
            openChat(chat.id, false);
        } else {
            AlertsCreator.processError(this.currentAccount, tL_error, this.fragment, tL_messages_importChatInvite, new Object[0]);
        }
    }

    public JoinGroupAlert setBulletinFactory(BulletinFactory bulletinFactory) {
        this.bulletinFactory = bulletinFactory;
        return this;
    }

    private Drawable getVerifiedCrossfadeDrawable() {
        return new CombinedDrawable(Theme.dialogs_verifiedDrawable, Theme.dialogs_verifiedCheckDrawable);
    }

    public static void showBulletin(Context context, BaseFragment baseFragment, boolean z) {
        showBulletin(context, baseFragment, BulletinFactory.of(baseFragment), z);
    }

    public static void showBulletin(Context context, BaseFragment baseFragment, BulletinFactory bulletinFactory, boolean z) {
        String string;
        if (context == null) {
            if (baseFragment != null) {
                baseFragment.getContext();
                return;
            }
            return;
        }
        if (bulletinFactory == null) {
            bulletinFactory = BulletinFactory.of(baseFragment);
        }
        Bulletin.TwoLineLottieLayout twoLineLottieLayout = new Bulletin.TwoLineLottieLayout(context, baseFragment.getResourceProvider());
        twoLineLottieLayout.imageView.setAnimation(C2573R.raw.timer_3, 28, 28);
        twoLineLottieLayout.titleTextView.setText(LocaleController.getString(C2573R.string.RequestToJoinSent));
        if (z) {
            string = LocaleController.getString(C2573R.string.RequestToJoinChannelSentDescription);
        } else {
            string = LocaleController.getString(C2573R.string.RequestToJoinGroupSentDescription);
        }
        twoLineLottieLayout.subtitleTextView.setText(string);
        bulletinFactory.create(twoLineLottieLayout, 2750).show();
    }

    private CharSequence ellipsize(TextView textView, TLRPC.ChatInvite chatInvite, int i) {
        String str = chatInvite.participants.get(i).first_name;
        if (str == null) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return TextUtils.ellipsize(str.trim(), textView.getPaint(), AndroidUtilities.dp(120.0f), TextUtils.TruncateAt.END);
    }

    private Drawable getScamDrawable(int i) {
        return i == 0 ? Theme.dialogs_scamDrawable : Theme.dialogs_fakeDrawable;
    }

    private void openChat(long j, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putLong("chat_id", j);
        if (MessagesController.getInstance(this.currentAccount).checkCanOpenChat(bundle, this.fragment)) {
            C38601 c38601 = new C38601(bundle, z, j);
            BaseFragment baseFragment = this.fragment;
            baseFragment.presentFragment(c38601, baseFragment instanceof ChatActivity);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.JoinGroupAlert$1 */
    public class C38601 extends ChatActivity {
        private boolean shownToast;
        final /* synthetic */ long val$chatId;
        final /* synthetic */ boolean val$showJoined;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C38601(Bundle bundle, boolean z, long j) {
            super(bundle);
            this.val$showJoined = z;
            this.val$chatId = j;
            this.shownToast = false;
        }

        @Override // org.telegram.ui.ChatActivity, org.telegram.ui.ActionBar.BaseFragment
        public void onBecomeFullyVisible() {
            super.onBecomeFullyVisible();
            if (this.shownToast || !this.val$showJoined) {
                return;
            }
            this.shownToast = true;
            final TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.val$chatId));
            if (ChatObject.canManageMyTag(chat)) {
                BulletinFactory bulletinFactoryOf = BulletinFactory.of(this);
                int i = C2573R.raw.contact_check;
                String string = LocaleController.getString(C2573R.string.JoinedGroup);
                String string2 = LocaleController.getString(C2573R.string.JoinedGroupAddTag);
                final long j = this.val$chatId;
                bulletinFactoryOf.createSimpleBulletin(i, string, string2, new Runnable() { // from class: org.telegram.ui.Components.JoinGroupAlert$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onBecomeFullyVisible$0(j, chat);
                    }
                }).hideAfterBottomSheet(false).show(true);
                return;
            }
            BulletinFactory.of(this).createSimpleBulletin(C2573R.raw.contact_check, LocaleController.getString(C2573R.string.JoinedGroup)).hideAfterBottomSheet(false).show(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBecomeFullyVisible$0(long j, TLRPC.Chat chat) {
            if (AndroidUtilities.isContextSafe(getContext())) {
                TagEditCell.showSheet(getContext(), this.currentAccount, -j, getUserConfig().getCurrentUser(), null, chat.admin_rights != null, chat.creator, ((BottomSheet) JoinGroupAlert.this).resourcesProvider);
            }
        }
    }
}
