package org.telegram.p029ui.Components;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.Layout;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.ChatActionCell;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;

/* JADX INFO: loaded from: classes7.dex */
public class SuggestBirthdayActionLayout {
    private TL_account.TL_birthday birthday;
    private final ButtonBounce bounce;
    private Text button;
    private final int currentAccount;
    private boolean hasButton;
    private final Theme.ResourcesProvider resourcesProvider;
    private final RLottieDrawable sticker;
    private Text text;
    private Text[] titles;
    private Text[] values;
    private final View view;
    private final RectF buttonRect = new RectF();
    private final Paint buttonPaint = new Paint(1);

    public SuggestBirthdayActionLayout(int i, ChatActionCell chatActionCell, Theme.ResourcesProvider resourcesProvider) {
        this.currentAccount = i;
        this.view = chatActionCell;
        this.resourcesProvider = resourcesProvider;
        RLottieDrawable rLottieDrawable = new RLottieDrawable(C2888R.raw.cake, "cake", AndroidUtilities.m1124dp(66.0f), AndroidUtilities.m1124dp(66.0f), true, null);
        this.sticker = rLottieDrawable;
        rLottieDrawable.restart();
        this.bounce = new ButtonBounce(chatActionCell);
    }

    public void set(MessageObject messageObject) {
        TLRPC.TL_messageActionSuggestBirthday tL_messageActionSuggestBirthday = (TLRPC.TL_messageActionSuggestBirthday) messageObject.messageOwner.action;
        this.birthday = tL_messageActionSuggestBirthday.birthday;
        this.text = new Text(TextUtils.concat(messageObject.messageText, ":"), 13.0f).multiline(6).align(Layout.Alignment.ALIGN_CENTER).setMaxWidth(width() - AndroidUtilities.m1124dp(32.0f));
        int i = (tL_messageActionSuggestBirthday.birthday.flags & 1) != 0 ? 3 : 2;
        Text[] textArr = new Text[i];
        this.titles = textArr;
        this.values = new Text[i];
        textArr[0] = new Text(LocaleController.getString(C2888R.string.DateDay), 11.0f);
        this.values[0] = new Text(_UrlKt.FRAGMENT_ENCODE_SET + tL_messageActionSuggestBirthday.birthday.day, 11.0f, AndroidUtilities.bold());
        this.titles[1] = new Text(LocaleController.getString(C2888R.string.DateMonth), 11.0f);
        this.values[1] = new Text(_UrlKt.FRAGMENT_ENCODE_SET + getMonthName(tL_messageActionSuggestBirthday.birthday.month - 1), 11.0f, AndroidUtilities.bold());
        if ((tL_messageActionSuggestBirthday.birthday.flags & 1) != 0) {
            this.titles[2] = new Text(LocaleController.getString(C2888R.string.DateYear), 11.0f);
            this.values[2] = new Text(_UrlKt.FRAGMENT_ENCODE_SET + tL_messageActionSuggestBirthday.birthday.year, 11.0f, AndroidUtilities.bold());
        }
        this.hasButton = !messageObject.isOutOwner();
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        this.buttonPaint.setColor(Theme.multAlpha(resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark() ? -1 : -16777216, 0.12f));
        this.button = new Text(LocaleController.getString(C2888R.string.SuggestedDateOfBirthView), 14.0f, AndroidUtilities.bold());
    }

    private final String getMonthName(int i) {
        int[] iArr = {C2888R.string.January, C2888R.string.February, C2888R.string.March, C2888R.string.April, C2888R.string.May, C2888R.string.June, C2888R.string.July, C2888R.string.August, C2888R.string.September, C2888R.string.October, C2888R.string.November, C2888R.string.December};
        if (i < 0 || i >= 12) {
            return _UrlKt.FRAGMENT_ENCODE_SET + i;
        }
        return LocaleController.getString(iArr[i]);
    }

    public void draw(Canvas canvas) {
        int iM1124dp = AndroidUtilities.m1124dp(66.0f);
        int width = (this.view.getWidth() - iM1124dp) / 2;
        this.sticker.setBounds(width, AndroidUtilities.m1124dp(13.0f), width + iM1124dp, AndroidUtilities.m1124dp(13.0f) + iM1124dp);
        this.sticker.draw(canvas);
        this.text.draw(canvas, (this.view.getWidth() - this.text.getWidth()) / 2.0f, AndroidUtilities.m1124dp(19.0f) + iM1124dp, -1, 1.0f);
        int iM1124dp2 = (int) (AndroidUtilities.m1124dp(19.0f) + iM1124dp + this.text.getHeight() + AndroidUtilities.m1124dp(17.0f));
        int iM1124dp3 = 0;
        for (int i = 0; i < this.titles.length; i++) {
            iM1124dp3 = (int) (iM1124dp3 + AndroidUtilities.m1124dp(9.0f) + Math.max(this.titles[i].getWidth(), this.values[i].getWidth()) + AndroidUtilities.m1124dp(9.0f));
        }
        int width2 = (this.view.getWidth() - iM1124dp3) / 2;
        int i2 = 0;
        while (i2 < this.titles.length) {
            float fM1124dp = AndroidUtilities.m1124dp(9.0f) + Math.max(this.titles[i2].getWidth(), this.values[i2].getWidth()) + AndroidUtilities.m1124dp(9.0f);
            float f = width2;
            float f2 = f + (fM1124dp / 2.0f);
            int i3 = (int) (f + fM1124dp);
            Text text = this.titles[i2];
            text.draw(canvas, f2 - (text.getWidth() / 2.0f), iM1124dp2, -1, 0.75f);
            Text text2 = this.values[i2];
            text2.draw(canvas, f2 - (text2.getWidth() / 2.0f), AndroidUtilities.m1124dp(16.0f) + iM1124dp2, -1, 1.0f);
            i2++;
            width2 = i3;
        }
        if (this.hasButton) {
            int iM1124dp4 = iM1124dp2 + AndroidUtilities.m1124dp(38.0f);
            canvas.save();
            float width3 = this.button.getWidth() + AndroidUtilities.m1124dp(26.0f);
            float fM1124dp2 = AndroidUtilities.m1124dp(30.0f);
            float f3 = iM1124dp4;
            this.buttonRect.set((this.view.getWidth() - width3) / 2.0f, f3, (this.view.getWidth() + width3) / 2.0f, f3 + fM1124dp2);
            float scale = this.bounce.getScale(0.1f);
            canvas.scale(scale, scale, this.buttonRect.centerX(), this.buttonRect.centerY());
            float f4 = fM1124dp2 / 2.0f;
            canvas.drawRoundRect(this.buttonRect, f4, f4, this.buttonPaint);
            this.button.draw(canvas, this.buttonRect.left + AndroidUtilities.m1124dp(13.0f), this.buttonRect.centerY(), -1, 1.0f);
            canvas.restore();
        }
    }

