package org.telegram.p029ui.Stories.recorder;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.TextView;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class SelectPeerView extends FrameLayout {
    private final AvatarDrawable avatarDrawable;
    private final int currentAccount;
    private final BackupImageView imageView;
    private ViewPropertyAnimator showAnimator;
    private final TextView subtitleView;
    private final TextView titleView;

    public SelectPeerView(Context context, int i) {
        super(context);
        this.currentAccount = i;
        this.avatarDrawable = new AvatarDrawable();
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m1124dp(15.0f));
        addView(backupImageView, LayoutHelper.createFrame(30, 30.0f, 19, 14.0f, 0.0f, 0.0f, 0.0f));
        TextView textView = new TextView(context);
        this.titleView = textView;
        textView.setTextSize(1, 14.0f);
        textView.setTextColor(-1);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setSingleLine();
        textView.setLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        addView(textView, LayoutHelper.createFrame(-1, -2.0f, 51, 53.0f, 11.33f, 12.0f, 0.0f));
        TextView textView2 = new TextView(context);
        this.subtitleView = textView2;
        textView2.setTextSize(1, 12.0f);
        textView2.setTextColor(Theme.multAlpha(-1, 0.85f));
        addView(textView2, LayoutHelper.createFrame(-1, -2.0f, 51, 53.0f, 29.33f, 12.0f, 0.0f));
        textView2.setText(AndroidUtilities.replaceArrows(LocaleController.getString(C2888R.string.LiveStoryPeerChange), false, AndroidUtilities.m1124dp(2.6666667f), AndroidUtilities.m1124dp(0.33f), 1.0f));
        set(null);
    }

    public void set(TLRPC.InputPeer inputPeer) {
        long peerDialogId;
        if (inputPeer == null) {
            peerDialogId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        } else {
            peerDialogId = DialogObject.getPeerDialogId(inputPeer);
        }
        if (peerDialogId >= 0) {
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId));
            this.avatarDrawable.setInfo(user);
            this.imageView.setForUserOrChat(user, this.avatarDrawable);
            this.titleView.setText(UserObject.getUserName(user));
            return;
        }
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerDialogId));
        this.avatarDrawable.setInfo(chat);
        this.imageView.setForUserOrChat(chat, this.avatarDrawable);
        this.titleView.setText(chat == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat.title);
    }

    public void setShowing(boolean z, boolean z2) {
        ViewPropertyAnimator viewPropertyAnimator = this.showAnimator;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            this.showAnimator = null;
        }
        if (z2) {
            setVisibility(0);
            ViewPropertyAnimator duration = animate().alpha(z ? 1.0f : 0.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(320L);
            this.showAnimator = duration;
            duration.start();
            return;
        }
        setVisibility(z ? 0 : 8);
        setAlpha(z ? 1.0f : 0.0f);
    }
}
