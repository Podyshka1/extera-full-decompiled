package org.telegram.p029ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.exteragram.messenger.ExteraConfig;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedEmojiDrawable;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public class MentionCell extends LinearLayout {
    private boolean attached;
    private final AvatarDrawable avatarDrawable;
    private Drawable emojiDrawable;
    private final BackupImageView imageView;
    private final TextView nameTextView;
    private boolean needsDivider;
    private final Theme.ResourcesProvider resourcesProvider;
    private final TextView usernameTextView;

    public MentionCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.needsDivider = false;
        this.resourcesProvider = resourcesProvider;
        setOrientation(0);
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        this.avatarDrawable = avatarDrawable;
        avatarDrawable.setTextSize(AndroidUtilities.m1124dp(18.0f));
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(28.0f));
        addView(backupImageView, LayoutHelper.createLinear(28, 28, 12.0f, 4.0f, 0.0f, 0.0f));
        TextView textView = new TextView(context) { // from class: org.telegram.ui.Cells.MentionCell.1
            @Override // android.widget.TextView
            public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), false), bufferType);
            }
        };
        this.nameTextView = textView;
        textView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        textView.setTextSize(1, 15.0f);
        textView.setSingleLine(true);
        textView.setGravity(3);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        addView(textView, LayoutHelper.createLinear(-2, -2, 16, 12, 0, 0, 0));
        TextView textView2 = new TextView(context);
        this.usernameTextView = textView2;
        textView2.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText3));
        textView2.setTextSize(1, 15.0f);
        textView2.setSingleLine(true);
        textView2.setGravity(3);
        textView2.setEllipsize(truncateAt);
        addView(textView2, LayoutHelper.createLinear(-2, -2, 16, 12, 0, 8, 0));
    }

    public void invalidateEmojis() {
        this.nameTextView.invalidate();
        this.usernameTextView.invalidate();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(36.0f), TLObject.FLAG_30));
    }

    public void setUser(TLRPC.User user) {
        resetEmojiSuggestion();
        if (user == null) {
            this.nameTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.usernameTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.imageView.setImageDrawable(null);
            return;
        }
        this.avatarDrawable.setInfo(user);
        TLRPC.UserProfilePhoto userProfilePhoto = user.photo;
        if (userProfilePhoto != null && userProfilePhoto.photo_small != null) {
            this.imageView.setForUserOrChat(user, this.avatarDrawable);
        } else {
            this.imageView.setImageDrawable(this.avatarDrawable);
        }
        this.nameTextView.setText(UserObject.getUserName(user));
        if (UserObject.getPublicUsername(user) == null) {
            this.usernameTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
        } else {
            this.usernameTextView.setText("@" + UserObject.getPublicUsername(user));
        }
        this.imageView.setVisibility(0);
        this.usernameTextView.setVisibility(0);
    }

    public void setDivider(boolean z) {
        if (z != this.needsDivider) {
            this.needsDivider = z;
            setWillNotDraw(!z);
            invalidate();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.needsDivider) {
            canvas.drawLine(AndroidUtilities.m1124dp(52.0f), getHeight() - 1, getWidth() - AndroidUtilities.m1124dp(8.0f), getHeight() - 1, Theme.dividerPaint);
        }
    }

    public void setChat(TLRPC.Chat chat) {
        resetEmojiSuggestion();
        if (chat == null) {
            this.nameTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.usernameTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.imageView.setImageDrawable(null);
            return;
        }
        this.avatarDrawable.setInfo(chat);
        TLRPC.ChatPhoto chatPhoto = chat.photo;
        if (chatPhoto != null && chatPhoto.photo_small != null) {
            this.imageView.setForUserOrChat(chat, this.avatarDrawable);
        } else {
            this.imageView.setImageDrawable(this.avatarDrawable);
        }
        this.nameTextView.setText(chat.title);
        String publicUsername = ChatObject.getPublicUsername(chat);
        if (publicUsername == null) {
            this.usernameTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
        } else {
            this.usernameTextView.setText("@" + publicUsername);
        }
        this.imageView.setVisibility(0);
        this.usernameTextView.setVisibility(0);
    }

    public void setText(String str) {
        resetEmojiSuggestion();
        this.imageView.setVisibility(4);
        this.usernameTextView.setVisibility(4);
        this.nameTextView.setText(str);
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        this.nameTextView.invalidate();
    }

    public void resetEmojiSuggestion() {
        this.nameTextView.setPadding(0, 0, 0, 0);
        Drawable drawable = this.emojiDrawable;
        if (drawable != null) {
            if (drawable instanceof AnimatedEmojiDrawable) {
                ((AnimatedEmojiDrawable) drawable).removeView(this);
            }
            this.emojiDrawable = null;
            invalidate();
        }
    }

    public void setEmojiSuggestion(MediaDataController.KeywordResult keywordResult) {
        this.imageView.setVisibility(4);
        this.usernameTextView.setVisibility(4);
        String str = keywordResult.emoji;
        if (str != null && str.startsWith("animated_")) {
            try {
                Drawable drawable = this.emojiDrawable;
                if (drawable instanceof AnimatedEmojiDrawable) {
                    ((AnimatedEmojiDrawable) drawable).removeView(this);
                    this.emojiDrawable = null;
                }
                AnimatedEmojiDrawable animatedEmojiDrawableMake = AnimatedEmojiDrawable.make(UserConfig.selectedAccount, 0, Long.parseLong(keywordResult.emoji.substring(9)));
                this.emojiDrawable = animatedEmojiDrawableMake;
                if (this.attached) {
                    animatedEmojiDrawableMake.addView(this);
                }
            } catch (Exception unused) {
                this.emojiDrawable = Emoji.getEmojiDrawable(keywordResult.emoji);
            }
        } else {
            this.emojiDrawable = Emoji.getEmojiDrawable(keywordResult.emoji);
        }
        if (this.emojiDrawable == null) {
            this.nameTextView.setPadding(0, 0, 0, 0);
            TextView textView = this.nameTextView;
            StringBuilder sb = new StringBuilder();
            sb.append(keywordResult.emoji);
            sb.append(":  ");
            sb.append(keywordResult.keyword);
            textView.setText(sb);
            return;
        }
        this.nameTextView.setPadding(AndroidUtilities.m1124dp(22.0f), 0, 0, 0);
        TextView textView2 = this.nameTextView;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(":  ");
        sb2.append(keywordResult.keyword);
        textView2.setText(sb2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        Drawable drawable = this.emojiDrawable;
        if (drawable != null) {
            int iM1124dp = AndroidUtilities.m1124dp(drawable instanceof AnimatedEmojiDrawable ? 24.0f : 20.0f);
            int iM1124dp2 = AndroidUtilities.m1124dp(this.emojiDrawable instanceof AnimatedEmojiDrawable ? -2.0f : 0.0f);
            this.emojiDrawable.setBounds(this.nameTextView.getLeft() + iM1124dp2, ((this.nameTextView.getTop() + this.nameTextView.getBottom()) - iM1124dp) / 2, this.nameTextView.getLeft() + iM1124dp2 + iM1124dp, ((this.nameTextView.getTop() + this.nameTextView.getBottom()) + iM1124dp) / 2);
            Drawable drawable2 = this.emojiDrawable;
            if (drawable2 instanceof AnimatedEmojiDrawable) {
                ((AnimatedEmojiDrawable) drawable2).setTime(System.currentTimeMillis());
            }
            this.emojiDrawable.draw(canvas);
        }
    }

    public void setBotCommand(String str, String str2, TLRPC.User user) {
        resetEmojiSuggestion();
        if (user != null) {
            this.imageView.setVisibility(0);
            this.avatarDrawable.setInfo(user);
            TLRPC.UserProfilePhoto userProfilePhoto = user.photo;
            if (userProfilePhoto != null && userProfilePhoto.photo_small != null) {
                this.imageView.setForUserOrChat(user, this.avatarDrawable);
            } else {
                this.imageView.setImageDrawable(this.avatarDrawable);
            }
        } else {
            this.imageView.setVisibility(4);
        }
        this.usernameTextView.setVisibility(0);
        this.nameTextView.setText(str);
        TextView textView = this.usernameTextView;
        textView.setText(Emoji.replaceEmoji(str2, textView.getPaint().getFontMetricsInt(), false));
    }

    public void setIsDarkTheme(boolean z) {
        if (z) {
            this.nameTextView.setTextColor(-1);
            this.usernameTextView.setTextColor(-4473925);
        } else {
            this.nameTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
            this.usernameTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText3));
        }
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attached = false;
        Drawable drawable = this.emojiDrawable;
        if (drawable instanceof AnimatedEmojiDrawable) {
            ((AnimatedEmojiDrawable) drawable).removeView(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
        Drawable drawable = this.emojiDrawable;
        if (drawable instanceof AnimatedEmojiDrawable) {
            ((AnimatedEmojiDrawable) drawable).addView(this);
        }
    }
}
