package org.telegram.p029ui.bots;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.view.View;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedEmojiDrawable;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.AttachableDrawable;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p029ui.Components.Text;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;
import org.telegram.tgnet.p028tl.TL_bots;

/* JADX INFO: loaded from: classes7.dex */
public abstract class SetupEmojiStatusSheet {
    public static void show(final int i, final TLRPC.User user, long j, final int i2, final Utilities.Callback2 callback2) {
        if (callback2 == null) {
            return;
        }
        final TLRPC.Document documentFindDocument = AnimatedEmojiDrawable.findDocument(i, j);
        if (documentFindDocument != null) {
            show(i, user, documentFindDocument, i2, new Utilities.Callback() { // from class: org.telegram.ui.bots.SetupEmojiStatusSheet$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    callback2.run((String) obj, documentFindDocument);
                }
            });
        } else {
            AnimatedEmojiDrawable.getDocumentFetcher(i).fetchDocument(j, new AnimatedEmojiDrawable.ReceivedDocument() { // from class: org.telegram.ui.bots.SetupEmojiStatusSheet$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.Components.AnimatedEmojiDrawable.ReceivedDocument
                public final void run(TLRPC.Document document) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.SetupEmojiStatusSheet$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i3 = i;
                            TLRPC.User user2 = user;
                            TLRPC.Document document2 = document;
                            SetupEmojiStatusSheet.show(i3, user2, document2, i, new Utilities.Callback() { // from class: org.telegram.ui.bots.SetupEmojiStatusSheet$$ExternalSyntheticLambda10
                                @Override // org.telegram.messenger.Utilities.Callback
                                public final void run(Object obj) {
                                    callback2.run((String) obj, document2);
                                }
                            });
                        }
                    });
                }
            });
        }
    }

    public static void show(final int i, TLRPC.User user, final TLRPC.Document document, final int i2, final Utilities.Callback callback) {
        SpannableStringBuilder spannableStringBuilderReplaceTags;
        if (callback == null) {
            return;
        }
        if (document == null || (document instanceof TLRPC.TL_documentEmpty)) {
            callback.run("SUGGESTED_EMOJI_INVALID");
            return;
        }
        Context contextFindActivity = AndroidUtilities.findActivity(LaunchActivity.instance);
        if (contextFindActivity == null) {
            contextFindActivity = ApplicationLoader.applicationContext;
        }
        ConnectionsManager.getInstance(i).getCurrentTime();
        TLRPC.User currentUser = UserConfig.getInstance(i).getCurrentUser();
        final boolean[] zArr = new boolean[1];
        final boolean[] zArr2 = new boolean[1];
        if (i2 > 0) {
            int i3 = i2 / 86400;
            int i4 = (i2 - (86400 * i3)) / 3600;
            int iRound = Math.round((r7 - (i4 * 3600)) / 60.0f);
            StringBuilder sb = new StringBuilder();
            if (i3 > 0) {
                if (sb.length() > 0) {
                    sb.append(" ");
                }
                sb.append(LocaleController.formatPluralString("BotEmojiStatusSetRequestForDay", i3, new Object[0]));
            }
            if (i4 > 0) {
                if (sb.length() > 0) {
                    sb.append(" ");
                }
                sb.append(LocaleController.formatPluralString("BotEmojiStatusSetRequestForHour", i4, new Object[0]));
            }
            if (iRound > 0) {
                if (sb.length() > 0) {
                    sb.append(" ");
                }
                sb.append(LocaleController.formatPluralString("BotEmojiStatusSetRequestForMinute", iRound, new Object[0]));
            }
            spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.BotEmojiStatusSetRequestFor, UserObject.getUserName(user), sb));
        } else {
            spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.BotEmojiStatusSetRequest, UserObject.getUserName(user)));
        }
        AlertDialog alertDialogCreate = new AlertDialog.Builder(contextFindActivity, null).setTopImage(new UserEmojiStatusDrawable(currentUser, document), Theme.getColor(Theme.key_dialogTopBackground)).setMessage(spannableStringBuilderReplaceTags).setPositiveButton(LocaleController.getString(C2888R.string.BotEmojiStatusConfirm), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.bots.SetupEmojiStatusSheet$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i5) {
                SetupEmojiStatusSheet.$r8$lambda$jGmmYIy0VFIyzAMrrL6Tm3RNVBg(i, zArr2, document, i2, zArr, callback, alertDialog, i5);
            }
        }).setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null).create();
        alertDialogCreate.show();
        alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.bots.SetupEmojiStatusSheet$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                SetupEmojiStatusSheet.$r8$lambda$V1U6ZnSV1fFU4tBdC9dbSPRxIho(zArr2, zArr, callback, dialogInterface);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$jGmmYIy0VFIyzAMrrL6Tm3RNVBg(final int i, boolean[] zArr, TLRPC.Document document, int i2, final boolean[] zArr2, final Utilities.Callback callback, AlertDialog alertDialog, int i3) {
        if (!UserConfig.getInstance(i).isPremium()) {
            new PremiumFeatureBottomSheet(new BaseFragment() { // from class: org.telegram.ui.bots.SetupEmojiStatusSheet.1
                @Override // org.telegram.p029ui.ActionBar.BaseFragment
                public int getCurrentAccount() {
                    return this.currentAccount;
                }

                @Override // org.telegram.p029ui.ActionBar.BaseFragment
                public Context getContext() {
                    return AndroidUtilities.findActivity(LaunchActivity.instance);
                }

                @Override // org.telegram.p029ui.ActionBar.BaseFragment
                public Activity getParentActivity() {
                    Activity activityFindActivity = AndroidUtilities.findActivity(ApplicationLoader.applicationContext);
                    return activityFindActivity == null ? LaunchActivity.instance : activityFindActivity;
                }
            }, 12, false).show();
            return;
        }
        zArr[0] = true;
        final TL_account.updateEmojiStatus updateemojistatus = new TL_account.updateEmojiStatus();
        TLRPC.TL_emojiStatus tL_emojiStatus = new TLRPC.TL_emojiStatus();
        tL_emojiStatus.document_id = document.f1668id;
        if (i2 > 0) {
            tL_emojiStatus.flags |= 1;
            tL_emojiStatus.until = ConnectionsManager.getInstance(i).getCurrentTime() + i2;
        }
        updateemojistatus.emoji_status = tL_emojiStatus;
        ConnectionsManager.getInstance(i).sendRequest(updateemojistatus, new RequestDelegate() { // from class: org.telegram.ui.bots.SetupEmojiStatusSheet$$ExternalSyntheticLambda9
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.SetupEmojiStatusSheet$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        SetupEmojiStatusSheet.$r8$lambda$qjBVdEmBi2OOINVrp3sTDsRgkV4(tLObject, zArr, callback, i, updateemojistatus);
                    }
                });
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$qjBVdEmBi2OOINVrp3sTDsRgkV4(TLObject tLObject, boolean[] zArr, Utilities.Callback callback, int i, TL_account.updateEmojiStatus updateemojistatus) {
        if (!(tLObject instanceof TLRPC.TL_boolTrue)) {
            if (zArr[0]) {
                return;
            }
            zArr[0] = true;
            callback.run("SERVER_ERROR");
            return;
        }
        TLRPC.User currentUser = UserConfig.getInstance(i).getCurrentUser();
        if (currentUser != null) {
            currentUser.emoji_status = updateemojistatus.emoji_status;
            NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.userEmojiStatusUpdated, currentUser);
            MessagesController.getInstance(i).updateEmojiStatusUntilUpdate(currentUser.f1825id, currentUser.emoji_status);
        }
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        callback.run(null);
    }

    public static /* synthetic */ void $r8$lambda$V1U6ZnSV1fFU4tBdC9dbSPRxIho(boolean[] zArr, boolean[] zArr2, Utilities.Callback callback, DialogInterface dialogInterface) {
        if (zArr[0] || zArr2[0]) {
            return;
        }
        zArr2[0] = true;
        callback.run("USER_DECLINED");
    }

    public static void askPermission(final int i, long j, final Utilities.Callback2 callback2) {
        final TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(j));
        TLRPC.UserFull userFull = MessagesController.getInstance(i).getUserFull(j);
        if (userFull == null) {
            MessagesController.getInstance(i).loadFullUser(user, 0, true, new Utilities.Callback() { // from class: org.telegram.ui.bots.SetupEmojiStatusSheet$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.SetupEmojiStatusSheet$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            SetupEmojiStatusSheet.$r8$lambda$84d1K1TcTg3Uc_f8QlS39OyHBJQ(userFull, callback2, i, user);
                        }
                    });
                }
            });
        } else {
            askPermission(i, user, userFull, callback2);
        }
    }

    public static /* synthetic */ void $r8$lambda$84d1K1TcTg3Uc_f8QlS39OyHBJQ(TLRPC.UserFull userFull, Utilities.Callback2 callback2, int i, TLRPC.User user) {
        if (userFull == null) {
            callback2.run(Boolean.FALSE, "cancelled");
        } else {
            askPermission(i, user, userFull, callback2);
        }
    }

    public static void askPermission(final int i, final TLRPC.User user, final TLRPC.UserFull userFull, final Utilities.Callback2 callback2) {
        if (callback2 == null) {
            return;
        }
        if (userFull.bot_can_manage_emoji_status) {
            callback2.run(Boolean.FALSE, "allowed");
            return;
        }
        Context contextFindActivity = AndroidUtilities.findActivity(LaunchActivity.instance);
        if (contextFindActivity == null) {
            contextFindActivity = ApplicationLoader.applicationContext;
        }
        final Context context = contextFindActivity;
        final boolean[] zArr = new boolean[1];
        final boolean[] zArr2 = new boolean[1];
        AlertDialog alertDialogCreate = new AlertDialog.Builder(context, null).setTopImage(new UserEmojiStatusDrawable(UserConfig.getInstance(i).getCurrentUser()), Theme.getColor(Theme.key_dialogTopBackground)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.BotEmojiStatusPermissionRequest, UserObject.getUserName(user), UserObject.getUserName(user)))).setPositiveButton(LocaleController.getString(C2888R.string.BotEmojiStatusPermissionAllow), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.bots.SetupEmojiStatusSheet$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                SetupEmojiStatusSheet.$r8$lambda$e9F1zgMeFykHyXu2bGe3uCAdOus(i, zArr2, zArr, callback2, context, user, userFull, alertDialog, i2);
            }
        }).setNegativeButton(LocaleController.getString(C2888R.string.BotEmojiStatusPermissionDecline), null).create();
        alertDialogCreate.show();
        alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.bots.SetupEmojiStatusSheet$$ExternalSyntheticLambda7
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                SetupEmojiStatusSheet.m20714$r8$lambda$xBcQe_QLK_Xp3dKHzBejZphvM(zArr2, zArr, context, i, user, callback2, dialogInterface);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$e9F1zgMeFykHyXu2bGe3uCAdOus(int i, boolean[] zArr, final boolean[] zArr2, final Utilities.Callback2 callback2, Context context, TLRPC.User user, final TLRPC.UserFull userFull, AlertDialog alertDialog, int i2) {
        if (!UserConfig.getInstance(i).isPremium()) {
            new PremiumFeatureBottomSheet(new BaseFragment() { // from class: org.telegram.ui.bots.SetupEmojiStatusSheet.2
                @Override // org.telegram.p029ui.ActionBar.BaseFragment
                public int getCurrentAccount() {
                    return this.currentAccount;
                }

                @Override // org.telegram.p029ui.ActionBar.BaseFragment
                public Context getContext() {
                    return AndroidUtilities.findActivity(LaunchActivity.instance);
                }

                @Override // org.telegram.p029ui.ActionBar.BaseFragment
                public Activity getParentActivity() {
                    Activity activityFindActivity = AndroidUtilities.findActivity(ApplicationLoader.applicationContext);
                    return activityFindActivity == null ? LaunchActivity.instance : activityFindActivity;
                }
            }, 12, false).show();
            if (zArr[0] || zArr2[0]) {
                return;
            }
            zArr2[0] = true;
            callback2.run(Boolean.TRUE, "cancelled");
            return;
        }
        zArr[0] = true;
        saveAccessRequested(context, i, user.f1825id);
        TL_bots.toggleUserEmojiStatusPermission toggleuseremojistatuspermission = new TL_bots.toggleUserEmojiStatusPermission();
        toggleuseremojistatuspermission.bot = MessagesController.getInstance(i).getInputUser(user);
        toggleuseremojistatuspermission.enabled = true;
        ConnectionsManager.getInstance(i).sendRequest(toggleuseremojistatuspermission, new RequestDelegate() { // from class: org.telegram.ui.bots.SetupEmojiStatusSheet$$ExternalSyntheticLambda11
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.SetupEmojiStatusSheet$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        SetupEmojiStatusSheet.m20712$r8$lambda$HIic6tNxbal5Rj9WJRo00n2yQ(tLObject, zArr, callback2, userFull);
                    }
                });
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$-HIic6tNxbal5Rj9WJRo00n2y-Q, reason: not valid java name */
    public static /* synthetic */ void m20712$r8$lambda$HIic6tNxbal5Rj9WJRo00n2yQ(TLObject tLObject, boolean[] zArr, Utilities.Callback2 callback2, TLRPC.UserFull userFull) {
        if (!(tLObject instanceof TLRPC.TL_boolTrue)) {
            if (zArr[0]) {
                return;
            }
            zArr[0] = true;
            callback2.run(Boolean.TRUE, "cancelled");
            return;
        }
        userFull.bot_can_manage_emoji_status = true;
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        callback2.run(Boolean.TRUE, "allowed");
    }

    /* JADX INFO: renamed from: $r8$lambda$xBcQe-_QLK_Xp3dKHzB-ejZphvM, reason: not valid java name */
    public static /* synthetic */ void m20714$r8$lambda$xBcQe_QLK_Xp3dKHzBejZphvM(boolean[] zArr, boolean[] zArr2, Context context, int i, TLRPC.User user, Utilities.Callback2 callback2, DialogInterface dialogInterface) {
        if (zArr[0] || zArr2[0]) {
            return;
        }
        zArr2[0] = true;
        saveAccessRequested(context, i, user.f1825id);
        callback2.run(Boolean.TRUE, "cancelled");
    }

    public static class UserEmojiStatusDrawable extends Drawable implements AttachableDrawable, NotificationCenter.NotificationCenterDelegate {
        private final AnimatedFloat animatedSwap;
        private boolean attached;
        private final Paint backgroundPaint;
        private final Paint backgroundPaint2;
        private int currentStatus;
        private final AnimatedEmojiDrawable[] emojis;
        private final boolean highlight;
        private final RectF rect;
        private final ImageReceiver statusImageReceiver;
        private final Text text;
        private final ImageReceiver userImageReceiver;
        private View view;
        private boolean waitingForStatuses;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public UserEmojiStatusDrawable(TLRPC.User user) {
            Paint paint = new Paint(1);
            this.backgroundPaint = paint;
            Paint paint2 = new Paint(1);
            this.backgroundPaint2 = paint2;
            ImageReceiver imageReceiver = new ImageReceiver();
            this.userImageReceiver = imageReceiver;
            this.statusImageReceiver = new ImageReceiver();
            this.currentStatus = 1;
            this.emojis = new AnimatedEmojiDrawable[2];
            this.rect = new RectF();
            this.animatedSwap = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.bots.SetupEmojiStatusSheet$UserEmojiStatusDrawable$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.invalidateSelf();
                }
            }, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.highlight = false;
            int i = Theme.key_windowBackgroundWhite;
            paint.setColor(Theme.getColor(i));
            paint2.setColor(Theme.getColor(i));
            paint2.setShadowLayer(AndroidUtilities.m1124dp(2.33f), 0.0f, AndroidUtilities.m1124dp(2.0f), Theme.multAlpha(-16777216, 0.18f));
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setInfo(user);
            imageReceiver.setForUserOrChat(user, avatarDrawable);
            imageReceiver.setRoundRadius(AndroidUtilities.m1124dp(16.0f));
            setRandomStatus();
            this.text = new Text(UserObject.getUserName(user), 14.0f);
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.groupStickersDidLoad && this.waitingForStatuses && this.attached) {
                this.waitingForStatuses = false;
                setRandomStatus();
            }
        }

        public void setRandomStatus() {
            AnimatedEmojiDrawable animatedEmojiDrawable;
            TLRPC.TL_messages_stickerSet stickerSet = MediaDataController.getInstance(UserConfig.selectedAccount).getStickerSet(new TLRPC.TL_inputStickerSetEmojiDefaultStatuses(), false);
            if (stickerSet == null || stickerSet.documents.isEmpty()) {
                this.waitingForStatuses = true;
                return;
            }
            TLRPC.Document document = (TLRPC.Document) stickerSet.documents.get((int) Math.floor(Math.random() * ((double) stickerSet.documents.size())));
            int i = 1 - this.currentStatus;
            this.currentStatus = i;
            AnimatedEmojiDrawable animatedEmojiDrawable2 = this.emojis[i];
            if (animatedEmojiDrawable2 != null) {
                animatedEmojiDrawable2.removeView(this.view);
            }
            this.emojis[this.currentStatus] = AnimatedEmojiDrawable.make(UserConfig.selectedAccount, 9, document);
            this.emojis[this.currentStatus].setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_featuredStickers_addButton), PorterDuff.Mode.SRC_IN));
            if (this.attached && (animatedEmojiDrawable = this.emojis[this.currentStatus]) != null) {
                animatedEmojiDrawable.addView(this.view);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.SetupEmojiStatusSheet$UserEmojiStatusDrawable$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setRandomStatus$0();
                }
            }, 2500L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setRandomStatus$0() {
            if (this.attached) {
                setRandomStatus();
            }
        }

        public UserEmojiStatusDrawable(TLRPC.User user, TLRPC.Document document) {
            Paint paint = new Paint(1);
            this.backgroundPaint = paint;
            Paint paint2 = new Paint(1);
            this.backgroundPaint2 = paint2;
            ImageReceiver imageReceiver = new ImageReceiver();
            this.userImageReceiver = imageReceiver;
            ImageReceiver imageReceiver2 = new ImageReceiver();
            this.statusImageReceiver = imageReceiver2;
            this.currentStatus = 1;
            this.emojis = new AnimatedEmojiDrawable[2];
            this.rect = new RectF();
            this.animatedSwap = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.bots.SetupEmojiStatusSheet$UserEmojiStatusDrawable$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.invalidateSelf();
                }
            }, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.highlight = true;
            int i = Theme.key_windowBackgroundWhite;
            paint.setColor(Theme.getColor(i));
            paint2.setColor(Theme.getColor(i));
            paint2.setShadowLayer(AndroidUtilities.m1124dp(2.33f), 0.0f, AndroidUtilities.m1124dp(2.0f), Theme.multAlpha(-16777216, 0.18f));
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setInfo(user);
            imageReceiver.setForUserOrChat(user, avatarDrawable);
            imageReceiver.setRoundRadius(AndroidUtilities.m1124dp(16.0f));
            imageReceiver2.setImage(ImageLocation.getForDocument(document), "120_120", ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 120), document), "120_120", DocumentObject.getSvgThumb(document.thumbs, Theme.key_windowBackgroundGray, 0.35f), 0L, null, null, 0);
            this.text = new Text(UserObject.getUserName(user), 14.0f);
        }

        @Override // org.telegram.p029ui.Components.AttachableDrawable
        public void onAttachedToWindow(ImageReceiver imageReceiver) {
            this.attached = true;
            this.userImageReceiver.onAttachedToWindow();
            this.statusImageReceiver.onAttachedToWindow();
            NotificationCenter.getInstance(UserConfig.selectedAccount).addObserver(this, NotificationCenter.recentEmojiStatusesUpdate);
            AnimatedEmojiDrawable animatedEmojiDrawable = this.emojis[0];
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.addView(this.view);
            }
            AnimatedEmojiDrawable animatedEmojiDrawable2 = this.emojis[1];
            if (animatedEmojiDrawable2 != null) {
                animatedEmojiDrawable2.addView(this.view);
            }
        }

        @Override // org.telegram.p029ui.Components.AttachableDrawable
        public void onDetachedFromWindow(ImageReceiver imageReceiver) {
            this.attached = false;
            this.userImageReceiver.onDetachedFromWindow();
            this.statusImageReceiver.onDetachedFromWindow();
            NotificationCenter.getInstance(UserConfig.selectedAccount).removeObserver(this, NotificationCenter.recentEmojiStatusesUpdate);
            AnimatedEmojiDrawable animatedEmojiDrawable = this.emojis[0];
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.removeView(this.view);
            }
            AnimatedEmojiDrawable animatedEmojiDrawable2 = this.emojis[1];
            if (animatedEmojiDrawable2 != null) {
                animatedEmojiDrawable2.removeView(this.view);
            }
        }

        @Override // org.telegram.p029ui.Components.AttachableDrawable
        public void setParent(View view) {
            this.view = view;
            this.statusImageReceiver.setParentView(view);
            this.userImageReceiver.setParentView(view);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            float f;
            float f2;
            float f3;
            AnimatedEmojiDrawable animatedEmojiDrawable;
            AnimatedEmojiDrawable animatedEmojiDrawable2;
            Rect bounds = getBounds();
            float fM1124dp = (AndroidUtilities.m1124dp(((this.highlight ? 48 : 28) + 38) + 6.66f) + this.text.getCurrentWidth()) / 2.0f;
            float fM1124dp2 = AndroidUtilities.m1124dp(32.0f) / 2.0f;
            this.rect.set(bounds.centerX() - fM1124dp, bounds.centerY() - fM1124dp2, bounds.centerX() + fM1124dp, bounds.centerY() + fM1124dp2);
            canvas.drawRoundRect(this.rect, fM1124dp2, fM1124dp2, this.backgroundPaint);
            ImageReceiver imageReceiver = this.userImageReceiver;
            RectF rectF = this.rect;
            imageReceiver.setImageCoords(rectF.left, rectF.top, AndroidUtilities.m1124dp(32.0f), AndroidUtilities.m1124dp(32.0f));
            this.userImageReceiver.draw(canvas);
            this.text.draw(canvas, this.rect.left + AndroidUtilities.m1124dp(36.0f), this.rect.centerY(), Theme.getColor(Theme.key_windowBackgroundWhiteBlackText), 1.0f);
            if (this.highlight) {
                float fM1124dp3 = this.rect.right - AndroidUtilities.m1124dp(22.66f);
                canvas.drawCircle(fM1124dp3, this.rect.centerY(), AndroidUtilities.m1124dp(24.0f), this.backgroundPaint2);
                this.statusImageReceiver.setImageCoords(fM1124dp3 - AndroidUtilities.m1124dp(16.0f), this.rect.centerY() - AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(32.0f), AndroidUtilities.m1124dp(32.0f));
                this.statusImageReceiver.draw(canvas);
                return;
            }
            float f4 = this.animatedSwap.set(this.currentStatus);
            canvas.save();
            canvas.translate((int) (this.rect.right - AndroidUtilities.m1124dp(30.66f)), (int) (this.rect.centerY() - AndroidUtilities.m1124dp(12.0f)));
            if (f4 >= 1.0f || (animatedEmojiDrawable2 = this.emojis[0]) == null) {
                f = 24.0f;
                f2 = 1.0f;
                f3 = 12.0f;
            } else {
                canvas.save();
                canvas.translate(0.0f, (this.currentStatus == 0 ? -1 : 1) * AndroidUtilities.m1124dp(9.0f) * f4);
                float f5 = 1.0f - f4;
                f = 24.0f;
                float f6 = (f5 * 0.4f) + 0.6f;
                f2 = 1.0f;
                f3 = 12.0f;
                canvas.scale(f6, f6, AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f));
                animatedEmojiDrawable2.setBounds(0, 0, AndroidUtilities.m1124dp(24.0f), AndroidUtilities.m1124dp(24.0f));
                animatedEmojiDrawable2.setAlpha((int) (f5 * 255.0f));
                animatedEmojiDrawable2.draw(canvas);
                canvas.restore();
            }
            if (f4 > 0.0f && (animatedEmojiDrawable = this.emojis[1]) != null) {
                canvas.save();
                canvas.translate(0.0f, (this.currentStatus != 1 ? 1 : -1) * AndroidUtilities.m1124dp(9.0f) * (f2 - f4));
                float f7 = (0.4f * f4) + 0.6f;
                canvas.scale(f7, f7, AndroidUtilities.m1124dp(f3), AndroidUtilities.m1124dp(f3));
                animatedEmojiDrawable.setBounds(0, 0, AndroidUtilities.m1124dp(f), AndroidUtilities.m1124dp(f));
                animatedEmojiDrawable.setAlpha((int) (f4 * 255.0f));
                animatedEmojiDrawable.draw(canvas);
                canvas.restore();
            }
            canvas.restore();
        }
    }

    public static boolean getAccessRequested(Context context, int i, long j) {
        if (context == null) {
            return false;
        }
        return context.getSharedPreferences("botemojistatus_" + i, 0).getBoolean("requested_" + j, false);
    }

    public static void saveAccessRequested(Context context, int i, long j) {
        if (context == null) {
            return;
        }
        context.getSharedPreferences("botemojistatus_" + i, 0).edit().putBoolean("requested_" + j, true).apply();
    }

    public static void clear() {
        Context context = ApplicationLoader.applicationContext;
        if (context == null) {
            return;
        }
        for (int i = 0; i < 16; i++) {
            context.getSharedPreferences("botemojistatus_" + i, 0).edit().clear().apply();
        }
    }
}