    public int width() {
        return AndroidUtilities.m1124dp(174.0f);
    }

    public int height() {
        return AndroidUtilities.m1124dp(140.0f) + ((int) this.text.getHeight()) + (this.hasButton ? AndroidUtilities.m1124dp(40.0f) : 0);
    }

    public void attach() {
        this.sticker.setMasterParent(this.view);
    }

    public void detach() {
        this.sticker.setMasterParent(null);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zContains = this.buttonRect.contains(motionEvent.getX(), motionEvent.getY());
        if (motionEvent.getAction() == 0) {
            this.bounce.setPressed(zContains);
        } else if (motionEvent.getAction() != 2) {
            if (motionEvent.getAction() == 1) {
                if (this.bounce.isPressed()) {
                    open();
                }
                this.bounce.setPressed(false);
            } else if (motionEvent.getAction() == 3) {
                this.bounce.setPressed(false);
            }
        }
        return this.bounce.isPressed();
    }

    public void open() {
        AlertsCreator.createBirthdayPickerDialog(this.view.getContext(), LocaleController.getString(C2888R.string.DateOfBirth), LocaleController.getString(C2888R.string.DateOfBirthAddToProfile), this.birthday, new Utilities.Callback() { // from class: org.telegram.ui.Components.SuggestBirthdayActionLayout$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$open$2((TL_account.TL_birthday) obj);
            }
        }, null, true, false, this.resourcesProvider).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$open$2(TL_account.TL_birthday tL_birthday) {
        TL_account.updateBirthday updatebirthday = new TL_account.updateBirthday();
        updatebirthday.flags |= 1;
        updatebirthday.birthday = tL_birthday;
        final TLRPC.UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(UserConfig.getInstance(this.currentAccount).getClientUserId());
        final TL_account.TL_birthday tL_birthday2 = userFull != null ? userFull.birthday : null;
        if (userFull != null) {
            userFull.flags2 |= 32;
            userFull.birthday = tL_birthday;
            MessagesStorage.getInstance(this.currentAccount).updateUserInfo(userFull, false);
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(updatebirthday, new RequestDelegate() { // from class: org.telegram.ui.Components.SuggestBirthdayActionLayout$$ExternalSyntheticLambda1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$open$1(userFull, tL_birthday2, tLObject, tL_error);
            }
        }, 1024);
        MessagesController.getInstance(this.currentAccount).invalidateContentSettings();
        MessagesController.getInstance(this.currentAccount).removeSuggestion(0L, "BIRTHDAY_SETUP");
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.newSuggestionsAvailable, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$open$1(final TLRPC.UserFull userFull, final TL_account.TL_birthday tL_birthday, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SuggestBirthdayActionLayout$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$open$0(tLObject, userFull, tL_birthday, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$open$0(TLObject tLObject, TLRPC.UserFull userFull, TL_account.TL_birthday tL_birthday, TLRPC.TL_error tL_error) {
        String str;
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        if (tLObject instanceof TLRPC.TL_boolTrue) {
            BulletinFactory.m1246of(safeLastFragment).createSimpleBulletin(C2888R.raw.gift, LocaleController.getString(C2888R.string.PrivacyBirthdaySetDone), LocaleController.getString(C2888R.string.PrivacyBirthdaySetDoneInfo)).setDuration(5000).show();
            return;
        }
        if (userFull != null) {
            if (tL_birthday == null) {
                userFull.flags2 &= -33;
            } else {
                userFull.flags2 |= 32;
            }
            userFull.birthday = tL_birthday;
            MessagesStorage.getInstance(this.currentAccount).updateUserInfo(userFull, false);
        }
        if (tL_error != null && (str = tL_error.text) != null && str.startsWith("FLOOD_WAIT_")) {
            new AlertDialog.Builder(this.view.getContext()).setTitle(LocaleController.getString(C2888R.string.PrivacyBirthdayTooOftenTitle)).setMessage(LocaleController.getString(C2888R.string.PrivacyBirthdayTooOftenMessage)).setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null).show();
        } else {
            BulletinFactory.m1246of(safeLastFragment).createSimpleBulletin(C2888R.raw.error, LocaleController.getString(C2888R.string.UnknownError)).show();
        }
    }
}
