package org.telegram.p029ui.Components;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Region;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Vibrator;
import android.text.Editable;
import android.text.Html;
import android.text.InputFilter;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.URLSpan;
import android.util.Base64;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.util.Consumer;
import com.android.p003dx.p006io.Opcodes;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.export.p011ui.ExportMapper$$ExternalSyntheticLambda2;
import com.exteragram.messenger.utils.system.VibratorUtils;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.LongFunction;
import java.util.function.Predicate;
import java.util.function.ToLongFunction;
import okhttp3.internal.p025ws.RealWebSocket;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AppGlobalConfig;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BotForumHelper$$ExternalSyntheticLambda2;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.NotificationsSettingsFacade;
import org.telegram.messenger.OneUIUtilities;
import org.telegram.messenger.SecretChatHelper;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.pip.utils.PipUtils;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.AlertDialogDecor;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Business.TimezonesController;
import org.telegram.p029ui.CacheControlActivity;
import org.telegram.p029ui.Cells.AccountSelectCell;
import org.telegram.p029ui.Cells.CheckBoxCell;
import org.telegram.p029ui.Cells.RadioColorCell;
import org.telegram.p029ui.Cells.TextColorCell;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.Bulletin;
import org.telegram.p029ui.Components.Forum.ForumUtilities;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.NumberPicker;
import org.telegram.p029ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p029ui.Components.voip.VoIPHelper;
import org.telegram.p029ui.LanguageSelectActivity;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.LoginActivity;
import org.telegram.p029ui.NotificationsCustomSettingsActivity;
import org.telegram.p029ui.PhotoViewer;
import org.telegram.p029ui.PremiumFeatureCell;
import org.telegram.p029ui.PremiumPreviewFragment;
import org.telegram.p029ui.PrivacyControlActivity;
import org.telegram.p029ui.ProfileActivity;
import org.telegram.p029ui.ProfileNotificationsActivity;
import org.telegram.p029ui.SelectChatUserSheet;
import org.telegram.p029ui.Stars.StarGiftSheet;
import org.telegram.p029ui.Stars.StarsController;
import org.telegram.p029ui.Stars.StarsIntroActivity;
import org.telegram.p029ui.Stories.DarkThemeResourceProvider;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.p029ui.ThemePreviewActivity;
import org.telegram.p029ui.TooManyCommunitiesActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;
import org.telegram.tgnet.p028tl.TL_phone;
import org.telegram.tgnet.p028tl.TL_stars;
import p022j$.time.LocalDate;
import p022j$.time.YearMonth;
import p022j$.time.ZoneId;
import p022j$.time.ZoneOffset;
import p022j$.util.Collection;
import p022j$.util.Objects;
import p022j$.util.function.Predicate$CC;
import p022j$.util.stream.Collectors;

/* JADX INFO: loaded from: classes7.dex */
public abstract class AlertsCreator {

    public interface AccountSelectDelegate {
        void didSelectAccount(int i);
    }

    public interface BlockDialogCallback {
        void run(boolean z, boolean z2);
    }

    public interface DatePickerDelegate {
        void didSelectDate(int i, int i2, int i3);
    }

    public interface FormattedDatePickerDelegate {
        void didSelectDate(int i, int i2);
    }

    public interface ScheduleDatePickerDelegate {
        void didSelectDate(boolean z, int i, int i2);
    }

    public interface SoundFrequencyDelegate {
        void didSelectValues(int i, int i2);
    }

    public interface StatusUntilDatePickerDelegate {
        void didSelectDate(int i);
    }

    public static /* synthetic */ void $r8$lambda$3Wfo8VoUY86jqdAsex7isovjgAU(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$5VD1jmGHJJufoDIclbtAPDTf8Rg(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$G7BqcTHA3WcsF5N2y3cKgYkf0Ys(NumberPicker numberPicker, int i, int i2) {
    }

    public static /* synthetic */ void $r8$lambda$JiwJr3bR3ySTvE4ZdMp08xfUBy0() {
    }

    public static /* synthetic */ void $r8$lambda$XLrXO3U798RVB6lvyOsmtUEUMPg(AlertDialog alertDialog, int i) {
    }

    public static /* synthetic */ void $r8$lambda$dcpkZwOG7Ko96J_c6pHf4w9uIRI(NumberPicker numberPicker, int i, int i2) {
    }

    public static Dialog createForgotPasscodeDialog(Context context) {
        return new AlertDialog.Builder(context).setTitle(LocaleController.getString(C2888R.string.ForgotPasscode)).setMessage(LocaleController.getString(C2888R.string.ForgotPasscodeInfo)).setPositiveButton(LocaleController.getString(C2888R.string.Close), null).create();
    }

    public static Dialog createLocationRequiredDialog(final Context context, boolean z) {
        return new AlertDialog.Builder(context).setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.PermissionNoLocationFriends))).setTopAnimation(C2888R.raw.permission_request_location, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).setPositiveButton(LocaleController.getString(C2888R.string.PermissionOpenSettings), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda146
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                AlertsCreator.m8535$r8$lambda$z9OV7Sej2fK9BMVVPq5XSk9LM(context, alertDialog, i);
            }
        }).setNegativeButton(LocaleController.getString(C2888R.string.ContactsPermissionAlertNotNow), null).create();
    }

    /* JADX INFO: renamed from: $r8$lambda$z9OV7Sej2fK9BMVVPq5X-Sk-9LM, reason: not valid java name */
    public static /* synthetic */ void m8535$r8$lambda$z9OV7Sej2fK9BMVVPq5XSk9LM(Context context, AlertDialog alertDialog, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            context.startActivity(intent);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public static Dialog createBackgroundActivityDialog(final Context context) {
        int i;
        AlertDialog.Builder title = new AlertDialog.Builder(context).setTitle(LocaleController.getString(C2888R.string.AllowBackgroundActivity));
        if (OneUIUtilities.isOneUI()) {
            i = Build.VERSION.SDK_INT >= 31 ? C2888R.string.AllowBackgroundActivityInfoOneUIAboveS : C2888R.string.AllowBackgroundActivityInfoOneUIBelowS;
        } else {
            i = C2888R.string.AllowBackgroundActivityInfo;
        }
        return title.setMessage(AndroidUtilities.replaceTags(LocaleController.getString(i))).setTopAnimation(C2888R.raw.permission_request_apk, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).setPositiveButton(LocaleController.getString(C2888R.string.PermissionOpenSettings), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda7
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                AlertsCreator.$r8$lambda$AvuHCR1k6V5fBzOuStuj5qfZeNs(context, alertDialog, i2);
            }
        }).setNegativeButton(LocaleController.getString(C2888R.string.ContactsPermissionAlertNotNow), null).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda8
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                SharedConfig.BackgroundActivityPrefs.increaseDismissedCount();
            }
        }).create();
    }

    public static /* synthetic */ void $r8$lambda$AvuHCR1k6V5fBzOuStuj5qfZeNs(Context context, AlertDialog alertDialog, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            context.startActivity(intent);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public static Dialog createWebViewPermissionsRequestDialog(final Context context, Theme.ResourcesProvider resourcesProvider, String[] strArr, int i, String str, String str2, final Consumer consumer) {
        final boolean z;
        if (strArr == null || !(context instanceof Activity)) {
            z = false;
        } else {
            Activity activity = (Activity) context;
            for (String str3 : strArr) {
                if (activity.checkSelfPermission(str3) != 0 && activity.shouldShowRequestPermissionRationale(str3)) {
                    z = true;
                    break;
                }
            }
            z = false;
        }
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        AlertDialog.Builder topAnimation = new AlertDialog.Builder(context, resourcesProvider).setTopAnimation(i, 72, false, Theme.getColor(Theme.key_dialogTopBackground));
        if (z) {
            str = str2;
        }
        return topAnimation.setMessage(AndroidUtilities.replaceTags(str)).setPositiveButton(LocaleController.getString(z ? C2888R.string.PermissionOpenSettings : C2888R.string.BotWebViewRequestAllow), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda142
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                AlertsCreator.m8527$r8$lambda$tUfQ2PKxixHa2KrEl7AuAV6nLo(z, context, atomicBoolean, consumer, alertDialog, i2);
            }
        }).setNegativeButton(LocaleController.getString(C2888R.string.BotWebViewRequestDontAllow), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda143
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                AlertsCreator.$r8$lambda$HEvbBaVkS3tygf2fstRGhrdMj8k(atomicBoolean, consumer, alertDialog, i2);
            }
        }).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda144
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AlertsCreator.$r8$lambda$e_UUPM06Fsq_qCQnM0W1euYrafk(atomicBoolean, consumer, dialogInterface);
            }
        }).create();
    }

    /* JADX INFO: renamed from: $r8$lambda$tUfQ2-PKxixHa2KrEl7AuAV6nLo, reason: not valid java name */
    public static /* synthetic */ void m8527$r8$lambda$tUfQ2PKxixHa2KrEl7AuAV6nLo(boolean z, Context context, AtomicBoolean atomicBoolean, Consumer consumer, AlertDialog alertDialog, int i) {
        if (z) {
            try {
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
                context.startActivity(intent);
                return;
            } catch (Exception e) {
                FileLog.m1136e(e);
                return;
            }
        }
        atomicBoolean.set(true);
        consumer.accept(Boolean.TRUE);
    }

    public static /* synthetic */ void $r8$lambda$HEvbBaVkS3tygf2fstRGhrdMj8k(AtomicBoolean atomicBoolean, Consumer consumer, AlertDialog alertDialog, int i) {
        atomicBoolean.set(true);
        consumer.accept(Boolean.FALSE);
    }

    public static /* synthetic */ void $r8$lambda$e_UUPM06Fsq_qCQnM0W1euYrafk(AtomicBoolean atomicBoolean, Consumer consumer, DialogInterface dialogInterface) {
        if (atomicBoolean.get()) {
            return;
        }
        consumer.accept(Boolean.FALSE);
    }

    public static Dialog createApkRestrictedDialog(final Context context, Theme.ResourcesProvider resourcesProvider) {
        return new AlertDialog.Builder(context, resourcesProvider).setMessage(LocaleController.getString(C2888R.string.ApkRestricted)).setTopAnimation(C2888R.raw.permission_request_apk, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).setPositiveButton(LocaleController.getString(C2888R.string.PermissionOpenSettings), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                AlertsCreator.m8469$r8$lambda$423SrzgdSx4Htk3AIZLaUXHAbI(context, alertDialog, i);
            }
        }).setNegativeButton(LocaleController.getString(C2888R.string.ContactsPermissionAlertNotNow), null).create();
    }

    /* JADX INFO: renamed from: $r8$lambda$423SrzgdSx4Htk3AI-ZLaUXHAbI, reason: not valid java name */
    public static /* synthetic */ void m8469$r8$lambda$423SrzgdSx4Htk3AIZLaUXHAbI(Context context, AlertDialog alertDialog, int i) {
        try {
            context.startActivity(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + context.getPackageName())));
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public static /* synthetic */ void $r8$lambda$4f2RXDpSskM5bIoBqQs4mqEINPk(long j, int i, long j2) {
        Activity activity = AndroidUtilities.getActivity();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        new StarsIntroActivity.StarsNeededSheet(activity, (PhotoViewer.getInstance().isVisible() || (safeLastFragment != null && safeLastFragment.hasShownSheet())) ? new DarkThemeResourceProvider() : safeLastFragment != null ? safeLastFragment.getResourceProvider() : null, j, 13, DialogObject.getShortName(i, j2), new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                AlertsCreator.$r8$lambda$JiwJr3bR3ySTvE4ZdMp08xfUBy0();
            }
        }, j2).show();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static Dialog processError(final int i, TLRPC.TL_error tL_error, BaseFragment baseFragment, TLObject tLObject, Object... objArr) {
        String str;
        TLRPC.InputPeer inputPeer;
        long peerDialogId;
        String restrictedErrorText;
        TLRPC.Chat chat;
        String firstName;
        BaseFragment lastFragment = baseFragment;
        if (tL_error != null && tL_error.code != 406 && (str = tL_error.text) != null) {
            if ("BALANCE_TOO_LOW".equalsIgnoreCase(str)) {
                final long allowedPaidStars = StarsController.getAllowedPaidStars(tLObject);
                final long peer = StarsController.getPeer(tLObject);
                if (allowedPaidStars > 0) {
                    StarsController.getInstance(i).getBalance(true, new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            AlertsCreator.$r8$lambda$4f2RXDpSskM5bIoBqQs4mqEINPk(allowedPaidStars, i, peer);
                        }
                    }, true);
                }
            } else {
                boolean z = tLObject instanceof TLRPC.TL_messages_sendMessage;
                boolean zBooleanValue = false;
                if (z && tL_error.text.contains("PRIVACY_PREMIUM_REQUIRED")) {
                    long peerDialogId2 = DialogObject.getPeerDialogId(((TLRPC.TL_messages_sendMessage) tLObject).peer);
                    if (peerDialogId2 >= 0) {
                        firstName = UserObject.getFirstName(MessagesController.getInstance(i).getUser(Long.valueOf(peerDialogId2)));
                    } else {
                        TLRPC.Chat chat2 = MessagesController.getInstance(i).getChat(Long.valueOf(-peerDialogId2));
                        if (chat2 == null) {
                            firstName = _UrlKt.FRAGMENT_ENCODE_SET;
                        } else {
                            firstName = chat2.title;
                        }
                    }
                    if (lastFragment == null) {
                        lastFragment = LaunchActivity.getLastFragment();
                    }
                    showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.MessagePremiumErrorTitle), LocaleController.formatString(C2888R.string.MessagePremiumErrorMessage, firstName));
                    MessagesController.getInstance(i).invalidateUserPremiumBlocked(peerDialogId2, 0);
                } else {
                    boolean z2 = tLObject instanceof TLRPC.TL_messages_initHistoryImport;
                    if (z2 || (tLObject instanceof TLRPC.TL_messages_checkHistoryImportPeer) || (tLObject instanceof TLRPC.TL_messages_checkHistoryImport) || (tLObject instanceof TLRPC.TL_messages_startHistoryImport)) {
                        if (z2) {
                            inputPeer = ((TLRPC.TL_messages_initHistoryImport) tLObject).peer;
                        } else {
                            inputPeer = tLObject instanceof TLRPC.TL_messages_startHistoryImport ? ((TLRPC.TL_messages_startHistoryImport) tLObject).peer : null;
                        }
                        if (lastFragment == null) {
                            lastFragment = LaunchActivity.getLastFragment();
                        }
                        if (tL_error.text.contains("USER_IS_BLOCKED")) {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.ImportErrorTitle), LocaleController.getString(C2888R.string.ImportErrorUserBlocked));
                        } else if (tL_error.text.contains("USER_NOT_MUTUAL_CONTACT")) {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.ImportErrorTitle), LocaleController.getString(C2888R.string.ImportMutualError));
                        } else if (tL_error.text.contains("IMPORT_PEER_TYPE_INVALID")) {
                            if (inputPeer instanceof TLRPC.TL_inputPeerUser) {
                                showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.ImportErrorTitle), LocaleController.getString(C2888R.string.ImportErrorChatInvalidUser));
                            } else {
                                showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.ImportErrorTitle), LocaleController.getString(C2888R.string.ImportErrorChatInvalidGroup));
                            }
                        } else if (tL_error.text.contains("CHAT_ADMIN_REQUIRED")) {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.ImportErrorTitle), LocaleController.getString(C2888R.string.ImportErrorNotAdmin));
                        } else if (tL_error.text.startsWith("IMPORT_FORMAT")) {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.ImportErrorTitle), LocaleController.getString(C2888R.string.ImportErrorFileFormatInvalid));
                        } else if (tL_error.text.startsWith("PEER_ID_INVALID")) {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.ImportErrorTitle), LocaleController.getString(C2888R.string.ImportErrorPeerInvalid));
                        } else if (tL_error.text.contains("IMPORT_LANG_NOT_FOUND")) {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.ImportErrorTitle), LocaleController.getString(C2888R.string.ImportErrorFileLang));
                        } else if (tL_error.text.contains("IMPORT_UPLOAD_FAILED")) {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.ImportErrorTitle), LocaleController.getString(C2888R.string.ImportFailedToUpload));
                        } else if (tL_error.text.startsWith("FLOOD_WAIT")) {
                            showFloodWaitAlert(tL_error.text, lastFragment);
                        } else {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.ImportErrorTitle), LocaleController.getString(C2888R.string.ErrorOccurred) + "\n" + tL_error.text);
                        }
                    } else if ((tLObject instanceof TL_account.saveSecureValue) || (tLObject instanceof TL_account.getAuthorizationForm)) {
                        if (lastFragment == null) {
                            lastFragment = LaunchActivity.getLastFragment();
                        }
                        if (tL_error.text.contains("PHONE_NUMBER_INVALID")) {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.InvalidPhoneNumber));
                        } else if (tL_error.text.startsWith("FLOOD_WAIT")) {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.FloodWait));
                        } else if ("APP_VERSION_OUTDATED".equals(tL_error.text)) {
                            showUpdateAppAlert(lastFragment.getParentActivity(), LocaleController.getString(C2888R.string.UpdateAppAlert), true);
                        } else {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.ErrorOccurred) + "\n" + tL_error.text);
                        }
                    } else {
                        boolean z3 = tLObject instanceof TLRPC.TL_channels_joinChannel;
                        if (z3 || (tLObject instanceof TLRPC.TL_channels_editAdmin) || (tLObject instanceof TLRPC.TL_channels_inviteToChannel) || (tLObject instanceof TLRPC.TL_messages_addChatUser) || (tLObject instanceof TLRPC.TL_messages_startBot) || (tLObject instanceof TLRPC.TL_channels_editBanned) || (tLObject instanceof TLRPC.TL_messages_editChatDefaultBannedRights) || (tLObject instanceof TLRPC.TL_messages_editChatAdmin) || (tLObject instanceof TLRPC.TL_messages_migrateChat) || (tLObject instanceof TL_phone.inviteToGroupCall)) {
                            if (lastFragment != null && tL_error.text.equals("CHANNELS_TOO_MUCH")) {
                                if (lastFragment.getParentActivity() != null) {
                                    lastFragment.showDialog(new LimitReachedBottomSheet(lastFragment, lastFragment.getParentActivity(), 5, i, null));
                                } else if (z3 || (tLObject instanceof TLRPC.TL_channels_inviteToChannel)) {
                                    lastFragment.presentFragment(new TooManyCommunitiesActivity(0));
                                } else {
                                    lastFragment.presentFragment(new TooManyCommunitiesActivity(1));
                                }
                                return null;
                            }
                            if (lastFragment != null) {
                                String str2 = tL_error.text;
                                if (objArr != null && objArr.length > 0) {
                                    zBooleanValue = ((Boolean) objArr[0]).booleanValue();
                                }
                                showAddUserAlert(str2, lastFragment, zBooleanValue, tLObject);
                            } else if (tL_error.text.equals("PEER_FLOOD")) {
                                NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.needShowAlert, 1);
                            }
                        } else {
                            if (tLObject instanceof TLRPC.TL_messages_createChat) {
                                if (lastFragment == null) {
                                    lastFragment = LaunchActivity.getLastFragment();
                                }
                                BaseFragment baseFragment2 = lastFragment;
                                if (tL_error.text.equals("CHANNELS_TOO_MUCH")) {
                                    if (baseFragment2.getParentActivity() != null) {
                                        baseFragment2.showDialog(new LimitReachedBottomSheet(baseFragment2, baseFragment2.getParentActivity(), 5, i, null));
                                    } else {
                                        baseFragment2.presentFragment(new TooManyCommunitiesActivity(2));
                                    }
                                    return null;
                                }
                                if (tL_error.text.startsWith("FLOOD_WAIT")) {
                                    showFloodWaitAlert(tL_error.text, baseFragment2);
                                } else {
                                    showAddUserAlert(tL_error.text, baseFragment2, false, tLObject);
                                }
                            } else if (tLObject instanceof TLRPC.TL_channels_createChannel) {
                                if (lastFragment == null) {
                                    lastFragment = LaunchActivity.getLastFragment();
                                }
                                BaseFragment baseFragment3 = lastFragment;
                                if (tL_error.text.equals("CHANNELS_TOO_MUCH")) {
                                    if (baseFragment3.getParentActivity() != null) {
                                        baseFragment3.showDialog(new LimitReachedBottomSheet(baseFragment3, baseFragment3.getParentActivity(), 5, i, null));
                                    } else {
                                        baseFragment3.presentFragment(new TooManyCommunitiesActivity(2));
                                    }
                                    return null;
                                }
                                if (tL_error.text.startsWith("FLOOD_WAIT")) {
                                    showFloodWaitAlert(tL_error.text, baseFragment3);
                                } else {
                                    showAddUserAlert(tL_error.text, baseFragment3, false, tLObject);
                                }
                            } else if (tLObject instanceof TLRPC.TL_messages_editMessage) {
                                if (!tL_error.text.equals("MESSAGE_NOT_MODIFIED")) {
                                    if (lastFragment != null) {
                                        showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.EditMessageError));
                                    } else {
                                        showSimpleToast(null, LocaleController.getString(C2888R.string.EditMessageError));
                                    }
                                }
                            } else if (z || (tLObject instanceof TLRPC.TL_messages_sendMedia) || (tLObject instanceof TLRPC.TL_messages_sendInlineBotResult) || (tLObject instanceof TLRPC.TL_messages_forwardMessages) || (tLObject instanceof TLRPC.TL_messages_sendMultiMedia) || (tLObject instanceof TLRPC.TL_messages_sendScheduledMessages)) {
                                if (z) {
                                    peerDialogId = DialogObject.getPeerDialogId(((TLRPC.TL_messages_sendMessage) tLObject).peer);
                                } else if (tLObject instanceof TLRPC.TL_messages_sendMedia) {
                                    peerDialogId = DialogObject.getPeerDialogId(((TLRPC.TL_messages_sendMedia) tLObject).peer);
                                } else if (tLObject instanceof TLRPC.TL_messages_sendInlineBotResult) {
                                    peerDialogId = DialogObject.getPeerDialogId(((TLRPC.TL_messages_sendInlineBotResult) tLObject).peer);
                                } else if (tLObject instanceof TLRPC.TL_messages_forwardMessages) {
                                    peerDialogId = DialogObject.getPeerDialogId(((TLRPC.TL_messages_forwardMessages) tLObject).to_peer);
                                } else if (tLObject instanceof TLRPC.TL_messages_sendMultiMedia) {
                                    peerDialogId = DialogObject.getPeerDialogId(((TLRPC.TL_messages_sendMultiMedia) tLObject).peer);
                                } else {
                                    peerDialogId = tLObject instanceof TLRPC.TL_messages_sendScheduledMessages ? DialogObject.getPeerDialogId(((TLRPC.TL_messages_sendScheduledMessages) tLObject).peer) : 0L;
                                }
                                String str3 = tL_error.text;
                                if (str3 != null && str3.startsWith("CHAT_SEND_") && tL_error.text.endsWith("FORBIDDEN")) {
                                    restrictedErrorText = tL_error.text;
                                    chat = peerDialogId < 0 ? MessagesController.getInstance(i).getChat(Long.valueOf(-peerDialogId)) : null;
                                    String str4 = tL_error.text;
                                    str4.getClass();
                                    switch (str4) {
                                        case "CHAT_SEND_VOICES_FORBIDDEN":
                                            restrictedErrorText = ChatObject.getRestrictedErrorText(chat, 20);
                                            break;
                                        case "CHAT_SEND_PLAIN_FORBIDDEN":
                                            restrictedErrorText = ChatObject.getRestrictedErrorText(chat, 22);
                                            break;
                                        case "CHAT_SEND_AUDIOS_FORBIDDEN":
                                            restrictedErrorText = ChatObject.getRestrictedErrorText(chat, 18);
                                            break;
                                        case "CHAT_SEND_POLL_FORBIDDEN":
                                            restrictedErrorText = ChatObject.getRestrictedErrorText(chat, 10);
                                            break;
                                        case "CHAT_SEND_DOCS_FORBIDDEN":
                                            restrictedErrorText = ChatObject.getRestrictedErrorText(chat, 19);
                                            break;
                                        case "CHAT_SEND_ROUNDVIDEOS_FORBIDDEN":
                                            restrictedErrorText = ChatObject.getRestrictedErrorText(chat, 21);
                                            break;
                                        case "CHAT_SEND_VIDEOS_FORBIDDEN":
                                            restrictedErrorText = ChatObject.getRestrictedErrorText(chat, 17);
                                            break;
                                        case "CHAT_SEND_GIFS_FORBIDDEN":
                                            restrictedErrorText = ChatObject.getRestrictedErrorText(chat, 23);
                                            break;
                                        case "CHAT_SEND_PHOTOS_FORBIDDEN":
                                            restrictedErrorText = ChatObject.getRestrictedErrorText(chat, 16);
                                            break;
                                        case "CHAT_SEND_STICKERS_FORBIDDEN":
                                            restrictedErrorText = ChatObject.getRestrictedErrorText(chat, 8);
                                            break;
                                    }
                                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 1, restrictedErrorText);
                                } else {
                                    String str5 = tL_error.text;
                                    str5.getClass();
                                    switch (str5) {
                                        case "USER_BANNED_IN_CHANNEL":
                                            NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.needShowAlert, 5);
                                            break;
                                        case "PEER_FLOOD":
                                            NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.needShowAlert, 0);
                                            break;
                                        case "SCHEDULE_TOO_MUCH":
                                            showSimpleToast(lastFragment, LocaleController.getString(C2888R.string.MessageScheduledLimitReached));
                                            break;
                                    }
                                }
                            } else if (tLObject instanceof TLRPC.TL_messages_importChatInvite) {
                                if (lastFragment == null) {
                                    lastFragment = LaunchActivity.getLastFragment();
                                }
                                BaseFragment baseFragment4 = lastFragment;
                                if (tL_error.text.startsWith("FLOOD_WAIT")) {
                                    showSimpleAlert(baseFragment4, LocaleController.getString(C2888R.string.FloodWait));
                                } else if (tL_error.text.equals("USERS_TOO_MUCH")) {
                                    showSimpleAlert(baseFragment4, LocaleController.getString(C2888R.string.JoinToGroupErrorFull));
                                } else if (tL_error.text.equals("CHANNELS_TOO_MUCH")) {
                                    if (baseFragment4.getParentActivity() != null) {
                                        baseFragment4.showDialog(new LimitReachedBottomSheet(baseFragment4, baseFragment4.getParentActivity(), 5, i, null));
                                    } else {
                                        baseFragment4.presentFragment(new TooManyCommunitiesActivity(0));
                                    }
                                } else if (tL_error.text.equals("INVITE_HASH_EXPIRED")) {
                                    showSimpleAlert(baseFragment4, LocaleController.getString(C2888R.string.ExpiredLink), LocaleController.getString(C2888R.string.InviteExpired));
                                } else {
                                    showSimpleAlert(baseFragment4, LocaleController.getString(C2888R.string.JoinToGroupErrorNotExist));
                                }
                            } else if (tLObject instanceof TLRPC.TL_messages_getAttachedStickers) {
                                if (lastFragment != null && lastFragment.getParentActivity() != null) {
                                    try {
                                        Toast.makeText(lastFragment.getParentActivity(), LocaleController.getString(C2888R.string.ErrorOccurred) + "\n" + tL_error.text, 0).show();
                                    } catch (Exception e) {
                                        FileLog.m1136e(e);
                                    }
                                }
                            } else {
                                if ((tLObject instanceof TL_account.confirmPhone) || (tLObject instanceof TL_account.verifyPhone) || (tLObject instanceof TL_account.verifyEmail)) {
                                    if (tL_error.text.contains("PHONE_CODE_EMPTY") || tL_error.text.contains("PHONE_CODE_INVALID") || tL_error.text.contains("CODE_INVALID") || tL_error.text.contains("CODE_EMPTY")) {
                                        return showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.InvalidCode));
                                    }
                                    if (tL_error.text.contains("PHONE_CODE_EXPIRED") || tL_error.text.contains("EMAIL_VERIFY_EXPIRED")) {
                                        return showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.CodeExpired));
                                    }
                                    if (tL_error.text.startsWith("FLOOD_WAIT")) {
                                        return showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.FloodWait));
                                    }
                                    return showSimpleAlert(lastFragment, tL_error.text);
                                }
                                if (tLObject instanceof TLRPC.TL_auth_resendCode) {
                                    if (tL_error.text.contains("PHONE_NUMBER_INVALID")) {
                                        return showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.InvalidPhoneNumber));
                                    }
                                    if (tL_error.text.contains("PHONE_CODE_EMPTY") || tL_error.text.contains("PHONE_CODE_INVALID")) {
                                        return showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.InvalidCode));
                                    }
                                    if (tL_error.text.contains("PHONE_CODE_EXPIRED")) {
                                        return showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.CodeExpired));
                                    }
                                    if (tL_error.text.startsWith("FLOOD_WAIT")) {
                                        return showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.FloodWait));
                                    }
                                    if (tL_error.code != -1000) {
                                        return showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.ErrorOccurred) + "\n" + tL_error.text);
                                    }
                                } else {
                                    if (tLObject instanceof TL_account.sendConfirmPhoneCode) {
                                        if (tL_error.code == 400) {
                                            return showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.CancelLinkExpired));
                                        }
                                        if (tL_error.text.startsWith("FLOOD_WAIT")) {
                                            return showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.FloodWait));
                                        }
                                        return showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.ErrorOccurred));
                                    }
                                    if (tLObject instanceof TL_account.changePhone) {
                                        if (tL_error.text.contains("PHONE_NUMBER_INVALID")) {
                                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.InvalidPhoneNumber));
                                        } else if (tL_error.text.contains("PHONE_CODE_EMPTY") || tL_error.text.contains("PHONE_CODE_INVALID")) {
                                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.InvalidCode));
                                        } else if (tL_error.text.contains("PHONE_CODE_EXPIRED")) {
                                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.CodeExpired));
                                        } else if (tL_error.text.startsWith("FLOOD_WAIT")) {
                                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.FloodWait));
                                        } else if (tL_error.text.contains("FRESH_CHANGE_PHONE_FORBIDDEN")) {
                                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.FreshChangePhoneForbiddenTitle), LocaleController.getString(C2888R.string.FreshChangePhoneForbidden));
                                        } else {
                                            showSimpleAlert(lastFragment, tL_error.text);
                                        }
                                    } else if (tLObject instanceof TL_account.sendChangePhoneCode) {
                                        if (tL_error.text.contains("PHONE_NUMBER_INVALID")) {
                                            LoginActivity.needShowInvalidAlert(lastFragment, (String) objArr[0], false);
                                        } else if (tL_error.text.contains("PHONE_CODE_EMPTY") || tL_error.text.contains("PHONE_CODE_INVALID")) {
                                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.InvalidCode));
                                        } else if (tL_error.text.contains("PHONE_CODE_EXPIRED")) {
                                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.CodeExpired));
                                        } else if (tL_error.text.startsWith("FLOOD_WAIT")) {
                                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.FloodWait));
                                        } else if (tL_error.text.startsWith("PHONE_NUMBER_OCCUPIED")) {
                                            showSimpleAlert(lastFragment, LocaleController.formatString("ChangePhoneNumberOccupied", C2888R.string.ChangePhoneNumberOccupied, objArr[0]));
                                        } else if (tL_error.text.startsWith("PHONE_NUMBER_BANNED")) {
                                            LoginActivity.needShowInvalidAlert(lastFragment, (String) objArr[0], true);
                                        } else {
                                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.ErrorOccurred));
                                        }
                                    } else if (tLObject instanceof TL_account.updateUsername) {
                                        String str6 = tL_error.text;
                                        str6.getClass();
                                        if (str6.equals("USERNAME_INVALID")) {
                                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.UsernameInvalid));
                                        } else if (str6.equals("USERNAME_OCCUPIED")) {
                                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.UsernameInUse));
                                        } else {
                                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.ErrorOccurred));
                                        }
                                    } else if (tLObject instanceof TLRPC.TL_contacts_importContacts) {
                                        if (tL_error.text.startsWith("FLOOD_WAIT")) {
                                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.FloodWait));
                                        } else {
                                            showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.ErrorOccurred) + "\n" + tL_error.text);
                                        }
                                    } else if ((tLObject instanceof TL_account.getPassword) || (tLObject instanceof TL_account.getTmpPassword)) {
                                        if (tL_error.text.startsWith("FLOOD_WAIT")) {
                                            showSimpleToast(lastFragment, getFloodWaitString(tL_error.text));
                                        } else {
                                            showSimpleToast(lastFragment, tL_error.text);
                                        }
                                    } else if (tLObject instanceof TLRPC.TL_payments_sendPaymentForm) {
                                        String str7 = tL_error.text;
                                        str7.getClass();
                                        if (str7.equals("BOT_PRECHECKOUT_FAILED")) {
                                            showSimpleToast(lastFragment, LocaleController.getString(C2888R.string.PaymentPrecheckoutFailed));
                                        } else if (str7.equals("PAYMENT_FAILED")) {
                                            showSimpleToast(lastFragment, LocaleController.getString(C2888R.string.PaymentFailed));
                                        } else {
                                            showSimpleToast(lastFragment, tL_error.text);
                                        }
                                    } else if (tLObject instanceof TLRPC.TL_payments_validateRequestedInfo) {
                                        String str8 = tL_error.text;
                                        str8.getClass();
                                        if (str8.equals("SHIPPING_NOT_AVAILABLE")) {
                                            showSimpleToast(lastFragment, LocaleController.getString(C2888R.string.PaymentNoShippingMethod));
                                        } else {
                                            showSimpleToast(lastFragment, tL_error.text);
                                        }
                                    } else if (tLObject instanceof TLRPC.TL_payments_assignPlayMarketTransaction) {
                                        showSimpleAlert(lastFragment, LocaleController.getString(C2888R.string.PaymentConfirmationError) + "\n" + tL_error.text);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    public static Toast showSimpleToast(BaseFragment baseFragment, String str) {
        Context parentActivity;
        if (str == null) {
            return null;
        }
        if (baseFragment != null && baseFragment.getParentActivity() != null) {
            parentActivity = baseFragment.getParentActivity();
        } else {
            parentActivity = ApplicationLoader.applicationContext;
        }
        Toast toastMakeText = Toast.makeText(parentActivity, str, 1);
        try {
            toastMakeText.show();
            return toastMakeText;
        } catch (Exception e) {
            FileLog.m1136e(e);
            return toastMakeText;
        }
    }

    public static AlertDialog showUpdateAppAlert(final Context context, String str, boolean z) {
        if (context == null || str == null) {
            return null;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(LocaleController.getString(C2888R.string.AppName));
        builder.setMessage(str);
        builder.setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null);
        if (z) {
            builder.setNegativeButton(LocaleController.getString(C2888R.string.UpdateApp), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda28
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    Browser.openUrl(context, BuildVars.GITHUB_APP_URL);
                }
            });
        }
        return builder.show();
    }

    public static AlertDialog.Builder createLanguageAlert(final LaunchActivity launchActivity, final TLRPC.TL_langPackLanguage tL_langPackLanguage) {
        String string;
        int iIndexOf;
        if (tL_langPackLanguage == null) {
            return null;
        }
        tL_langPackLanguage.lang_code = tL_langPackLanguage.lang_code.replace(SignatureVisitor.SUPER, '_').toLowerCase();
        tL_langPackLanguage.plural_code = tL_langPackLanguage.plural_code.replace(SignatureVisitor.SUPER, '_').toLowerCase();
        String str = tL_langPackLanguage.base_lang_code;
        if (str != null) {
            tL_langPackLanguage.base_lang_code = str.replace(SignatureVisitor.SUPER, '_').toLowerCase();
        }
        final AlertDialog.Builder builder = new AlertDialog.Builder(launchActivity);
        if (LocaleController.getInstance().getCurrentLocaleInfo().shortName.equals(tL_langPackLanguage.lang_code)) {
            builder.setTitle(LocaleController.getString(C2888R.string.Language));
            string = LocaleController.formatString("LanguageSame", C2888R.string.LanguageSame, tL_langPackLanguage.name);
            builder.setNegativeButton(LocaleController.getString(C2888R.string.f1606OK), null);
            builder.setNeutralButton(LocaleController.getString(C2888R.string.SETTINGS), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda121
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    launchActivity.lambda$runLinkRequest$106(new LanguageSelectActivity());
                }
            });
        } else if (tL_langPackLanguage.strings_count == 0) {
            builder.setTitle(LocaleController.getString(C2888R.string.LanguageUnknownTitle));
            string = LocaleController.formatString("LanguageUnknownCustomAlert", C2888R.string.LanguageUnknownCustomAlert, tL_langPackLanguage.name);
            builder.setNegativeButton(LocaleController.getString(C2888R.string.f1606OK), null);
        } else {
            builder.setTitle(LocaleController.getString(C2888R.string.LanguageTitle));
            if (tL_langPackLanguage.official) {
                string = LocaleController.formatString("LanguageAlert", C2888R.string.LanguageAlert, tL_langPackLanguage.name, Integer.valueOf((int) Math.ceil((tL_langPackLanguage.translated_count / tL_langPackLanguage.strings_count) * 100.0f)));
            } else {
                string = LocaleController.formatString("LanguageCustomAlert", C2888R.string.LanguageCustomAlert, tL_langPackLanguage.name, Integer.valueOf((int) Math.ceil((tL_langPackLanguage.translated_count / tL_langPackLanguage.strings_count) * 100.0f)));
            }
            builder.setPositiveButton(LocaleController.getString(C2888R.string.Change), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda122
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    AlertsCreator.$r8$lambda$6ZqQMNFwAbwiSWlJWIeA75Lfd6A(tL_langPackLanguage, launchActivity, alertDialog, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(string));
        int iIndexOf2 = TextUtils.indexOf((CharSequence) spannableStringBuilder, '[');
        if (iIndexOf2 != -1) {
            int i = iIndexOf2 + 1;
            iIndexOf = TextUtils.indexOf((CharSequence) spannableStringBuilder, ']', i);
            if (iIndexOf != -1) {
                spannableStringBuilder.delete(iIndexOf, iIndexOf + 1);
                spannableStringBuilder.delete(iIndexOf2, i);
            }
        } else {
            iIndexOf = -1;
        }
        if (iIndexOf2 != -1 && iIndexOf != -1) {
            spannableStringBuilder.setSpan(new URLSpanNoUnderline(tL_langPackLanguage.translations_url) { // from class: org.telegram.ui.Components.AlertsCreator.1
                @Override // org.telegram.p029ui.Components.URLSpanNoUnderline, android.text.style.URLSpan, android.text.style.ClickableSpan
                public void onClick(View view) {
                    builder.getDismissRunnable().run();
                    super.onClick(view);
                }
            }, iIndexOf2, iIndexOf - 1, 33);
        }
        TextView textView = new TextView(launchActivity);
        textView.setText(spannableStringBuilder);
        textView.setTextSize(1, 16.0f);
        textView.setLinkTextColor(Theme.getColor(Theme.key_dialogTextLink));
        textView.setHighlightColor(Theme.getColor(Theme.key_dialogLinkSelection));
        textView.setPadding(AndroidUtilities.m1124dp(23.0f), 0, AndroidUtilities.m1124dp(23.0f), 0);
        textView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        builder.setView(textView);
        return builder;
    }

    public static /* synthetic */ void $r8$lambda$6ZqQMNFwAbwiSWlJWIeA75Lfd6A(TLRPC.TL_langPackLanguage tL_langPackLanguage, LaunchActivity launchActivity, AlertDialog alertDialog, int i) {
        String str;
        if (tL_langPackLanguage.official) {
            str = "remote_" + tL_langPackLanguage.lang_code;
        } else {
            str = "unofficial_" + tL_langPackLanguage.lang_code;
        }
        LocaleController.LocaleInfo languageFromDict = LocaleController.getInstance().getLanguageFromDict(str);
        if (languageFromDict == null) {
            languageFromDict = new LocaleController.LocaleInfo();
            languageFromDict.name = tL_langPackLanguage.native_name;
            languageFromDict.nameEnglish = tL_langPackLanguage.name;
            languageFromDict.shortName = tL_langPackLanguage.lang_code;
            languageFromDict.baseLangCode = tL_langPackLanguage.base_lang_code;
            languageFromDict.pluralLangCode = tL_langPackLanguage.plural_code;
            languageFromDict.isRtl = tL_langPackLanguage.rtl;
            if (tL_langPackLanguage.official) {
                languageFromDict.pathToFile = "remote";
            } else {
                languageFromDict.pathToFile = "unofficial";
            }
        }
        LocaleController.getInstance().applyLanguage(languageFromDict, true, false, false, true, UserConfig.selectedAccount, null);
        launchActivity.rebuildAllFragments(true);
    }

    public static boolean checkSlowMode(Context context, int i, long j, boolean z) {
        TLRPC.Chat chat;
        if (!DialogObject.isChatDialog(j) || (chat = MessagesController.getInstance(i).getChat(Long.valueOf(-j))) == null || !chat.slowmode_enabled || ChatObject.hasAdminRights(chat)) {
            return false;
        }
        if (!z) {
            TLRPC.ChatFull chatFull = MessagesController.getInstance(i).getChatFull(chat.f1660id);
            if (chatFull == null) {
                chatFull = MessagesStorage.getInstance(i).loadChatInfo(chat.f1660id, ChatObject.isChannel(chat), new CountDownLatch(1), false, false);
            }
            if (chatFull != null && chatFull.slowmode_next_send_date >= ConnectionsManager.getInstance(i).getCurrentTime()) {
                z = true;
            }
        }
        if (!z) {
            return false;
        }
        createSimpleAlert(context, chat.title, LocaleController.getString(C2888R.string.SlowmodeSendError)).show();
        return true;
    }

    public static AlertDialog.Builder createNoAccessAlert(Context context, String str, String str2, Theme.ResourcesProvider resourcesProvider) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(str);
        HashMap map = new HashMap();
        int i = Theme.key_dialogTopBackground;
        map.put("info1.**", Integer.valueOf(Theme.getColor(i, resourcesProvider)));
        map.put("info2.**", Integer.valueOf(Theme.getColor(i, resourcesProvider)));
        builder.setTopAnimation(C2888R.raw.not_available, 52, false, Theme.getColor(i, resourcesProvider), map);
        builder.setTopAnimationIsNew(true);
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Close), null);
        builder.setMessage(str2);
        return builder;
    }

    public static AlertDialog.Builder createSimpleAlert(Context context, String str) {
        return createSimpleAlert(context, null, str);
    }

    public static AlertDialog.Builder createSimpleAlert(Context context, String str, String str2) {
        return createSimpleAlert(context, str, str2, null);
    }

    public static AlertDialog.Builder createSimpleAlert(Context context, String str, String str2, Theme.ResourcesProvider resourcesProvider) {
        return createSimpleAlert(context, str, str2, null, null, resourcesProvider);
    }

    public static AlertDialog.Builder createSimpleAlert(Context context, String str, String str2, String str3, final Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
        if (context == null || str2 == null) {
            return null;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
        if (str == null) {
            str = LocaleController.getString(C2888R.string.AppName);
        }
        builder.setTitle(str);
        builder.setMessage(str2);
        if (str3 == null) {
            builder.setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null);
            return builder;
        }
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        builder.setPositiveButton(str3, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda9
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                AlertsCreator.$r8$lambda$m_KswKeRAssHkiLhfDbnwtSAr5M(runnable, alertDialog, i);
            }
        });
        return builder;
    }

    public static /* synthetic */ void $r8$lambda$m_KswKeRAssHkiLhfDbnwtSAr5M(Runnable runnable, AlertDialog alertDialog, int i) {
        alertDialog.dismiss();
        if (runnable != null) {
            runnable.run();
        }
    }

    public static void createStoriesAlbumEnterNameForCreate(Context context, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider, MessagesStorage.StringCallback stringCallback) {
        createStoriesAlbumEnterName(context, baseFragment, LocaleController.getString(C2888R.string.StoriesAlbumCreateNew), LocaleController.getString(C2888R.string.StoriesAlbumAddHint), LocaleController.getString(C2888R.string.StoriesAlbumTitleInputHint), null, LocaleController.getString(C2888R.string.Create), resourcesProvider, stringCallback);
    }

    public static void createStoriesAlbumEnterNameForRename(Context context, BaseFragment baseFragment, String str, Theme.ResourcesProvider resourcesProvider, MessagesStorage.StringCallback stringCallback) {
        createStoriesAlbumEnterName(context, baseFragment, LocaleController.getString(C2888R.string.StoriesAlbumRename), LocaleController.getString(C2888R.string.StoriesAlbumRenameHint), LocaleController.getString(C2888R.string.StoriesAlbumTitleInputHint), str, LocaleController.getString(C2888R.string.Rename), resourcesProvider, stringCallback);
    }

    public static void createStoriesAlbumEnterName(Context context, final BaseFragment baseFragment, String str, String str2, String str3, String str4, String str5, final Theme.ResourcesProvider resourcesProvider, final MessagesStorage.StringCallback stringCallback) {
        final Activity activityFindActivity = AndroidUtilities.findActivity(context);
        final View currentFocus = activityFindActivity != null ? activityFindActivity.getCurrentFocus() : null;
        final AlertDialog[] alertDialogArr = new AlertDialog[1];
        AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
        builder.setTitle(str == null ? LocaleController.getString(C2888R.string.AppName) : str);
        builder.setMessage(str2);
        final EditTextCaption editTextCaption = new EditTextCaption(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.2
            AnimatedTextView.AnimatedTextDrawable limit;
            AnimatedColor limitColor = new AnimatedColor(this);
            private int limitCount;

            {
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
                this.limit = animatedTextDrawable;
                animatedTextDrawable.setAnimationProperties(0.2f, 0L, 160L, CubicBezierInterpolator.EASE_OUT_QUINT);
                this.limit.setTextSize(AndroidUtilities.m1124dp(15.33f));
                this.limit.setCallback(this);
                this.limit.setGravity(5);
            }

            @Override // android.widget.TextView, android.view.View
            protected boolean verifyDrawable(Drawable drawable) {
                return drawable == this.limit || super.verifyDrawable(drawable);
            }

            @Override // org.telegram.p029ui.Components.EditTextEffects, android.widget.TextView
            protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                super.onTextChanged(charSequence, i, i2, i3);
                if (this.limit != null) {
                    this.limitCount = 12 - charSequence.length();
                    this.limit.cancelAnimation();
                    AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.limit;
                    int i4 = this.limitCount;
                    String str6 = _UrlKt.FRAGMENT_ENCODE_SET;
                    if (i4 <= 4) {
                        str6 = _UrlKt.FRAGMENT_ENCODE_SET + this.limitCount;
                    }
                    animatedTextDrawable.setText(str6);
                }
            }

            @Override // org.telegram.p029ui.Components.EditTextBoldCursor, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                this.limit.setTextColor(this.limitColor.set(Theme.getColor(this.limitCount < 0 ? Theme.key_text_RedRegular : Theme.key_dialogSearchHint, resourcesProvider)));
                this.limit.setBounds(getScrollX(), 0, getScrollX() + getWidth(), getHeight());
                this.limit.draw(canvas);
            }
        };
        editTextCaption.lineYFix = true;
        editTextCaption.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda152
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return AlertsCreator.m8501$r8$lambda$XmmyoHn6lHAr_950xOv40giscI(editTextCaption, stringCallback, alertDialogArr, currentFocus, textView, i, keyEvent);
            }
        });
        editTextCaption.setTextSize(1, 18.0f);
        editTextCaption.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
        editTextCaption.setHintColor(Theme.getColor(Theme.key_groupcreate_hintText, resourcesProvider));
        editTextCaption.setHintText(str3);
        editTextCaption.setFocusable(true);
        editTextCaption.setInputType(147457);
        editTextCaption.setLineColors(Theme.getColor(Theme.key_windowBackgroundWhiteInputField, resourcesProvider), Theme.getColor(Theme.key_windowBackgroundWhiteInputFieldActivated, resourcesProvider), Theme.getColor(Theme.key_text_RedRegular, resourcesProvider));
        editTextCaption.setImeOptions(6);
        editTextCaption.setBackgroundDrawable(null);
        editTextCaption.setPadding(0, AndroidUtilities.m1124dp(6.0f), 0, AndroidUtilities.m1124dp(6.0f));
        editTextCaption.setText(str4);
        editTextCaption.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.AlertsCreator.3
            boolean ignoreTextChange;

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (!this.ignoreTextChange && editable.length() > 12) {
                    this.ignoreTextChange = true;
                    editable.delete(12, editable.length());
                    AndroidUtilities.shakeView(editTextCaption);
                    try {
                        editTextCaption.performHapticFeedback(3, 2);
                    } catch (Exception unused) {
                    }
                    this.ignoreTextChange = false;
                }
            }
        });
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.addView(editTextCaption, LayoutHelper.createLinear(-1, -2, 24.0f, 0.0f, 24.0f, 10.0f));
        builder.makeCustomMaxHeight();
        builder.setView(linearLayout);
        builder.setWidth(AndroidUtilities.m1124dp(292.0f));
        builder.setPositiveButton(str5, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda153
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                AlertsCreator.$r8$lambda$4X5evEaly5Z5noomoLqLYltJee8(editTextCaption, stringCallback, alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda154
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                alertDialog.dismiss();
            }
        });
        alertDialogArr[0] = builder.create();
        if (baseFragment != null) {
            AndroidUtilities.requestAdjustNothing(activityFindActivity, baseFragment.getClassGuid());
        }
        alertDialogArr[0].setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda155
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AlertsCreator.m8479$r8$lambda$C14bQF25GcuJmKEUteH82ngXs(editTextCaption, baseFragment, activityFindActivity, dialogInterface);
            }
        });
        alertDialogArr[0].setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda156
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                AlertsCreator.m8481$r8$lambda$DSoEFF3CSrWwNeXzgxe3UFG4A0(editTextCaption, dialogInterface);
            }
        });
        alertDialogArr[0].show();
        alertDialogArr[0].setDismissDialogByButtons(false);
        editTextCaption.setSelection(editTextCaption.getText().length());
    }

    /* JADX INFO: renamed from: $r8$lambda$XmmyoHn6lHAr_950-xOv40giscI, reason: not valid java name */
    public static /* synthetic */ boolean m8501$r8$lambda$XmmyoHn6lHAr_950xOv40giscI(EditTextCaption editTextCaption, MessagesStorage.StringCallback stringCallback, AlertDialog[] alertDialogArr, View view, TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        String string = editTextCaption.getText().toString();
        if (string.length() > 12) {
            AndroidUtilities.shakeView(editTextCaption);
            return true;
        }
        stringCallback.run(string);
        AlertDialog alertDialog = alertDialogArr[0];
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        if (view != null) {
            view.requestFocus();
        }
        return true;
    }

    public static /* synthetic */ void $r8$lambda$4X5evEaly5Z5noomoLqLYltJee8(EditTextCaption editTextCaption, MessagesStorage.StringCallback stringCallback, AlertDialog alertDialog, int i) {
        String strTrim = editTextCaption.getText().toString().trim();
        if (strTrim.length() > 12 || strTrim.isEmpty()) {
            AndroidUtilities.shakeView(editTextCaption);
        } else {
            stringCallback.run(strTrim);
            alertDialog.dismiss();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$C14bQF25GcuJm-KEUteH82ng-Xs, reason: not valid java name */
    public static /* synthetic */ void m8479$r8$lambda$C14bQF25GcuJmKEUteH82ngXs(EditTextCaption editTextCaption, BaseFragment baseFragment, Activity activity, DialogInterface dialogInterface) {
        AndroidUtilities.hideKeyboard(editTextCaption);
        if (baseFragment != null) {
            AndroidUtilities.requestAdjustResize(activity, baseFragment.getClassGuid());
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$DSoEFF3CSrWwNeXzgxe3UFG4A-0, reason: not valid java name */
    public static /* synthetic */ void m8481$r8$lambda$DSoEFF3CSrWwNeXzgxe3UFG4A0(EditTextCaption editTextCaption, DialogInterface dialogInterface) {
        editTextCaption.requestFocus();
        AndroidUtilities.showKeyboard(editTextCaption);
    }

    public static Dialog showSimpleAlert(BaseFragment baseFragment, String str) {
        return showSimpleAlert(baseFragment, null, str);
    }

    public static Dialog showSimpleAlert(BaseFragment baseFragment, String str, String str2) {
        return showSimpleAlert(baseFragment, str, str2, null);
    }

    public static Dialog showSimpleAlert(BaseFragment baseFragment, String str, String str2, Theme.ResourcesProvider resourcesProvider) {
        if (baseFragment == null) {
            baseFragment = LaunchActivity.getSafeLastFragment();
        }
        if (str2 == null || baseFragment == null || baseFragment.getParentActivity() == null) {
            return null;
        }
        AlertDialog alertDialogCreate = createSimpleAlert(baseFragment.getParentActivity(), str, str2, resourcesProvider).create();
        baseFragment.showDialog(alertDialogCreate);
        return alertDialogCreate;
    }

    public static AlertDialog showSimpleConfirmAlert(BaseFragment baseFragment, String str, CharSequence charSequence, String str2, boolean z, final Runnable runnable) {
        TextView textView;
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity(), baseFragment.getResourceProvider());
        builder.setTitle(str);
        builder.setMessage(charSequence);
        builder.setPositiveButton(str2, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda103
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                AlertsCreator.$r8$lambda$xAICqTdLslkEeeVJ8RNrduYOWBQ(runnable, alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        AlertDialog alertDialogCreate = builder.create();
        baseFragment.showDialog(alertDialogCreate);
        if (z && (textView = (TextView) alertDialogCreate.getButton(-1)) != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
        return alertDialogCreate;
    }

    public static /* synthetic */ void $r8$lambda$xAICqTdLslkEeeVJ8RNrduYOWBQ(Runnable runnable, AlertDialog alertDialog, int i) {
        if (runnable != null) {
            runnable.run();
        }
    }

    public static void showBlockReportSpamReplyAlert(final ChatActivity chatActivity, final MessageObject messageObject, long j, final Theme.ResourcesProvider resourcesProvider, final Runnable runnable) {
        if (chatActivity == null || chatActivity.getParentActivity() == null || messageObject == null) {
            return;
        }
        final AccountInstance accountInstance = chatActivity.getAccountInstance();
        TLRPC.User user = j > 0 ? accountInstance.getMessagesController().getUser(Long.valueOf(j)) : null;
        final TLRPC.Chat chat = j < 0 ? accountInstance.getMessagesController().getChat(Long.valueOf(-j)) : null;
        if (user == null && chat == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(chatActivity.getParentActivity(), resourcesProvider);
        builder.setDimEnabled(runnable == null);
        builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda104
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AlertsCreator.$r8$lambda$2IFuh6MCJwGC3wMUj941yGpy2j8(runnable, dialogInterface);
            }
        });
        builder.setTitle(LocaleController.getString(C2888R.string.BlockUser));
        if (user != null) {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BlockUserReplyAlert", C2888R.string.BlockUserReplyAlert, UserObject.getFirstName(user))));
        } else {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BlockUserReplyAlert", C2888R.string.BlockUserReplyAlert, chat.title)));
        }
        LinearLayout linearLayout = new LinearLayout(chatActivity.getParentActivity());
        linearLayout.setOrientation(1);
        final CheckBoxCell[] checkBoxCellArr = {new CheckBoxCell(chatActivity.getParentActivity(), 1, resourcesProvider)};
        checkBoxCellArr[0].setBackgroundDrawable(Theme.getSelectorDrawable(false));
        checkBoxCellArr[0].setTag(0);
        checkBoxCellArr[0].setText(LocaleController.getString(C2888R.string.DeleteReportSpam), _UrlKt.FRAGMENT_ENCODE_SET, true, false);
        checkBoxCellArr[0].setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(16.0f) : AndroidUtilities.m1124dp(8.0f), 0, LocaleController.isRTL ? AndroidUtilities.m1124dp(8.0f) : AndroidUtilities.m1124dp(16.0f), 0);
        linearLayout.addView(checkBoxCellArr[0], LayoutHelper.createLinear(-1, -2));
        checkBoxCellArr[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda105
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                checkBoxCellArr[((Integer) view.getTag()).intValue()].setChecked(!r0[view.intValue()].isChecked(), true);
            }
        });
        builder.setView(linearLayout);
        final TLRPC.User user2 = user;
        builder.setPositiveButton(LocaleController.getString(C2888R.string.BlockAndDeleteReplies), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda106
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                AlertsCreator.$r8$lambda$TsRZukJMDin2Hqlq9XTOHIv7Hd4(user2, accountInstance, chatActivity, chat, messageObject, checkBoxCellArr, resourcesProvider, alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        AlertDialog alertDialogCreate = builder.create();
        chatActivity.showDialog(alertDialogCreate);
        TextView textView = (TextView) alertDialogCreate.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    public static /* synthetic */ void $r8$lambda$2IFuh6MCJwGC3wMUj941yGpy2j8(Runnable runnable, DialogInterface dialogInterface) {
        if (runnable != null) {
            runnable.run();
        }
    }

    public static /* synthetic */ void $r8$lambda$TsRZukJMDin2Hqlq9XTOHIv7Hd4(TLRPC.User user, final AccountInstance accountInstance, ChatActivity chatActivity, TLRPC.Chat chat, MessageObject messageObject, CheckBoxCell[] checkBoxCellArr, Theme.ResourcesProvider resourcesProvider, AlertDialog alertDialog, int i) {
        UndoView undoView;
        if (user != null) {
            accountInstance.getMessagesStorage().deleteUserChatHistory(chatActivity.getDialogId(), user.f1825id);
        } else {
            accountInstance.getMessagesStorage().deleteUserChatHistory(chatActivity.getDialogId(), -chat.f1660id);
        }
        TLRPC.TL_contacts_blockFromReplies tL_contacts_blockFromReplies = new TLRPC.TL_contacts_blockFromReplies();
        tL_contacts_blockFromReplies.msg_id = messageObject.getId();
        tL_contacts_blockFromReplies.delete_message = true;
        tL_contacts_blockFromReplies.delete_history = true;
        if (checkBoxCellArr[0].isChecked()) {
            tL_contacts_blockFromReplies.report_spam = true;
            if (chatActivity.getParentActivity() != null && (undoView = chatActivity.getUndoView()) != null) {
                undoView.showWithAction(0L, 74, (Runnable) null);
            }
        }
        accountInstance.getConnectionsManager().sendRequest(tL_contacts_blockFromReplies, new RequestDelegate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda157
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AlertsCreator.m8490$r8$lambda$LoeSYhrAecvAKcTVA4MO9MjDM(accountInstance, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$Lo-eSYhrAecvAKcTVA4MO9Mj-DM, reason: not valid java name */
    public static /* synthetic */ void m8490$r8$lambda$LoeSYhrAecvAKcTVA4MO9MjDM(AccountInstance accountInstance, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.Updates) {
            accountInstance.getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v4, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void showBlockReportSpamAlert(BaseFragment baseFragment, long j, final TLRPC.User user, final TLRPC.Chat chat, final TLRPC.EncryptedChat encryptedChat, final boolean z, TLRPC.ChatFull chatFull, final MessagesStorage.IntCallback intCallback, Theme.ResourcesProvider resourcesProvider) {
        long j2;
        boolean z2;
        CharSequence string;
        final CheckBoxCell[] checkBoxCellArr;
        TextView textView;
        CharSequence charSequence;
        Theme.ResourcesProvider resourcesProvider2 = resourcesProvider;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        final AccountInstance accountInstance = baseFragment.getAccountInstance();
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity(), resourcesProvider2);
        SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(baseFragment.getCurrentAccount());
        ?? r5 = 1;
        if (encryptedChat == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("dialog_bar_report");
            j2 = j;
            sb.append(j2);
            if (!notificationsSettings.getBoolean(sb.toString(), false)) {
                z2 = false;
            }
            if (user == null) {
                builder.setTitle(LocaleController.formatString("BlockUserTitle", C2888R.string.BlockUserTitle, UserObject.getFirstName(user)));
                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BlockUserAlert", C2888R.string.BlockUserAlert, UserObject.getFirstName(user))));
                CharSequence string2 = LocaleController.getString(C2888R.string.BlockContact);
                final CheckBoxCell[] checkBoxCellArr2 = new CheckBoxCell[2];
                LinearLayout linearLayout = new LinearLayout(baseFragment.getParentActivity());
                linearLayout.setOrientation(1);
                int i = 0;
                for (int i2 = 2; i < i2; i2 = 2) {
                    if (i != 0 || z2) {
                        CheckBoxCell checkBoxCell = new CheckBoxCell(baseFragment.getParentActivity(), r5, resourcesProvider2);
                        checkBoxCellArr2[i] = checkBoxCell;
                        checkBoxCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                        checkBoxCellArr2[i].setTag(Integer.valueOf(i));
                        if (i == 0) {
                            charSequence = string2;
                            checkBoxCellArr2[i].setText(LocaleController.getString(C2888R.string.DeleteReportSpam), _UrlKt.FRAGMENT_ENCODE_SET, r5, false);
                        } else {
                            charSequence = string2;
                            checkBoxCellArr2[i].setText(LocaleController.formatString("DeleteThisChat", C2888R.string.DeleteThisChat, new Object[0]), _UrlKt.FRAGMENT_ENCODE_SET, true, false);
                        }
                        checkBoxCellArr2[i].setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(16.0f) : AndroidUtilities.m1124dp(8.0f), 0, LocaleController.isRTL ? AndroidUtilities.m1124dp(8.0f) : AndroidUtilities.m1124dp(16.0f), 0);
                        linearLayout.addView(checkBoxCellArr2[i], LayoutHelper.createLinear(-1, -2));
                        checkBoxCellArr2[i].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda73
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                checkBoxCellArr2[((Integer) view.getTag()).intValue()].setChecked(!r0[view.intValue()].isChecked(), true);
                            }
                        });
                    } else {
                        charSequence = string2;
                    }
                    i++;
                    resourcesProvider2 = resourcesProvider;
                    string2 = charSequence;
                    r5 = 1;
                }
                builder.setView(linearLayout);
                checkBoxCellArr = checkBoxCellArr2;
                string = string2;
            } else {
                if (chat != null && z) {
                    builder.setTitle(LocaleController.getString(C2888R.string.ReportUnrelatedGroup));
                    if (chatFull != null) {
                        TLRPC.ChannelLocation channelLocation = chatFull.location;
                        if (channelLocation instanceof TLRPC.TL_channelLocation) {
                            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("ReportUnrelatedGroupText", C2888R.string.ReportUnrelatedGroupText, ((TLRPC.TL_channelLocation) channelLocation).address)));
                        } else {
                            builder.setMessage(LocaleController.getString(C2888R.string.ReportUnrelatedGroupTextNoAddress));
                        }
                    }
                } else {
                    builder.setTitle(LocaleController.getString(C2888R.string.ReportSpamTitle));
                    if (ChatObject.isChannel(chat) && !chat.megagroup) {
                        builder.setMessage(LocaleController.getString(C2888R.string.ReportSpamAlertChannel));
                    } else {
                        builder.setMessage(LocaleController.getString(C2888R.string.ReportSpamAlertGroup));
                    }
                }
                string = LocaleController.getString(C2888R.string.ReportChat);
                checkBoxCellArr = null;
            }
            final long j3 = j2;
            builder.setPositiveButton(string, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda74
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i3) {
                    AlertsCreator.$r8$lambda$stvsJ3bdnigphWMkQGbTolBy73M(user, accountInstance, checkBoxCellArr, j3, chat, encryptedChat, z, intCallback, alertDialog, i3);
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
            AlertDialog alertDialogCreate = builder.create();
            baseFragment.showDialog(alertDialogCreate);
            textView = (TextView) alertDialogCreate.getButton(-1);
            if (textView == null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                return;
            }
            return;
        }
        j2 = j;
        z2 = true;
        if (user == null) {
        }
        final long j32 = j2;
        builder.setPositiveButton(string, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda74
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i3) {
                AlertsCreator.$r8$lambda$stvsJ3bdnigphWMkQGbTolBy73M(user, accountInstance, checkBoxCellArr, j32, chat, encryptedChat, z, intCallback, alertDialog, i3);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        AlertDialog alertDialogCreate2 = builder.create();
        baseFragment.showDialog(alertDialogCreate2);
        textView = (TextView) alertDialogCreate2.getButton(-1);
        if (textView == null) {
        }
    }

    public static /* synthetic */ void $r8$lambda$stvsJ3bdnigphWMkQGbTolBy73M(TLRPC.User user, AccountInstance accountInstance, CheckBoxCell[] checkBoxCellArr, long j, TLRPC.Chat chat, TLRPC.EncryptedChat encryptedChat, boolean z, MessagesStorage.IntCallback intCallback, AlertDialog alertDialog, int i) {
        CheckBoxCell checkBoxCell;
        if (user != null) {
            accountInstance.getMessagesController().blockPeer(user.f1825id);
        }
        if (checkBoxCellArr == null || ((checkBoxCell = checkBoxCellArr[0]) != null && checkBoxCell.isChecked())) {
            accountInstance.getMessagesController().reportSpam(j, user, chat, encryptedChat, chat != null && z);
        }
        if (checkBoxCellArr == null || checkBoxCellArr[1].isChecked()) {
            if (chat == null || ChatObject.isNotInChat(chat)) {
                accountInstance.getMessagesController().deleteDialog(j, 0);
            } else {
                accountInstance.getMessagesController().deleteParticipantFromChat(-j, accountInstance.getMessagesController().getUser(Long.valueOf(accountInstance.getUserConfig().getClientUserId())));
            }
            intCallback.run(1);
            return;
        }
        intCallback.run(0);
    }

    public static void showCustomNotificationsDialog(BaseFragment baseFragment, long j, int i, int i2, ArrayList arrayList, ArrayList arrayList2, int i3, MessagesStorage.IntCallback intCallback) {
        showCustomNotificationsDialog(baseFragment, j, i, i2, arrayList, arrayList2, i3, intCallback, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r12v0, types: [org.telegram.ui.ActionBar.AlertDialog$Builder] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v2, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r5v7, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r6v23 */
    public static void showCustomNotificationsDialog(final BaseFragment baseFragment, long j, final int i, final int i2, final ArrayList arrayList, final ArrayList arrayList2, final int i3, final MessagesStorage.IntCallback intCallback, final MessagesStorage.IntCallback intCallback2) {
        int i4;
        ?? r13;
        final long j2 = j;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        ?? r132 = 0;
        final boolean zIsGlobalNotificationsEnabled = NotificationsController.getInstance(i3).isGlobalNotificationsEnabled(j2, false, false);
        ?? r14 = 1;
        String[] strArr = {LocaleController.getString(C2888R.string.NotificationsTurnOn), LocaleController.formatString("MuteFor", C2888R.string.MuteFor, LocaleController.formatPluralString("Hours", 1, new Object[0])), LocaleController.formatString("MuteFor", C2888R.string.MuteFor, LocaleController.formatPluralString("Days", 2, new Object[0])), (j2 == 0 && (baseFragment instanceof NotificationsCustomSettingsActivity)) ? null : LocaleController.getString(C2888R.string.NotificationsCustomize), LocaleController.getString(C2888R.string.NotificationsTurnOff)};
        int[] iArr = {C2888R.drawable.notifications_on, C2888R.drawable.notifications_mute1h, C2888R.drawable.notifications_mute2d, C2888R.drawable.notifications_settings, C2888R.drawable.notifications_off};
        LinearLayout linearLayout = new LinearLayout(baseFragment.getParentActivity());
        linearLayout.setOrientation(1);
        final ?? builder = new AlertDialog.Builder(baseFragment.getParentActivity());
        int i5 = 0;
        ?? r0 = linearLayout;
        while (i5 < 5) {
            if (strArr[i5] == null) {
                r13 = r0;
                i4 = i5;
            } else {
                ?? textView = new TextView(baseFragment.getParentActivity());
                Drawable drawable = baseFragment.getParentActivity().getResources().getDrawable(iArr[i5]);
                if (i5 == 4) {
                    textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                    drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_text_RedRegular), PorterDuff.Mode.MULTIPLY));
                } else {
                    textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
                    drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogIcon), PorterDuff.Mode.MULTIPLY));
                }
                textView.setTextSize(r14, 16.0f);
                textView.setLines(r14);
                textView.setMaxLines(r14);
                textView.setCompoundDrawablesWithIntrinsicBounds(drawable, null, null, null);
                textView.setTag(Integer.valueOf(i5));
                textView.setBackgroundDrawable(Theme.getSelectorDrawable(r132));
                textView.setPadding(AndroidUtilities.m1124dp(24.0f), r132, AndroidUtilities.m1124dp(24.0f), r132);
                textView.setSingleLine(r14);
                textView.setGravity(19);
                textView.setCompoundDrawablePadding(AndroidUtilities.m1124dp(26.0f));
                textView.setText(strArr[i5]);
                r0.addView(textView, LayoutHelper.createLinear(-1, 48, 51));
                i4 = i5;
                r13 = r0;
                textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda190
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        AlertsCreator.$r8$lambda$ye02GVKvn7xdODVr5SALBC3gipA(j2, i3, zIsGlobalNotificationsEnabled, i, intCallback2, i2, baseFragment, arrayList, arrayList2, intCallback, builder, view);
                    }
                });
            }
            i5 = i4 + 1;
            j2 = j;
            r0 = r13;
            r132 = 0;
            r14 = 1;
        }
        builder.setTitle(LocaleController.getString(C2888R.string.Notifications));
        builder.setView(r0);
        baseFragment.showDialog(builder.create());
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void $r8$lambda$ye02GVKvn7xdODVr5SALBC3gipA(long j, int i, boolean z, int i2, MessagesStorage.IntCallback intCallback, int i3, BaseFragment baseFragment, ArrayList arrayList, ArrayList arrayList2, MessagesStorage.IntCallback intCallback2, AlertDialog.Builder builder, View view) {
        int i4;
        int iIntValue = ((Integer) view.getTag()).intValue();
        if (iIntValue == 0) {
            if (j != 0) {
                SharedPreferences.Editor editorEdit = MessagesController.getNotificationsSettings(i).edit();
                if (z) {
                    editorEdit.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY + j);
                } else {
                    editorEdit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + j, 0);
                }
                MessagesStorage.getInstance(i).setDialogFlags(j, 0L);
                editorEdit.apply();
                TLRPC.Dialog dialog = (TLRPC.Dialog) MessagesController.getInstance(i).dialogs_dict.get(j);
                if (dialog != null) {
                    dialog.notify_settings = new TLRPC.TL_peerNotifySettings();
                }
                NotificationsController.getInstance(i).updateServerNotificationsSettings(j, i2);
                if (intCallback != null) {
                    if (z) {
                        intCallback.run(0);
                    } else {
                        intCallback.run(1);
                    }
                }
            } else {
                NotificationsController.getInstance(i).setGlobalNotificationsEnabled(i3, 0);
            }
        } else if (iIntValue != 3) {
            int currentTime = ConnectionsManager.getInstance(i).getCurrentTime();
            if (iIntValue == 1) {
                currentTime += 3600;
            } else if (iIntValue == 2) {
                currentTime += 172800;
            } else {
                i4 = 4;
                if (iIntValue == 4) {
                    currentTime = Integer.MAX_VALUE;
                }
                NotificationsController.getInstance(i).muteUntil(j, i2, currentTime);
                if (j != 0 && intCallback != null) {
                    if (iIntValue != i4 && !z) {
                        intCallback.run(0);
                    } else {
                        intCallback.run(1);
                    }
                }
                if (j == 0) {
                    NotificationsController.getInstance(i).setGlobalNotificationsEnabled(i3, Integer.MAX_VALUE);
                }
            }
            i4 = 4;
            NotificationsController.getInstance(i).muteUntil(j, i2, currentTime);
            if (j != 0) {
                if (iIntValue != i4) {
                    intCallback.run(1);
                }
            }
            if (j == 0) {
            }
        } else if (j != 0) {
            Bundle bundle = new Bundle();
            bundle.putLong("dialog_id", j);
            baseFragment.presentFragment(new ProfileNotificationsActivity(bundle));
        } else {
            baseFragment.presentFragment(new NotificationsCustomSettingsActivity(i3, arrayList, arrayList2));
        }
        if (intCallback2 != null) {
            intCallback2.run(iIntValue);
        }
        builder.getDismissRunnable().run();
        int i5 = iIntValue == 0 ? 4 : iIntValue == 1 ? 0 : iIntValue == 2 ? 2 : iIntValue == 4 ? 3 : -1;
        if (i5 < 0 || !BulletinFactory.canShowBulletin(baseFragment)) {
            return;
        }
        BulletinFactory.createMuteBulletin(baseFragment, i5).show();
    }

    public static AlertDialog showSecretLocationAlert(Context context, int i, final Runnable runnable, boolean z, Theme.ResourcesProvider resourcesProvider) {
        ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        int i2 = MessagesController.getInstance(i).availableMapProviders;
        if ((i2 & 1) != 0) {
            arrayList.add(LocaleController.getString(C2888R.string.MapPreviewProviderTelegram));
            arrayList2.add(0);
        }
        if ((i2 & 2) != 0) {
            arrayList.add(LocaleController.getString(C2888R.string.MapPreviewProviderGoogle));
            arrayList2.add(1);
        }
        if ((i2 & 4) != 0) {
            arrayList.add(LocaleController.getString(C2888R.string.MapPreviewProviderYandex));
            arrayList2.add(3);
        }
        arrayList.add(LocaleController.getString(C2888R.string.MapPreviewProviderNobody));
        arrayList2.add(2);
        final AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
        builder.setTitle(LocaleController.getString(C2888R.string.MapPreviewProviderTitle));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        builder.setView(linearLayout);
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            RadioColorCell radioColorCell = new RadioColorCell(context, resourcesProvider);
            radioColorCell.setPadding(AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f), 0);
            radioColorCell.setTag(Integer.valueOf(i3));
            radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
            radioColorCell.setTextAndValue((CharSequence) arrayList.get(i3), SharedConfig.mapPreviewType == ((Integer) arrayList2.get(i3)).intValue());
            radioColorCell.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 2));
            linearLayout.addView(radioColorCell);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda71
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.m8487$r8$lambda$HjZQO2WRyhuMC6NpTsPN7RgfSE(arrayList2, runnable, builder, view);
                }
            });
        }
        if (!z) {
            builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        }
        AlertDialog alertDialogShow = builder.show();
        if (z) {
            alertDialogShow.setCanceledOnTouchOutside(false);
        }
        return alertDialogShow;
    }

    /* JADX INFO: renamed from: $r8$lambda$HjZQO2W-RyhuMC6NpTsPN7RgfSE, reason: not valid java name */
    public static /* synthetic */ void m8487$r8$lambda$HjZQO2WRyhuMC6NpTsPN7RgfSE(ArrayList arrayList, Runnable runnable, AlertDialog.Builder builder, View view) {
        SharedConfig.setSecretMapPreviewType(((Integer) arrayList.get(((Integer) view.getTag()).intValue())).intValue());
        if (runnable != null) {
            runnable.run();
        }
        builder.getDismissRunnable().run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void updateDayPicker(NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(2, numberPicker2.getValue());
        calendar.set(1, numberPicker3.getValue());
        numberPicker.setMinValue(1);
        numberPicker.setMaxValue(calendar.getActualMaximum(5));
    }

    private static void checkPickerDate(NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        int i = 1;
        int i2 = calendar.get(1);
        int i3 = calendar.get(2);
        int i4 = calendar.get(5);
        numberPicker3.setMinValue(i2);
        int value = numberPicker3.getValue();
        numberPicker2.setMinValue(value == i2 ? i3 : 0);
        int value2 = numberPicker2.getValue();
        if (value == i2 && value2 == i3) {
            i = i4;
        }
        numberPicker.setMinValue(i);
    }

    public static void showOpenUrlAlert(BaseFragment baseFragment, String str, boolean z, boolean z2) {
        showOpenUrlAlert(baseFragment, str, z, true, z2, false, null, null);
    }

    public static void showOpenUrlAlert(BaseFragment baseFragment, String str, boolean z, boolean z2, boolean z3, Browser.Progress progress, Theme.ResourcesProvider resourcesProvider) {
        showOpenUrlAlert(baseFragment, str, z, z2, z3, false, progress, resourcesProvider);
    }

    public static void showOpenUrlAlert(final BaseFragment baseFragment, final String str, boolean z, final boolean z2, boolean z3, boolean z4, final Browser.Progress progress, final Theme.ResourcesProvider resourcesProvider) {
        String strReplaceHostname;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        long inlineReturn = baseFragment instanceof ChatActivity ? ((ChatActivity) baseFragment).getInlineReturn() : 0L;
        String scheme = str == null ? null : Uri.parse(str).getScheme();
        if (Browser.isInternalUrl(str, null) || !z3 || "mailto".equalsIgnoreCase(scheme)) {
            Browser.openUrl(baseFragment.getParentActivity(), Uri.parse(str), inlineReturn == 0, z2, z4 && checkInternalBotApp(str), progress, null, false, true, false);
            return;
        }
        if (z) {
            try {
                Uri uri = Uri.parse(str);
                strReplaceHostname = Browser.replaceHostname(uri, Browser.IDN_toUnicode(uri.getHost()), null);
            } catch (Exception e) {
                FileLog.m1136e(e);
                strReplaceHostname = str;
            }
        } else {
            strReplaceHostname = str;
        }
        final long j = inlineReturn;
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Browser.openUrl(baseFragment.getParentActivity(), Uri.parse(str), j == 0, z2, progress);
            }
        };
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity(), resourcesProvider);
        builder.setTitle(LocaleController.getString(C2888R.string.OpenUrlTitle));
        final AlertDialog[] alertDialogArr = new AlertDialog[1];
        SpannableString spannableString = new SpannableString(strReplaceHostname);
        spannableString.setSpan(new URLSpan(strReplaceHostname) { // from class: org.telegram.ui.Components.AlertsCreator.4
            @Override // android.text.style.URLSpan, android.text.style.ClickableSpan
            public void onClick(View view) {
                runnable.run();
                AlertDialog alertDialog = alertDialogArr[0];
                if (alertDialog != null) {
                    alertDialog.dismiss();
                }
            }
        }, 0, spannableString.length(), 33);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(C2888R.string.OpenUrlAlert2));
        int iIndexOf = spannableStringBuilder.toString().indexOf("%1$s");
        if (iIndexOf >= 0) {
            spannableStringBuilder.replace(iIndexOf, iIndexOf + 4, (CharSequence) spannableString);
        }
        builder.setMessage(spannableStringBuilder);
        builder.setMessageTextViewClickable(false);
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Open), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                runnable.run();
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        builder.setNeutralButton(LocaleController.getString(C2888R.string.Copy), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                AlertsCreator.m8492$r8$lambda$N3pgYJnYRr4GeV8nY2zfdvCmc8(str, baseFragment, resourcesProvider, alertDialog, i);
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        alertDialogArr[0] = alertDialogCreate;
        baseFragment.showDialog(alertDialogCreate);
    }

    /* JADX INFO: renamed from: $r8$lambda$N3pgYJnYRr4GeV8n-Y2zfdvCmc8, reason: not valid java name */
    public static /* synthetic */ void m8492$r8$lambda$N3pgYJnYRr4GeV8nY2zfdvCmc8(String str, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider, AlertDialog alertDialog, int i) {
        try {
            AndroidUtilities.addToClipboard(str);
            if (BulletinFactory.canShowBulletin(baseFragment)) {
                BulletinFactory.m1246of(baseFragment).createCopyLinkBulletin(LocaleController.getString(C2888R.string.LinkCopied), resourcesProvider).show();
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public static void showOpenUrlAlert(final Context context, final String str, boolean z, final boolean z2, boolean z3, boolean z4, final long j, final Browser.Progress progress, Theme.ResourcesProvider resourcesProvider) {
        String strReplaceHostname;
        if (AndroidUtilities.isContextSafe(context)) {
            String scheme = str == null ? null : Uri.parse(str).getScheme();
            if (Browser.isInternalUrl(str, null) || !z3 || "mailto".equalsIgnoreCase(scheme)) {
                Browser.openUrl(context, Uri.parse(str), j == 0, z2, z4 && checkInternalBotApp(str), progress, null, false, true, false);
                return;
            }
            if (z) {
                try {
                    Uri uri = Uri.parse(str);
                    strReplaceHostname = Browser.replaceHostname(uri, Browser.IDN_toUnicode(uri.getHost()), null);
                } catch (Exception e) {
                    FileLog.m1136e(e);
                    strReplaceHostname = str;
                }
            } else {
                strReplaceHostname = str;
            }
            final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda150
                @Override // java.lang.Runnable
                public final void run() {
                    Browser.openUrl(context, Uri.parse(str), j == 0, z2, progress);
                }
            };
            AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
            builder.setTitle(LocaleController.getString(C2888R.string.OpenUrlTitle));
            final AlertDialog[] alertDialogArr = new AlertDialog[1];
            SpannableString spannableString = new SpannableString(strReplaceHostname);
            spannableString.setSpan(new URLSpan(strReplaceHostname) { // from class: org.telegram.ui.Components.AlertsCreator.5
                @Override // android.text.style.URLSpan, android.text.style.ClickableSpan
                public void onClick(View view) {
                    runnable.run();
                    AlertDialog alertDialog = alertDialogArr[0];
                    if (alertDialog != null) {
                        alertDialog.dismiss();
                    }
                }
            }, 0, spannableString.length(), 33);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(C2888R.string.OpenUrlAlert2));
            int iIndexOf = spannableStringBuilder.toString().indexOf("%1$s");
            if (iIndexOf >= 0) {
                spannableStringBuilder.replace(iIndexOf, iIndexOf + 4, (CharSequence) spannableString);
            }
            builder.setMessage(spannableStringBuilder);
            builder.setMessageTextViewClickable(false);
            builder.setPositiveButton(LocaleController.getString(C2888R.string.Open), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda151
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    runnable.run();
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
            alertDialogArr[0] = builder.show();
        }
    }

    private static boolean checkInternalBotApp(String str) {
        return Uri.parse(str).getPath().matches("^/\\w*/[^\\d]*(?:\\?startapp=.*?|)$");
    }

    public static AlertDialog createSupportAlert(final BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider) {
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return null;
        }
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(baseFragment.getParentActivity(), baseFragment.getResourceProvider());
        SpannableString spannableString = new SpannableString(Html.fromHtml(LocaleController.getString(C2888R.string.AskAQuestionInfo).replace("\n", "<br>")));
        for (URLSpan uRLSpan : (URLSpan[]) spannableString.getSpans(0, spannableString.length(), URLSpan.class)) {
            int spanStart = spannableString.getSpanStart(uRLSpan);
            int spanEnd = spannableString.getSpanEnd(uRLSpan);
            spannableString.removeSpan(uRLSpan);
            spannableString.setSpan(new URLSpanNoUnderline(uRLSpan.getURL()) { // from class: org.telegram.ui.Components.AlertsCreator.6
                @Override // org.telegram.p029ui.Components.URLSpanNoUnderline, android.text.style.URLSpan, android.text.style.ClickableSpan
                public void onClick(View view) {
                    baseFragment.dismissCurrentDialog();
                    super.onClick(view);
                }
            }, spanStart, spanEnd, 0);
        }
        linksTextView.setText(spannableString);
        linksTextView.setTextSize(1, 16.0f);
        linksTextView.setLinkTextColor(Theme.getColor(Theme.key_dialogTextLink, resourcesProvider));
        linksTextView.setHighlightColor(Theme.getColor(Theme.key_dialogLinkSelection, resourcesProvider));
        linksTextView.setPadding(AndroidUtilities.m1124dp(23.0f), 0, AndroidUtilities.m1124dp(23.0f), 0);
        linksTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        linksTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity(), resourcesProvider);
        builder.setView(linksTextView);
        builder.setTitle(LocaleController.getString(C2888R.string.AskAQuestion));
        builder.setPositiveButton(LocaleController.getString(C2888R.string.AskButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda70
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                AlertsCreator.performAskAQuestion(baseFragment);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        return builder.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void performAskAQuestion(final BaseFragment baseFragment) {
        String string;
        final int currentAccount = baseFragment.getCurrentAccount();
        final SharedPreferences mainSettings = MessagesController.getMainSettings(currentAccount);
        long prefIntOrLong = AndroidUtilities.getPrefIntOrLong(mainSettings, "support_id2", 0L);
        TLRPC.User user = null;
        if (prefIntOrLong != 0) {
            TLRPC.User user2 = MessagesController.getInstance(currentAccount).getUser(Long.valueOf(prefIntOrLong));
            if (user2 != null || (string = mainSettings.getString("support_user", null)) == null) {
                user = user2;
            } else {
                try {
                    byte[] bArrDecode = Base64.decode(string, 0);
                    if (bArrDecode != null) {
                        SerializedData serializedData = new SerializedData(bArrDecode);
                        TLRPC.User userTLdeserialize = TLRPC.User.TLdeserialize(serializedData, serializedData.readInt32(false), false);
                        if (userTLdeserialize != null && userTLdeserialize.f1825id == 333000) {
                            userTLdeserialize = null;
                        }
                        serializedData.cleanup();
                        user = userTLdeserialize;
                    }
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
            }
        }
        if (user == null) {
            final AlertDialog alertDialog = new AlertDialog(baseFragment.getParentActivity(), 3);
            alertDialog.setCanCancel(false);
            alertDialog.show();
            ConnectionsManager.getInstance(currentAccount).sendRequest(new TLRPC.TL_help_getSupport(), new RequestDelegate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda107
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    AlertsCreator.$r8$lambda$jEm63wQXgrM5ytIllq0o6n8zm28(mainSettings, alertDialog, currentAccount, baseFragment, tLObject, tL_error);
                }
            });
            return;
        }
        MessagesController.getInstance(currentAccount).putUser(user, true);
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", user.f1825id);
        baseFragment.presentFragment(new ChatActivity(bundle));
    }

    public static /* synthetic */ void $r8$lambda$jEm63wQXgrM5ytIllq0o6n8zm28(final SharedPreferences sharedPreferences, final AlertDialog alertDialog, final int i, final BaseFragment baseFragment, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            final TLRPC.TL_help_support tL_help_support = (TLRPC.TL_help_support) tLObject;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda175
                @Override // java.lang.Runnable
                public final void run() {
                    AlertsCreator.$r8$lambda$0I2FCwhd_yTVMhuJnbZO2M4x6ms(sharedPreferences, tL_help_support, alertDialog, i, baseFragment);
                }
            });
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda176
                @Override // java.lang.Runnable
                public final void run() {
                    AlertsCreator.$r8$lambda$64K7EV2t2OsvC3nH3wiU2kfpRFo(alertDialog);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$0I2FCwhd_yTVMhuJnbZO2M4x6ms(SharedPreferences sharedPreferences, TLRPC.TL_help_support tL_help_support, AlertDialog alertDialog, int i, BaseFragment baseFragment) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putLong("support_id2", tL_help_support.user.f1825id);
        SerializedData serializedData = new SerializedData();
        tL_help_support.user.serializeToStream(serializedData);
        editorEdit.putString("support_user", Base64.encodeToString(serializedData.toByteArray(), 0));
        editorEdit.apply();
        serializedData.cleanup();
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(tL_help_support.user);
        MessagesStorage.getInstance(i).putUsersAndChats(arrayList, null, true, true);
        MessagesController.getInstance(i).putUser(tL_help_support.user, false);
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", tL_help_support.user.f1825id);
        baseFragment.presentFragment(new ChatActivity(bundle));
    }

    public static /* synthetic */ void $r8$lambda$64K7EV2t2OsvC3nH3wiU2kfpRFo(AlertDialog alertDialog) {
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public static void createImportDialogAlert(BaseFragment baseFragment, String str, String str2, TLRPC.User user, TLRPC.Chat chat, final Runnable runnable) {
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        if (chat == null && user == null) {
            return;
        }
        int currentAccount = baseFragment.getCurrentAccount();
        Activity parentActivity = baseFragment.getParentActivity();
        AlertDialog.Builder builder = new AlertDialog.Builder(parentActivity);
        long clientUserId = UserConfig.getInstance(currentAccount).getClientUserId();
        TextView textView = new TextView(parentActivity);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        textView.setTextSize(1, 16.0f);
        textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        FrameLayout frameLayout = new FrameLayout(parentActivity);
        builder.setView(frameLayout);
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setTextSize(AndroidUtilities.m1124dp(12.0f));
        BackupImageView backupImageView = new BackupImageView(parentActivity);
        backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(40.0f));
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(40, 40.0f, (LocaleController.isRTL ? 5 : 3) | 48, 22.0f, 5.0f, 22.0f, 0.0f));
        TextView textView2 = new TextView(parentActivity);
        textView2.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem));
        textView2.setTextSize(1, 20.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setLines(1);
        textView2.setMaxLines(1);
        textView2.setSingleLine(true);
        textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        textView2.setText(LocaleController.getString(C2888R.string.ImportMessages));
        boolean z = LocaleController.isRTL;
        frameLayout.addView(textView2, LayoutHelper.createFrame(-1, -2.0f, (z ? 5 : 3) | 48, z ? 21 : 76, 11.0f, z ? 76 : 21, 0.0f));
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 5 : 3) | 48, 24.0f, 57.0f, 24.0f, 9.0f));
        if (user != null) {
            if (UserObject.isReplyUser(user)) {
                avatarDrawable.setScaleSize(0.8f);
                avatarDrawable.setAvatarType(12);
                backupImageView.setImage((ImageLocation) null, (String) null, avatarDrawable, user);
            } else if (user.f1825id == clientUserId) {
                avatarDrawable.setScaleSize(0.8f);
                avatarDrawable.setAvatarType(1);
                backupImageView.setImage((ImageLocation) null, (String) null, avatarDrawable, user);
            } else {
                avatarDrawable.setScaleSize(1.0f);
                avatarDrawable.setInfo(currentAccount, user);
                backupImageView.setForUserOrChat(user, avatarDrawable);
            }
        } else {
            avatarDrawable.setInfo(currentAccount, chat);
            backupImageView.setForUserOrChat(chat, avatarDrawable);
        }
        textView.setText(AndroidUtilities.replaceTags(str2));
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Import), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda173
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                AlertsCreator.$r8$lambda$csChzfajXne1JnWLezRImcgerxw(runnable, alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        baseFragment.showDialog(builder.create());
    }

    public static /* synthetic */ void $r8$lambda$csChzfajXne1JnWLezRImcgerxw(Runnable runnable, AlertDialog alertDialog, int i) {
        if (runnable != null) {
            runnable.run();
        }
    }

    public static void createBotLaunchAlert(final BaseFragment baseFragment, final TLRPC.User user, final Runnable runnable, final Runnable runnable2) {
        final Context context = baseFragment.getContext();
        final AlertDialog.Builder builder = new AlertDialog.Builder(context);
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.7
            @Override // org.telegram.ui.Components.LinkSpanDrawable.LinksTextView, android.widget.TextView
            public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), false), bufferType);
            }
        };
        NotificationCenter.listenEmojiLoading(linksTextView);
        linksTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn));
        linksTextView.setTextSize(1, 16.0f);
        linksTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        FrameLayout frameLayout = new FrameLayout(context);
        builder.setCustomViewOffset(6);
        builder.setView(frameLayout);
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setTextSize(AndroidUtilities.m1124dp(18.0f));
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setRoundRadius(AndroidUtilities.m1124dp(20.0f));
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(40, 40.0f, (LocaleController.isRTL ? 5 : 3) | 48, 22.0f, 5.0f, 22.0f, 0.0f));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        simpleTextView.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem));
        simpleTextView.setTextSize(20);
        simpleTextView.setTypeface(AndroidUtilities.bold());
        simpleTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        simpleTextView.setEllipsizeByGradient(true);
        simpleTextView.setText(user.first_name);
        if (user.scam) {
            simpleTextView.setRightDrawable(Theme.dialogs_scamDrawable);
        } else if (user.fake) {
            simpleTextView.setRightDrawable(Theme.dialogs_fakeDrawable);
        } else if (user.verified) {
            Drawable drawableMutate = context.getResources().getDrawable(C2888R.drawable.verified_area).mutate();
            int color = Theme.getColor(Theme.key_chats_verifiedBackground);
            PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
            drawableMutate.setColorFilter(new PorterDuffColorFilter(color, mode));
            Drawable drawableMutate2 = context.getResources().getDrawable(C2888R.drawable.verified_check).mutate();
            drawableMutate2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_verifiedCheck), mode));
            simpleTextView.setRightDrawable(new CombinedDrawable(drawableMutate, drawableMutate2));
        }
        TextView textView = new TextView(context);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlue));
        textView.setTextSize(1, 14.0f);
        textView.setLines(1);
        textView.setMaxLines(1);
        textView.setSingleLine(true);
        textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda127
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.$r8$lambda$uaSHgR4MVsTnWF_6Ml9gtPFR6g0(user, baseFragment, builder, view);
            }
        });
        SpannableString spannableStringValueOf = SpannableString.valueOf(LocaleController.getString(C2888R.string.MoreAboutThisBot) + "  ");
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.attach_arrow_right);
        coloredImageSpan.setTopOffset(1);
        coloredImageSpan.setSize(AndroidUtilities.m1124dp(10.0f));
        spannableStringValueOf.setSpan(coloredImageSpan, spannableStringValueOf.length() - 1, spannableStringValueOf.length(), 33);
        textView.setText(spannableStringValueOf);
        boolean z = LocaleController.isRTL;
        frameLayout.addView(simpleTextView, LayoutHelper.createFrame(-1, -2.0f, (z ? 5 : 3) | 48, z ? 21 : 76, 0.0f, z ? 76 : 21, 0.0f));
        boolean z2 = LocaleController.isRTL;
        frameLayout.addView(textView, LayoutHelper.createFrame(-1, -2.0f, (z2 ? 5 : 3) | 48, z2 ? 21 : 76, 24.0f, z2 ? 76 : 21, 0.0f));
        frameLayout.addView(linksTextView, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 5 : 3) | 48, 24.0f, 57.0f, 24.0f, 1.0f));
        if (UserObject.isReplyUser(user)) {
            avatarDrawable.setScaleSize(0.8f);
            avatarDrawable.setAvatarType(12);
            backupImageView.setImage((ImageLocation) null, (String) null, avatarDrawable, user);
        } else {
            avatarDrawable.setScaleSize(1.0f);
            avatarDrawable.setInfo(baseFragment.getCurrentAccount(), user);
            backupImageView.setForUserOrChat(user, avatarDrawable);
        }
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Start), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda128
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                AlertsCreator.$r8$lambda$bJnNH1O8QmFIzk8SyCDX4PDBEKg(runnable, alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        final AlertDialog alertDialogCreate = builder.create();
        baseFragment.showDialog(alertDialogCreate, false, new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda129
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AlertsCreator.$r8$lambda$QD9fbnWMgmTVqnPWN8eceWl4uoY(runnable2, dialogInterface);
            }
        });
        linksTextView.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.BotWebViewStartPermission2), new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda130
            @Override // java.lang.Runnable
            public final void run() {
                AlertsCreator.$r8$lambda$RwRD59LeI9LD6_I5IhA_uPd7YZo(alertDialogCreate, context);
            }
        }));
    }

    public static /* synthetic */ void $r8$lambda$uaSHgR4MVsTnWF_6Ml9gtPFR6g0(TLRPC.User user, BaseFragment baseFragment, AlertDialog.Builder builder, View view) {
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", user.f1825id);
        if (baseFragment.getMessagesController().checkCanOpenChat(bundle, baseFragment)) {
            baseFragment.presentFragment(new ProfileActivity(bundle));
        }
        builder.getDismissRunnable().run();
    }

    public static /* synthetic */ void $r8$lambda$bJnNH1O8QmFIzk8SyCDX4PDBEKg(Runnable runnable, AlertDialog alertDialog, int i) {
        if (runnable != null) {
            runnable.run();
        }
    }

    public static /* synthetic */ void $r8$lambda$QD9fbnWMgmTVqnPWN8eceWl4uoY(Runnable runnable, DialogInterface dialogInterface) {
        if (runnable != null) {
            runnable.run();
        }
    }

    public static /* synthetic */ void $r8$lambda$RwRD59LeI9LD6_I5IhA_uPd7YZo(AlertDialog alertDialog, Context context) {
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        Browser.openUrl(context, LocaleController.getString(C2888R.string.BotWebViewStartPermissionLink));
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x028c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void createBotLaunchAlert(final BaseFragment baseFragment, final AtomicBoolean atomicBoolean, final TLRPC.User user, final Runnable runnable) {
        float f;
        if (baseFragment == null) {
            return;
        }
        final Context context = baseFragment.getContext();
        final CheckBoxCell[] checkBoxCellArr = new CheckBoxCell[1];
        final AlertDialog.Builder builder = new AlertDialog.Builder(context);
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.8
            @Override // org.telegram.ui.Components.LinkSpanDrawable.LinksTextView, android.widget.TextView
            public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), false), bufferType);
            }
        };
        NotificationCenter.listenEmojiLoading(linksTextView);
        linksTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn));
        linksTextView.setTextSize(1, 16.0f);
        linksTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.9
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(i, i2);
                if (checkBoxCellArr[0] != null) {
                    setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight() + checkBoxCellArr[0].getMeasuredHeight() + AndroidUtilities.m1124dp(7.0f));
                }
            }
        };
        builder.setCustomViewOffset(6);
        builder.setView(frameLayout);
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setTextSize(AndroidUtilities.m1124dp(18.0f));
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setRoundRadius(AndroidUtilities.m1124dp(20.0f));
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(40, 40.0f, (LocaleController.isRTL ? 5 : 3) | 48, 22.0f, 5.0f, 22.0f, 0.0f));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        simpleTextView.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem));
        simpleTextView.setTextSize(20);
        simpleTextView.setTypeface(AndroidUtilities.bold());
        simpleTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        simpleTextView.setEllipsizeByGradient(true);
        simpleTextView.setText(user.first_name);
        if (user.scam) {
            simpleTextView.setRightDrawable(Theme.dialogs_scamDrawable);
        } else if (user.fake) {
            simpleTextView.setRightDrawable(Theme.dialogs_fakeDrawable);
        } else {
            if (user.verified) {
                f = 16.0f;
                Drawable drawableMutate = context.getResources().getDrawable(C2888R.drawable.verified_area).mutate();
                int color = Theme.getColor(Theme.key_chats_verifiedBackground);
                PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
                drawableMutate.setColorFilter(new PorterDuffColorFilter(color, mode));
                Drawable drawableMutate2 = context.getResources().getDrawable(C2888R.drawable.verified_check).mutate();
                drawableMutate2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_verifiedCheck), mode));
                simpleTextView.setRightDrawable(new CombinedDrawable(drawableMutate, drawableMutate2));
            }
            TextView textView = new TextView(context);
            textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlue));
            textView.setTextSize(1, 14.0f);
            textView.setLines(1);
            textView.setMaxLines(1);
            textView.setSingleLine(true);
            textView.setGravity((!LocaleController.isRTL ? 5 : 3) | 16);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda182
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.$r8$lambda$wyOMqK_f5uEEWUjIVgy7zQI7o2s(user, baseFragment, builder, view);
                }
            });
            SpannableString spannableStringValueOf = SpannableString.valueOf(LocaleController.getString(C2888R.string.MoreAboutThisBot) + "  ");
            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.attach_arrow_right);
            coloredImageSpan.setTopOffset(1);
            coloredImageSpan.setSize(AndroidUtilities.m1124dp(10.0f));
            spannableStringValueOf.setSpan(coloredImageSpan, spannableStringValueOf.length() - 1, spannableStringValueOf.length(), 33);
            textView.setText(spannableStringValueOf);
            boolean z = LocaleController.isRTL;
            frameLayout.addView(simpleTextView, LayoutHelper.createFrame(-1, -2.0f, (!z ? 5 : 3) | 48, !z ? 21 : 76, 0.0f, !z ? 76 : 21, 0.0f));
            boolean z2 = LocaleController.isRTL;
            frameLayout.addView(textView, LayoutHelper.createFrame(-1, -2.0f, (!z2 ? 5 : 3) | 48, !z2 ? 21 : 76, 24.0f, z2 ? 76 : 21, 0.0f));
            frameLayout.addView(linksTextView, LayoutHelper.createFrame(-2, -2.0f, (!LocaleController.isRTL ? 5 : 3) | 48, 24.0f, 57.0f, 24.0f, 1.0f));
            if (atomicBoolean != null) {
                atomicBoolean.set(true);
                CheckBoxCell checkBoxCell = new CheckBoxCell(context, 1, baseFragment.getResourceProvider());
                checkBoxCellArr[0] = checkBoxCell;
                checkBoxCell.allowMultiline();
                checkBoxCellArr[0].setBackgroundDrawable(Theme.getSelectorDrawable(false));
                checkBoxCellArr[0].setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.OpenUrlOption2, UserObject.getUserName(user))), _UrlKt.FRAGMENT_ENCODE_SET, true, false);
                checkBoxCellArr[0].setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(f) : AndroidUtilities.m1124dp(8.0f), 0, LocaleController.isRTL ? AndroidUtilities.m1124dp(8.0f) : AndroidUtilities.m1124dp(f), 0);
                checkBoxCellArr[0].setChecked(true, false);
                frameLayout.addView(checkBoxCellArr[0], LayoutHelper.createFrame(-1, 48.0f, 83, 0.0f, 0.0f, 0.0f, 0.0f));
                checkBoxCellArr[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda183
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        AlertsCreator.$r8$lambda$vR5J416qqVgL8UMf1TgQ3Rlg69s(atomicBoolean, view);
                    }
                });
            }
            if (!UserObject.isReplyUser(user)) {
                avatarDrawable.setScaleSize(0.8f);
                avatarDrawable.setAvatarType(12);
                backupImageView.setImage((ImageLocation) null, (String) null, avatarDrawable, user);
            } else {
                avatarDrawable.setScaleSize(1.0f);
                avatarDrawable.setInfo(baseFragment.getCurrentAccount(), user);
                backupImageView.setForUserOrChat(user, avatarDrawable);
            }
            builder.setPositiveButton(LocaleController.getString(C2888R.string.Start), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda184
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    runnable.run();
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
            final AlertDialog alertDialogCreate = builder.create();
            baseFragment.showDialog(alertDialogCreate);
            linksTextView.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.BotWebViewStartPermission2), new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda185
                @Override // java.lang.Runnable
                public final void run() {
                    AlertsCreator.m8486$r8$lambda$GzEuKIORdWPbP7DBAUH02XAcVg(alertDialogCreate, context);
                }
            }));
        }
        f = 16.0f;
        TextView textView2 = new TextView(context);
        textView2.setTextColor(Theme.getColor(Theme.key_dialogTextBlue));
        textView2.setTextSize(1, 14.0f);
        textView2.setLines(1);
        textView2.setMaxLines(1);
        textView2.setSingleLine(true);
        textView2.setGravity((!LocaleController.isRTL ? 5 : 3) | 16);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda182
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.$r8$lambda$wyOMqK_f5uEEWUjIVgy7zQI7o2s(user, baseFragment, builder, view);
            }
        });
        SpannableString spannableStringValueOf2 = SpannableString.valueOf(LocaleController.getString(C2888R.string.MoreAboutThisBot) + "  ");
        ColoredImageSpan coloredImageSpan2 = new ColoredImageSpan(C2888R.drawable.attach_arrow_right);
        coloredImageSpan2.setTopOffset(1);
        coloredImageSpan2.setSize(AndroidUtilities.m1124dp(10.0f));
        spannableStringValueOf2.setSpan(coloredImageSpan2, spannableStringValueOf2.length() - 1, spannableStringValueOf2.length(), 33);
        textView2.setText(spannableStringValueOf2);
        boolean z3 = LocaleController.isRTL;
        frameLayout.addView(simpleTextView, LayoutHelper.createFrame(-1, -2.0f, (!z3 ? 5 : 3) | 48, !z3 ? 21 : 76, 0.0f, !z3 ? 76 : 21, 0.0f));
        boolean z22 = LocaleController.isRTL;
        frameLayout.addView(textView2, LayoutHelper.createFrame(-1, -2.0f, (!z22 ? 5 : 3) | 48, !z22 ? 21 : 76, 24.0f, z22 ? 76 : 21, 0.0f));
        frameLayout.addView(linksTextView, LayoutHelper.createFrame(-2, -2.0f, (!LocaleController.isRTL ? 5 : 3) | 48, 24.0f, 57.0f, 24.0f, 1.0f));
        if (atomicBoolean != null) {
        }
        if (!UserObject.isReplyUser(user)) {
        }
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Start), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda184
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                runnable.run();
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        final AlertDialog alertDialogCreate2 = builder.create();
        baseFragment.showDialog(alertDialogCreate2);
        linksTextView.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.BotWebViewStartPermission2), new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda185
            @Override // java.lang.Runnable
            public final void run() {
                AlertsCreator.m8486$r8$lambda$GzEuKIORdWPbP7DBAUH02XAcVg(alertDialogCreate2, context);
            }
        }));
    }

    public static /* synthetic */ void $r8$lambda$wyOMqK_f5uEEWUjIVgy7zQI7o2s(TLRPC.User user, BaseFragment baseFragment, AlertDialog.Builder builder, View view) {
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", user.f1825id);
        if (baseFragment.getMessagesController().checkCanOpenChat(bundle, baseFragment)) {
            baseFragment.presentFragment(new ProfileActivity(bundle));
        }
        builder.getDismissRunnable().run();
    }

    public static /* synthetic */ void $r8$lambda$vR5J416qqVgL8UMf1TgQ3Rlg69s(AtomicBoolean atomicBoolean, View view) {
        atomicBoolean.set(!atomicBoolean.get());
        ((CheckBoxCell) view).setChecked(atomicBoolean.get(), true);
    }

    /* JADX INFO: renamed from: $r8$lambda$GzEuKIORdWPbP7DBAUH02-XAcVg, reason: not valid java name */
    public static /* synthetic */ void m8486$r8$lambda$GzEuKIORdWPbP7DBAUH02XAcVg(AlertDialog alertDialog, Context context) {
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        Browser.openUrl(context, LocaleController.getString(C2888R.string.BotWebViewStartPermissionLink));
    }

    public static boolean ensurePaidMessagesMultiConfirmationTopicKeys(int i, ArrayList arrayList, int i2, Utilities.Callback callback) {
        HashSet hashSet = new HashSet();
        if (arrayList != null) {
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                hashSet.add(Long.valueOf(((MessagesStorage.TopicKey) obj).dialogId));
            }
        }
        return ensurePaidMessagesMultiConfirmation(i, new ArrayList(hashSet), i2, callback);
    }

    public static boolean ensurePaidMessagesMultiConfirmation(final int i, final ArrayList arrayList, int i2, final Utilities.Callback callback) {
        boolean z = false;
        if (callback == null) {
            return false;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            callback.run(new HashMap());
            return false;
        }
        final HashMap map = new HashMap();
        int size = arrayList.size();
        int i3 = 0;
        int i4 = 0;
        long j = 0;
        boolean z2 = true;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            Long l = (Long) obj;
            long jLongValue = l.longValue();
            boolean z3 = z;
            long sendPaidMessagesStars = MessagesController.getInstance(i).getSendPaidMessagesStars(jLongValue);
            if (sendPaidMessagesStars <= 0 && jLongValue > 0) {
                sendPaidMessagesStars = DialogObject.getMessagesStarsPrice(MessagesController.getInstance(i).isUserContactBlocked(jLongValue));
            }
            map.put(l, Long.valueOf(sendPaidMessagesStars));
            j += sendPaidMessagesStars;
            StarsController.getInstance(i).sendingMessagesCount.put(l, Integer.valueOf(i2));
            if (sendPaidMessagesStars > 0) {
                i3++;
            }
            if (sendPaidMessagesStars > 0 && z2) {
                if (MessagesController.getInstance(i).getMainSettings().getLong("ask_paid_message_" + jLongValue + "_price", 0L) < sendPaidMessagesStars) {
                    z2 = z3;
                }
            }
            z = z3;
        }
        boolean z4 = z;
        final long jMax = j * ((long) Math.max(1, i2));
        if (z2 || jMax <= 0) {
            callback.run(map);
            return z4;
        }
        final Activity activity = AndroidUtilities.getActivity();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        final Theme.ResourcesProvider darkThemeResourceProvider = (PhotoViewer.getInstance().isVisible() || (safeLastFragment != null && safeLastFragment.hasShownSheet())) ? new DarkThemeResourceProvider() : safeLastFragment != null ? safeLastFragment.getResourceProvider() : null;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("MessageLockedStarsConfirmMessageMulti1", i3)));
        spannableStringBuilder.append((CharSequence) " ");
        Object[] objArr = new Object[1];
        objArr[z4 ? 1 : 0] = LocaleController.formatPluralStringComma("MessageLockedStarsConfirmMessageMulti2Messages", Math.max(1, i3) * i2);
        spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("MessageLockedStarsConfirmMessageMulti2", (int) jMax, objArr)));
        showAlertWithCheckbox(activity, LocaleController.getString(C2888R.string.MessageLockedStarsConfirmTitle), spannableStringBuilder, LocaleController.getString(C2888R.string.MessageLockedStarsConfirmMessageDontAsk), LocaleController.formatPluralStringComma("MessageLockedStarsConfirmMessagePay", i2), new Utilities.Callback() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda75
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj2) {
                AlertsCreator.$r8$lambda$gL_CoCbzySiTzYKkd2CADFQdPxc(i, arrayList, jMax, activity, darkThemeResourceProvider, callback, map, (Boolean) obj2);
            }
        }, darkThemeResourceProvider);
        return true;
    }

    public static /* synthetic */ void $r8$lambda$gL_CoCbzySiTzYKkd2CADFQdPxc(final int i, final ArrayList arrayList, final long j, final Activity activity, final Theme.ResourcesProvider resourcesProvider, final Utilities.Callback callback, final HashMap map, Boolean bool) {
        if (bool.booleanValue()) {
            SharedPreferences.Editor editorEdit = MessagesController.getInstance(i).getMainSettings().edit();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                Long l = (Long) obj;
                long jLongValue = l.longValue();
                long sendPaidMessagesStars = MessagesController.getInstance(i).getSendPaidMessagesStars(jLongValue);
                if (sendPaidMessagesStars <= 0 && jLongValue > 0) {
                    sendPaidMessagesStars = DialogObject.getMessagesStarsPrice(MessagesController.getInstance(i).isUserContactBlocked(jLongValue));
                }
                editorEdit.putLong("ask_paid_message_" + jLongValue + "_price", sendPaidMessagesStars);
                StarsController.getInstance(i).justAgreedToNotAskDialogs.put(l, Long.valueOf(System.currentTimeMillis()));
            }
            editorEdit.apply();
        }
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda85
            @Override // java.lang.Runnable
            public final void run() {
                AlertsCreator.m8528$r8$lambda$tyeAVmKfLacaIL2VWTMkguXbw(i, j, activity, arrayList, resourcesProvider, callback, map);
            }
        };
        if (!StarsController.getInstance(i).balanceAvailable()) {
            StarsController.getInstance(i).invalidateBalance(runnable);
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$tye-AVmKfL-acaIL2VWTMkguXbw, reason: not valid java name */
    public static /* synthetic */ void m8528$r8$lambda$tyeAVmKfLacaIL2VWTMkguXbw(int i, long j, Activity activity, ArrayList arrayList, Theme.ResourcesProvider resourcesProvider, final Utilities.Callback callback, final HashMap map) {
        if (StarsController.getInstance(i).getBalance().amount >= j) {
            callback.run(map);
        } else {
            if (activity == null) {
                return;
            }
            long jLongValue = ((Long) arrayList.get(0)).longValue();
            new StarsIntroActivity.StarsNeededSheet(activity, resourcesProvider, j, 13, DialogObject.getShortName(i, jLongValue), new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda177
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(map);
                }
            }, jLongValue).show();
        }
    }

    public static boolean needsPaidMessageAlert(int i, long j) {
        long sendPaidMessagesStars = MessagesController.getInstance(i).getSendPaidMessagesStars(j);
        if (sendPaidMessagesStars <= 0 && j > 0) {
            sendPaidMessagesStars = DialogObject.getMessagesStarsPrice(MessagesController.getInstance(i).isUserContactBlocked(j));
        }
        if (sendPaidMessagesStars <= 0) {
            return false;
        }
        SharedPreferences mainSettings = MessagesController.getInstance(i).getMainSettings();
        StringBuilder sb = new StringBuilder();
        sb.append("ask_paid_message_");
        sb.append(j);
        sb.append("_price");
        return sendPaidMessagesStars > mainSettings.getLong(sb.toString(), 0L);
    }

    public static boolean ensurePaidMessageConfirmation(int i, long j, int i2, Utilities.Callback callback) {
        return ensurePaidMessageConfirmation(i, j, i2, callback, 0L);
    }

    public static boolean ensurePaidMessageConfirmation(final int i, final long j, int i2, final Utilities.Callback callback, long j2) {
        if (callback == null) {
            return false;
        }
        long sendPaidMessagesStars = MessagesController.getInstance(i).getSendPaidMessagesStars(j);
        if (sendPaidMessagesStars <= 0 && j > 0) {
            sendPaidMessagesStars = DialogObject.getMessagesStarsPrice(MessagesController.getInstance(i).isUserContactBlocked(j));
        }
        final long j3 = ((long) i2) * sendPaidMessagesStars;
        StarsController.getInstance(i).sendingMessagesCount.put(Long.valueOf(j), Integer.valueOf(i2));
        if (j3 <= 0 || j2 == j3) {
            callback.run(Long.valueOf(j3));
            return false;
        }
        final long j4 = sendPaidMessagesStars;
        showPayForMessageAlert(i, j, j4, i2, new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                AlertsCreator.$r8$lambda$iEhn_o9NpXIqflvejUEDsRI5eX4(i, j3, j, callback, j4);
            }
        });
        return true;
    }

    public static /* synthetic */ void $r8$lambda$iEhn_o9NpXIqflvejUEDsRI5eX4(final int i, final long j, final long j2, final Utilities.Callback callback, final long j3) {
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda66
            @Override // java.lang.Runnable
            public final void run() {
                AlertsCreator.m8470$r8$lambda$4ButnphhEVZCDyE_CwaQigrOvI(i, j, j2, callback, j3);
            }
        };
        if (!StarsController.getInstance(i).balanceAvailable()) {
            StarsController.getInstance(i).invalidateBalance(runnable);
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$4ButnphhEVZCDyE_-CwaQigrOvI, reason: not valid java name */
    public static /* synthetic */ void m8470$r8$lambda$4ButnphhEVZCDyE_CwaQigrOvI(int i, long j, long j2, final Utilities.Callback callback, final long j3) {
        if (StarsController.getInstance(i).getBalance().amount < j) {
            Activity activity = AndroidUtilities.getActivity();
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            Theme.ResourcesProvider darkThemeResourceProvider = (PhotoViewer.getInstance().isVisible() || (safeLastFragment != null && safeLastFragment.hasShownSheet())) ? new DarkThemeResourceProvider() : safeLastFragment != null ? safeLastFragment.getResourceProvider() : null;
            if (activity == null) {
                return;
            }
            new StarsIntroActivity.StarsNeededSheet(activity, darkThemeResourceProvider, j, 13, DialogObject.getShortName(i, j2), new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda145
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(Long.valueOf(j3));
                }
            }, j2).show();
            return;
        }
        callback.run(Long.valueOf(j3));
    }

    public static void showPayForMessageAlert(final int i, final long j, final long j2, int i2, final Runnable runnable) {
        TLRPC.Chat chat;
        if (runnable == null) {
            return;
        }
        if (j2 <= MessagesController.getInstance(i).getMainSettings().getLong("ask_paid_message_" + j + "_price", 0L)) {
            runnable.run();
            return;
        }
        Activity activity = AndroidUtilities.getActivity();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        Theme.ResourcesProvider darkThemeResourceProvider = (PhotoViewer.getInstance().isVisible() || (safeLastFragment != null && safeLastFragment.hasShownSheet())) ? new DarkThemeResourceProvider() : safeLastFragment != null ? safeLastFragment.getResourceProvider() : null;
        String shortName = DialogObject.getShortName(i, j);
        if (ChatObject.isMonoForum(i, j)) {
            shortName = ForumUtilities.getMonoForumTitle(i, j, true);
        } else if (safeLastFragment instanceof ChatActivity) {
            ChatActivity chatActivity = (ChatActivity) safeLastFragment;
            if (chatActivity.isComments && chatActivity.getDialogId() == j && (chat = chatActivity.replyOriginalChat) != null) {
                shortName = DialogObject.getShortName(i, -chat.f1660id);
            }
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i3 = (int) j2;
        spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("MessageLockedStarsConfirmMessage1", i3, shortName)));
        spannableStringBuilder.append((CharSequence) " ");
        if (i2 == 1) {
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("MessageLockedStarsConfirmMessage2One", i3)));
        } else {
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("MessageLockedStarsConfirmMessage2Many1", (int) (((long) i2) * j2))));
            spannableStringBuilder.append((CharSequence) " ");
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("MessageLockedStarsConfirmMessage2Many2", i2)));
        }
        showAlertWithCheckbox(activity, LocaleController.getString(C2888R.string.MessageLockedStarsConfirmTitle), spannableStringBuilder, LocaleController.getString(C2888R.string.MessageLockedStarsConfirmMessageDontAsk), LocaleController.formatPluralStringComma("MessageLockedStarsConfirmMessagePay", i2), new Utilities.Callback() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda84
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                AlertsCreator.$r8$lambda$gwZkU4bsChvcYpDgSrpntaFDlSw(i, j, j2, runnable, (Boolean) obj);
            }
        }, darkThemeResourceProvider);
    }

    public static /* synthetic */ void $r8$lambda$gwZkU4bsChvcYpDgSrpntaFDlSw(int i, long j, long j2, Runnable runnable, Boolean bool) {
        if (bool.booleanValue()) {
            MessagesController.getInstance(i).getMainSettings().edit().putLong("ask_paid_message_" + j + "_price", j2).apply();
            StarsController.getInstance(i).justAgreedToNotAskDialogs.put(Long.valueOf(j), Long.valueOf(System.currentTimeMillis()));
        }
        AndroidUtilities.runOnUIThread(runnable);
    }

    public static void showAlertWithCheckbox(Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, final Utilities.Callback callback, Theme.ResourcesProvider resourcesProvider) {
        if (context == null) {
            callback.run(Boolean.FALSE);
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
        final CheckBoxCell[] checkBoxCellArr = new CheckBoxCell[1];
        final boolean[] zArr = new boolean[1];
        TextView textView = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.10
            @Override // android.widget.TextView
            public void setText(CharSequence charSequence5, TextView.BufferType bufferType) {
                super.setText(Emoji.replaceEmoji(charSequence5, getPaint().getFontMetricsInt(), false), bufferType);
            }
        };
        NotificationCenter.listenEmojiLoading(textView);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
        textView.setTextSize(1, 16.0f);
        textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        textView.setText(charSequence2);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.11
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(i, i2);
                if (checkBoxCellArr[0] != null) {
                    setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight() + checkBoxCellArr[0].getMeasuredHeight() + AndroidUtilities.m1124dp(7.0f));
                }
            }
        };
        builder.setCustomViewOffset(6);
        builder.setView(frameLayout);
        TextView textView2 = new TextView(context);
        textView2.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, resourcesProvider));
        textView2.setTextSize(1, 20.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setLines(1);
        textView2.setMaxLines(1);
        textView2.setSingleLine(true);
        textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        textView2.setText(charSequence);
        frameLayout.addView(textView2, LayoutHelper.createFrame(-1, -2.0f, (LocaleController.isRTL ? 5 : 3) | 48, 24.0f, 8.0f, 24.0f, 0.0f));
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 5 : 3) | 48, 24.0f, 48.0f, 24.0f, 6.0f));
        if (!TextUtils.isEmpty(charSequence3)) {
            CheckBoxCell checkBoxCell = new CheckBoxCell(context, 1, resourcesProvider);
            checkBoxCellArr[0] = checkBoxCell;
            checkBoxCell.setBackground(Theme.getSelectorDrawable(false));
            checkBoxCellArr[0].setMultiline(true);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) checkBoxCellArr[0].getCheckBoxView().getLayoutParams();
            layoutParams.topMargin = 0;
            layoutParams.gravity = (LocaleController.isRTL ? 5 : 3) | 16;
            checkBoxCellArr[0].getCheckBoxView().setLayoutParams(layoutParams);
            checkBoxCellArr[0].setText(charSequence3, _UrlKt.FRAGMENT_ENCODE_SET, false, false);
            checkBoxCellArr[0].setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(16.0f) : AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), LocaleController.isRTL ? AndroidUtilities.m1124dp(8.0f) : AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(8.0f));
            frameLayout.addView(checkBoxCellArr[0], LayoutHelper.createFrame(-1, -2, 83));
            checkBoxCellArr[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda117
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.m8472$r8$lambda$4i4iD0zhe5yQZdJoQsIYNok0SM(zArr, view);
                }
            });
        }
        builder.setPositiveButton(charSequence4, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda118
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                callback.run(Boolean.valueOf(zArr[0]));
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setShowStarsBalance(true);
        alertDialogCreate.show();
    }

    /* JADX INFO: renamed from: $r8$lambda$4i4iD0zhe5yQZdJoQs-IYNok0SM, reason: not valid java name */
    public static /* synthetic */ void m8472$r8$lambda$4i4iD0zhe5yQZdJoQsIYNok0SM(boolean[] zArr, View view) {
        boolean z = !zArr[0];
        zArr[0] = z;
        ((CheckBoxCell) view).setChecked(z, true);
    }

    public static void createClearOrDeleteDialogAlert(BaseFragment baseFragment, boolean z, TLRPC.Chat chat, TLRPC.User user, boolean z2, boolean z3, boolean z4, boolean z5, MessagesStorage.BooleanCallback booleanCallback) {
        createClearOrDeleteDialogAlert(baseFragment, z, false, chat, user, z2, z3, z4, z5, booleanCallback, baseFragment != null ? baseFragment.getResourceProvider() : null);
    }

    /* JADX WARN: Removed duplicated region for block: B:163:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0440  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x05aa  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x05b3  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0640  */
    /* JADX WARN: Removed duplicated region for block: B:267:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void createClearOrDeleteDialogAlert(final BaseFragment baseFragment, final boolean z, final boolean z2, final TLRPC.Chat chat, final TLRPC.User user, final boolean z3, final boolean z4, boolean z5, final boolean z6, final MessagesStorage.BooleanCallback booleanCallback, final Theme.ResourcesProvider resourcesProvider) {
        long j;
        boolean z7;
        int i;
        TLRPC.Chat chat2;
        boolean z8;
        ArrayList arrayList;
        boolean z9;
        boolean z10;
        CheckBoxCell[] checkBoxCellArr;
        float f;
        final boolean z11;
        boolean z12;
        boolean z13;
        char c;
        Object obj;
        CharSequence string;
        TextView textView;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        if (chat == null && user == null) {
            return;
        }
        final int currentAccount = baseFragment.getCurrentAccount();
        final Activity parentActivity = baseFragment.getParentActivity();
        final AlertDialog.Builder builder = new AlertDialog.Builder(parentActivity, resourcesProvider);
        long clientUserId = UserConfig.getInstance(currentAccount).getClientUserId();
        final CheckBoxCell[] checkBoxCellArr2 = new CheckBoxCell[1];
        TextView textView2 = new TextView(parentActivity) { // from class: org.telegram.ui.Components.AlertsCreator.12
            @Override // android.widget.TextView
            public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), false), bufferType);
            }
        };
        NotificationCenter.listenEmojiLoading(textView2);
        textView2.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        textView2.setTextSize(1, 16.0f);
        textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        if (!z6 && ChatObject.isChannel(chat) && ChatObject.isPublic(chat)) {
            j = clientUserId;
            z7 = true;
        } else {
            j = clientUserId;
            z7 = false;
        }
        FrameLayout frameLayout = new FrameLayout(parentActivity) { // from class: org.telegram.ui.Components.AlertsCreator.13
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                super.onMeasure(i2, i3);
                if (checkBoxCellArr2[0] != null) {
                    setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight() + checkBoxCellArr2[0].getMeasuredHeight() + AndroidUtilities.m1124dp(7.0f));
                }
            }
        };
        builder.setCustomViewOffset(6);
        builder.setView(frameLayout);
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setTextSize(AndroidUtilities.m1124dp(18.0f));
        BackupImageView backupImageView = new BackupImageView(parentActivity);
        backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(30.0f));
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(30, 30.0f, (LocaleController.isRTL ? 5 : 3) | 48, 22.0f, 5.0f, 22.0f, 0.0f));
        AnimatedTextView animatedTextView = new AnimatedTextView(parentActivity);
        animatedTextView.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem));
        animatedTextView.setTextSize(AndroidUtilities.m1124dp(20.0f));
        animatedTextView.setTypeface(AndroidUtilities.bold());
        animatedTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        animatedTextView.setEllipsizeByGradient(true);
        if (z) {
            if (z7) {
                animatedTextView.setText(LocaleController.getString(C2888R.string.ClearHistoryCache));
            } else {
                animatedTextView.setText(LocaleController.getString(C2888R.string.ClearHistory));
            }
        } else if (chat != null) {
            if (ChatObject.isChannel(chat)) {
                if (chat.monoforum) {
                    animatedTextView.setText(LocaleController.getString(C2888R.string.LeaveConversationMenu));
                } else if (chat.megagroup) {
                    animatedTextView.setText(LocaleController.getString(C2888R.string.LeaveMega));
                } else {
                    animatedTextView.setText(LocaleController.getString(C2888R.string.LeaveChannel));
                }
            } else {
                animatedTextView.setText(LocaleController.getString(C2888R.string.LeaveMega));
            }
        } else {
            animatedTextView.setText(LocaleController.getString(C2888R.string.DeleteChatUser));
        }
        boolean z14 = LocaleController.isRTL;
        frameLayout.addView(animatedTextView, LayoutHelper.createFrame(-1, 24.0f, (z14 ? 5 : 3) | 48, z14 ? 22 : 65, 7.66f, z14 ? 65 : 22, 0.0f));
        frameLayout.addView(textView2, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 5 : 3) | 48, 24.0f, 49.0f, 24.0f, 1.0f));
        TLRPC.Chat monoForumLinkedChat = ChatObject.isMonoForum(chat) ? baseFragment.getMessagesController().getMonoForumLinkedChat(chat.f1660id) : null;
        boolean z15 = (user == null || user.bot || user.f1825id == j || !MessagesController.getInstance(currentAccount).canRevokePmInbox) ? false : true;
        if (user != null) {
            i = MessagesController.getInstance(currentAccount).revokeTimePmLimit;
        } else {
            i = MessagesController.getInstance(currentAccount).revokeTimeLimit;
        }
        boolean z16 = !z3 && user != null && z15 && i == Integer.MAX_VALUE;
        final boolean[] zArr = new boolean[1];
        if (user != null) {
            chat2 = monoForumLinkedChat;
            z8 = z16;
            arrayList = (ArrayList) MessagesController.getInstance(currentAccount).dialogMessage.get(user.f1825id);
        } else {
            chat2 = monoForumLinkedChat;
            z8 = z16;
            arrayList = null;
        }
        boolean z17 = (arrayList == null || arrayList.size() != 1 || arrayList.get(0) == null || ((MessageObject) arrayList.get(0)).messageOwner == null || (!(((MessageObject) arrayList.get(0)).messageOwner.action instanceof TLRPC.TL_messageActionUserJoined) && !(((MessageObject) arrayList.get(0)).messageOwner.action instanceof TLRPC.TL_messageActionContactSignUp))) ? false : true;
        if (user != null) {
            f = 8.0f;
            if (user.bot) {
                boolean z18 = z7;
                z10 = z17;
                if (user.f1825id != UserObject.VERIFY) {
                    CheckBoxCell checkBoxCell = new CheckBoxCell(parentActivity, 1, resourcesProvider);
                    checkBoxCellArr2[0] = checkBoxCell;
                    checkBoxCell.setBackground(Theme.getSelectorDrawable(false));
                    checkBoxCellArr2[0].setText(LocaleController.getString(C2888R.string.BlockBot), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                    z9 = z18;
                    checkBoxCellArr2[0].setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(16.0f) : AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(10.0f), LocaleController.isRTL ? AndroidUtilities.m1124dp(8.0f) : AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(10.0f));
                    CheckBoxCell checkBoxCell2 = checkBoxCellArr2[0];
                    zArr[0] = true;
                    checkBoxCell2.setChecked(true, false);
                    checkBoxCellArr2[0].setMultiline(true);
                    frameLayout.addView(checkBoxCellArr2[0], LayoutHelper.createFrame(-1, 48.0f, 83, 0.0f, 0.0f, 0.0f, 0.0f));
                    checkBoxCellArr2[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda45
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            AlertsCreator.m8520$r8$lambda$n3OKejeNWLifzAOoHtzFRHdGRc(zArr, view);
                        }
                    });
                    z12 = false;
                    if (user != null) {
                        if (UserObject.isReplyUser(user)) {
                            avatarDrawable.setScaleSize(0.8f);
                            avatarDrawable.setAvatarType(12);
                            obj = null;
                            backupImageView.setImage((ImageLocation) null, (String) null, avatarDrawable, user);
                        } else {
                            obj = null;
                            if (user.f1825id == j) {
                                avatarDrawable.setScaleSize(0.8f);
                                avatarDrawable.setAvatarType(1);
                                backupImageView.setImage((ImageLocation) null, (String) null, avatarDrawable, user);
                            } else {
                                avatarDrawable.setScaleSize(1.0f);
                                avatarDrawable.setInfo(baseFragment.getCurrentAccount(), user);
                                backupImageView.setForUserOrChat(user, avatarDrawable);
                            }
                        }
                    } else {
                        obj = null;
                        avatarDrawable.setInfo(baseFragment.getCurrentAccount(), chat2 != null ? chat2 : chat);
                        backupImageView.setForUserOrChat(chat2 != null ? chat2 : chat, avatarDrawable);
                    }
                    if (z2) {
                        if (UserObject.isUserSelf(user)) {
                            textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.DeleteAllMessagesSavedAlert)));
                        } else if (chat != null && ChatObject.isChannelAndNotMegaGroup(chat)) {
                            textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.DeleteAllMessagesChannelAlert)));
                        } else {
                            textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.DeleteAllMessagesAlert)));
                        }
                    } else if (!z) {
                        TLRPC.Chat chat3 = chat2;
                        if (user != null) {
                            if (z3) {
                                textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.AreYouSureDeleteThisChatWithSecretUser, UserObject.getUserName(user))));
                            } else if (user.f1825id == j) {
                                textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.AreYouSureDeleteThisChatSavedMessages)));
                            } else if (!user.bot || user.support) {
                                textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.AreYouSureDeleteThisChatWithUser, UserObject.getUserName(user))));
                            } else {
                                textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.AreYouSureDeleteThisChatWithBotWithCheckmark, UserObject.getUserName(user))));
                            }
                        } else if (ChatObject.isChannel(chat)) {
                            String string2 = chat3 != null ? LocaleController.formatString(C2888R.string.MonoforumTitle, chat3.title) : chat.title;
                            if (chat.megagroup) {
                                textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.MegaLeaveAlertWithName, string2)));
                            } else {
                                textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.ChannelLeaveAlertWithName, string2)));
                            }
                        } else {
                            textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.AreYouSureDeleteAndExitName, chat.title)));
                        }
                    } else if (user == null) {
                        String string3 = chat2 != null ? LocaleController.formatString(C2888R.string.MonoforumTitle, chat2.title) : chat.title;
                        if (!ChatObject.isChannel(chat) || (chat.megagroup && !ChatObject.isPublic(chat))) {
                            textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.AreYouSureClearHistoryWithChat, string3)));
                        } else if (chat.megagroup) {
                            textView2.setText(LocaleController.getString(C2888R.string.AreYouSureClearHistoryGroup));
                        } else {
                            textView2.setText(LocaleController.getString(C2888R.string.AreYouSureClearHistoryChannel));
                        }
                    } else if (z3) {
                        textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.AreYouSureClearHistoryWithSecretUser, UserObject.getUserName(user))));
                    } else if (user.f1825id == j) {
                        textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.AreYouSureClearHistorySavedMessages)));
                    } else {
                        textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.AreYouSureClearHistoryWithUser, UserObject.getUserName(user))));
                    }
                    if (z2) {
                        string = LocaleController.getString(C2888R.string.DeleteAll);
                    } else if (z) {
                        if (z9) {
                            string = LocaleController.getString(C2888R.string.ClearHistoryCache);
                        } else {
                            string = LocaleController.getString(C2888R.string.ClearForMe);
                        }
                    } else if (z12 && zArr[0]) {
                        string = LocaleController.getString(ChatObject.isChannelAndNotMegaGroup(chat) ? C2888R.string.ChannelDelete : C2888R.string.DeleteMega);
                    } else if (ChatObject.isChannel(chat)) {
                        if (chat.monoforum) {
                            string = LocaleController.getString(C2888R.string.LeaveConversationMenu);
                        } else if (chat.megagroup) {
                            string = LocaleController.getString(C2888R.string.LeaveMegaMenu);
                        } else {
                            string = LocaleController.getString(C2888R.string.LeaveChannelMenu);
                        }
                    } else {
                        string = LocaleController.getString(C2888R.string.DeleteChatUser);
                    }
                    CharSequence charSequence = string;
                    final boolean z19 = z9;
                    builder.setPositiveButton(charSequence, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda48
                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                        public final void onClick(AlertDialog alertDialog, int i2) {
                            AlertsCreator.m8488$r8$lambda$IuvjF61sJWe7zeoHfUzjUzT7So(z19, z2, z3, user, baseFragment, z, chat, z4, zArr, z6, booleanCallback, resourcesProvider, builder, currentAccount, parentActivity, alertDialog, i2);
                        }
                    });
                    builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
                    AlertDialog alertDialogCreate = builder.create();
                    baseFragment.showDialog(alertDialogCreate);
                    textView = (TextView) alertDialogCreate.getButton(-1);
                    if (textView != null) {
                        textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                        return;
                    }
                    return;
                }
                checkBoxCellArr = checkBoxCellArr2;
                z9 = z18;
            } else {
                z9 = z7;
                z10 = z17;
                checkBoxCellArr = checkBoxCellArr2;
            }
        } else {
            z9 = z7;
            z10 = z17;
            checkBoxCellArr = checkBoxCellArr2;
            f = 8.0f;
        }
        if (z2 || (((!z3 || z) && !z8) || UserObject.isDeleted(user) || z10)) {
            z11 = z4 && !z && chat != null && chat.creator;
            if (z11) {
            }
            z12 = z11;
            if (user != null) {
            }
            if (z2) {
            }
            if (z2) {
            }
            CharSequence charSequence2 = string;
            final boolean z192 = z9;
            builder.setPositiveButton(charSequence2, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda48
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    AlertsCreator.m8488$r8$lambda$IuvjF61sJWe7zeoHfUzjUzT7So(z192, z2, z3, user, baseFragment, z, chat, z4, zArr, z6, booleanCallback, resourcesProvider, builder, currentAccount, parentActivity, alertDialog, i2);
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
            AlertDialog alertDialogCreate2 = builder.create();
            baseFragment.showDialog(alertDialogCreate2);
            textView = (TextView) alertDialogCreate2.getButton(-1);
            if (textView != null) {
            }
        } else {
            z11 = false;
        }
        CheckBoxCell checkBoxCell3 = new CheckBoxCell(parentActivity, 1, resourcesProvider);
        checkBoxCellArr[0] = checkBoxCell3;
        checkBoxCell3.setBackground(Theme.getSelectorDrawable(false));
        if (z11) {
            if (!ChatObject.isChannel(chat) || chat.megagroup) {
                checkBoxCellArr[0].setText(LocaleController.getString(C2888R.string.DeleteGroupForAll), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
            } else {
                checkBoxCellArr[0].setText(LocaleController.getString(C2888R.string.DeleteChannelForAll), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
            }
            c = 0;
            z13 = true;
        } else if (z) {
            z13 = true;
            c = 0;
            checkBoxCellArr[0].setText(LocaleController.formatString(C2888R.string.ClearHistoryOptionAlso, UserObject.getFirstName(user)), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
        } else {
            z13 = true;
            c = 0;
            checkBoxCellArr[0].setText(LocaleController.formatString(C2888R.string.DeleteMessagesOptionAlso, UserObject.getFirstName(user)), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
        }
        checkBoxCellArr[c].setMultiline(z13);
        checkBoxCellArr[c].setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(16.0f) : AndroidUtilities.m1124dp(f), AndroidUtilities.m1124dp(10.0f), LocaleController.isRTL ? AndroidUtilities.m1124dp(f) : AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(10.0f));
        frameLayout.addView(checkBoxCellArr[0], LayoutHelper.createFrame(-1, 48.0f, 83, 0.0f, 0.0f, 0.0f, 0.0f));
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                AlertsCreator.m8509$r8$lambda$ebuX0usCO1q3W0pHKE1rx80R7E(z11, chat, builder, zArr);
            }
        };
        checkBoxCellArr[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda47
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.m8485$r8$lambda$FvHqCeRXXV3YeIEhcPY87LjHsA(zArr, runnable, view);
            }
        });
        if (z5) {
            CheckBoxCell checkBoxCell4 = checkBoxCellArr[0];
            zArr[0] = true;
            checkBoxCell4.setChecked(true, false);
            runnable.run();
        }
        z12 = z11;
        if (user != null) {
        }
        if (z2) {
        }
        if (z2) {
        }
        CharSequence charSequence22 = string;
        final boolean z1922 = z9;
        builder.setPositiveButton(charSequence22, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda48
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                AlertsCreator.m8488$r8$lambda$IuvjF61sJWe7zeoHfUzjUzT7So(z1922, z2, z3, user, baseFragment, z, chat, z4, zArr, z6, booleanCallback, resourcesProvider, builder, currentAccount, parentActivity, alertDialog, i2);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        AlertDialog alertDialogCreate22 = builder.create();
        baseFragment.showDialog(alertDialogCreate22);
        textView = (TextView) alertDialogCreate22.getButton(-1);
        if (textView != null) {
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$n3OKejeNWLifzAOoHtzFR-HdGRc, reason: not valid java name */
    public static /* synthetic */ void m8520$r8$lambda$n3OKejeNWLifzAOoHtzFRHdGRc(boolean[] zArr, View view) {
        boolean z = !zArr[0];
        zArr[0] = z;
        ((CheckBoxCell) view).setChecked(z, true);
    }

    /* JADX INFO: renamed from: $r8$lambda$ebuX0usCO1q3W0pHKE1rx80-R7E, reason: not valid java name */
    public static /* synthetic */ void m8509$r8$lambda$ebuX0usCO1q3W0pHKE1rx80R7E(boolean z, TLRPC.Chat chat, AlertDialog.Builder builder, boolean[] zArr) {
        if (z && ChatObject.isChannel(chat)) {
            View button = builder.create().getButton(-1);
            if (button instanceof TextView) {
                TextView textView = (TextView) button;
                if (zArr[0]) {
                    textView.setText(LocaleController.getString(ChatObject.isChannelAndNotMegaGroup(chat) ? C2888R.string.ChannelDelete : C2888R.string.DeleteMega));
                    return;
                }
                if (chat.monoforum) {
                    textView.setText(LocaleController.getString(C2888R.string.LeaveConversationMenu));
                } else if (chat.megagroup) {
                    textView.setText(LocaleController.getString(C2888R.string.LeaveMega));
                } else {
                    textView.setText(LocaleController.getString(C2888R.string.LeaveChannel));
                }
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$FvHq-CeRXXV3YeIEhcPY87LjHsA, reason: not valid java name */
    public static /* synthetic */ void m8485$r8$lambda$FvHqCeRXXV3YeIEhcPY87LjHsA(boolean[] zArr, Runnable runnable, View view) {
        boolean z = !zArr[0];
        zArr[0] = z;
        ((CheckBoxCell) view).setChecked(z, true);
        runnable.run();
    }

    /* JADX INFO: renamed from: $r8$lambda$IuvjF61sJWe7zeoHfUzj-UzT7So, reason: not valid java name */
    public static /* synthetic */ void m8488$r8$lambda$IuvjF61sJWe7zeoHfUzjUzT7So(boolean z, final boolean z2, boolean z3, final TLRPC.User user, final BaseFragment baseFragment, final boolean z4, final TLRPC.Chat chat, final boolean z5, final boolean[] zArr, final boolean z6, final MessagesStorage.BooleanCallback booleanCallback, final Theme.ResourcesProvider resourcesProvider, AlertDialog.Builder builder, final int i, final Context context, AlertDialog alertDialog, int i2) {
        if (!z && !z2 && !z3) {
            if (UserObject.isUserSelf(user)) {
                createClearOrDeleteDialogAlert(baseFragment, z4, true, chat, user, false, z5, zArr[0], z6, booleanCallback, resourcesProvider);
                return;
            }
            if (user != null && zArr[0]) {
                MessagesStorage.getInstance(baseFragment.getCurrentAccount()).getMessagesCount(user.f1825id, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda131
                    @Override // org.telegram.messenger.MessagesStorage.IntCallback
                    public final void run(int i3) {
                        AlertsCreator.m8480$r8$lambda$CLfziSlsnxL6RR4YOFHrjlKPM4(baseFragment, z4, chat, user, z5, zArr, z6, booleanCallback, resourcesProvider, i3);
                    }
                });
                return;
            }
            if (ChatObject.isChannel(chat) && chat.creator && !zArr[0]) {
                final Browser.Progress progressMakeButtonLoading = builder.create().makeButtonLoading(-1);
                progressMakeButtonLoading.init();
                TLRPC.TL_channels_getFutureCreatorAfterLeave tL_channels_getFutureCreatorAfterLeave = new TLRPC.TL_channels_getFutureCreatorAfterLeave();
                tL_channels_getFutureCreatorAfterLeave.channel = MessagesController.getInputChannel(chat);
                ConnectionsManager.getInstance(i).sendRequestTyped(tL_channels_getFutureCreatorAfterLeave, new BotForumHelper$$ExternalSyntheticLambda2(), new Utilities.Callback2() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda132
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        AlertsCreator.$r8$lambda$J4qzMfGLrNnZCYIvZKarRINAmNw(progressMakeButtonLoading, booleanCallback, z2, zArr, baseFragment, chat, context, i, resourcesProvider, (TLRPC.User) obj, (TLRPC.TL_error) obj2);
                    }
                });
                return;
            }
        }
        if (booleanCallback != null) {
            booleanCallback.run(z2 || zArr[0]);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$CLfziS-lsnxL6RR4YOFHrjlKPM4, reason: not valid java name */
    public static /* synthetic */ void m8480$r8$lambda$CLfziSlsnxL6RR4YOFHrjlKPM4(BaseFragment baseFragment, boolean z, TLRPC.Chat chat, TLRPC.User user, boolean z2, boolean[] zArr, boolean z3, MessagesStorage.BooleanCallback booleanCallback, Theme.ResourcesProvider resourcesProvider, int i) {
        if (i >= 50) {
            createClearOrDeleteDialogAlert(baseFragment, z, true, chat, user, false, z2, zArr[0], z3, booleanCallback, resourcesProvider);
        } else if (booleanCallback != null) {
            booleanCallback.run(zArr[0]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void $r8$lambda$J4qzMfGLrNnZCYIvZKarRINAmNw(Browser.Progress progress, final MessagesStorage.BooleanCallback booleanCallback, boolean z, boolean[] zArr, BaseFragment baseFragment, final TLRPC.Chat chat, final Context context, final int i, final Theme.ResourcesProvider resourcesProvider, TLRPC.User user, TLRPC.TL_error tL_error) {
        boolean z2;
        progress.end();
        TLRPC.User user2 = user;
        if (user2 instanceof TLRPC.TL_userEmpty) {
            user2 = null;
        }
        final TLRPC.User user3 = user2;
        if (user3 != null) {
            showLeaveGroupWithFutureOwner(baseFragment, chat, user3, new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda178
                @Override // java.lang.Runnable
                public final void run() {
                    new SelectChatUserSheet(context, chat, user3, new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda180
                        @Override // java.lang.Runnable
                        public final void run() {
                            AlertsCreator.$r8$lambda$76YT2YI2man99sD2sQ30wzTGwX0(i, booleanCallback);
                        }
                    }, resourcesProvider).show();
                }
            }, new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda179
                @Override // java.lang.Runnable
                public final void run() {
                    AlertsCreator.m8460$r8$lambda$BwqXTm5W2YSCvPE2C282nwlub4(booleanCallback);
                }
            });
        } else if (booleanCallback != null) {
            if (!z) {
                z2 = zArr[0];
            }
            booleanCallback.run(z2);
        }
    }

    public static /* synthetic */ void $r8$lambda$76YT2YI2man99sD2sQ30wzTGwX0(int i, final MessagesStorage.BooleanCallback booleanCallback) {
        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeChats, new Object[0]);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda234
            @Override // java.lang.Runnable
            public final void run() {
                AlertsCreator.$r8$lambda$MHKt46kOtCoYNx_LH1qFIrks2G8(booleanCallback);
            }
        }, 250L);
    }

    public static /* synthetic */ void $r8$lambda$MHKt46kOtCoYNx_LH1qFIrks2G8(MessagesStorage.BooleanCallback booleanCallback) {
        if (booleanCallback != null) {
            booleanCallback.run(false);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$-BwqXTm5W2YSCvPE2C282nwlub4, reason: not valid java name */
    public static /* synthetic */ void m8460$r8$lambda$BwqXTm5W2YSCvPE2C282nwlub4(MessagesStorage.BooleanCallback booleanCallback) {
        if (booleanCallback != null) {
            booleanCallback.run(false);
        }
    }

    public static void showLeaveGroupWithFutureOwner(BaseFragment baseFragment, TLRPC.Chat chat, TLRPC.User user, final Runnable runnable, final Runnable runnable2) {
        if (baseFragment == null || baseFragment.getParentActivity() == null || chat == null) {
            return;
        }
        Context context = baseFragment.getContext();
        TLRPC.User currentUser = UserConfig.getInstance(baseFragment.getCurrentAccount()).getCurrentUser();
        boolean zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(chat);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setClipToPadding(false);
        frameLayout.setClipChildren(false);
        BackupImageView backupImageView = new BackupImageView(context);
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setInfo(currentUser);
        backupImageView.setRoundRadius(AndroidUtilities.m1124dp(30.0f));
        backupImageView.setForUserOrChat(currentUser, avatarDrawable);
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(60, 60.0f, 17, -48.0f, 15.0f, 0.0f, 12.0f));
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(C2888R.drawable.msg_arrow_avatar);
        imageView.setColorFilter(new PorterDuffColorFilter(baseFragment.getThemedColor(Theme.key_divider), PorterDuff.Mode.SRC_IN));
        frameLayout.addView(imageView, LayoutHelper.createFrame(24, 24.0f, 17, 0.0f, 15.0f, 0.0f, 12.0f));
        BackupImageView backupImageView2 = new BackupImageView(context) { // from class: org.telegram.ui.Components.AlertsCreator.14
            final Path path = new Path();

            @Override // org.telegram.p029ui.Components.BackupImageView, android.view.View
            protected void onDraw(Canvas canvas) {
                canvas.save();
                this.path.rewind();
                this.path.addCircle(AndroidUtilities.m1124dp(54.0f), AndroidUtilities.m1124dp(53.0f), AndroidUtilities.m1124dp(14.0f), Path.Direction.CW);
                canvas.clipPath(this.path, Region.Op.DIFFERENCE);
                super.onDraw(canvas);
                canvas.restore();
            }
        };
        AvatarDrawable avatarDrawable2 = new AvatarDrawable();
        avatarDrawable2.setInfo(user);
        backupImageView2.setRoundRadius(AndroidUtilities.m1124dp(30.0f));
        backupImageView2.setForUserOrChat(user, avatarDrawable2);
        frameLayout.addView(backupImageView2, LayoutHelper.createFrame(60, 60.0f, 17, 48.0f, 15.0f, 0.0f, 12.0f));
        BackupImageView backupImageView3 = new BackupImageView(context);
        AvatarDrawable avatarDrawable3 = new AvatarDrawable();
        avatarDrawable3.setInfo(chat);
        backupImageView3.setRoundRadius(AndroidUtilities.m1124dp(12.0f));
        backupImageView3.setForUserOrChat(chat, avatarDrawable3);
        frameLayout.addView(backupImageView3, LayoutHelper.createFrame(24, 24.0f, 17, 72.0f, 26.0f, 0.0f, 0.0f));
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTopViewAspectRatio(-1.0f);
        builder.setTopView(frameLayout);
        builder.setTitle(LocaleController.getString(zIsChannelAndNotMegaGroup ? C2888R.string.LeaveChannelTitle : C2888R.string.LeaveGroupTitle));
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(zIsChannelAndNotMegaGroup ? C2888R.string.LeaveChannelNewOwnerText : C2888R.string.LeaveGroupNewOwnerText, UserObject.getUserName(user), chat.title)));
        builder.setNegativeButton(LocaleController.getString(C2888R.string.AppointNewOwner), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda211
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                runnable.run();
            }
        });
        builder.setNeutralButton(LocaleController.getString(C2888R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString(zIsChannelAndNotMegaGroup ? C2888R.string.LeaveChannel : C2888R.string.LeaveMegaMenu), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda212
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                runnable2.run();
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.show();
        View button = alertDialogCreate.getButton(-1);
        if (button instanceof TextView) {
            ((TextView) button).setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    public static void createClearOrDeleteDialogsAlert(BaseFragment baseFragment, boolean z, boolean z2, int i, int i2, boolean z3, final MessagesStorage.BooleanCallback booleanCallback, Theme.ResourcesProvider resourcesProvider) {
        CharSequence string;
        int currentAccount = baseFragment.getCurrentAccount();
        Activity parentActivity = baseFragment.getParentActivity();
        AlertDialog.Builder builder = new AlertDialog.Builder(parentActivity, resourcesProvider);
        UserConfig.getInstance(currentAccount).getClientUserId();
        final CheckBoxCell[] checkBoxCellArr = new CheckBoxCell[1];
        final boolean[] zArr = new boolean[1];
        TextView textView = new TextView(parentActivity);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        textView.setTextSize(1, 16.0f);
        textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        FrameLayout frameLayout = new FrameLayout(parentActivity) { // from class: org.telegram.ui.Components.AlertsCreator.15
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i3, int i4) {
                super.onMeasure(i3, i4);
                if (checkBoxCellArr[0] != null) {
                    setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight() + checkBoxCellArr[0].getMeasuredHeight() + AndroidUtilities.m1124dp(7.0f));
                }
            }
        };
        builder.setCustomViewOffset(6);
        builder.setView(frameLayout);
        TextView textView2 = new TextView(parentActivity);
        textView2.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem));
        textView2.setTextSize(1, 20.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setLines(1);
        textView2.setMaxLines(1);
        textView2.setSingleLine(true);
        textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        if (z2) {
            if (z3) {
                CheckBoxCell checkBoxCell = new CheckBoxCell(parentActivity, 1, resourcesProvider);
                checkBoxCellArr[0] = checkBoxCell;
                checkBoxCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                checkBoxCellArr[0].setText(LocaleController.getString(C2888R.string.DeleteMessagesForBothSidesWherePossible), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                checkBoxCellArr[0].setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(16.0f) : AndroidUtilities.m1124dp(8.0f), 0, LocaleController.isRTL ? AndroidUtilities.m1124dp(8.0f) : AndroidUtilities.m1124dp(16.0f), 0);
                frameLayout.addView(checkBoxCellArr[0], LayoutHelper.createFrame(-1, 48.0f, 83, 0.0f, 0.0f, 0.0f, 0.0f));
                checkBoxCellArr[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda119
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        AlertsCreator.$r8$lambda$ty2ZO6KDd8LMO0IXbQUhsmuhvZk(zArr, view);
                    }
                });
            }
            textView2.setText(LocaleController.formatString("DeleteFewChatsTitle", C2888R.string.DeleteFewChatsTitle, LocaleController.formatPluralString("ChatsSelected", i2, new Object[0])));
            textView.setText(LocaleController.getString("AreYouSureDeleteFewChats", C2888R.string.AreYouSureDeleteFewChats));
        } else if (i != 0) {
            textView2.setText(LocaleController.formatString("ClearCacheFewChatsTitle", C2888R.string.ClearCacheFewChatsTitle, LocaleController.formatPluralString("ChatsSelectedClearCache", i2, new Object[0])));
            textView.setText(LocaleController.getString("AreYouSureClearHistoryCacheFewChats", C2888R.string.AreYouSureClearHistoryCacheFewChats));
        } else {
            textView2.setText(LocaleController.formatString("ClearFewChatsTitle", C2888R.string.ClearFewChatsTitle, LocaleController.formatPluralString("ChatsSelectedClear", i2, new Object[0])));
            textView.setText(LocaleController.getString("AreYouSureClearHistoryFewChats", C2888R.string.AreYouSureClearHistoryFewChats));
        }
        frameLayout.addView(textView2, LayoutHelper.createFrame(-1, -2.0f, (LocaleController.isRTL ? 5 : 3) | 48, 24.0f, 11.0f, 24.0f, 0.0f));
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 5 : 3) | 48, 24.0f, 57.0f, 24.0f, 1.0f));
        if (z2) {
            string = LocaleController.getString("Delete", C2888R.string.Delete);
        } else if (i != 0) {
            string = LocaleController.getString("ClearHistoryCache", C2888R.string.ClearHistoryCache);
        } else {
            string = LocaleController.getString("ClearHistory", C2888R.string.ClearHistory);
        }
        builder.setPositiveButton(string, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda120
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i3) {
                AlertsCreator.$r8$lambda$ZsPg4ZPIbkNqXGhm6Dy3fJ4W5SM(booleanCallback, zArr, alertDialog, i3);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C2888R.string.Cancel), null);
        AlertDialog alertDialogCreate = builder.create();
        baseFragment.showDialog(alertDialogCreate);
        TextView textView3 = (TextView) alertDialogCreate.getButton(-1);
        if (textView3 != null) {
            textView3.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    public static /* synthetic */ void $r8$lambda$ty2ZO6KDd8LMO0IXbQUhsmuhvZk(boolean[] zArr, View view) {
        boolean z = !zArr[0];
        zArr[0] = z;
        ((CheckBoxCell) view).setChecked(z, true);
    }

    public static /* synthetic */ void $r8$lambda$ZsPg4ZPIbkNqXGhm6Dy3fJ4W5SM(MessagesStorage.BooleanCallback booleanCallback, boolean[] zArr, AlertDialog alertDialog, int i) {
        if (booleanCallback != null) {
            booleanCallback.run(zArr[0]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0197  */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v42 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void createClearDaysDialogAlert(BaseFragment baseFragment, int i, TLRPC.User user, TLRPC.Chat chat, boolean z, final MessagesStorage.BooleanCallback booleanCallback, Theme.ResourcesProvider resourcesProvider) {
        int i2;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        if (user == null && chat == null) {
            return;
        }
        int currentAccount = baseFragment.getCurrentAccount();
        Activity parentActivity = baseFragment.getParentActivity();
        AlertDialog.Builder builder = new AlertDialog.Builder(parentActivity, resourcesProvider);
        long clientUserId = UserConfig.getInstance(currentAccount).getClientUserId();
        final CheckBoxCell[] checkBoxCellArr = new CheckBoxCell[1];
        TextView textView = new TextView(parentActivity) { // from class: org.telegram.ui.Components.AlertsCreator.16
            @Override // android.widget.TextView
            public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), false), bufferType);
            }
        };
        NotificationCenter.listenEmojiLoading(textView);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        textView.setTextSize(1, 16.0f);
        textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        FrameLayout frameLayout = new FrameLayout(parentActivity) { // from class: org.telegram.ui.Components.AlertsCreator.17
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i3, int i4) {
                super.onMeasure(i3, i4);
                if (checkBoxCellArr[0] != null) {
                    setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight() + checkBoxCellArr[0].getMeasuredHeight());
                }
            }
        };
        builder.setView(frameLayout);
        TextView textView2 = new TextView(parentActivity);
        textView2.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem));
        textView2.setTextSize(1, 20.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setLines(1);
        textView2.setMaxLines(1);
        textView2.setSingleLine(true);
        textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        frameLayout.addView(textView2, LayoutHelper.createFrame(-1, -2.0f, (LocaleController.isRTL ? 5 : 3) | 48, 24.0f, 11.0f, 24.0f, 0.0f));
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 5 : 3) | 48, 24.0f, 48.0f, 24.0f, 18.0f));
        boolean z2 = false;
        if (i == -1) {
            textView2.setText(LocaleController.formatString("ClearHistory", C2888R.string.ClearHistory, new Object[0]));
            if (user != null) {
                textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("AreYouSureClearHistoryWithUser", C2888R.string.AreYouSureClearHistoryWithUser, UserObject.getUserName(user))));
            } else if (z) {
                if (ChatObject.isChannelAndNotMegaGroup(chat)) {
                    textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("AreYouSureClearHistoryWithChannel", C2888R.string.AreYouSureClearHistoryWithChannel, chat.title)));
                } else {
                    textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("AreYouSureClearHistoryWithChat", C2888R.string.AreYouSureClearHistoryWithChat, chat.title)));
                }
            } else if (chat.megagroup) {
                textView.setText(LocaleController.getString(C2888R.string.AreYouSureClearHistoryGroup));
            } else {
                textView.setText(LocaleController.getString(C2888R.string.AreYouSureClearHistoryChannel));
            }
            i2 = 1;
            z2 = false;
        } else {
            textView2.setText(LocaleController.formatPluralString("DeleteDays", i, new Object[0]));
            textView.setText(LocaleController.getString(C2888R.string.DeleteHistoryByDaysMessage));
            i2 = 1;
        }
        final boolean[] zArr = new boolean[i2];
        zArr[z2 ? 1 : 0] = z2;
        if (chat != null && z && ChatObject.isPublic(chat)) {
            zArr[z2 ? 1 : 0] = i2;
        }
        if (user != null) {
            long j = user.f1825id;
            if (j == clientUserId || j == UserObject.VERIFY || ChatObject.isMonoForum(chat)) {
                if (chat != null && z && !ChatObject.isPublic(chat) && !ChatObject.isChannelAndNotMegaGroup(chat) && !ChatObject.isMonoForum(chat)) {
                    CheckBoxCell checkBoxCell = new CheckBoxCell(parentActivity, 1, resourcesProvider);
                    checkBoxCellArr[0] = checkBoxCell;
                    checkBoxCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                    if (chat != null) {
                        checkBoxCellArr[0].setText(LocaleController.getString(C2888R.string.DeleteMessagesOptionAlsoChat), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                    } else {
                        checkBoxCellArr[0].setText(LocaleController.formatString("DeleteMessagesOptionAlso", C2888R.string.DeleteMessagesOptionAlso, UserObject.getFirstName(user)), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                    }
                    checkBoxCellArr[0].setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(16.0f) : AndroidUtilities.m1124dp(8.0f), 0, LocaleController.isRTL ? AndroidUtilities.m1124dp(8.0f) : AndroidUtilities.m1124dp(16.0f), 0);
                    frameLayout.addView(checkBoxCellArr[0], LayoutHelper.createFrame(-1, 48.0f, 83, 0.0f, 0.0f, 0.0f, 0.0f));
                    checkBoxCellArr[0].setChecked(false, false);
                    checkBoxCellArr[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda49
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            AlertsCreator.m8521$r8$lambda$nQiRr4wzQwVeHHf632VZEO0IIA(zArr, view);
                        }
                    });
                }
            }
        }
        CharSequence string = LocaleController.getString(C2888R.string.Delete);
        if (chat != null && z && ChatObject.isPublic(chat) && !ChatObject.isChannelAndNotMegaGroup(chat)) {
            string = LocaleController.getString(C2888R.string.ClearForAll);
        }
        builder.setPositiveButton(string, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda50
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i3) {
                booleanCallback.run(zArr[0]);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        AlertDialog alertDialogCreate = builder.create();
        baseFragment.showDialog(alertDialogCreate);
        TextView textView3 = (TextView) alertDialogCreate.getButton(-1);
        if (textView3 != null) {
            textView3.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$nQiRr4wzQwV-eHHf632VZEO0IIA, reason: not valid java name */
    public static /* synthetic */ void m8521$r8$lambda$nQiRr4wzQwVeHHf632VZEO0IIA(boolean[] zArr, View view) {
        boolean z = !zArr[0];
        zArr[0] = z;
        ((CheckBoxCell) view).setChecked(z, true);
    }

    public static void createCallDialogAlert(final BaseFragment baseFragment, final TLRPC.User user, final boolean z) {
        String string;
        String string2;
        if (baseFragment == null || baseFragment.getParentActivity() == null || user == null || UserObject.isDeleted(user) || UserConfig.getInstance(baseFragment.getCurrentAccount()).getClientUserId() == user.f1825id) {
            return;
        }
        baseFragment.getCurrentAccount();
        Activity parentActivity = baseFragment.getParentActivity();
        FrameLayout frameLayout = new FrameLayout(parentActivity);
        if (z) {
            string = LocaleController.getString(C2888R.string.VideoCallAlertTitle);
            string2 = LocaleController.formatString("VideoCallAlert", C2888R.string.VideoCallAlert, UserObject.getUserName(user));
        } else {
            string = LocaleController.getString(C2888R.string.CallAlertTitle);
            string2 = LocaleController.formatString("CallAlert", C2888R.string.CallAlert, UserObject.getUserName(user));
        }
        TextView textView = new TextView(parentActivity) { // from class: org.telegram.ui.Components.AlertsCreator.18
            @Override // android.widget.TextView
            public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), false), bufferType);
            }
        };
        NotificationCenter.listenEmojiLoading(textView);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        textView.setTextSize(1, 16.0f);
        textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        textView.setText(AndroidUtilities.replaceTags(string2));
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setTextSize(AndroidUtilities.m1124dp(12.0f));
        avatarDrawable.setScaleSize(1.0f);
        avatarDrawable.setInfo(baseFragment.getCurrentAccount(), user);
        BackupImageView backupImageView = new BackupImageView(parentActivity);
        backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(40.0f));
        backupImageView.setForUserOrChat(user, avatarDrawable);
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(40, 40.0f, (LocaleController.isRTL ? 5 : 3) | 48, 22.0f, 5.0f, 22.0f, 0.0f));
        TextView textView2 = new TextView(parentActivity);
        textView2.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem));
        textView2.setTextSize(1, 20.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setLines(1);
        textView2.setMaxLines(1);
        textView2.setSingleLine(true);
        textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        textView2.setText(string);
        boolean z2 = LocaleController.isRTL;
        frameLayout.addView(textView2, LayoutHelper.createFrame(-1, -2.0f, (z2 ? 5 : 3) | 48, z2 ? 21 : 76, 11.0f, z2 ? 76 : 21, 0.0f));
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 5 : 3) | 48, 24.0f, 57.0f, 24.0f, 9.0f));
        baseFragment.showDialog(new AlertDialog.Builder(parentActivity).setView(frameLayout).setPositiveButton(LocaleController.getString(C2888R.string.Call), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda12
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                AlertsCreator.$r8$lambda$CpN2fUhD1pd7OeCIGolsV_8lyw4(baseFragment, user, z, alertDialog, i);
            }
        }).setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null).create());
    }

    public static /* synthetic */ void $r8$lambda$CpN2fUhD1pd7OeCIGolsV_8lyw4(BaseFragment baseFragment, TLRPC.User user, boolean z, AlertDialog alertDialog, int i) {
        TLRPC.UserFull userFull = baseFragment.getMessagesController().getUserFull(user.f1825id);
        VoIPHelper.startCall(user, z, userFull != null && userFull.video_calls_available, baseFragment.getParentActivity(), userFull, baseFragment.getAccountInstance(), true);
    }

    public static void createChangeBioAlert(String str, final long j, Context context, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(LocaleController.getString(j > 0 ? C2888R.string.UserBio : C2888R.string.DescriptionPlaceholder));
        builder.setMessage(LocaleController.getString(j > 0 ? C2888R.string.VoipGroupBioEditAlertText : C2888R.string.DescriptionInfo));
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setClipChildren(false);
        if (j < 0) {
            long j2 = -j;
            if (MessagesController.getInstance(i).getChatFull(j2) == null) {
                MessagesController.getInstance(i).loadFullChat(j2, ConnectionsManager.generateClassGuid(), true);
            }
        }
        final NumberTextView numberTextView = new NumberTextView(context);
        final EditText editText = new EditText(context);
        int i2 = Theme.key_voipgroup_actionBarItems;
        editText.setTextColor(Theme.getColor(i2));
        editText.setHint(LocaleController.getString(j > 0 ? C2888R.string.UserBio : C2888R.string.DescriptionPlaceholder));
        editText.setTextSize(1, 16.0f);
        editText.setBackground(Theme.createEditTextDrawable(context, true));
        editText.setMaxLines(4);
        editText.setRawInputType(147457);
        editText.setImeOptions(6);
        final int i3 = j > 0 ? 70 : 255;
        editText.setFilters(new InputFilter[]{new CodepointsLengthInputFilter(i3) { // from class: org.telegram.ui.Components.AlertsCreator.19
            @Override // org.telegram.p029ui.Components.CodepointsLengthInputFilter, android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i4, int i5, Spanned spanned, int i6, int i7) {
                CharSequence charSequenceFilter = super.filter(charSequence, i4, i5, spanned, i6, i7);
                if (charSequenceFilter != null && charSequence != null && charSequenceFilter.length() != charSequence.length()) {
                    VibratorUtils.vibrate();
                    AndroidUtilities.shakeView(numberTextView);
                }
                return charSequenceFilter;
            }
        }});
        numberTextView.setCenterAlign(true);
        numberTextView.setTextSize(15);
        numberTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4));
        numberTextView.setImportantForAccessibility(2);
        frameLayout.addView(numberTextView, LayoutHelper.createFrame(20, 20.0f, LocaleController.isRTL ? 3 : 5, 0.0f, 14.0f, 21.0f, 0.0f));
        editText.setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(24.0f) : 0, AndroidUtilities.m1124dp(8.0f), LocaleController.isRTL ? 0 : AndroidUtilities.m1124dp(24.0f), AndroidUtilities.m1124dp(8.0f));
        editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.AlertsCreator.20
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                int iCodePointCount = i3 - Character.codePointCount(editable, 0, editable.length());
                if (iCodePointCount < 30) {
                    NumberTextView numberTextView2 = numberTextView;
                    numberTextView2.setNumber(iCodePointCount, numberTextView2.getVisibility() == 0);
                    AndroidUtilities.updateViewVisibilityAnimated(numberTextView, true);
                    return;
                }
                AndroidUtilities.updateViewVisibilityAnimated(numberTextView, false);
            }
        });
        AndroidUtilities.updateViewVisibilityAnimated(numberTextView, false, 0.0f, false);
        editText.setText(str);
        editText.setSelection(editText.getText().toString().length());
        builder.setView(frameLayout);
        final AlertDialog.OnButtonClickListener onButtonClickListener = new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda191
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i4) {
                AlertsCreator.$r8$lambda$yz0ZaXJP2Wj7WgG237ohiYwjyDo(j, i, editText, alertDialog, i4);
            }
        };
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Save), onButtonClickListener);
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda192
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AndroidUtilities.hideKeyboard(editText);
            }
        });
        frameLayout.addView(editText, LayoutHelper.createFrame(-1, -2.0f, 0, 23.0f, 12.0f, 23.0f, 21.0f));
        editText.requestFocus();
        AndroidUtilities.showKeyboard(editText);
        final AlertDialog alertDialogCreate = builder.create();
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda193
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
                return AlertsCreator.$r8$lambda$XJU79Of5DqQ7AsYrDUM66he4ITU(j, alertDialogCreate, onButtonClickListener, textView, i4, keyEvent);
            }
        });
        alertDialogCreate.setBackgroundColor(Theme.getColor(Theme.key_voipgroup_dialogBackground));
        alertDialogCreate.show();
        alertDialogCreate.setTextColor(Theme.getColor(i2));
    }

    public static /* synthetic */ void $r8$lambda$yz0ZaXJP2Wj7WgG237ohiYwjyDo(long j, int i, EditText editText, AlertDialog alertDialog, int i2) {
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        if (j > 0) {
            TLRPC.UserFull userFull = MessagesController.getInstance(i).getUserFull(UserConfig.getInstance(i).getClientUserId());
            String strTrim = editText.getText().toString().replace("\n", " ").replaceAll(" +", " ").trim();
            if (userFull != null) {
                String str2 = userFull.about;
                if (str2 != null) {
                    str = str2;
                }
                if (str.equals(strTrim)) {
                    AndroidUtilities.hideKeyboard(editText);
                    alertDialog.dismiss();
                    return;
                } else {
                    userFull.about = strTrim;
                    NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.userInfoDidLoad, Long.valueOf(j), userFull);
                }
            }
            TL_account.updateProfile updateprofile = new TL_account.updateProfile();
            updateprofile.about = strTrim;
            updateprofile.flags = 4 | updateprofile.flags;
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 2, Long.valueOf(j));
            ConnectionsManager.getInstance(i).sendRequest(updateprofile, new RequestDelegate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda233
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    AlertsCreator.$r8$lambda$5VD1jmGHJJufoDIclbtAPDTf8Rg(tLObject, tL_error);
                }
            }, 2);
        } else {
            long j2 = -j;
            TLRPC.ChatFull chatFull = MessagesController.getInstance(i).getChatFull(j2);
            String string = editText.getText().toString();
            if (chatFull != null) {
                String str3 = chatFull.about;
                if (str3 != null) {
                    str = str3;
                }
                if (str.equals(string)) {
                    AndroidUtilities.hideKeyboard(editText);
                    alertDialog.dismiss();
                    return;
                } else {
                    chatFull.about = string;
                    NotificationCenter notificationCenter = NotificationCenter.getInstance(i);
                    int i3 = NotificationCenter.chatInfoDidLoad;
                    Boolean bool = Boolean.FALSE;
                    notificationCenter.lambda$postNotificationNameOnUIThread$1(i3, chatFull, 0, bool, bool);
                }
            }
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 2, Long.valueOf(j));
            MessagesController.getInstance(i).updateChatAbout(j2, string, chatFull);
        }
        alertDialog.dismiss();
    }

    public static /* synthetic */ boolean $r8$lambda$XJU79Of5DqQ7AsYrDUM66he4ITU(long j, AlertDialog alertDialog, AlertDialog.OnButtonClickListener onButtonClickListener, TextView textView, int i, KeyEvent keyEvent) {
        if ((i != 6 && (j <= 0 || keyEvent.getKeyCode() != 66)) || !alertDialog.isShowing()) {
            return false;
        }
        onButtonClickListener.onClick(alertDialog, 0);
        return true;
    }

    public static void createChangeNameAlert(final long j, Context context, final int i) {
        String str;
        String str2;
        final EditText editText;
        if (DialogObject.isUserDialog(j)) {
            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(j));
            str = user.first_name;
            str2 = user.last_name;
        } else {
            str = MessagesController.getInstance(i).getChat(Long.valueOf(-j)).title;
            str2 = null;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(LocaleController.getString(j > 0 ? C2888R.string.VoipEditName : C2888R.string.VoipEditTitle));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        final EditText editText2 = new EditText(context);
        int i2 = Theme.key_voipgroup_actionBarItems;
        editText2.setTextColor(Theme.getColor(i2));
        editText2.setTextSize(1, 16.0f);
        editText2.setMaxLines(1);
        editText2.setLines(1);
        editText2.setSingleLine(true);
        editText2.setGravity(LocaleController.isRTL ? 5 : 3);
        editText2.setInputType(49152);
        editText2.setImeOptions(j > 0 ? 5 : 6);
        editText2.setHint(LocaleController.getString(j > 0 ? C2888R.string.FirstName : C2888R.string.VoipEditTitleHint));
        editText2.setBackground(Theme.createEditTextDrawable(context, true));
        editText2.setPadding(0, AndroidUtilities.m1124dp(8.0f), 0, AndroidUtilities.m1124dp(8.0f));
        editText2.requestFocus();
        if (j > 0) {
            editText = new EditText(context);
            editText.setTextColor(Theme.getColor(i2));
            editText.setTextSize(1, 16.0f);
            editText.setMaxLines(1);
            editText.setLines(1);
            editText.setSingleLine(true);
            editText.setGravity(LocaleController.isRTL ? 5 : 3);
            editText.setInputType(49152);
            editText.setImeOptions(6);
            editText.setHint(LocaleController.getString(C2888R.string.LastName));
            editText.setBackground(Theme.createEditTextDrawable(context, true));
            editText.setPadding(0, AndroidUtilities.m1124dp(8.0f), 0, AndroidUtilities.m1124dp(8.0f));
        } else {
            editText = null;
        }
        AndroidUtilities.showKeyboard(editText2);
        linearLayout.addView(editText2, LayoutHelper.createLinear(-1, -2, 0, 23, 12, 23, 21));
        if (editText != null) {
            linearLayout.addView(editText, LayoutHelper.createLinear(-1, -2, 0, 23, 12, 23, 21));
        }
        editText2.setText(str);
        editText2.setSelection(editText2.getText().toString().length());
        if (editText != null) {
            editText.setText(str2);
            editText.setSelection(editText.getText().toString().length());
        }
        builder.setView(linearLayout);
        final AlertDialog.OnButtonClickListener onButtonClickListener = new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda186
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i3) {
                AlertsCreator.$r8$lambda$eKG2KZNgEkb5lWmSwfCybAIAen0(editText2, j, i, editText, alertDialog, i3);
            }
        };
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Save), onButtonClickListener);
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda187
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AlertsCreator.$r8$lambda$xugHco_o61WeZUcMKpEqARjftfE(editText2, editText, dialogInterface);
            }
        });
        final AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setBackgroundColor(Theme.getColor(Theme.key_voipgroup_dialogBackground));
        alertDialogCreate.show();
        alertDialogCreate.setTextColor(Theme.getColor(i2));
        TextView.OnEditorActionListener onEditorActionListener = new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda188
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                return AlertsCreator.$r8$lambda$uuZgIvQ9MTqgQy0uDU4_d1mYCcg(alertDialogCreate, onButtonClickListener, textView, i3, keyEvent);
            }
        };
        if (editText != null) {
            editText.setOnEditorActionListener(onEditorActionListener);
        } else {
            editText2.setOnEditorActionListener(onEditorActionListener);
        }
    }

    public static /* synthetic */ void $r8$lambda$eKG2KZNgEkb5lWmSwfCybAIAen0(EditText editText, long j, int i, EditText editText2, AlertDialog alertDialog, int i2) {
        if (editText.getText() == null) {
            return;
        }
        if (j > 0) {
            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(j));
            String string = editText.getText().toString();
            String string2 = editText2.getText().toString();
            String str = user.first_name;
            String str2 = user.last_name;
            if (str == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            if (str2 == null) {
                str2 = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            if (str.equals(string) && str2.equals(string2)) {
                alertDialog.dismiss();
                return;
            }
            TL_account.updateProfile updateprofile = new TL_account.updateProfile();
            updateprofile.flags = 3;
            updateprofile.first_name = string;
            user.first_name = string;
            updateprofile.last_name = string2;
            user.last_name = string2;
            TLRPC.User user2 = MessagesController.getInstance(i).getUser(Long.valueOf(UserConfig.getInstance(i).getClientUserId()));
            if (user2 != null) {
                user2.first_name = updateprofile.first_name;
                user2.last_name = updateprofile.last_name;
            }
            UserConfig.getInstance(i).saveConfig(true);
            NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
            NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_NAME));
            ConnectionsManager.getInstance(i).sendRequest(updateprofile, new RequestDelegate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda235
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    AlertsCreator.$r8$lambda$3Wfo8VoUY86jqdAsex7isovjgAU(tLObject, tL_error);
                }
            });
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 3, Long.valueOf(j));
        } else {
            long j2 = -j;
            TLRPC.Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(j2));
            String string3 = editText.getText().toString();
            String str3 = chat.title;
            if (str3 != null && str3.equals(string3)) {
                alertDialog.dismiss();
                return;
            }
            chat.title = string3;
            NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_CHAT_NAME));
            MessagesController.getInstance(i).changeChatTitle(j2, string3);
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 3, Long.valueOf(j));
        }
        alertDialog.dismiss();
    }

    public static /* synthetic */ void $r8$lambda$xugHco_o61WeZUcMKpEqARjftfE(EditText editText, EditText editText2, DialogInterface dialogInterface) {
        AndroidUtilities.hideKeyboard(editText);
        AndroidUtilities.hideKeyboard(editText2);
    }

    public static /* synthetic */ boolean $r8$lambda$uuZgIvQ9MTqgQy0uDU4_d1mYCcg(AlertDialog alertDialog, AlertDialog.OnButtonClickListener onButtonClickListener, TextView textView, int i, KeyEvent keyEvent) {
        if ((i != 6 && keyEvent.getKeyCode() != 66) || !alertDialog.isShowing()) {
            return false;
        }
        onButtonClickListener.onClick(alertDialog, 0);
        return true;
    }

    public static void showChatWithAdmin(BaseFragment baseFragment, TLRPC.User user, String str, boolean z, int i) {
        if (baseFragment.getParentActivity() == null) {
            return;
        }
        BottomSheet.Builder builder = new BottomSheet.Builder(baseFragment.getParentActivity());
        builder.setTitle(LocaleController.getString(z ? C2888R.string.ChatWithAdminChannelTitle : C2888R.string.ChatWithAdminGroupTitle), true);
        LinearLayout linearLayout = new LinearLayout(baseFragment.getParentActivity());
        linearLayout.setOrientation(1);
        TextView textView = new TextView(baseFragment.getParentActivity());
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -1, 0, 21, 0, 21, 8));
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        textView.setTextSize(1, 16.0f);
        textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("ChatWithAdminMessage", C2888R.string.ChatWithAdminMessage, str, LocaleController.formatDateAudio(i, false))));
        TextView textView2 = new TextView(baseFragment.getParentActivity());
        textView2.setPadding(AndroidUtilities.m1124dp(34.0f), 0, AndroidUtilities.m1124dp(34.0f), 0);
        textView2.setGravity(17);
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setText(LocaleController.getString(C2888R.string.IUnderstand));
        textView2.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
        textView2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(8.0f), Theme.getColor(Theme.key_featuredStickers_addButton), Theme.getColor(Theme.key_featuredStickers_addButtonPressed)));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 0, 16, 12, 16, 8));
        builder.setCustomView(linearLayout);
        final BottomSheet bottomSheetShow = builder.show();
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda72
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                bottomSheetShow.lambda$new$0();
            }
        });
    }

    public static void createContactInviteDialog(final BaseFragment baseFragment, String str, String str2, final String str3) {
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity());
        builder.setTitle(LocaleController.getString(C2888R.string.ContactNotRegisteredTitle));
        builder.setMessage(LocaleController.formatString("ContactNotRegistered", C2888R.string.ContactNotRegistered, ContactsController.formatName(str, str2)));
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Invite), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda172
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                AlertsCreator.m8504$r8$lambda$ZPx4tbAYuC0tQMqpKeDUmOj4p0(str3, baseFragment, alertDialog, i);
            }
        });
        baseFragment.showDialog(builder.create());
    }

    /* JADX INFO: renamed from: $r8$lambda$ZPx4t-bAYuC0tQMqpKeDUmOj4p0, reason: not valid java name */
    public static /* synthetic */ void m8504$r8$lambda$ZPx4tbAYuC0tQMqpKeDUmOj4p0(String str, BaseFragment baseFragment, AlertDialog alertDialog, int i) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.fromParts("sms", str, null));
            intent.putExtra("sms_body", ContactsController.getInstance(baseFragment.getCurrentAccount()).getInviteText(1));
            baseFragment.getParentActivity().startActivityForResult(intent, 500);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public static ActionBarPopupWindow createSimplePopup(BaseFragment baseFragment, View view, View view2, float f, float f2) {
        if (baseFragment == null || view2 == null || view == null) {
            return null;
        }
        ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(view, -2, -2);
        actionBarPopupWindow.setPauseNotifications(true);
        actionBarPopupWindow.setDismissAnimationDuration(Opcodes.REM_INT_LIT8);
        actionBarPopupWindow.setOutsideTouchable(true);
        actionBarPopupWindow.setClippingEnabled(true);
        actionBarPopupWindow.setAnimationStyle(C2888R.style.PopupContextAnimation);
        actionBarPopupWindow.setFocusable(true);
        view.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(1000.0f), Integer.MIN_VALUE));
        actionBarPopupWindow.setInputMethodMode(2);
        actionBarPopupWindow.getContentView().setFocusableInTouchMode(true);
        float x = 0.0f;
        View view3 = view2;
        float y = 0.0f;
        while (view3 != view2.getRootView()) {
            x += view3.getX();
            y += view3.getY();
            view3 = (View) view3.getParent();
            if (view3 == null) {
                break;
            }
        }
        actionBarPopupWindow.showAtLocation(view2.getRootView(), 0, (int) ((x + f) - (view.getMeasuredWidth() / 2.0f)), (int) ((y + f2) - (view.getMeasuredHeight() / 2.0f)));
        actionBarPopupWindow.dimBehind();
        return actionBarPopupWindow;
    }

    public static void checkRestrictedInviteUsers(final int i, final TLRPC.Chat chat, TLRPC.TL_messages_invitedUsers tL_messages_invitedUsers) {
        TLRPC.User user;
        if (tL_messages_invitedUsers == null || tL_messages_invitedUsers.missing_invitees.isEmpty() || chat == null) {
            return;
        }
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = tL_messages_invitedUsers.missing_invitees;
        int size = arrayList4.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList4.get(i2);
            i2++;
            TLRPC.TL_missingInvitee tL_missingInvitee = (TLRPC.TL_missingInvitee) obj;
            if (tL_messages_invitedUsers.updates != null) {
                for (int i3 = 0; i3 < tL_messages_invitedUsers.updates.users.size(); i3++) {
                    user = tL_messages_invitedUsers.updates.users.get(i3);
                    if (user.f1825id == tL_missingInvitee.user_id) {
                        break;
                    }
                }
                user = null;
            } else {
                user = null;
            }
            if (user == null) {
                user = MessagesController.getInstance(i).getUser(Long.valueOf(tL_missingInvitee.user_id));
            }
            if (user != null) {
                arrayList.add(user);
                if (tL_missingInvitee.premium_required_for_pm) {
                    arrayList2.add(Long.valueOf(user.f1825id));
                }
                if (tL_missingInvitee.premium_would_allow_invite) {
                    arrayList3.add(Long.valueOf(user.f1825id));
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                AlertsCreator.m8530$r8$lambda$uwh5bCL9notG8f8nkz1AioURe8(i, chat, arrayList, arrayList2, arrayList3);
            }
        }, 200L);
    }

    /* JADX INFO: renamed from: $r8$lambda$uwh5bCL9-notG8f8nkz1AioURe8, reason: not valid java name */
    public static /* synthetic */ void m8530$r8$lambda$uwh5bCL9notG8f8nkz1AioURe8(int i, TLRPC.Chat chat, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
        BaseFragment lastFragment;
        if (!LaunchActivity.isActive || (lastFragment = LaunchActivity.getLastFragment()) == null || lastFragment.getParentActivity() == null) {
            return;
        }
        LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(lastFragment, lastFragment.getParentActivity(), 11, i, null);
        limitReachedBottomSheet.setRestrictedUsers(chat, arrayList, arrayList2, arrayList3, null);
        limitReachedBottomSheet.show();
    }

    public static void createBlockDialogAlert(BaseFragment baseFragment, int i, boolean z, TLRPC.User user, final BlockDialogCallback blockDialogCallback) {
        String string;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        if (i == 1 && user == null) {
            return;
        }
        Activity parentActivity = baseFragment.getParentActivity();
        AlertDialog.Builder builder = new AlertDialog.Builder(parentActivity);
        CheckBoxCell[] checkBoxCellArr = new CheckBoxCell[2];
        LinearLayout linearLayout = new LinearLayout(parentActivity);
        linearLayout.setOrientation(1);
        builder.setView(linearLayout);
        if (i != 1) {
            builder.setTitle(LocaleController.formatString("BlockUserTitle", C2888R.string.BlockUserTitle, LocaleController.formatPluralString("UsersCountTitle", i, new Object[0])));
            string = LocaleController.getString(C2888R.string.BlockUsers);
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BlockUsersMessage", C2888R.string.BlockUsersMessage, LocaleController.formatPluralString("UsersCount", i, new Object[0]))));
        } else {
            String name = ContactsController.formatName(user.first_name, user.last_name);
            builder.setTitle(LocaleController.formatString("BlockUserTitle", C2888R.string.BlockUserTitle, name));
            string = LocaleController.getString(C2888R.string.BlockUser);
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BlockUserMessage", C2888R.string.BlockUserMessage, name)));
        }
        final boolean[] zArr = {true, true};
        for (final int i2 = 0; i2 < 2; i2++) {
            if (i2 != 0 || z) {
                CheckBoxCell checkBoxCell = new CheckBoxCell(parentActivity, 1);
                checkBoxCellArr[i2] = checkBoxCell;
                checkBoxCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                if (i2 == 0) {
                    checkBoxCellArr[i2].setText(LocaleController.getString(C2888R.string.ReportSpamTitle), _UrlKt.FRAGMENT_ENCODE_SET, true, false);
                } else {
                    checkBoxCellArr[i2].setText(LocaleController.getString(i == 1 ? C2888R.string.DeleteThisChatBothSides : C2888R.string.DeleteTheseChatsBothSides), _UrlKt.FRAGMENT_ENCODE_SET, true, false);
                }
                checkBoxCellArr[i2].setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(16.0f) : AndroidUtilities.m1124dp(8.0f), 0, LocaleController.isRTL ? AndroidUtilities.m1124dp(8.0f) : AndroidUtilities.m1124dp(16.0f), 0);
                linearLayout.addView(checkBoxCellArr[i2], LayoutHelper.createLinear(-1, 48));
                checkBoxCellArr[i2].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda133
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        AlertsCreator.$r8$lambda$3TaMAPeBqKNbzhod8v0FmdmKztc(zArr, i2, view);
                    }
                });
            }
        }
        builder.setPositiveButton(string, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda134
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i3) {
                AlertsCreator.BlockDialogCallback blockDialogCallback2 = blockDialogCallback;
                boolean[] zArr2 = zArr;
                blockDialogCallback2.run(zArr2[0], zArr2[1]);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        AlertDialog alertDialogCreate = builder.create();
        baseFragment.showDialog(alertDialogCreate);
        TextView textView = (TextView) alertDialogCreate.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    public static /* synthetic */ void $r8$lambda$3TaMAPeBqKNbzhod8v0FmdmKztc(boolean[] zArr, int i, View view) {
        boolean z = !zArr[i];
        zArr[i] = z;
        ((CheckBoxCell) view).setChecked(z, true);
    }

    public static BottomSheet createTimePickerDialog(Context context, String str, final int i, final int i2, final int i3, final Utilities.Callback callback) {
        if (context == null) {
            return null;
        }
        ScheduleDatePickerColors scheduleDatePickerColors = new ScheduleDatePickerColors();
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, null);
        builder.setApplyBottomPadding(false);
        final NumberPicker numberPicker = new NumberPicker(context) { // from class: org.telegram.ui.Components.AlertsCreator.23
            @Override // org.telegram.p029ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i4) {
                return LocaleController.formatPluralString("Hours", i4, new Object[0]);
            }
        };
        final LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.24
            private Text ampmText;
            private boolean isAM;
            private final Text separatorText = new Text(":", 18.0f);

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                int i4 = Theme.key_windowBackgroundWhiteBlackText;
                this.separatorText.draw(canvas, (getWidth() - this.separatorText.getCurrentWidth()) / 2.0f, getHeight() / 2.0f, Theme.getColor(i4), 1.0f);
                if (!LocaleController.is24HourFormat) {
                    boolean z = numberPicker.getValue() % 24 < 12;
                    if (this.isAM != z || this.ampmText == null) {
                        this.isAM = z;
                        this.ampmText = new Text(z ? "AM" : "PM", 18.0f);
                    }
                    this.ampmText.draw(canvas, (getWidth() / 2.0f) + AndroidUtilities.m1124dp(43.0f), (getHeight() / 2.0f) + AndroidUtilities.m1124dp(1.0f), Theme.getColor(i4), 1.0f);
                }
                super.dispatchDraw(canvas);
            }
        };
        linearLayout.setOrientation(0);
        linearLayout.setWeightSum(1.0f);
        numberPicker.setAllItemsCount(24);
        numberPicker.setItemCount(5);
        numberPicker.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker.setGravity(5);
        numberPicker.setTextOffset(-AndroidUtilities.m1124dp(12.0f));
        final NumberPicker numberPicker2 = new NumberPicker(context) { // from class: org.telegram.ui.Components.AlertsCreator.25
            @Override // org.telegram.p029ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i4) {
                return LocaleController.formatPluralString("Minutes", i4, new Object[0]);
            }
        };
        numberPicker2.setWrapSelectorWheel(true);
        numberPicker2.setAllItemsCount(60);
        numberPicker2.setItemCount(5);
        numberPicker2.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker2.setGravity(3);
        numberPicker2.setTextOffset(AndroidUtilities.m1124dp(12.0f));
        final Utilities.Callback callback2 = new Utilities.Callback() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda225
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                AlertsCreator.$r8$lambda$7QQBqHzKV3inZTpdx7AsrlCRRMg(i2, i3, numberPicker, numberPicker2, i, linearLayout, (Boolean) obj);
            }
        };
        linearLayout.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.5f));
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda226
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i4) {
                return AlertsCreator.m8502$r8$lambda$YJF_IN9pW6BXkqi206WDzB9uPY(i4);
            }
        });
        numberPicker.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda227
            @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker3, int i4, int i5) {
                callback2.run(Boolean.TRUE);
            }
        });
        linearLayout.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.5f));
        numberPicker2.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda228
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i4) {
                return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i4));
            }
        });
        numberPicker2.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda229
            @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker3, int i4, int i5) {
                callback2.run(Boolean.TRUE);
            }
        });
        callback2.run(Boolean.FALSE);
        LinearLayout linearLayout2 = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.26
            boolean ignoreLayout = false;

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i4, int i5) {
                this.ignoreLayout = true;
                Point point = AndroidUtilities.displaySize;
                int i6 = point.x > point.y ? 3 : 5;
                numberPicker.setItemCount(i6);
                numberPicker2.setItemCount(i6);
                numberPicker.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i6;
                numberPicker2.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i6;
                this.ignoreLayout = false;
                super.onMeasure(i4, i5);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        linearLayout2.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        TextView textView = new TextView(context);
        textView.setText(str);
        textView.setTextColor(scheduleDatePickerColors.textColor);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda230
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return AlertsCreator.$r8$lambda$jzbgTwqgmIE4Xik2x9QZRlqKxEg(view, motionEvent);
            }
        });
        linearLayout2.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
        linearLayout2.addView(linearLayout, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, null);
        buttonWithCounterView.setText(LocaleController.getString(C2888R.string.Select), false);
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda231
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                bottomSheetArr[0].lambda$new$0();
            }
        });
        linearLayout2.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 0, 16, 12, 16, 12));
        builder.setCustomView(linearLayout2);
        BottomSheet bottomSheetShow = builder.show();
        bottomSheetShow.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda232
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                callback.run(Integer.valueOf((numberPicker.getValue() * 60) + numberPicker2.getValue()));
            }
        });
        bottomSheetShow.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
        bottomSheetShow.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
        BottomSheet bottomSheetCreate = builder.create();
        final BottomSheet[] bottomSheetArr = {bottomSheetCreate};
        return bottomSheetCreate;
    }

    public static /* synthetic */ void $r8$lambda$7QQBqHzKV3inZTpdx7AsrlCRRMg(int i, int i2, NumberPicker numberPicker, NumberPicker numberPicker2, int i3, LinearLayout linearLayout, Boolean bool) {
        int minValue;
        int value;
        int i4 = i % 60;
        int i5 = (i - i4) / 60;
        int i6 = i2 % 60;
        int i7 = (i2 - i6) / 60;
        if (i6 == 0 && i7 > 0) {
            i7--;
            i6 = 59;
        }
        if (bool.booleanValue()) {
            value = numberPicker.getValue();
            minValue = numberPicker2.getValue();
        } else {
            minValue = i3 % 60;
            value = (i3 - minValue) / 60;
            if (value == 24) {
                value--;
                minValue = 59;
            }
        }
        numberPicker.setMinValue(i5);
        numberPicker.setMaxValue(i7);
        if (value > i7) {
            numberPicker.setValue(i7);
            value = i7;
        } else if (value < i5) {
            numberPicker.setValue(i5);
            value = i5;
        }
        if (value <= i5) {
            numberPicker2.setMinValue(i4);
            numberPicker2.setMaxValue(i5 == i7 ? i6 : 59);
        } else if (value >= i7) {
            if (i5 != i7) {
                i4 = 0;
            }
            numberPicker2.setMinValue(i4);
            numberPicker2.setMaxValue(i6);
        } else if (i5 == i7) {
            numberPicker2.setMinValue(i4);
            numberPicker2.setMaxValue(i6);
        } else {
            numberPicker2.setMinValue(0);
            numberPicker2.setMaxValue(59);
        }
        if (minValue > numberPicker2.getMaxValue()) {
            minValue = numberPicker2.getMaxValue();
            numberPicker2.setValue(minValue);
        } else if (minValue < numberPicker2.getMinValue()) {
            minValue = numberPicker2.getMinValue();
            numberPicker2.setValue(minValue);
        }
        if (!bool.booleanValue()) {
            numberPicker.setValue(value);
            numberPicker2.setValue(minValue);
        }
        linearLayout.invalidate();
    }

    /* JADX INFO: renamed from: $r8$lambda$YJF_IN9pW-6BXkqi206WDzB9uPY, reason: not valid java name */
    public static /* synthetic */ String m8502$r8$lambda$YJF_IN9pW6BXkqi206WDzB9uPY(int i) {
        boolean z = LocaleController.is24HourFormat;
        String str = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf((i % 12 != 0 || z) ? i % (z ? 24 : 12) : 12));
        return i >= 24 ? LocaleController.formatString(C2888R.string.BusinessHoursNextDayPicker, str) : str;
    }

    public static /* synthetic */ boolean $r8$lambda$jzbgTwqgmIE4Xik2x9QZRlqKxEg(View view, MotionEvent motionEvent) {
        return true;
    }

    public static AlertDialog.Builder createDatePickerDialog(Context context, int i, int i2, int i3, int i4, int i5, int i6, String str, final boolean z, final DatePickerDelegate datePickerDelegate) {
        if (context == null) {
            return null;
        }
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        linearLayout.setWeightSum(1.0f);
        final NumberPicker numberPicker = new NumberPicker(context);
        final NumberPicker numberPicker2 = new NumberPicker(context);
        final NumberPicker numberPicker3 = new NumberPicker(context);
        linearLayout.addView(numberPicker2, LayoutHelper.createLinear(0, -2, 0.3f));
        numberPicker2.setOnScrollListener(new NumberPicker.OnScrollListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda159
            @Override // org.telegram.ui.Components.NumberPicker.OnScrollListener
            public final void onScrollStateChange(NumberPicker numberPicker4, int i7) {
                AlertsCreator.$r8$lambda$lYJyt10GFYDgJUF80q1DUWcw3Ks(z, numberPicker2, numberPicker, numberPicker3, numberPicker4, i7);
            }
        });
        numberPicker.setMinValue(0);
        numberPicker.setMaxValue(11);
        linearLayout.addView(numberPicker, LayoutHelper.createLinear(0, -2, 0.3f));
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda160
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i7) {
                return AlertsCreator.$r8$lambda$PoRElchyScrSfP4k4RJtGZz_BSg(i7);
            }
        });
        numberPicker.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda161
            @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker4, int i7, int i8) {
                AlertsCreator.updateDayPicker(numberPicker2, numberPicker, numberPicker3);
            }
        });
        numberPicker.setOnScrollListener(new NumberPicker.OnScrollListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda162
            @Override // org.telegram.ui.Components.NumberPicker.OnScrollListener
            public final void onScrollStateChange(NumberPicker numberPicker4, int i7) {
                AlertsCreator.$r8$lambda$nWpQ0mWEmrVyWXULb3YWJSseOXA(z, numberPicker2, numberPicker, numberPicker3, numberPicker4, i7);
            }
        });
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        int i7 = calendar.get(1);
        numberPicker3.setMinValue(i + i7);
        numberPicker3.setMaxValue(i2 + i7);
        numberPicker3.setValue(i7 + i3);
        linearLayout.addView(numberPicker3, LayoutHelper.createLinear(0, -2, 0.4f));
        numberPicker3.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda163
            @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker4, int i8, int i9) {
                AlertsCreator.updateDayPicker(numberPicker2, numberPicker, numberPicker3);
            }
        });
        numberPicker3.setOnScrollListener(new NumberPicker.OnScrollListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda164
            @Override // org.telegram.ui.Components.NumberPicker.OnScrollListener
            public final void onScrollStateChange(NumberPicker numberPicker4, int i8) {
                AlertsCreator.$r8$lambda$PbccjsfODNmv9i2DQLiMrg62Gx0(z, numberPicker2, numberPicker, numberPicker3, numberPicker4, i8);
            }
        });
        updateDayPicker(numberPicker2, numberPicker, numberPicker3);
        if (z) {
            checkPickerDate(numberPicker2, numberPicker, numberPicker3);
        }
        if (i4 != -1) {
            numberPicker2.setValue(i4);
            numberPicker.setValue(i5);
            numberPicker3.setValue(i6);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(str);
        builder.setView(linearLayout);
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Set), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda165
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i8) {
                AlertsCreator.m8465$r8$lambda$0icKH1zxThNEB2VNZr6zwTZLTA(z, numberPicker2, numberPicker, numberPicker3, datePickerDelegate, alertDialog, i8);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        return builder;
    }

    public static /* synthetic */ void $r8$lambda$lYJyt10GFYDgJUF80q1DUWcw3Ks(boolean z, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, NumberPicker numberPicker4, int i) {
        if (z && i == 0) {
            checkPickerDate(numberPicker, numberPicker2, numberPicker3);
        }
    }

    public static /* synthetic */ String $r8$lambda$PoRElchyScrSfP4k4RJtGZz_BSg(int i) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(5, 1);
        calendar.set(2, i);
        return calendar.getDisplayName(2, 1, Locale.getDefault());
    }

    public static /* synthetic */ void $r8$lambda$nWpQ0mWEmrVyWXULb3YWJSseOXA(boolean z, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, NumberPicker numberPicker4, int i) {
        if (z && i == 0) {
            checkPickerDate(numberPicker, numberPicker2, numberPicker3);
        }
    }

    public static /* synthetic */ void $r8$lambda$PbccjsfODNmv9i2DQLiMrg62Gx0(boolean z, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, NumberPicker numberPicker4, int i) {
        if (z && i == 0) {
            checkPickerDate(numberPicker, numberPicker2, numberPicker3);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$0icKH1zxThNEB2VNZr6zwT-ZLTA, reason: not valid java name */
    public static /* synthetic */ void m8465$r8$lambda$0icKH1zxThNEB2VNZr6zwTZLTA(boolean z, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, DatePickerDelegate datePickerDelegate, AlertDialog alertDialog, int i) {
        if (z) {
            checkPickerDate(numberPicker, numberPicker2, numberPicker3);
        }
        datePickerDelegate.didSelectDate(numberPicker3.getValue(), numberPicker2.getValue(), numberPicker.getValue());
    }

    public static boolean checkScheduleDate(TextView textView, TextView textView2, int i, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3) {
        return checkScheduleDate(textView, textView2, 0L, 0L, i, numberPicker, numberPicker2, numberPicker3);
    }

    public static boolean checkScheduleDate(TextView textView, TextView textView2, long j, int i, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3) {
        return checkScheduleDate(textView, textView2, 0L, j, i, numberPicker, numberPicker2, numberPicker3);
    }

    public static boolean checkScheduleDate(TextView textView, TextView textView2, long j, long j2, int i, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3) {
        long j3;
        int i2;
        long timeInMillis;
        int i3;
        int days;
        int i4;
        boolean z;
        boolean z2;
        String pluralString;
        int value = numberPicker.getValue();
        int value2 = numberPicker2.getValue();
        int value3 = numberPicker3.getValue();
        Calendar calendar = Calendar.getInstance();
        long jCurrentTimeMillis = System.currentTimeMillis();
        calendar.setTimeInMillis(jCurrentTimeMillis);
        int i5 = calendar.get(1);
        calendar.get(6);
        if (j2 > 0) {
            i2 = i5;
            long j4 = j2 * 1000;
            j3 = jCurrentTimeMillis;
            calendar.setTimeInMillis(j3 + j4);
            calendar.set(11, 23);
            calendar.set(12, 59);
            calendar.set(13, 59);
            days = (int) TimeUnit.MILLISECONDS.toDays(j4);
            timeInMillis = calendar.getTimeInMillis();
            i4 = 59;
            i3 = 23;
        } else {
            j3 = jCurrentTimeMillis;
            i2 = i5;
            timeInMillis = j2;
            i3 = 0;
            days = 0;
            i4 = 0;
        }
        long millis = j > 0 ? TimeUnit.SECONDS.toMillis(j) : RealWebSocket.CANCEL_AFTER_CLOSE_MILLIS;
        long j5 = j3 + millis;
        calendar.setTimeInMillis(j5);
        int i6 = calendar.get(11);
        int i7 = calendar.get(12);
        long j6 = timeInMillis;
        calendar.setTimeInMillis(System.currentTimeMillis() + (((long) value) * 86400000));
        calendar.set(11, value2);
        calendar.set(12, value3);
        long timeInMillis2 = calendar.getTimeInMillis();
        calendar.setTimeInMillis(timeInMillis2);
        numberPicker.setMinValue(0);
        if (j6 > 0) {
            numberPicker.setMaxValue(days);
        }
        int value4 = numberPicker.getValue();
        numberPicker2.setMinValue(value4 == 0 ? i6 : 0);
        if (j6 > 0) {
            numberPicker2.setMaxValue(value4 == days ? i3 : 23);
        }
        int value5 = numberPicker2.getValue();
        numberPicker3.setMinValue((value4 == 0 && value5 == i6) ? i7 : 0);
        if (j6 > 0) {
            numberPicker3.setMaxValue((value4 == days && value5 == i3) ? i4 : 59);
        }
        int value6 = numberPicker3.getValue();
        if (timeInMillis2 <= j5) {
            calendar.setTimeInMillis(j5);
        } else if (j6 > 0 && timeInMillis2 > j6) {
            calendar.setTimeInMillis(j6);
        }
        int i8 = calendar.get(1);
        calendar.setTimeInMillis(System.currentTimeMillis() + (((long) value4) * 86400000));
        calendar.set(11, value5);
        calendar.set(12, value6);
        long timeInMillis3 = calendar.getTimeInMillis();
        if (textView != null) {
            textView.setText(LocaleController.getInstance().getFormatterScheduleSend((value4 == 0 ? 0 : i2 == i8 ? 1 : 2) + (i * 3)).format(timeInMillis3));
        }
        if (textView2 != null) {
            int i9 = (int) ((timeInMillis3 - j3) / 1000);
            if (i9 > 86400) {
                z2 = false;
                pluralString = LocaleController.formatPluralString("DaysSchedule", Math.round(i9 / 86400.0f), new Object[0]);
            } else {
                z2 = false;
                z2 = false;
                z2 = false;
                if (i9 >= 3600) {
                    pluralString = LocaleController.formatPluralString("HoursSchedule", Math.round(i9 / 3600.0f), new Object[0]);
                } else if (i9 >= 60) {
                    pluralString = LocaleController.formatPluralString("MinutesSchedule", Math.round(i9 / 60.0f), new Object[0]);
                } else {
                    pluralString = LocaleController.formatPluralString("SecondsSchedule", i9, new Object[0]);
                }
            }
            if (textView2.getTag() != null) {
                int i10 = C2888R.string.VoipChannelScheduleInfo;
                z = true;
                Object[] objArr = new Object[1];
                objArr[z2 ? 1 : 0] = pluralString;
                textView2.setText(LocaleController.formatString("VoipChannelScheduleInfo", i10, objArr));
            } else {
                z = true;
                int i11 = C2888R.string.VoipGroupScheduleInfo;
                Object[] objArr2 = new Object[1];
                objArr2[z2 ? 1 : 0] = pluralString;
                textView2.setText(LocaleController.formatString("VoipGroupScheduleInfo", i11, objArr2));
            }
        } else {
            z = true;
            z2 = false;
        }
        return timeInMillis2 - j3 > millis ? z : z2;
    }

    public static long checkFormattedDateInput(ButtonWithCounterView buttonWithCounterView, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, NumberPicker numberPicker4, int i) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(jCurrentTimeMillis);
        int i2 = calendar.get(1);
        int value = ((numberPicker2.getValue() - 120) / 12) + i2;
        calendar.clear();
        calendar.set(1, value);
        int i3 = 2;
        calendar.set(2, (numberPicker2.getValue() - 120) % 12);
        numberPicker.setMinValue(1);
        numberPicker.setMaxValue(calendar.getActualMaximum(5));
        int value2 = numberPicker.getValue();
        int value3 = numberPicker3.getValue();
        int value4 = numberPicker4.getValue();
        calendar.set(5, value2);
        calendar.set(11, value3);
        calendar.set(12, value4);
        long timeInMillis = calendar.getTimeInMillis();
        calendar.setTimeInMillis(timeInMillis);
        if (buttonWithCounterView != null) {
            if (i != 0) {
                TLRPC.TL_messageEntityFormattedDate tL_messageEntityFormattedDate = new TLRPC.TL_messageEntityFormattedDate();
                tL_messageEntityFormattedDate.date = (int) (timeInMillis / 1000);
                tL_messageEntityFormattedDate.relative = (i & 1) != 0;
                tL_messageEntityFormattedDate.short_time = (i & 2) != 0;
                tL_messageEntityFormattedDate.long_time = (i & 4) != 0;
                tL_messageEntityFormattedDate.short_date = (i & 8) != 0;
                tL_messageEntityFormattedDate.long_date = (i & 16) != 0;
                tL_messageEntityFormattedDate.day_of_week = (i & 32) != 0;
                tL_messageEntityFormattedDate.flags = i;
                buttonWithCounterView.setText(LocaleController.formatEntityFormattedDate(tL_messageEntityFormattedDate), true);
                return timeInMillis;
            }
            if (value2 == 0) {
                i3 = 0;
            } else if (i2 == value) {
                i3 = 1;
            }
            buttonWithCounterView.setText(LocaleController.getInstance().getFormatterScheduleSend(i3 + 9).format(timeInMillis), true);
        }
        return timeInMillis;
    }

    public static class ScheduleDatePickerColors {
        public final int backgroundColor;
        public final int buttonBackgroundColor;
        public final int buttonBackgroundPressedColor;
        public final int buttonTextColor;
        public final int iconColor;
        public final int iconSelectorColor;
        public final int subMenuBackgroundColor;
        public final int subMenuSelectorColor;
        public final int subMenuTextColor;
        public final int textColor;

        private ScheduleDatePickerColors() {
            this((Theme.ResourcesProvider) null);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public ScheduleDatePickerColors(Theme.ResourcesProvider resourcesProvider) {
            int i = Theme.key_dialogTextBlack;
            int colorOrDefault = resourcesProvider != null ? resourcesProvider.getColorOrDefault(i) : Theme.getColor(i);
            int i2 = Theme.key_dialogBackground;
            int colorOrDefault2 = resourcesProvider != null ? resourcesProvider.getColorOrDefault(i2) : Theme.getColor(i2);
            int i3 = Theme.key_sheet_other;
            int colorOrDefault3 = resourcesProvider != null ? resourcesProvider.getColorOrDefault(i3) : Theme.getColor(i3);
            int i4 = Theme.key_player_actionBarSelector;
            int colorOrDefault4 = resourcesProvider != null ? resourcesProvider.getColorOrDefault(i4) : Theme.getColor(i4);
            int i5 = Theme.key_actionBarDefaultSubmenuItem;
            int colorOrDefault5 = resourcesProvider != null ? resourcesProvider.getColorOrDefault(i5) : Theme.getColor(i5);
            int i6 = Theme.key_actionBarDefaultSubmenuBackground;
            int colorOrDefault6 = resourcesProvider != null ? resourcesProvider.getColorOrDefault(i6) : Theme.getColor(i6);
            int i7 = Theme.key_listSelector;
            int colorOrDefault7 = resourcesProvider != null ? resourcesProvider.getColorOrDefault(i7) : Theme.getColor(i7);
            int i8 = Theme.key_featuredStickers_buttonText;
            int colorOrDefault8 = resourcesProvider != null ? resourcesProvider.getColorOrDefault(i8) : Theme.getColor(i8);
            int i9 = Theme.key_featuredStickers_addButton;
            this(colorOrDefault, colorOrDefault2, colorOrDefault3, colorOrDefault4, colorOrDefault5, colorOrDefault6, colorOrDefault7, colorOrDefault8, resourcesProvider != null ? resourcesProvider.getColorOrDefault(i9) : Theme.getColor(i9), resourcesProvider != null ? resourcesProvider.getColorOrDefault(Theme.key_featuredStickers_addButtonPressed) : Theme.getColor(Theme.key_featuredStickers_addButtonPressed));
        }

        public ScheduleDatePickerColors(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            this(i, i2, i3, i4, i5, i6, i7, Theme.getColor(Theme.key_featuredStickers_buttonText), Theme.getColor(Theme.key_featuredStickers_addButton), Theme.getColor(Theme.key_featuredStickers_addButtonPressed));
        }

        public ScheduleDatePickerColors(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            this.textColor = i;
            this.backgroundColor = i2;
            this.iconColor = i3;
            this.iconSelectorColor = i4;
            this.subMenuTextColor = i5;
            this.subMenuBackgroundColor = i6;
            this.subMenuSelectorColor = i7;
            this.buttonTextColor = i8;
            this.buttonBackgroundColor = i9;
            this.buttonBackgroundPressedColor = i10;
        }
    }

    public static BottomSheet.Builder createScheduleDatePickerDialog(Context context, long j, ScheduleDatePickerDelegate scheduleDatePickerDelegate) {
        return createScheduleDatePickerDialog(context, j, -1L, scheduleDatePickerDelegate, (Runnable) null);
    }

    public static BottomSheet.Builder createScheduleDatePickerDialog(Context context, long j, ScheduleDatePickerDelegate scheduleDatePickerDelegate, Theme.ResourcesProvider resourcesProvider) {
        return createScheduleDatePickerDialog(context, j, -1L, 0, scheduleDatePickerDelegate, (Runnable) null, resourcesProvider);
    }

    public static BottomSheet.Builder createScheduleDatePickerDialog(Context context, long j, ScheduleDatePickerDelegate scheduleDatePickerDelegate, ScheduleDatePickerColors scheduleDatePickerColors) {
        return createScheduleDatePickerDialog(context, j, -1L, 0, scheduleDatePickerDelegate, null, scheduleDatePickerColors, null);
    }

    public static BottomSheet.Builder createScheduleDatePickerDialog(Context context, long j, ScheduleDatePickerDelegate scheduleDatePickerDelegate, Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
        return createScheduleDatePickerDialog(context, j, -1L, 0, scheduleDatePickerDelegate, runnable, resourcesProvider);
    }

    public static BottomSheet.Builder createScheduleDatePickerDialog(Context context, String str, long j, long j2, boolean z, ScheduleDatePickerDelegate scheduleDatePickerDelegate, Runnable runnable) {
        return createScheduleDatePickerDialog(context, str, j, j2, 0, z, scheduleDatePickerDelegate, runnable, new ScheduleDatePickerColors(), null);
    }

    public static BottomSheet.Builder createScheduleDatePickerDialog(Context context, long j, long j2, ScheduleDatePickerDelegate scheduleDatePickerDelegate, Runnable runnable) {
        return createScheduleDatePickerDialog(context, j, j2, 0, scheduleDatePickerDelegate, runnable, new ScheduleDatePickerColors(), null);
    }

    public static BottomSheet.Builder createScheduleDatePickerDialog(Context context, long j, long j2, int i, ScheduleDatePickerDelegate scheduleDatePickerDelegate, Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
        return createScheduleDatePickerDialog(context, j, j2, i, scheduleDatePickerDelegate, runnable, new ScheduleDatePickerColors(resourcesProvider), resourcesProvider);
    }

    public static BottomSheet.Builder createScheduleDatePickerDialog(Context context, long j, long j2, int i, ScheduleDatePickerDelegate scheduleDatePickerDelegate, Runnable runnable, ScheduleDatePickerColors scheduleDatePickerColors, Theme.ResourcesProvider resourcesProvider) {
        return createScheduleDatePickerDialog(context, j, j2, i, false, scheduleDatePickerDelegate, runnable, scheduleDatePickerColors, resourcesProvider);
    }

    public static BottomSheet.Builder createScheduleDatePickerDialog(Context context, long j, long j2, int i, boolean z, ScheduleDatePickerDelegate scheduleDatePickerDelegate, Runnable runnable, ScheduleDatePickerColors scheduleDatePickerColors, Theme.ResourcesProvider resourcesProvider) {
        return createScheduleDatePickerDialog(context, null, j, j2, i, z, scheduleDatePickerDelegate, runnable, scheduleDatePickerColors, resourcesProvider);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r11v19, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r13v0, types: [org.telegram.ui.ActionBar.BottomSheet$Builder] */
    /* JADX WARN: Type inference failed for: r22v2, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r29v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [android.view.ViewGroup, android.widget.FrameLayout] */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout, org.telegram.ui.Components.AlertsCreator$29] */
    public static BottomSheet.Builder createScheduleDatePickerDialog(Context context, final String str, final long j, long j2, int i, boolean z, final ScheduleDatePickerDelegate scheduleDatePickerDelegate, final Runnable runnable, final ScheduleDatePickerColors scheduleDatePickerColors, final Theme.ResourcesProvider resourcesProvider) {
        NumberPicker numberPicker;
        Context context2;
        FrameLayout frameLayout;
        ?? r10;
        ?? r11;
        char c;
        int i2;
        long j3;
        char c2;
        int[] iArr;
        final String[] strArr;
        NumberPicker numberPicker2;
        ?? r112;
        float f;
        final TextView textView;
        Runnable runnable2;
        FrameLayout frameLayout2;
        TLRPC.User user;
        TLRPC.UserStatus userStatus;
        if (context == null) {
            return null;
        }
        final int[] iArr2 = {i};
        final long clientUserId = UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId();
        final ?? builder = new BottomSheet.Builder(context, false, resourcesProvider);
        builder.setApplyBottomPadding(false);
        final NumberPicker numberPicker3 = new NumberPicker(context, resourcesProvider);
        numberPicker3.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker3.setTextOffset(AndroidUtilities.m1124dp(10.0f));
        numberPicker3.setItemCount(5);
        final NumberPicker numberPicker4 = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.27
            @Override // org.telegram.p029ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i3) {
                return LocaleController.formatPluralString("Hours", i3, new Object[0]);
            }
        };
        numberPicker4.setWrapSelectorWheel(true);
        numberPicker4.setAllItemsCount(24);
        numberPicker4.setItemCount(5);
        numberPicker4.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker4.setTextOffset(-AndroidUtilities.m1124dp(10.0f));
        final NumberPicker numberPicker5 = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.28
            @Override // org.telegram.p029ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i3) {
                return LocaleController.formatPluralString("Minutes", i3, new Object[0]);
            }
        };
        numberPicker5.setWrapSelectorWheel(true);
        numberPicker5.setAllItemsCount(60);
        numberPicker5.setItemCount(5);
        numberPicker5.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker5.setTextOffset(-AndroidUtilities.m1124dp(34.0f));
        ?? frameLayout3 = new FrameLayout(context);
        ?? r5 = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.29
            boolean ignoreLayout = false;

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i3, int i4) {
                this.ignoreLayout = true;
                Point point = AndroidUtilities.displaySize;
                int i5 = point.x > point.y ? 3 : 5;
                numberPicker3.setItemCount(i5);
                numberPicker4.setItemCount(i5);
                numberPicker5.setItemCount(i5);
                numberPicker3.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i5;
                numberPicker4.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i5;
                numberPicker5.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i5;
                this.ignoreLayout = false;
                super.onMeasure(i3, i4);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        r5.setOrientation(1);
        frameLayout3.addView(r5, LayoutHelper.createFrame(-1, -1.0f));
        FrameLayout frameLayout4 = new FrameLayout(context);
        frameLayout3.addView(frameLayout4, LayoutHelper.createFrame(-1, 100.0f, 87, 0.0f, 0.0f, 0.0f, 120.0f));
        FrameLayout frameLayout5 = new FrameLayout(context);
        r5.addView(frameLayout5, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
        TextView textView2 = new TextView(context);
        if (!TextUtils.isEmpty(str)) {
            textView2.setText(str);
        } else if (j == clientUserId) {
            textView2.setText(LocaleController.getString(C2888R.string.SetReminder));
        } else {
            textView2.setText(LocaleController.getString(C2888R.string.ScheduleMessage));
        }
        textView2.setTextColor(scheduleDatePickerColors.textColor);
        textView2.setTextSize(1, 20.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        frameLayout5.addView(textView2, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
        textView2.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda16
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return AlertsCreator.$r8$lambda$QKiVlv5OKSWRTPp0rYu4dO86Vnw(view, motionEvent);
            }
        });
        if (!DialogObject.isUserDialog(j) || j == clientUserId || (user = MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(j))) == null || user.bot || (userStatus = user.status) == null || userStatus.expires <= 0) {
            numberPicker = numberPicker5;
            context2 = context;
            frameLayout = frameLayout4;
            r10 = frameLayout3;
            r11 = r5;
            c = 5;
            i2 = 60;
        } else {
            String firstName = UserObject.getFirstName(user);
            if (firstName.length() > 10) {
                StringBuilder sb = new StringBuilder();
                numberPicker = numberPicker5;
                sb.append(firstName.substring(0, 10));
                sb.append("…");
                firstName = sb.toString();
            } else {
                numberPicker = numberPicker5;
            }
            r10 = frameLayout3;
            frameLayout = frameLayout4;
            r11 = r5;
            c = 5;
            i2 = 60;
            final ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(context, null, 0, scheduleDatePickerColors.iconColor, false, resourcesProvider);
            context2 = context;
            actionBarMenuItem.setLongClickEnabled(false);
            actionBarMenuItem.setSubMenuOpenSide(2);
            actionBarMenuItem.setIcon(C2888R.drawable.ic_ab_other);
            actionBarMenuItem.setBackgroundDrawable(Theme.createSelectorDrawable(scheduleDatePickerColors.iconSelectorColor, 1));
            frameLayout5.addView(actionBarMenuItem, LayoutHelper.createFrame(40, 40.0f, 53, 0.0f, 8.0f, 5.0f, 0.0f));
            actionBarMenuItem.addSubItem(1, LocaleController.formatString("ScheduleWhenOnline", C2888R.string.ScheduleWhenOnline, firstName));
            actionBarMenuItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda18
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.m8491$r8$lambda$M14lGBED9YYCVzfB0b3HI8vtQA(actionBarMenuItem, scheduleDatePickerColors, view);
                }
            });
            actionBarMenuItem.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda19
                @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
                public final void onItemClick(int i3) {
                    AlertsCreator.$r8$lambda$hCk0IW9H_J083DnWlx3jQkzQz9A(scheduleDatePickerDelegate, builder, i3);
                }
            });
            actionBarMenuItem.setContentDescription(LocaleController.getString(C2888R.string.AccDescrMoreOptions));
        }
        LinearLayout linearLayout = new LinearLayout(context2);
        linearLayout.setOrientation(0);
        linearLayout.setWeightSum(1.0f);
        r11.addView(linearLayout, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        final long jCurrentTimeMillis = System.currentTimeMillis();
        ?? r22 = r10;
        final Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(jCurrentTimeMillis);
        final int i3 = calendar.get(1);
        final TextView textView3 = new TextView(context2) { // from class: org.telegram.ui.Components.AlertsCreator.30
            @Override // android.widget.TextView, android.view.View
            public CharSequence getAccessibilityClassName() {
                return Button.class.getName();
            }
        };
        ?? r29 = r11;
        linearLayout.addView(numberPicker3, LayoutHelper.createLinear(0, 270, 0.5f));
        numberPicker3.setMinValue(0);
        numberPicker3.setMaxValue(365);
        numberPicker3.setWrapSelectorWheel(false);
        numberPicker3.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda20
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i4) {
                return AlertsCreator.m8533$r8$lambda$wYOlNARt_1Ra6IN6XhigoDxOr4(jCurrentTimeMillis, calendar, i3, i4);
            }
        });
        final NumberPicker numberPicker6 = numberPicker;
        NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda21
            @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker7, int i4, int i5) {
                AlertsCreator.checkScheduleDate(textView3, null, str != null ? 3 : clientUserId == j ? 1 : 0, numberPicker3, numberPicker4, numberPicker6);
            }
        };
        numberPicker3.setOnValueChangedListener(onValueChangeListener);
        numberPicker4.setMinValue(0);
        numberPicker4.setMaxValue(23);
        linearLayout.addView(numberPicker4, LayoutHelper.createLinear(0, 270, 0.2f));
        numberPicker4.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda22
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i4) {
                return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i4));
            }
        });
        numberPicker4.setOnValueChangedListener(onValueChangeListener);
        numberPicker6.setMinValue(0);
        numberPicker6.setMaxValue(59);
        numberPicker6.setValue(0);
        numberPicker6.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda23
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i4) {
                return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i4));
            }
        });
        linearLayout.addView(numberPicker6, LayoutHelper.createLinear(0, 270, 0.3f));
        numberPicker6.setOnValueChangedListener(onValueChangeListener);
        if (j2 <= 0 || j2 == 2147483646) {
            j3 = clientUserId;
        } else {
            long j4 = 1000 * j2;
            calendar.setTimeInMillis(System.currentTimeMillis());
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            calendar.set(11, 0);
            j3 = clientUserId;
            int timeInMillis = (int) ((j4 - calendar.getTimeInMillis()) / 86400000);
            calendar.setTimeInMillis(j4);
            if (timeInMillis >= 0) {
                numberPicker6.setValue(calendar.get(12));
                numberPicker4.setValue(calendar.get(11));
                numberPicker3.setValue(timeInMillis);
            }
        }
        final boolean[] zArr = {true};
        checkScheduleDate(textView3, null, str != null ? 3 : j3 == j ? 1 : 0, numberPicker3, numberPicker4, numberPicker6);
        boolean zIsTestBackend = ConnectionsManager.getInstance(UserConfig.selectedAccount).isTestBackend();
        if (zIsTestBackend) {
            c2 = '\t';
            iArr = new int[10];
            iArr[0] = 0;
            iArr[1] = i2;
            iArr[2] = 300;
            iArr[3] = 86400;
            iArr[4] = 604800;
            iArr[c] = 1209600;
            iArr[6] = 2592000;
            iArr[7] = 7862400;
            iArr[8] = 15724800;
            iArr[9] = 31536000;
        } else {
            c2 = '\t';
            iArr = new int[8];
            iArr[0] = 0;
            iArr[1] = 86400;
            iArr[2] = 604800;
            iArr[3] = 1209600;
            iArr[4] = 2592000;
            iArr[c] = 7862400;
            iArr[6] = 15724800;
            iArr[7] = 31536000;
        }
        final int[] iArr3 = iArr;
        if (zIsTestBackend) {
            strArr = new String[10];
            strArr[0] = LocaleController.getString(C2888R.string.MessageScheduledRepeatOptionNever);
            strArr[1] = "Every minute";
            strArr[2] = "Every 5 minutes";
            strArr[3] = LocaleController.getString(C2888R.string.MessageScheduledRepeatOptionDaily);
            strArr[4] = LocaleController.getString(C2888R.string.MessageScheduledRepeatOptionWeekly);
            strArr[c] = LocaleController.getString(C2888R.string.MessageScheduledRepeatOptionBiweekly);
            strArr[6] = LocaleController.getString(C2888R.string.MessageScheduledRepeatOptionMonthly);
            strArr[7] = LocaleController.getString(C2888R.string.MessageScheduledRepeatOption3Monthly);
            strArr[8] = LocaleController.getString(C2888R.string.MessageScheduledRepeatOption6Monthly);
            strArr[c2] = LocaleController.getString(C2888R.string.MessageScheduledRepeatOptionYearly);
        } else {
            strArr = new String[8];
            strArr[0] = LocaleController.getString(C2888R.string.MessageScheduledRepeatOptionNever);
            strArr[1] = LocaleController.getString(C2888R.string.MessageScheduledRepeatOptionDaily);
            strArr[2] = LocaleController.getString(C2888R.string.MessageScheduledRepeatOptionWeekly);
            strArr[3] = LocaleController.getString(C2888R.string.MessageScheduledRepeatOptionBiweekly);
            strArr[4] = LocaleController.getString(C2888R.string.MessageScheduledRepeatOptionMonthly);
            strArr[c] = LocaleController.getString(C2888R.string.MessageScheduledRepeatOption3Monthly);
            strArr[6] = LocaleController.getString(C2888R.string.MessageScheduledRepeatOption6Monthly);
            strArr[7] = LocaleController.getString(C2888R.string.MessageScheduledRepeatOptionYearly);
        }
        if (z) {
            numberPicker2 = numberPicker3;
            r112 = r29;
            f = 14.0f;
            textView = null;
            runnable2 = null;
            frameLayout2 = null;
        } else {
            FrameLayout frameLayout6 = new FrameLayout(context);
            int i4 = scheduleDatePickerColors.textColor;
            f = 14.0f;
            int iBlendOver = Theme.blendOver(scheduleDatePickerColors.backgroundColor, Theme.multAlpha(i4, 0.075f));
            int iMultAlpha = Theme.multAlpha(scheduleDatePickerColors.textColor, 0.1f);
            textView = new TextView(context);
            numberPicker2 = numberPicker3;
            textView.setTextSize(1, 13.0f);
            textView.setTextColor(i4);
            textView.setPadding(AndroidUtilities.m1124dp(12.0f), 0, AndroidUtilities.m1124dp(12.0f), 0);
            textView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(14.0f), iBlendOver, Theme.blendOver(iBlendOver, iMultAlpha)));
            textView.setGravity(17);
            Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() {
                    AlertsCreator.$r8$lambda$DAexFA3jg3FuWidXVX1yJtpn6sk(iArr3, iArr2, strArr, textView);
                }
            };
            runnable3.run();
            frameLayout6.addView(textView, LayoutHelper.createFrame(-2, 28.0f, 1, 32.0f, 4.0f, 32.0f, 5.0f));
            ?? r113 = r29;
            r113.addView(frameLayout6, LayoutHelper.createLinear(-1, -2));
            runnable2 = runnable3;
            frameLayout2 = frameLayout6;
            r112 = r113;
        }
        textView3.setPadding(AndroidUtilities.m1124dp(34.0f), 0, AndroidUtilities.m1124dp(34.0f), 0);
        textView3.setGravity(17);
        textView3.setTextColor(scheduleDatePickerColors.buttonTextColor);
        textView3.setTextSize(1, f);
        textView3.setTypeface(AndroidUtilities.bold());
        textView3.setBackground(Theme.AdaptiveRipple.filledRect(scheduleDatePickerColors.buttonBackgroundColor, 24.0f));
        r112.addView(textView3, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
        final String[] strArr2 = strArr;
        final NumberPicker numberPicker7 = numberPicker2;
        TextView textView4 = textView;
        final long j5 = j3;
        textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda25
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.$r8$lambda$daGoIrJ8GwVT2Jv19MHunRwgF0s(zArr, str, j5, j, numberPicker7, numberPicker4, numberPicker6, calendar, scheduleDatePickerDelegate, iArr2, builder, view);
            }
        });
        builder.setCustomView(r22);
        final BottomSheet bottomSheetShow = builder.show();
        bottomSheetShow.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda26
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AlertsCreator.$r8$lambda$WOd_3XBkGffOdZkX72bAOvDVWfw(runnable, zArr, dialogInterface);
            }
        });
        bottomSheetShow.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
        bottomSheetShow.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
        if (textView4 != null) {
            final Runnable runnable4 = runnable2;
            final FrameLayout frameLayout7 = frameLayout2;
            final FrameLayout frameLayout8 = frameLayout;
            textView4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda17
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.$r8$lambda$_JOfjpfbpfIzWiPnf9xMOGWescw(frameLayout8, resourcesProvider, bottomSheetShow, frameLayout7, iArr3, strArr2, iArr2, runnable4, view);
                }
            });
        }
        return builder;
    }

    public static /* synthetic */ boolean $r8$lambda$QKiVlv5OKSWRTPp0rYu4dO86Vnw(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: renamed from: $r8$lambda$M14lGBED9YYCVzfB-0b3HI8vtQA, reason: not valid java name */
    public static /* synthetic */ void m8491$r8$lambda$M14lGBED9YYCVzfB0b3HI8vtQA(ActionBarMenuItem actionBarMenuItem, ScheduleDatePickerColors scheduleDatePickerColors, View view) {
        actionBarMenuItem.toggleSubMenu();
        actionBarMenuItem.setPopupItemsColor(scheduleDatePickerColors.subMenuTextColor, false);
        actionBarMenuItem.setupPopupRadialSelectors(scheduleDatePickerColors.subMenuSelectorColor);
        actionBarMenuItem.redrawPopup(scheduleDatePickerColors.subMenuBackgroundColor);
    }

    public static /* synthetic */ void $r8$lambda$hCk0IW9H_J083DnWlx3jQkzQz9A(ScheduleDatePickerDelegate scheduleDatePickerDelegate, BottomSheet.Builder builder, int i) {
        if (i == 1) {
            scheduleDatePickerDelegate.didSelectDate(true, 2147483646, 0);
            builder.getDismissRunnable().run();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$wYOlNARt_1Ra6I-N6XhigoDxOr4, reason: not valid java name */
    public static /* synthetic */ String m8533$r8$lambda$wYOlNARt_1Ra6IN6XhigoDxOr4(long j, Calendar calendar, int i, int i2) {
        if (i2 == 0) {
            return LocaleController.getString(C2888R.string.MessageScheduleToday);
        }
        long j2 = j + (((long) i2) * 86400000);
        calendar.setTimeInMillis(j2);
        int i3 = calendar.get(1);
        LocaleController.getInstance().getFormatterWeek().format(j2);
        if (i3 == i) {
            return LocaleController.getInstance().getFormatterWeek().format(j2) + ", " + LocaleController.getInstance().getFormatterScheduleDay().format(j2);
        }
        return LocaleController.getInstance().getFormatterScheduleYear().format(j2);
    }

    public static /* synthetic */ void $r8$lambda$DAexFA3jg3FuWidXVX1yJtpn6sk(int[] iArr, int[] iArr2, String[] strArr, TextView textView) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) LocaleController.getString(C2888R.string.MessageScheduledRepeatOption));
        spannableStringBuilder.append((CharSequence) " ");
        int length = spannableStringBuilder.length();
        int i = 0;
        while (true) {
            if (i >= iArr.length) {
                break;
            }
            if (iArr2[0] == iArr[i]) {
                spannableStringBuilder.append((CharSequence) strArr[i]);
                spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold()), length, spannableStringBuilder.length(), 33);
                break;
            }
            i++;
        }
        spannableStringBuilder.append((CharSequence) " v");
        if (UserConfig.getInstance(UserConfig.selectedAccount).isPremium()) {
            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.arrows_select);
            coloredImageSpan.spaceScaleX = 0.7f;
            coloredImageSpan.translate(AndroidUtilities.m1124dp(-1.33f), AndroidUtilities.m1124dp(0.0f));
            coloredImageSpan.setAlpha(0.75f);
            spannableStringBuilder.setSpan(coloredImageSpan, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        } else {
            ColoredImageSpan coloredImageSpan2 = new ColoredImageSpan(C2888R.drawable.mini_switch_lock);
            coloredImageSpan2.spaceScaleX = 0.7f;
            coloredImageSpan2.translate(AndroidUtilities.m1124dp(-1.33f), AndroidUtilities.m1124dp(0.0f));
            coloredImageSpan2.setAlpha(0.75f);
            spannableStringBuilder.setSpan(coloredImageSpan2, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        }
        textView.setText(spannableStringBuilder);
    }

    public static /* synthetic */ void $r8$lambda$daGoIrJ8GwVT2Jv19MHunRwgF0s(boolean[] zArr, String str, long j, long j2, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, Calendar calendar, ScheduleDatePickerDelegate scheduleDatePickerDelegate, int[] iArr, BottomSheet.Builder builder, View view) {
        zArr[0] = false;
        boolean zCheckScheduleDate = checkScheduleDate(null, null, str != null ? 3 : j == j2 ? 1 : 0, numberPicker, numberPicker2, numberPicker3);
        calendar.setTimeInMillis(System.currentTimeMillis() + (((long) numberPicker.getValue()) * 86400000));
        calendar.set(11, numberPicker2.getValue());
        calendar.set(12, numberPicker3.getValue());
        if (zCheckScheduleDate) {
            calendar.set(13, 0);
        }
        scheduleDatePickerDelegate.didSelectDate(true, (int) (calendar.getTimeInMillis() / 1000), iArr[0]);
        builder.getDismissRunnable().run();
    }

    public static /* synthetic */ void $r8$lambda$WOd_3XBkGffOdZkX72bAOvDVWfw(Runnable runnable, boolean[] zArr, DialogInterface dialogInterface) {
        if (runnable == null || !zArr[0]) {
            return;
        }
        runnable.run();
    }

    public static /* synthetic */ void $r8$lambda$_JOfjpfbpfIzWiPnf9xMOGWescw(FrameLayout frameLayout, Theme.ResourcesProvider resourcesProvider, BottomSheet bottomSheet, FrameLayout frameLayout2, int[] iArr, String[] strArr, final int[] iArr2, final Runnable runnable, View view) {
        if (!UserConfig.getInstance(UserConfig.selectedAccount).isPremium()) {
            BulletinFactory.m1245of(frameLayout, resourcesProvider).createSimpleBulletin(C2888R.raw.star_premium_2, AndroidUtilities.premiumText(LocaleController.getString(C2888R.string.MessageScheduledRepeatPremium), new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda62
                @Override // java.lang.Runnable
                public final void run() {
                    AlertsCreator.m8505$r8$lambda$Z_Gq6qrfczapffQKgomB189clM();
                }
            })).show();
            return;
        }
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(bottomSheet.container, resourcesProvider, frameLayout2);
        for (int i = 0; i < iArr.length; i++) {
            final int i2 = iArr[i];
            itemOptionsMakeOptions.add(strArr[i], new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda63
                @Override // java.lang.Runnable
                public final void run() {
                    AlertsCreator.$r8$lambda$OhHnZyFk2ZA5sJVylpz6nuJ7t1M(iArr2, i2, runnable);
                }
            });
        }
        itemOptionsMakeOptions.setGravity(1);
        itemOptionsMakeOptions.show();
    }

    /* JADX INFO: renamed from: $r8$lambda$Z_Gq6qrfczapffQKgomB189c-lM, reason: not valid java name */
    public static /* synthetic */ void m8505$r8$lambda$Z_Gq6qrfczapffQKgomB189clM() {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
        bottomSheetParams.transitionFromLeft = true;
        bottomSheetParams.allowNestedScroll = false;
        safeLastFragment.showAsSheet(new PremiumPreviewFragment("schedule_repeat"), bottomSheetParams);
    }

    public static /* synthetic */ void $r8$lambda$OhHnZyFk2ZA5sJVylpz6nuJ7t1M(int[] iArr, int i, Runnable runnable) {
        iArr[0] = i;
        runnable.run();
    }

    public static BottomSheet.Builder createDatePickerDialog(Context context, String str, String str2, long j, final ScheduleDatePickerDelegate scheduleDatePickerDelegate) {
        if (context == null) {
            return null;
        }
        ScheduleDatePickerColors scheduleDatePickerColors = new ScheduleDatePickerColors();
        final BottomSheet.Builder builder = new BottomSheet.Builder(context, false);
        builder.setApplyBottomPadding(false);
        final NumberPicker numberPicker = new NumberPicker(context);
        numberPicker.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker.setTextOffset(AndroidUtilities.m1124dp(10.0f));
        numberPicker.setItemCount(5);
        final NumberPicker numberPicker2 = new NumberPicker(context) { // from class: org.telegram.ui.Components.AlertsCreator.31
            @Override // org.telegram.p029ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i) {
                return LocaleController.formatPluralString("Hours", i, new Object[0]);
            }
        };
        numberPicker2.setItemCount(5);
        numberPicker2.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker2.setTextOffset(-AndroidUtilities.m1124dp(10.0f));
        final NumberPicker numberPicker3 = new NumberPicker(context) { // from class: org.telegram.ui.Components.AlertsCreator.32
            @Override // org.telegram.p029ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i) {
                return LocaleController.formatPluralString("Minutes", i, new Object[0]);
            }
        };
        numberPicker3.setItemCount(5);
        numberPicker3.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker3.setTextOffset(-AndroidUtilities.m1124dp(34.0f));
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.33
            boolean ignoreLayout = false;

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                this.ignoreLayout = true;
                Point point = AndroidUtilities.displaySize;
                int i3 = point.x > point.y ? 3 : 5;
                numberPicker.setItemCount(i3);
                numberPicker2.setItemCount(i3);
                numberPicker3.setItemCount(i3);
                numberPicker.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i3;
                numberPicker2.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i3;
                numberPicker3.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i3;
                this.ignoreLayout = false;
                super.onMeasure(i, i2);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
        TextView textView = new TextView(context);
        textView.setText(str);
        textView.setTextColor(scheduleDatePickerColors.textColor);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda166
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return AlertsCreator.m8518$r8$lambda$mhVapw6nQJbeIDCY5GB2CB1Zw(view, motionEvent);
            }
        });
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setWeightSum(1.0f);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        final long jCurrentTimeMillis = System.currentTimeMillis();
        final Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(jCurrentTimeMillis);
        final int i = calendar.get(1);
        TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.34
            @Override // android.widget.TextView, android.view.View
            public CharSequence getAccessibilityClassName() {
                return Button.class.getName();
            }
        };
        linearLayout2.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.5f));
        numberPicker.setMinValue(0);
        numberPicker.setMaxValue(365);
        numberPicker.setWrapSelectorWheel(false);
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda167
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i2) {
                return AlertsCreator.$r8$lambda$kStnEPayh4tMmYXYYRhiWmAiqOg(jCurrentTimeMillis, calendar, i, i2);
            }
        });
        NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda168
            @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker4, int i2, int i3) {
                AlertsCreator.checkScheduleDate(null, null, 0, numberPicker, numberPicker2, numberPicker3);
            }
        };
        numberPicker.setOnValueChangedListener(onValueChangeListener);
        numberPicker2.setMinValue(0);
        numberPicker2.setMaxValue(23);
        linearLayout2.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.2f));
        numberPicker2.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda169
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i2) {
                return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i2));
            }
        });
        numberPicker2.setOnValueChangedListener(onValueChangeListener);
        numberPicker3.setMinValue(0);
        numberPicker3.setMaxValue(59);
        numberPicker3.setValue(0);
        numberPicker3.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda170
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i2) {
                return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i2));
            }
        });
        linearLayout2.addView(numberPicker3, LayoutHelper.createLinear(0, 270, 0.3f));
        numberPicker3.setOnValueChangedListener(onValueChangeListener);
        if (j > 0 && j != 2147483646) {
            long j2 = 1000 * j;
            calendar.setTimeInMillis(System.currentTimeMillis());
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            calendar.set(11, 0);
            int timeInMillis = (int) ((j2 - calendar.getTimeInMillis()) / 86400000);
            calendar.setTimeInMillis(j2);
            if (timeInMillis >= 0) {
                numberPicker3.setValue(calendar.get(12));
                numberPicker2.setValue(calendar.get(11));
                numberPicker.setValue(timeInMillis);
            }
        }
        checkScheduleDate(null, null, 0, numberPicker, numberPicker2, numberPicker3);
        textView2.setPadding(AndroidUtilities.m1124dp(34.0f), 0, AndroidUtilities.m1124dp(34.0f), 0);
        textView2.setGravity(17);
        textView2.setTextColor(scheduleDatePickerColors.buttonTextColor);
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setBackgroundDrawable(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(8.0f), scheduleDatePickerColors.buttonBackgroundColor, scheduleDatePickerColors.buttonBackgroundPressedColor));
        textView2.setText(str2);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda171
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.$r8$lambda$hqZg4qhFiFx7_Kzj3Y592zzHNpY(numberPicker, numberPicker2, numberPicker3, calendar, scheduleDatePickerDelegate, builder, view);
            }
        });
        builder.setCustomView(linearLayout);
        BottomSheet bottomSheetShow = builder.show();
        bottomSheetShow.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
        bottomSheetShow.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
        return builder;
    }

    /* JADX INFO: renamed from: $r8$lambda$mhVapw6--nQJbeIDCY5GB2CB1Zw, reason: not valid java name */
    public static /* synthetic */ boolean m8518$r8$lambda$mhVapw6nQJbeIDCY5GB2CB1Zw(View view, MotionEvent motionEvent) {
        return true;
    }

    public static /* synthetic */ String $r8$lambda$kStnEPayh4tMmYXYYRhiWmAiqOg(long j, Calendar calendar, int i, int i2) {
        if (i2 == 0) {
            return LocaleController.getString(C2888R.string.MessageScheduleToday);
        }
        long j2 = j + (((long) i2) * 86400000);
        calendar.setTimeInMillis(j2);
        if (calendar.get(1) == i) {
            return LocaleController.getInstance().getFormatterScheduleDay().format(j2);
        }
        return LocaleController.getInstance().getFormatterScheduleYear().format(j2);
    }

    public static /* synthetic */ void $r8$lambda$hqZg4qhFiFx7_Kzj3Y592zzHNpY(NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, Calendar calendar, ScheduleDatePickerDelegate scheduleDatePickerDelegate, BottomSheet.Builder builder, View view) {
        boolean zCheckScheduleDate = checkScheduleDate(null, null, 0, numberPicker, numberPicker2, numberPicker3);
        calendar.setTimeInMillis(System.currentTimeMillis() + (((long) numberPicker.getValue()) * 86400000));
        calendar.set(11, numberPicker2.getValue());
        calendar.set(12, numberPicker3.getValue());
        if (zCheckScheduleDate) {
            calendar.set(13, 0);
        }
        scheduleDatePickerDelegate.didSelectDate(true, (int) (calendar.getTimeInMillis() / 1000), 0);
        builder.getDismissRunnable().run();
    }

    public static BottomSheet.Builder createBirthdayPickerDialog(Context context, String str, String str2, TL_account.TL_birthday tL_birthday, final Utilities.Callback callback, Runnable runnable, boolean z, boolean z2, Theme.ResourcesProvider resourcesProvider) {
        if (context == null) {
            return null;
        }
        final BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        builder.setApplyBottomPadding(false);
        final NumberPicker numberPicker = new NumberPicker(context, resourcesProvider);
        numberPicker.setTextOffset(AndroidUtilities.m1124dp(10.0f));
        numberPicker.setItemCount(5);
        final NumberPicker numberPicker2 = new NumberPicker(context, resourcesProvider);
        numberPicker2.setItemCount(5);
        numberPicker2.setTextOffset(-AndroidUtilities.m1124dp(10.0f));
        final NumberPicker numberPicker3 = new NumberPicker(context, resourcesProvider);
        numberPicker3.setItemCount(5);
        numberPicker3.setTextOffset(-AndroidUtilities.m1124dp(24.0f));
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.35
            boolean ignoreLayout = false;

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                this.ignoreLayout = true;
                Point point = AndroidUtilities.displaySize;
                int i3 = point.x > point.y ? 3 : 5;
                numberPicker.setItemCount(i3);
                numberPicker2.setItemCount(i3);
                numberPicker3.setItemCount(i3);
                numberPicker.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i3;
                numberPicker2.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i3;
                numberPicker3.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i3;
                this.ignoreLayout = false;
                super.onMeasure(i, i2);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
        TextView textView = new TextView(context);
        textView.setText(str);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda51
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return AlertsCreator.$r8$lambda$yW7z3GPBymB3jVMhURqjwGrqpRA(view, motionEvent);
            }
        });
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setGravity(17);
        linearLayout2.setOrientation(0);
        linearLayout2.setWeightSum(1.0f);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        Calendar calendar = Calendar.getInstance();
        int i = calendar.get(1) - 149;
        calendar.setTimeInMillis(System.currentTimeMillis());
        final int i2 = calendar.get(5);
        final int i3 = calendar.get(2);
        final int i4 = calendar.get(1);
        final int i5 = i4 + 1;
        final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda53
            @Override // java.lang.Runnable
            public final void run() {
                AlertsCreator.m8536$r8$lambda$zUlCcmiXtXiSO4Toaw0QrPnltw(numberPicker3, i5, numberPicker, numberPicker2, i4, i3, i2);
            }
        };
        System.currentTimeMillis();
        TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.36
            @Override // android.widget.TextView, android.view.View
            public CharSequence getAccessibilityClassName() {
                return Button.class.getName();
            }
        };
        linearLayout2.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.25f));
        numberPicker.setMinValue(1);
        numberPicker.setMaxValue(31);
        numberPicker.setWrapSelectorWheel(false);
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda54
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i6) {
                return AlertsCreator.$r8$lambda$Yu7qGfRloR2dVwTo85z_gAeVrPc(i6);
            }
        });
        NumberPicker.OnScrollListener onScrollListener = new NumberPicker.OnScrollListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda55
            @Override // org.telegram.ui.Components.NumberPicker.OnScrollListener
            public final void onScrollStateChange(NumberPicker numberPicker4, int i6) {
                AlertsCreator.$r8$lambda$1qZYOkRx9Mu8gzEmwVs7Oe8PmVo(runnable2, numberPicker4, i6);
            }
        };
        numberPicker.setOnScrollListener(onScrollListener);
        numberPicker2.setMinValue(0);
        numberPicker2.setMaxValue(11);
        numberPicker2.setWrapSelectorWheel(false);
        linearLayout2.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.5f));
        numberPicker2.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda56
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i6) {
                return AlertsCreator.$r8$lambda$qmMpnkP3x8NZvPDsnRJiJM3t2b0(i6);
            }
        });
        numberPicker2.setOnScrollListener(onScrollListener);
        numberPicker3.setMinValue(i);
        numberPicker3.setMaxValue(i5);
        numberPicker3.setWrapSelectorWheel(false);
        numberPicker3.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda57
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i6) {
                return AlertsCreator.m8493$r8$lambda$O7hGQX5tx5Fl59NFCUX5Arzh5U(i5, i6);
            }
        });
        linearLayout2.addView(numberPicker3, LayoutHelper.createLinear(0, 270, 0.25f));
        numberPicker3.setOnScrollListener(onScrollListener);
        if (tL_birthday != null) {
            numberPicker.setValue(tL_birthday.day);
            numberPicker2.setValue(tL_birthday.month - 1);
            if ((tL_birthday.flags & 1) != 0) {
                numberPicker3.setValue(tL_birthday.year);
            } else {
                numberPicker3.setValue(i5);
            }
        } else {
            numberPicker.setValue(calendar.get(5));
            numberPicker2.setValue(calendar.get(2));
            numberPicker3.setValue(i5);
        }
        runnable2.run();
        if (runnable != null) {
            FrameLayout frameLayout2 = new FrameLayout(context);
            final LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
            linksTextView.setPadding(AndroidUtilities.m1124dp(8.0f), 0, AndroidUtilities.m1124dp(8.0f), 0);
            linksTextView.setTextSize(1, 13.0f);
            linksTextView.setTextColor(Theme.getColor(Theme.key_dialogTextGray2, resourcesProvider));
            linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
            linksTextView.setGravity(17);
            frameLayout2.addView(linksTextView, LayoutHelper.createFrame(-2, -2, 17));
            linearLayout.addView(frameLayout2, LayoutHelper.createLinear(-1, -2));
            final int i6 = UserConfig.selectedAccount;
            final Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda58
                @Override // java.lang.Runnable
                public final void run() {
                    AlertsCreator.$r8$lambda$ztNNk7Djuq754hNJkcutoDDkVlg(i6, linksTextView);
                }
            };
            runnable3.run();
            NotificationCenter.getInstance(i6).listen(frameLayout2, NotificationCenter.privacyRulesUpdated, new Utilities.Callback() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda59
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    runnable3.run();
                }
            });
            ContactsController.getInstance(i6).loadPrivacySettings();
        }
        if (z) {
            ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, false, resourcesProvider);
            buttonWithCounterView.setText(LocaleController.getString(C2888R.string.DateOfBirthHideYear), false);
            buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda60
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.$r8$lambda$DOMHJDS1UCinXkRzgBn4g92ZXGE(numberPicker3, i5, runnable2, view);
                }
            });
            linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 4));
        }
        textView2.setPadding(AndroidUtilities.m1124dp(34.0f), 0, AndroidUtilities.m1124dp(34.0f), 0);
        textView2.setGravity(17);
        textView2.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText, resourcesProvider));
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setText(str2);
        textView2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(8.0f), Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider), Theme.getColor(Theme.key_featuredStickers_addButtonPressed, resourcesProvider)));
        ScaleStateListAnimator.apply(textView2);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 83, 16, z ? 0 : 15, 16, z2 ? 0 : 16));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda61
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.$r8$lambda$dae2ADW7GsRFa5oeGfT_OuyuwlI(numberPicker, numberPicker2, numberPicker3, i5, builder, callback, view);
            }
        });
        if (z2) {
            ButtonWithCounterView buttonWithCounterView2 = new ButtonWithCounterView(context, false, resourcesProvider);
            buttonWithCounterView2.setText(LocaleController.getString(C2888R.string.BirthdayRemove), false);
            buttonWithCounterView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda52
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.$r8$lambda$Hwvk0DMtJf8kV_WFNf1TbvayAPw(builder, callback, view);
                }
            });
            linearLayout.addView(buttonWithCounterView2, LayoutHelper.createLinear(-1, 48, 83, 16, 4, 16, 16));
        }
        builder.setCustomView(linearLayout);
        return builder;
    }

    public static /* synthetic */ boolean $r8$lambda$yW7z3GPBymB3jVMhURqjwGrqpRA(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: renamed from: $r8$lambda$zUlCcmiXtXiSO4To-aw0QrPnltw, reason: not valid java name */
    public static /* synthetic */ void m8536$r8$lambda$zUlCcmiXtXiSO4Toaw0QrPnltw(NumberPicker numberPicker, int i, NumberPicker numberPicker2, NumberPicker numberPicker3, int i2, int i3, int i4) {
        if (numberPicker.getValue() == i) {
            numberPicker2.setMinValue(1);
            try {
                numberPicker2.setMaxValue(YearMonth.m633of(2024, numberPicker3.getValue() + 1).lengthOfMonth());
            } catch (Exception e) {
                FileLog.m1136e(e);
                numberPicker2.setMaxValue(31);
            }
            numberPicker3.setMinValue(0);
            numberPicker3.setMaxValue(11);
            return;
        }
        if (numberPicker.getValue() == i2) {
            numberPicker3.setMinValue(0);
            numberPicker3.setMaxValue(i3);
            if (numberPicker3.getValue() == i3) {
                numberPicker2.setMinValue(1);
                numberPicker2.setMaxValue(i4);
                return;
            }
            numberPicker2.setMinValue(1);
            try {
                numberPicker2.setMaxValue(YearMonth.m633of(numberPicker.getValue(), numberPicker3.getValue() + 1).lengthOfMonth());
                return;
            } catch (Exception e2) {
                FileLog.m1136e(e2);
                numberPicker2.setMaxValue(31);
                return;
            }
        }
        numberPicker2.setMinValue(1);
        try {
            numberPicker2.setMaxValue(YearMonth.m633of(numberPicker.getValue(), numberPicker3.getValue() + 1).lengthOfMonth());
        } catch (Exception e3) {
            FileLog.m1136e(e3);
            numberPicker2.setMaxValue(31);
        }
        numberPicker3.setMinValue(0);
        numberPicker3.setMaxValue(11);
    }

    public static /* synthetic */ String $r8$lambda$Yu7qGfRloR2dVwTo85z_gAeVrPc(int i) {
        return _UrlKt.FRAGMENT_ENCODE_SET + i;
    }

    public static /* synthetic */ void $r8$lambda$1qZYOkRx9Mu8gzEmwVs7Oe8PmVo(Runnable runnable, NumberPicker numberPicker, int i) {
        if (i == 0) {
            runnable.run();
        }
    }

    public static /* synthetic */ String $r8$lambda$qmMpnkP3x8NZvPDsnRJiJM3t2b0(int i) {
        switch (i) {
            case 0:
                return LocaleController.getString(C2888R.string.January);
            case 1:
                return LocaleController.getString(C2888R.string.February);
            case 2:
                return LocaleController.getString(C2888R.string.March);
            case 3:
                return LocaleController.getString(C2888R.string.April);
            case 4:
                return LocaleController.getString(C2888R.string.May);
            case 5:
                return LocaleController.getString(C2888R.string.June);
            case 6:
                return LocaleController.getString(C2888R.string.July);
            case 7:
                return LocaleController.getString(C2888R.string.August);
            case 8:
                return LocaleController.getString(C2888R.string.September);
            case 9:
                return LocaleController.getString(C2888R.string.October);
            case 10:
                return LocaleController.getString(C2888R.string.November);
            default:
                return LocaleController.getString(C2888R.string.December);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$O7h-GQX5tx5Fl59NFCUX5Arzh5U, reason: not valid java name */
    public static /* synthetic */ String m8493$r8$lambda$O7hGQX5tx5Fl59NFCUX5Arzh5U(int i, int i2) {
        return i2 == i ? "—" : String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i2));
    }

    public static /* synthetic */ void $r8$lambda$ztNNk7Djuq754hNJkcutoDDkVlg(int i, LinkSpanDrawable.LinksTextView linksTextView) {
        final ArrayList<TLRPC.PrivacyRule> privacyRules = ContactsController.getInstance(i).getPrivacyRules(11);
        String string = LocaleController.getString(C2888R.string.EditProfileBirthdayInfoContacts);
        if (privacyRules != null && !privacyRules.isEmpty()) {
            int i2 = 0;
            while (true) {
                if (i2 >= privacyRules.size()) {
                    break;
                }
                if (privacyRules.get(i2) instanceof TLRPC.TL_privacyValueAllowContacts) {
                    string = LocaleController.getString(C2888R.string.EditProfileBirthdayInfoContacts);
                    break;
                }
                if ((privacyRules.get(i2) instanceof TLRPC.TL_privacyValueAllowAll) || (privacyRules.get(i2) instanceof TLRPC.TL_privacyValueDisallowAll)) {
                    string = LocaleController.getString(C2888R.string.EditProfileBirthdayInfo);
                }
                i2++;
            }
        }
        linksTextView.setText(AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(string, new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda88
            @Override // java.lang.Runnable
            public final void run() {
                AlertsCreator.m8515$r8$lambda$jxdqVwFjTYS1sHTPfF0xHfq5C4(privacyRules);
            }
        }), true, AndroidUtilities.m1124dp(2.6666667f), AndroidUtilities.m1124dp(0.66f)));
    }

    /* JADX INFO: renamed from: $r8$lambda$jxdq-VwFjTYS1sHTPfF0xHfq5C4, reason: not valid java name */
    public static /* synthetic */ void m8515$r8$lambda$jxdqVwFjTYS1sHTPfF0xHfq5C4(ArrayList arrayList) {
        BaseFragment lastFragment;
        if (arrayList == null || (lastFragment = LaunchActivity.getLastFragment()) == null) {
            return;
        }
        BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
        bottomSheetParams.transitionFromLeft = true;
        bottomSheetParams.allowNestedScroll = false;
        lastFragment.showAsSheet(new PrivacyControlActivity(11), bottomSheetParams);
    }

    public static /* synthetic */ void $r8$lambda$DOMHJDS1UCinXkRzgBn4g92ZXGE(NumberPicker numberPicker, int i, Runnable runnable, View view) {
        numberPicker.setValue(i);
        runnable.run();
    }

    public static /* synthetic */ void $r8$lambda$dae2ADW7GsRFa5oeGfT_OuyuwlI(NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, int i, BottomSheet.Builder builder, Utilities.Callback callback, View view) {
        TL_account.TL_birthday tL_birthday = new TL_account.TL_birthday();
        tL_birthday.day = numberPicker.getValue();
        tL_birthday.month = numberPicker2.getValue() + 1;
        if (numberPicker3.getValue() != i) {
            tL_birthday.flags |= 1;
            tL_birthday.year = numberPicker3.getValue();
        }
        builder.getDismissRunnable().run();
        callback.run(tL_birthday);
    }

    public static /* synthetic */ void $r8$lambda$Hwvk0DMtJf8kV_WFNf1TbvayAPw(BottomSheet.Builder builder, Utilities.Callback callback, View view) {
        builder.getDismissRunnable().run();
        callback.run(null);
    }

    public static BottomSheet.Builder createFormattedDatePickerDialog(Context context, final FormattedDatePickerDelegate formattedDatePickerDelegate, final Runnable runnable, final Theme.ResourcesProvider resourcesProvider) {
        if (context == null) {
            return null;
        }
        ScheduleDatePickerColors scheduleDatePickerColors = new ScheduleDatePickerColors(resourcesProvider);
        final BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        builder.setApplyBottomPadding(false);
        long jCurrentTimeMillis = System.currentTimeMillis();
        final Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(jCurrentTimeMillis);
        final int i = calendar.get(1);
        final NumberPicker numberPicker = new NumberPicker(context, resourcesProvider);
        numberPicker.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker.setTextOffset(AndroidUtilities.m1124dp(10.0f));
        numberPicker.setItemCount(5);
        numberPicker.setMinValue(1);
        numberPicker.setMaxValue(31);
        numberPicker.setWrapSelectorWheel(false);
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda29
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i2) {
                return AlertsCreator.$r8$lambda$vgMgXmoewTtWFlKUkMPXNiqZgf8(i2);
            }
        });
        final NumberPicker numberPicker2 = new NumberPicker(context, resourcesProvider);
        numberPicker2.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker2.setTextOffset(-AndroidUtilities.m1124dp(10.0f));
        numberPicker2.setItemCount(5);
        numberPicker2.setMinValue(0);
        numberPicker2.setMaxValue(239);
        numberPicker2.setValue(120);
        numberPicker2.setWrapSelectorWheel(false);
        numberPicker2.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda32
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i2) {
                return AlertsCreator.$r8$lambda$XnrcXJWfnSC6vyHA6db71n0v4cw(calendar, i, i2);
            }
        });
        final NumberPicker numberPicker3 = new NumberPicker(context, resourcesProvider);
        numberPicker3.setContentDescriptionCallback(new Utilities.CallbackReturn() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda33
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return LocaleController.formatPluralString("Hours", ((Integer) obj).intValue(), new Object[0]);
            }
        });
        numberPicker3.setWrapSelectorWheel(true);
        numberPicker3.setAllItemsCount(24);
        numberPicker3.setItemCount(5);
        numberPicker3.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker3.setTextOffset(AndroidUtilities.m1124dp(10.0f));
        numberPicker3.setMinValue(0);
        numberPicker3.setMaxValue(23);
        numberPicker3.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda34
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i2) {
                return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i2));
            }
        });
        final NumberPicker numberPicker4 = new NumberPicker(context, resourcesProvider);
        numberPicker4.setContentDescriptionCallback(new Utilities.CallbackReturn() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda35
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return LocaleController.formatPluralString("Minutes", ((Integer) obj).intValue(), new Object[0]);
            }
        });
        numberPicker4.setWrapSelectorWheel(true);
        numberPicker4.setAllItemsCount(60);
        numberPicker4.setItemCount(5);
        numberPicker4.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker4.setTextOffset(-AndroidUtilities.m1124dp(10.0f));
        numberPicker4.setMinValue(0);
        numberPicker4.setMaxValue(59);
        numberPicker4.setValue(0);
        numberPicker4.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda36
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i2) {
                return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i2));
            }
        });
        calendar.setTimeInMillis(jCurrentTimeMillis);
        numberPicker4.setValue(calendar.get(12));
        numberPicker3.setValue(calendar.get(11));
        numberPicker.setValue(calendar.get(5));
        numberPicker2.setValue(calendar.get(2) + 120);
        Text maxWidth = new Text(LocaleController.formatString(C2888R.string.formatDateAtTime, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET).trim(), 16.0f).setMaxWidth(AndroidUtilities.m1124dp(100.0f));
        Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
        maxWidth.align(alignment).multiline(1).setColor(scheduleDatePickerColors.textColor);
        final Text color = new Text(":", 18.0f).setMaxWidth(AndroidUtilities.m1124dp(100.0f)).align(alignment).multiline(1).setColor(scheduleDatePickerColors.textColor);
        FrameLayout frameLayout = new FrameLayout(context);
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.37
            boolean ignoreLayout = false;

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                this.ignoreLayout = true;
                Point point = AndroidUtilities.displaySize;
                int i4 = point.x > point.y ? 3 : 5;
                numberPicker2.setItemCount(i4);
                numberPicker.setItemCount(i4);
                numberPicker3.setItemCount(i4);
                numberPicker4.setItemCount(i4);
                numberPicker2.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i4;
                numberPicker.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i4;
                numberPicker3.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i4;
                numberPicker4.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i4;
                this.ignoreLayout = false;
                super.onMeasure(i2, i3);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        linearLayout.setOrientation(1);
        frameLayout.addView(linearLayout, LayoutHelper.createFrame(-1, -1.0f));
        FrameLayout frameLayout2 = new FrameLayout(context);
        linearLayout.addView(frameLayout2, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString(C2888R.string.RelativeDateAddDate));
        textView.setTextColor(scheduleDatePickerColors.textColor);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        frameLayout2.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda37
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return AlertsCreator.$r8$lambda$AgRbcFSpTvswKxyQyaoN9u1UQ7w(view, motionEvent);
            }
        });
        LinearLayout linearLayout2 = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.38
            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                color.draw(canvas, numberPicker4.getX() - AndroidUtilities.m1124dp(50.0f), getHeight() / 2.0f);
            }
        };
        linearLayout2.setOrientation(0);
        linearLayout2.setWeightSum(1.0f);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        final ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
        final String[] strArr = {LocaleController.getString(C2888R.string.DateFormatOptionNone), LocaleController.getString(C2888R.string.DateFormatOptionRelative), LocaleController.getString(C2888R.string.DateFormatOptionShortTime), LocaleController.getString(C2888R.string.DateFormatOptionLongTime), LocaleController.getString(C2888R.string.DateFormatOptionShortDate), LocaleController.getString(C2888R.string.DateFormatOptionLongDate), LocaleController.getString(C2888R.string.DateFormatOptionDayOfWeek)};
        final int[] iArr = {0, 1, 2, 4, 8, 16, 32};
        final int[] iArr2 = {5};
        int iBlendOver = Theme.blendOver(scheduleDatePickerColors.backgroundColor, Theme.multAlpha(scheduleDatePickerColors.textColor, 0.075f));
        int iMultAlpha = Theme.multAlpha(scheduleDatePickerColors.textColor, 0.1f);
        final FrameLayout frameLayout3 = new FrameLayout(context);
        final TextView textView2 = new TextView(context);
        textView2.setTextSize(1, 13.0f);
        textView2.setTextColor(scheduleDatePickerColors.textColor);
        textView2.setPadding(AndroidUtilities.m1124dp(12.0f), 0, AndroidUtilities.m1124dp(12.0f), 0);
        textView2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(14.0f), iBlendOver, Theme.blendOver(iBlendOver, iMultAlpha)));
        textView2.setGravity(17);
        final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                AlertsCreator.$r8$lambda$zDHMSEoTUqD9pDoec7oUddvb9cE(strArr, iArr2, textView2, buttonWithCounterView, numberPicker, numberPicker2, numberPicker3, numberPicker4, iArr);
            }
        };
        frameLayout3.addView(textView2, LayoutHelper.createFrame(-2, 28.0f, 1, 32.0f, 4.0f, 32.0f, 5.0f));
        linearLayout.addView(frameLayout3, LayoutHelper.createLinear(-1, -2));
        NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda39
            @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker5, int i2, int i3) {
                AlertsCreator.checkFormattedDateInput(buttonWithCounterView, numberPicker, numberPicker2, numberPicker3, numberPicker4, iArr[iArr2[0]]);
            }
        };
        linearLayout2.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.2f));
        linearLayout2.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.4f));
        linearLayout2.addView(numberPicker3, LayoutHelper.createLinear(0, 270, 0.2f));
        linearLayout2.addView(numberPicker4, LayoutHelper.createLinear(0, 270, 0.2f));
        numberPicker.setOnValueChangedListener(onValueChangeListener);
        numberPicker2.setOnValueChangedListener(onValueChangeListener);
        numberPicker3.setOnValueChangedListener(onValueChangeListener);
        numberPicker4.setOnValueChangedListener(onValueChangeListener);
        final boolean[] zArr = {true};
        buttonWithCounterView.setPadding(AndroidUtilities.m1124dp(34.0f), 0, AndroidUtilities.m1124dp(34.0f), 0);
        buttonWithCounterView.setRound();
        linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda40
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.m8503$r8$lambda$ZKt3oePppvZ2EW95aY8wfSJhj0(zArr, iArr, iArr2, numberPicker, numberPicker2, numberPicker3, numberPicker4, formattedDatePickerDelegate, builder, view);
            }
        });
        builder.setCustomView(frameLayout);
        final BottomSheet bottomSheetShow = builder.show();
        bottomSheetShow.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda30
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AlertsCreator.$r8$lambda$HMhPVv1GF14lZnitZ6DmItDaVXM(runnable, zArr, dialogInterface);
            }
        });
        bottomSheetShow.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
        bottomSheetShow.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda31
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.$r8$lambda$XqRX6J71xIOIsy4oj_1MLwA_Fcc(bottomSheetShow, resourcesProvider, frameLayout3, strArr, iArr2, runnable2, view);
            }
        });
        runnable2.run();
        return builder;
    }

    public static /* synthetic */ String $r8$lambda$vgMgXmoewTtWFlKUkMPXNiqZgf8(int i) {
        return _UrlKt.FRAGMENT_ENCODE_SET + i;
    }

    public static /* synthetic */ String $r8$lambda$XnrcXJWfnSC6vyHA6db71n0v4cw(Calendar calendar, int i, int i2) {
        calendar.clear();
        calendar.set(1, i);
        calendar.set(2, 0);
        calendar.add(2, i2 - 120);
        if (calendar.get(1) == i) {
            return LocaleController.getInstance().getFormatterMonthOnly().format(calendar.getTimeInMillis());
        }
        return LocaleController.getInstance().getFormatterMonthYear().format(calendar.getTimeInMillis());
    }

    public static /* synthetic */ boolean $r8$lambda$AgRbcFSpTvswKxyQyaoN9u1UQ7w(View view, MotionEvent motionEvent) {
        return true;
    }

    public static /* synthetic */ void $r8$lambda$zDHMSEoTUqD9pDoec7oUddvb9cE(String[] strArr, int[] iArr, TextView textView, ButtonWithCounterView buttonWithCounterView, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, NumberPicker numberPicker4, int[] iArr2) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) LocaleController.getString(C2888R.string.DateFormatOption));
        spannableStringBuilder.append((CharSequence) " ");
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) strArr[iArr[0]]);
        spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold()), length, spannableStringBuilder.length(), 33);
        spannableStringBuilder.append((CharSequence) " v");
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.arrows_select);
        coloredImageSpan.spaceScaleX = 0.7f;
        coloredImageSpan.translate(AndroidUtilities.m1124dp(-1.33f), AndroidUtilities.m1124dp(0.0f));
        coloredImageSpan.setAlpha(0.75f);
        spannableStringBuilder.setSpan(coloredImageSpan, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        textView.setText(spannableStringBuilder);
        checkFormattedDateInput(buttonWithCounterView, numberPicker, numberPicker2, numberPicker3, numberPicker4, iArr2[iArr[0]]);
    }

    /* JADX INFO: renamed from: $r8$lambda$ZK-t3oePppvZ2EW95aY8wfSJhj0, reason: not valid java name */
    public static /* synthetic */ void m8503$r8$lambda$ZKt3oePppvZ2EW95aY8wfSJhj0(boolean[] zArr, int[] iArr, int[] iArr2, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, NumberPicker numberPicker4, FormattedDatePickerDelegate formattedDatePickerDelegate, BottomSheet.Builder builder, View view) {
        zArr[0] = false;
        int i = iArr[iArr2[0]];
        formattedDatePickerDelegate.didSelectDate((int) (checkFormattedDateInput(null, numberPicker, numberPicker2, numberPicker3, numberPicker4, i) / 1000), i);
        builder.getDismissRunnable().run();
    }

    public static /* synthetic */ void $r8$lambda$HMhPVv1GF14lZnitZ6DmItDaVXM(Runnable runnable, boolean[] zArr, DialogInterface dialogInterface) {
        if (runnable == null || !zArr[0]) {
            return;
        }
        runnable.run();
    }

    public static /* synthetic */ void $r8$lambda$XqRX6J71xIOIsy4oj_1MLwA_Fcc(BottomSheet bottomSheet, Theme.ResourcesProvider resourcesProvider, FrameLayout frameLayout, String[] strArr, final int[] iArr, final Runnable runnable, View view) {
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(bottomSheet.container, resourcesProvider, frameLayout);
        for (final int i = 0; i < strArr.length; i++) {
            itemOptionsMakeOptions.add(strArr[i], new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda69
                @Override // java.lang.Runnable
                public final void run() {
                    AlertsCreator.$r8$lambda$rFi43mCGjzM1q53b73cYNcOlT9g(iArr, i, runnable);
                }
            });
        }
        itemOptionsMakeOptions.setGravity(1);
        itemOptionsMakeOptions.show();
    }

    public static /* synthetic */ void $r8$lambda$rFi43mCGjzM1q53b73cYNcOlT9g(int[] iArr, int i, Runnable runnable) {
        iArr[0] = i;
        runnable.run();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [android.view.ViewGroup, android.widget.LinearLayout, org.telegram.ui.Components.AlertsCreator$41] */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r9v0, types: [org.telegram.ui.ActionBar.BottomSheet$Builder] */
    public static BottomSheet.Builder createStatusUntilDatePickerDialog(Context context, long j, final StatusUntilDatePickerDelegate statusUntilDatePickerDelegate) {
        float f;
        ?? r16;
        if (context == null) {
            return null;
        }
        ScheduleDatePickerColors scheduleDatePickerColors = new ScheduleDatePickerColors();
        final ?? builder = new BottomSheet.Builder(context, false);
        builder.setApplyBottomPadding(false);
        final NumberPicker numberPicker = new NumberPicker(context);
        numberPicker.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker.setTextOffset(AndroidUtilities.m1124dp(10.0f));
        numberPicker.setItemCount(5);
        final NumberPicker numberPicker2 = new NumberPicker(context) { // from class: org.telegram.ui.Components.AlertsCreator.39
            @Override // org.telegram.p029ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i) {
                return LocaleController.formatPluralString("Hours", i, new Object[0]);
            }
        };
        numberPicker2.setItemCount(5);
        numberPicker2.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker2.setTextOffset(-AndroidUtilities.m1124dp(10.0f));
        final NumberPicker numberPicker3 = new NumberPicker(context) { // from class: org.telegram.ui.Components.AlertsCreator.40
            @Override // org.telegram.p029ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i) {
                return LocaleController.formatPluralString("Minutes", i, new Object[0]);
            }
        };
        numberPicker3.setItemCount(5);
        numberPicker3.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker3.setTextOffset(-AndroidUtilities.m1124dp(34.0f));
        ?? r11 = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.41
            boolean ignoreLayout = false;

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                this.ignoreLayout = true;
                Point point = AndroidUtilities.displaySize;
                int i3 = point.x > point.y ? 3 : 5;
                numberPicker.setItemCount(i3);
                numberPicker2.setItemCount(i3);
                numberPicker3.setItemCount(i3);
                numberPicker.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i3;
                numberPicker2.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i3;
                numberPicker3.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i3;
                this.ignoreLayout = false;
                super.onMeasure(i, i2);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        r11.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        r11.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString(C2888R.string.SetEmojiStatusUntilTitle));
        textView.setTextColor(scheduleDatePickerColors.textColor);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda219
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return AlertsCreator.$r8$lambda$3U3TlkCDMYKWAapsrl4B9w6xpmc(view, motionEvent);
            }
        });
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        linearLayout.setWeightSum(1.0f);
        r11.addView(linearLayout, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        final long jCurrentTimeMillis = System.currentTimeMillis();
        final Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(jCurrentTimeMillis);
        final int i = calendar.get(1);
        final int i2 = calendar.get(6);
        TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.42
            @Override // android.widget.TextView, android.view.View
            public CharSequence getAccessibilityClassName() {
                return Button.class.getName();
            }
        };
        linearLayout.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.5f));
        numberPicker.setMinValue(0);
        numberPicker.setMaxValue(365);
        numberPicker.setWrapSelectorWheel(false);
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda220
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i3) {
                return AlertsCreator.m8516$r8$lambda$kGurdwCjltjG5GLEUXwRFqcEuM(jCurrentTimeMillis, calendar, i, i2, i3);
            }
        });
        NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda221
            @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker4, int i3, int i4) {
                AlertsCreator.checkScheduleDate(null, null, 0, numberPicker, numberPicker2, numberPicker3);
            }
        };
        numberPicker.setOnValueChangedListener(onValueChangeListener);
        numberPicker2.setMinValue(0);
        numberPicker2.setMaxValue(23);
        linearLayout.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.2f));
        numberPicker2.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda222
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i3) {
                return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i3));
            }
        });
        numberPicker2.setOnValueChangedListener(onValueChangeListener);
        numberPicker3.setMinValue(0);
        numberPicker3.setMaxValue(59);
        numberPicker3.setValue(0);
        numberPicker3.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda223
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i3) {
                return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i3));
            }
        });
        linearLayout.addView(numberPicker3, LayoutHelper.createLinear(0, 270, 0.3f));
        numberPicker3.setOnValueChangedListener(onValueChangeListener);
        if (j <= 0 || j == 2147483646) {
            f = 34.0f;
            r16 = r11;
        } else {
            long j2 = 1000 * j;
            f = 34.0f;
            ?? r162 = r11;
            calendar.setTimeInMillis(System.currentTimeMillis());
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            calendar.set(11, 0);
            int timeInMillis = (int) ((j2 - calendar.getTimeInMillis()) / 86400000);
            calendar.setTimeInMillis(j2);
            r16 = r162;
            if (timeInMillis >= 0) {
                numberPicker3.setValue(calendar.get(12));
                numberPicker2.setValue(calendar.get(11));
                numberPicker.setValue(timeInMillis);
                r16 = r162;
            }
        }
        checkScheduleDate(null, null, 0, numberPicker, numberPicker2, numberPicker3);
        textView2.setPadding(AndroidUtilities.m1124dp(f), 0, AndroidUtilities.m1124dp(f), 0);
        textView2.setGravity(17);
        textView2.setTextColor(scheduleDatePickerColors.buttonTextColor);
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setBackgroundDrawable(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(8.0f), scheduleDatePickerColors.buttonBackgroundColor, scheduleDatePickerColors.buttonBackgroundPressedColor));
        textView2.setText(LocaleController.getString(C2888R.string.SetEmojiStatusUntilButton));
        ?? r1 = r16;
        r1.addView(textView2, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda224
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.$r8$lambda$5JHbmIrWUDdGIOOLuEzPAIL1aqU(numberPicker, numberPicker2, numberPicker3, calendar, statusUntilDatePickerDelegate, builder, view);
            }
        });
        builder.setCustomView(r1);
        BottomSheet bottomSheetShow = builder.show();
        bottomSheetShow.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
        bottomSheetShow.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
        return builder;
    }

    public static /* synthetic */ boolean $r8$lambda$3U3TlkCDMYKWAapsrl4B9w6xpmc(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: renamed from: $r8$lambda$kGurdwCjltjG5-GLEUXwRFqcEuM, reason: not valid java name */
    public static /* synthetic */ String m8516$r8$lambda$kGurdwCjltjG5GLEUXwRFqcEuM(long j, Calendar calendar, int i, int i2, int i3) {
        if (i3 == 0) {
            return LocaleController.getString(C2888R.string.MessageScheduleToday);
        }
        long j2 = j + (((long) i3) * 86400000);
        calendar.setTimeInMillis(j2);
        int i4 = calendar.get(1);
        int i5 = calendar.get(6);
        if (i4 != i || i5 >= i2 + 7) {
            if (i4 == i) {
                return LocaleController.getInstance().getFormatterScheduleDay().format(j2);
            }
            return LocaleController.getInstance().getFormatterScheduleYear().format(j2);
        }
        return LocaleController.getInstance().getFormatterWeek().format(j2) + ", " + LocaleController.getInstance().getFormatterScheduleDay().format(j2);
    }

    public static /* synthetic */ void $r8$lambda$5JHbmIrWUDdGIOOLuEzPAIL1aqU(NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, Calendar calendar, StatusUntilDatePickerDelegate statusUntilDatePickerDelegate, BottomSheet.Builder builder, View view) {
        boolean zCheckScheduleDate = checkScheduleDate(null, null, 0, numberPicker, numberPicker2, numberPicker3);
        calendar.setTimeInMillis(System.currentTimeMillis() + (((long) numberPicker.getValue()) * 86400000));
        calendar.set(11, numberPicker2.getValue());
        calendar.set(12, numberPicker3.getValue());
        if (zCheckScheduleDate) {
            calendar.set(13, 0);
        }
        statusUntilDatePickerDelegate.didSelectDate((int) (calendar.getTimeInMillis() / 1000));
        builder.getDismissRunnable().run();
    }

    public static BottomSheet.Builder createAutoDeleteDatePickerDialog(Context context, int i, Theme.ResourcesProvider resourcesProvider, final ScheduleDatePickerDelegate scheduleDatePickerDelegate) {
        if (context == null) {
            return null;
        }
        ScheduleDatePickerColors scheduleDatePickerColors = new ScheduleDatePickerColors(resourcesProvider);
        final BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        builder.setApplyBottomPadding(false);
        final int[] iArr = {0, 1440, 2880, 4320, 5760, 7200, 8640, 10080, 20160, 30240, 44640, 89280, 133920, 178560, 223200, 267840, 525600};
        final NumberPicker numberPicker = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.43
            @Override // org.telegram.p029ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i2) {
                int i3 = iArr[i2];
                if (i3 == 0) {
                    return LocaleController.getString(C2888R.string.AutoDeleteNever);
                }
                if (i3 < 10080) {
                    return LocaleController.formatPluralString("Days", i3 / 1440, new Object[0]);
                }
                if (i3 < 44640) {
                    return LocaleController.formatPluralString("Weeks", i3 / 1440, new Object[0]);
                }
                if (i3 < 525600) {
                    return LocaleController.formatPluralString("Months", i3 / 10080, new Object[0]);
                }
                return LocaleController.formatPluralString("Years", ((i3 * 5) / 31) * 1440, new Object[0]);
            }
        };
        numberPicker.setMinValue(0);
        numberPicker.setMaxValue(16);
        numberPicker.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker.setValue(0);
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda135
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i2) {
                return AlertsCreator.$r8$lambda$rVegtbdm2c9Oi1jkXqY_B3NmfwE(iArr, i2);
            }
        });
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.44
            boolean ignoreLayout = false;

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                this.ignoreLayout = true;
                Point point = AndroidUtilities.displaySize;
                int i4 = point.x > point.y ? 3 : 5;
                numberPicker.setItemCount(i4);
                numberPicker.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i4;
                this.ignoreLayout = false;
                super.onMeasure(i2, i3);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        boolean z = true;
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString(C2888R.string.AutoDeleteAfteTitle));
        textView.setTextColor(scheduleDatePickerColors.textColor);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda136
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return AlertsCreator.m8494$r8$lambda$QushYoGP4CKR_AB74S_xQYWHUQ(view, motionEvent);
            }
        });
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setWeightSum(1.0f);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        final AnimatedTextView animatedTextView = new AnimatedTextView(context, z, z, false) { // from class: org.telegram.ui.Components.AlertsCreator.45
            @Override // android.view.View
            public CharSequence getAccessibilityClassName() {
                return Button.class.getName();
            }
        };
        linearLayout2.addView(numberPicker, LayoutHelper.createLinear(0, 270, 1.0f));
        animatedTextView.setPadding(0, 0, 0, 0);
        animatedTextView.setGravity(17);
        animatedTextView.setTextColor(scheduleDatePickerColors.buttonTextColor);
        animatedTextView.setTextSize(AndroidUtilities.m1124dp(14.0f));
        animatedTextView.setTypeface(AndroidUtilities.bold());
        animatedTextView.setBackgroundDrawable(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(8.0f), scheduleDatePickerColors.buttonBackgroundColor, scheduleDatePickerColors.buttonBackgroundPressedColor));
        linearLayout.addView(animatedTextView, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
        animatedTextView.setText(LocaleController.getString(C2888R.string.DisableAutoDeleteTimer));
        numberPicker.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda137
            @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker2, int i2, int i3) {
                AlertsCreator.$r8$lambda$c6YBgE_fdYWSn3EwwXEkgCj9EJ4(animatedTextView, numberPicker2, i2, i3);
            }
        });
        animatedTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda138
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.$r8$lambda$j8ki23YF_xsRcpOhkxGxZNKou9I(iArr, numberPicker, scheduleDatePickerDelegate, builder, view);
            }
        });
        builder.setCustomView(linearLayout);
        BottomSheet bottomSheetShow = builder.show();
        bottomSheetShow.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
        bottomSheetShow.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
        return builder;
    }

    public static /* synthetic */ String $r8$lambda$rVegtbdm2c9Oi1jkXqY_B3NmfwE(int[] iArr, int i) {
        int i2 = iArr[i];
        if (i2 == 0) {
            return LocaleController.getString(C2888R.string.AutoDeleteNever);
        }
        if (i2 < 10080) {
            return LocaleController.formatPluralString("Days", i2 / 1440, new Object[0]);
        }
        if (i2 < 44640) {
            return LocaleController.formatPluralString("Weeks", i2 / 10080, new Object[0]);
        }
        if (i2 < 525600) {
            return LocaleController.formatPluralString("Months", i2 / 44640, new Object[0]);
        }
        return LocaleController.formatPluralString("Years", i2 / 525600, new Object[0]);
    }

    /* JADX INFO: renamed from: $r8$lambda$QushYoGP4CK-R_AB74S_xQYWHUQ, reason: not valid java name */
    public static /* synthetic */ boolean m8494$r8$lambda$QushYoGP4CKR_AB74S_xQYWHUQ(View view, MotionEvent motionEvent) {
        return true;
    }

    public static /* synthetic */ void $r8$lambda$c6YBgE_fdYWSn3EwwXEkgCj9EJ4(AnimatedTextView animatedTextView, NumberPicker numberPicker, int i, int i2) {
        try {
            if (i2 == 0) {
                animatedTextView.setText(LocaleController.getString(C2888R.string.DisableAutoDeleteTimer));
            } else {
                animatedTextView.setText(LocaleController.getString(C2888R.string.SetAutoDeleteTimer));
            }
        } catch (Exception unused) {
        }
    }

    public static /* synthetic */ void $r8$lambda$j8ki23YF_xsRcpOhkxGxZNKou9I(int[] iArr, NumberPicker numberPicker, ScheduleDatePickerDelegate scheduleDatePickerDelegate, BottomSheet.Builder builder, View view) {
        scheduleDatePickerDelegate.didSelectDate(true, iArr[numberPicker.getValue()], 0);
        builder.getDismissRunnable().run();
    }

    public static BottomSheet.Builder createSoundFrequencyPickerDialog(Context context, int i, int i2, final SoundFrequencyDelegate soundFrequencyDelegate, Theme.ResourcesProvider resourcesProvider) {
        if (context == null) {
            return null;
        }
        ScheduleDatePickerColors scheduleDatePickerColors = new ScheduleDatePickerColors(resourcesProvider);
        final BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        builder.setApplyBottomPadding(false);
        final NumberPicker numberPicker = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.46
            @Override // org.telegram.p029ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i3) {
                return LocaleController.formatPluralString("Times", i3 + 1, new Object[0]);
            }
        };
        numberPicker.setMinValue(0);
        numberPicker.setMaxValue(10);
        numberPicker.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker.setValue(i - 1);
        numberPicker.setWrapSelectorWheel(false);
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda213
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i3) {
                return LocaleController.formatPluralString("Times", i3 + 1, new Object[0]);
            }
        });
        final NumberPicker numberPicker2 = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.47
            @Override // org.telegram.p029ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i3) {
                return LocaleController.formatPluralString("Times", i3 + 1, new Object[0]);
            }
        };
        numberPicker2.setMinValue(0);
        numberPicker2.setMaxValue(10);
        numberPicker2.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker2.setValue((i2 / 60) - 1);
        numberPicker2.setWrapSelectorWheel(false);
        numberPicker2.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda214
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i3) {
                return LocaleController.formatPluralString("Minutes", i3 + 1, new Object[0]);
            }
        });
        final NumberPicker numberPicker3 = new NumberPicker(context, resourcesProvider);
        numberPicker3.setMinValue(0);
        numberPicker3.setMaxValue(0);
        numberPicker3.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker3.setValue(0);
        numberPicker3.setWrapSelectorWheel(false);
        numberPicker3.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda215
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i3) {
                return LocaleController.getString(C2888R.string.NotificationsFrequencyDivider);
            }
        });
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.48
            boolean ignoreLayout = false;

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i3, int i4) {
                this.ignoreLayout = true;
                Point point = AndroidUtilities.displaySize;
                int i5 = point.x > point.y ? 3 : 5;
                numberPicker.setItemCount(i5);
                numberPicker.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i5;
                numberPicker2.setItemCount(i5);
                numberPicker2.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i5;
                numberPicker3.setItemCount(i5);
                numberPicker3.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i5;
                this.ignoreLayout = false;
                super.onMeasure(i3, i4);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString(C2888R.string.NotfificationsFrequencyTitle));
        textView.setTextColor(scheduleDatePickerColors.textColor);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda216
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return AlertsCreator.m8483$r8$lambda$EZd5d2giqZcc9KwD4rbpZc23Z0(view, motionEvent);
            }
        });
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setWeightSum(1.0f);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.49
            @Override // android.widget.TextView, android.view.View
            public CharSequence getAccessibilityClassName() {
                return Button.class.getName();
            }
        };
        linearLayout2.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.4f));
        linearLayout2.addView(numberPicker3, LayoutHelper.createLinear(0, -2, 0.2f, 16));
        linearLayout2.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.4f));
        textView2.setPadding(AndroidUtilities.m1124dp(34.0f), 0, AndroidUtilities.m1124dp(34.0f), 0);
        textView2.setGravity(17);
        textView2.setTextColor(scheduleDatePickerColors.buttonTextColor);
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setBackgroundDrawable(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(8.0f), scheduleDatePickerColors.buttonBackgroundColor, scheduleDatePickerColors.buttonBackgroundPressedColor));
        textView2.setText(LocaleController.getString(C2888R.string.AutoDeleteConfirm));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
        NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda217
            @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker4, int i3, int i4) {
                AlertsCreator.$r8$lambda$dcpkZwOG7Ko96J_c6pHf4w9uIRI(numberPicker4, i3, i4);
            }
        };
        numberPicker.setOnValueChangedListener(onValueChangeListener);
        numberPicker2.setOnValueChangedListener(onValueChangeListener);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda218
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.$r8$lambda$blturr9YSVqD2zP1wlqtiwnQD0k(numberPicker, numberPicker2, soundFrequencyDelegate, builder, view);
            }
        });
        builder.setCustomView(linearLayout);
        BottomSheet bottomSheetShow = builder.show();
        bottomSheetShow.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
        bottomSheetShow.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
        return builder;
    }

    /* JADX INFO: renamed from: $r8$lambda$EZd5d2giqZcc9Kw-D4rbpZc23Z0, reason: not valid java name */
    public static /* synthetic */ boolean m8483$r8$lambda$EZd5d2giqZcc9KwD4rbpZc23Z0(View view, MotionEvent motionEvent) {
        return true;
    }

    public static /* synthetic */ void $r8$lambda$blturr9YSVqD2zP1wlqtiwnQD0k(NumberPicker numberPicker, NumberPicker numberPicker2, SoundFrequencyDelegate soundFrequencyDelegate, BottomSheet.Builder builder, View view) {
        soundFrequencyDelegate.didSelectValues(numberPicker.getValue() + 1, (numberPicker2.getValue() + 1) * 60);
        builder.getDismissRunnable().run();
    }

    public static BottomSheet.Builder createMuteForPickerDialog(Context context, Theme.ResourcesProvider resourcesProvider, final ScheduleDatePickerDelegate scheduleDatePickerDelegate) {
        if (context == null) {
            return null;
        }
        ScheduleDatePickerColors scheduleDatePickerColors = new ScheduleDatePickerColors(resourcesProvider);
        final BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        builder.setApplyBottomPadding(false);
        final int[] iArr = {30, 60, 120, 180, 480, 1440, 2880, 4320, 5760, 7200, 8640, 10080, 20160, 30240, 44640, 89280, 133920, 178560, 223200, 267840, 525600};
        final NumberPicker numberPicker = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.50
            @Override // org.telegram.p029ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i) {
                int i2 = iArr[i];
                if (i2 == 0) {
                    return LocaleController.getString(C2888R.string.MuteNever);
                }
                if (i2 < 60) {
                    return LocaleController.formatPluralString("Minutes", i2, new Object[0]);
                }
                if (i2 < 1440) {
                    return LocaleController.formatPluralString("Hours", i2 / 60, new Object[0]);
                }
                if (i2 < 10080) {
                    return LocaleController.formatPluralString("Days", i2 / 1440, new Object[0]);
                }
                if (i2 < 44640) {
                    return LocaleController.formatPluralString("Weeks", i2 / 10080, new Object[0]);
                }
                if (i2 < 525600) {
                    return LocaleController.formatPluralString("Months", i2 / 44640, new Object[0]);
                }
                return LocaleController.formatPluralString("Years", i2 / 525600, new Object[0]);
            }
        };
        numberPicker.setMinValue(0);
        numberPicker.setMaxValue(20);
        numberPicker.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker.setValue(0);
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda112
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i) {
                return AlertsCreator.$r8$lambda$OT4iuOnBVhLnTaguJ1oeXpICLJQ(iArr, i);
            }
        });
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.51
            boolean ignoreLayout = false;

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                this.ignoreLayout = true;
                Point point = AndroidUtilities.displaySize;
                int i3 = point.x > point.y ? 3 : 5;
                numberPicker.setItemCount(i3);
                numberPicker.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i3;
                this.ignoreLayout = false;
                super.onMeasure(i, i2);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString(C2888R.string.MuteForAlert));
        textView.setTextColor(scheduleDatePickerColors.textColor);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda113
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return AlertsCreator.$r8$lambda$JakVSAwGNJ9xG0FJf033Tm3AqqM(view, motionEvent);
            }
        });
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setWeightSum(1.0f);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.52
            @Override // android.widget.TextView, android.view.View
            public CharSequence getAccessibilityClassName() {
                return Button.class.getName();
            }
        };
        linearLayout2.addView(numberPicker, LayoutHelper.createLinear(0, 270, 1.0f));
        numberPicker.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda114
            @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker2, int i, int i2) {
                AlertsCreator.$r8$lambda$G7BqcTHA3WcsF5N2y3cKgYkf0Ys(numberPicker2, i, i2);
            }
        });
        textView2.setPadding(AndroidUtilities.m1124dp(34.0f), 0, AndroidUtilities.m1124dp(34.0f), 0);
        textView2.setGravity(17);
        textView2.setTextColor(scheduleDatePickerColors.buttonTextColor);
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setBackgroundDrawable(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(8.0f), scheduleDatePickerColors.buttonBackgroundColor, scheduleDatePickerColors.buttonBackgroundPressedColor));
        textView2.setText(LocaleController.getString(C2888R.string.AutoDeleteConfirm));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda115
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.$r8$lambda$COAkPCUhiovWkSNRVaBs02vRbNg(iArr, numberPicker, scheduleDatePickerDelegate, builder, view);
            }
        });
        builder.setCustomView(linearLayout);
        BottomSheet bottomSheetShow = builder.show();
        bottomSheetShow.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
        bottomSheetShow.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
        return builder;
    }

    public static /* synthetic */ String $r8$lambda$OT4iuOnBVhLnTaguJ1oeXpICLJQ(int[] iArr, int i) {
        int i2 = iArr[i];
        if (i2 == 0) {
            return LocaleController.getString(C2888R.string.MuteNever);
        }
        if (i2 < 60) {
            return LocaleController.formatPluralString("Minutes", i2, new Object[0]);
        }
        if (i2 < 1440) {
            return LocaleController.formatPluralString("Hours", i2 / 60, new Object[0]);
        }
        if (i2 < 10080) {
            return LocaleController.formatPluralString("Days", i2 / 1440, new Object[0]);
        }
        if (i2 < 44640) {
            return LocaleController.formatPluralString("Weeks", i2 / 10080, new Object[0]);
        }
        if (i2 < 525600) {
            return LocaleController.formatPluralString("Months", i2 / 44640, new Object[0]);
        }
        return LocaleController.formatPluralString("Years", i2 / 525600, new Object[0]);
    }

    public static /* synthetic */ boolean $r8$lambda$JakVSAwGNJ9xG0FJf033Tm3AqqM(View view, MotionEvent motionEvent) {
        return true;
    }

    public static /* synthetic */ void $r8$lambda$COAkPCUhiovWkSNRVaBs02vRbNg(int[] iArr, NumberPicker numberPicker, ScheduleDatePickerDelegate scheduleDatePickerDelegate, BottomSheet.Builder builder, View view) {
        scheduleDatePickerDelegate.didSelectDate(true, iArr[numberPicker.getValue()] * 60, 0);
        builder.getDismissRunnable().run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkCalendarDate(long j, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        int i = 1;
        int i2 = calendar.get(1);
        int i3 = calendar.get(2);
        int i4 = calendar.get(5);
        calendar.setTimeInMillis(System.currentTimeMillis());
        int i5 = calendar.get(1);
        int i6 = calendar.get(2);
        int i7 = calendar.get(5);
        numberPicker3.setMaxValue(i5);
        numberPicker3.setMinValue(i2);
        int value = numberPicker3.getValue();
        numberPicker2.setMaxValue(value == i5 ? i6 : 11);
        numberPicker2.setMinValue(value == i2 ? i3 : 0);
        int value2 = numberPicker2.getValue();
        calendar.set(1, value);
        calendar.set(2, value2);
        int actualMaximum = calendar.getActualMaximum(5);
        if (value == i5 && value2 == i6) {
            actualMaximum = Math.min(i7, actualMaximum);
        }
        numberPicker.setMaxValue(actualMaximum);
        if (value == i2 && value2 == i3) {
            i = i4;
        }
        numberPicker.setMinValue(i);
    }

    public static BottomSheet.Builder createCalendarPickerDialog(Context context, final long j, final MessagesStorage.IntCallback intCallback, Theme.ResourcesProvider resourcesProvider) {
        if (context == null) {
            return null;
        }
        final BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        builder.setApplyBottomPadding(false);
        final NumberPicker numberPicker = new NumberPicker(context, resourcesProvider);
        numberPicker.setTextOffset(AndroidUtilities.m1124dp(10.0f));
        numberPicker.setItemCount(5);
        final NumberPicker numberPicker2 = new NumberPicker(context, resourcesProvider);
        numberPicker2.setItemCount(5);
        numberPicker2.setTextOffset(-AndroidUtilities.m1124dp(10.0f));
        final NumberPicker numberPicker3 = new NumberPicker(context, resourcesProvider);
        numberPicker3.setItemCount(5);
        numberPicker3.setTextOffset(-AndroidUtilities.m1124dp(24.0f));
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.53
            boolean ignoreLayout = false;

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                this.ignoreLayout = true;
                Point point = AndroidUtilities.displaySize;
                int i3 = point.x > point.y ? 3 : 5;
                numberPicker.setItemCount(i3);
                numberPicker2.setItemCount(i3);
                numberPicker3.setItemCount(i3);
                numberPicker.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i3;
                numberPicker2.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i3;
                numberPicker3.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i3;
                this.ignoreLayout = false;
                super.onMeasure(i, i2);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString(C2888R.string.ChooseDate));
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda78
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return AlertsCreator.m8496$r8$lambda$RrIyz9PGUO5fvI0FH1BJfG7Ox0(view, motionEvent);
            }
        });
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setWeightSum(1.0f);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        System.currentTimeMillis();
        TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.54
            @Override // android.widget.TextView, android.view.View
            public CharSequence getAccessibilityClassName() {
                return Button.class.getName();
            }
        };
        linearLayout2.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.25f));
        numberPicker.setMinValue(1);
        numberPicker.setMaxValue(31);
        numberPicker.setWrapSelectorWheel(false);
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda79
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i) {
                return AlertsCreator.$r8$lambda$LLNDd7QX3zFNhu55MJ6uOKHHCCw(i);
            }
        });
        NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda80
            @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker4, int i, int i2) {
                AlertsCreator.checkCalendarDate(j, numberPicker, numberPicker2, numberPicker3);
            }
        };
        numberPicker.setOnValueChangedListener(onValueChangeListener);
        numberPicker2.setMinValue(0);
        numberPicker2.setMaxValue(11);
        numberPicker2.setWrapSelectorWheel(false);
        linearLayout2.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.5f));
        numberPicker2.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda81
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i) {
                return AlertsCreator.$r8$lambda$gZ2GyTWQj_c4mrsgRu2PRwG2EQc(i);
            }
        });
        numberPicker2.setOnValueChangedListener(onValueChangeListener);
        final Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        int i = calendar.get(1);
        calendar.setTimeInMillis(System.currentTimeMillis());
        int i2 = calendar.get(1);
        numberPicker3.setMinValue(i);
        numberPicker3.setMaxValue(i2);
        numberPicker3.setWrapSelectorWheel(false);
        numberPicker3.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda82
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i3) {
                return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i3));
            }
        });
        linearLayout2.addView(numberPicker3, LayoutHelper.createLinear(0, 270, 0.25f));
        numberPicker3.setOnValueChangedListener(onValueChangeListener);
        numberPicker.setValue(31);
        numberPicker2.setValue(12);
        numberPicker3.setValue(i2);
        checkCalendarDate(j, numberPicker, numberPicker2, numberPicker3);
        textView2.setPadding(AndroidUtilities.m1124dp(34.0f), 0, AndroidUtilities.m1124dp(34.0f), 0);
        textView2.setGravity(17);
        textView2.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText, resourcesProvider));
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setText(LocaleController.getString(C2888R.string.JumpToDate));
        textView2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(8.0f), Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider), Theme.getColor(Theme.key_featuredStickers_addButtonPressed, resourcesProvider)));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda83
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.m8506$r8$lambda$aqD_cWwV6Jya2fCSkOkFYt40SE(j, numberPicker, numberPicker2, numberPicker3, calendar, intCallback, builder, view);
            }
        });
        builder.setCustomView(linearLayout);
        return builder;
    }

    /* JADX INFO: renamed from: $r8$lambda$RrIyz9PGUO5fvI0FH1BJfG-7Ox0, reason: not valid java name */
    public static /* synthetic */ boolean m8496$r8$lambda$RrIyz9PGUO5fvI0FH1BJfG7Ox0(View view, MotionEvent motionEvent) {
        return true;
    }

    public static /* synthetic */ String $r8$lambda$LLNDd7QX3zFNhu55MJ6uOKHHCCw(int i) {
        return _UrlKt.FRAGMENT_ENCODE_SET + i;
    }

    public static /* synthetic */ String $r8$lambda$gZ2GyTWQj_c4mrsgRu2PRwG2EQc(int i) {
        switch (i) {
            case 0:
                return LocaleController.getString(C2888R.string.January);
            case 1:
                return LocaleController.getString(C2888R.string.February);
            case 2:
                return LocaleController.getString(C2888R.string.March);
            case 3:
                return LocaleController.getString(C2888R.string.April);
            case 4:
                return LocaleController.getString(C2888R.string.May);
            case 5:
                return LocaleController.getString(C2888R.string.June);
            case 6:
                return LocaleController.getString(C2888R.string.July);
            case 7:
                return LocaleController.getString(C2888R.string.August);
            case 8:
                return LocaleController.getString(C2888R.string.September);
            case 9:
                return LocaleController.getString(C2888R.string.October);
            case 10:
                return LocaleController.getString(C2888R.string.November);
            default:
                return LocaleController.getString(C2888R.string.December);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$aqD_cWwV6Jy-a2fCSkOkFYt40SE, reason: not valid java name */
    public static /* synthetic */ void m8506$r8$lambda$aqD_cWwV6Jya2fCSkOkFYt40SE(long j, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, Calendar calendar, MessagesStorage.IntCallback intCallback, BottomSheet.Builder builder, View view) {
        checkCalendarDate(j, numberPicker, numberPicker2, numberPicker3);
        calendar.set(1, numberPicker3.getValue());
        calendar.set(2, numberPicker2.getValue());
        calendar.set(5, numberPicker.getValue());
        calendar.set(12, 0);
        calendar.set(11, 0);
        calendar.set(13, 0);
        intCallback.run((int) (calendar.getTimeInMillis() / 1000));
        builder.getDismissRunnable().run();
    }

    public static BottomSheet createMuteAlert(final BaseFragment baseFragment, final long j, final long j2, final Theme.ResourcesProvider resourcesProvider) {
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return null;
        }
        BottomSheet.Builder builder = new BottomSheet.Builder(baseFragment.getParentActivity(), false, resourcesProvider);
        builder.setTitle(LocaleController.getString(C2888R.string.Notifications), true);
        builder.setItems(new CharSequence[]{LocaleController.formatString("MuteFor", C2888R.string.MuteFor, LocaleController.formatPluralString("Hours", 1, new Object[0])), LocaleController.formatString("MuteFor", C2888R.string.MuteFor, LocaleController.formatPluralString("Hours", 8, new Object[0])), LocaleController.formatString("MuteFor", C2888R.string.MuteFor, LocaleController.formatPluralString("Days", 2, new Object[0])), LocaleController.getString(C2888R.string.MuteDisable)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda77
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AlertsCreator.$r8$lambda$q_dy58zbGFYEunLTdmDwXOpxdf0(j, j2, baseFragment, resourcesProvider, dialogInterface, i);
            }
        });
        return builder.create();
    }

    public static /* synthetic */ void $r8$lambda$q_dy58zbGFYEunLTdmDwXOpxdf0(long j, long j2, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider, DialogInterface dialogInterface, int i) {
        int i2;
        if (i == 0) {
            i2 = 0;
        } else {
            int i3 = 1;
            if (i != 1) {
                i3 = 2;
                if (i != 2) {
                    i3 = 3;
                }
            }
            i2 = i3;
        }
        NotificationsController.getInstance(UserConfig.selectedAccount).setDialogNotificationsSettings(j, j2, i2);
        if (BulletinFactory.canShowBulletin(baseFragment)) {
            BulletinFactory.createMuteBulletin(baseFragment, i2, 0, resourcesProvider).show();
        }
    }

    public static BottomSheet createMuteAlert(final BaseFragment baseFragment, final ArrayList arrayList, final int i, final Theme.ResourcesProvider resourcesProvider) {
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return null;
        }
        BottomSheet.Builder builder = new BottomSheet.Builder(baseFragment.getParentActivity(), false, resourcesProvider);
        builder.setTitle(LocaleController.getString(C2888R.string.Notifications), true);
        builder.setItems(new CharSequence[]{LocaleController.formatString("MuteFor", C2888R.string.MuteFor, LocaleController.formatPluralString("Hours", 1, new Object[0])), LocaleController.formatString("MuteFor", C2888R.string.MuteFor, LocaleController.formatPluralString("Hours", 8, new Object[0])), LocaleController.formatString("MuteFor", C2888R.string.MuteFor, LocaleController.formatPluralString("Days", 2, new Object[0])), LocaleController.getString(C2888R.string.MuteDisable)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda116
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                AlertsCreator.$r8$lambda$21IHvJ35vGJ3Yy9IdyfpgPgx6y8(arrayList, i, baseFragment, resourcesProvider, dialogInterface, i2);
            }
        });
        return builder.create();
    }

    public static /* synthetic */ void $r8$lambda$21IHvJ35vGJ3Yy9IdyfpgPgx6y8(ArrayList arrayList, int i, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider, DialogInterface dialogInterface, int i2) {
        int i3;
        if (i2 == 0) {
            i3 = 0;
        } else {
            int i4 = 1;
            if (i2 != 1) {
                i4 = 2;
                if (i2 != 2) {
                    i4 = 3;
                }
            }
            i3 = i4;
        }
        if (arrayList != null) {
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                NotificationsController.getInstance(UserConfig.selectedAccount).setDialogNotificationsSettings(((Long) arrayList.get(i5)).longValue(), i, i3);
            }
        }
        if (BulletinFactory.canShowBulletin(baseFragment)) {
            BulletinFactory.createMuteBulletin(baseFragment, i3, 0, resourcesProvider).show();
        }
    }

    public static void createReportPhotoAlert(final int i, final Context context, final long j, final TLRPC.Photo photo, final Theme.ResourcesProvider resourcesProvider) {
        if (context == null || photo == null) {
            return;
        }
        final Utilities.Callback2 callback2 = new Utilities.Callback2() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda67
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                AlertsCreator.m8531$r8$lambda$vOCFK0RAeRF0fOx7Fj11Odqc7I(i, j, photo, context, resourcesProvider, (Integer) obj, (String) obj2);
            }
        };
        BottomSheet.Builder builder = new BottomSheet.Builder(context, true, resourcesProvider);
        builder.setTitle(LocaleController.getString(C2888R.string.ReportProfilePhoto), true);
        final int[] iArr = {0, 6, 1, 2, 3, 4, 5, 100};
        builder.setItems(new CharSequence[]{LocaleController.getString(C2888R.string.ReportChatSpam), LocaleController.getString(C2888R.string.ReportChatFakeAccount), LocaleController.getString(C2888R.string.ReportChatViolence), LocaleController.getString(C2888R.string.ReportChatChild), LocaleController.getString(C2888R.string.ReportChatIllegalDrugs), LocaleController.getString(C2888R.string.ReportChatPersonalDetails), LocaleController.getString(C2888R.string.ReportChatPornography), LocaleController.getString(C2888R.string.ReportChatOther)}, new int[]{C2888R.drawable.msg_clearcache, C2888R.drawable.msg_report_fake, C2888R.drawable.msg_report_violence, C2888R.drawable.msg_block2, C2888R.drawable.msg_report_drugs, C2888R.drawable.msg_report_personal, C2888R.drawable.msg_report_xxx, C2888R.drawable.msg_report_other}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda68
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                AlertsCreator.$r8$lambda$txcxBV5SO7ATK1GdodLa0P_ZyUw(iArr, context, resourcesProvider, callback2, dialogInterface, i2);
            }
        });
        builder.show();
    }

    /* JADX INFO: renamed from: $r8$lambda$vO-CFK0RAeRF0fOx7Fj11Odqc7I, reason: not valid java name */
    public static /* synthetic */ void m8531$r8$lambda$vOCFK0RAeRF0fOx7Fj11Odqc7I(int i, long j, TLRPC.Photo photo, Context context, Theme.ResourcesProvider resourcesProvider, Integer num, String str) {
        TL_account.reportProfilePhoto reportprofilephoto = new TL_account.reportProfilePhoto();
        reportprofilephoto.peer = MessagesController.getInstance(i).getInputPeer(j);
        TLRPC.TL_inputPhoto tL_inputPhoto = new TLRPC.TL_inputPhoto();
        tL_inputPhoto.f1684id = photo.f1692id;
        tL_inputPhoto.file_reference = photo.file_reference;
        tL_inputPhoto.access_hash = photo.access_hash;
        reportprofilephoto.photo_id = tL_inputPhoto;
        reportprofilephoto.message = _UrlKt.FRAGMENT_ENCODE_SET;
        if (num.intValue() == 0) {
            reportprofilephoto.reason = new TLRPC.TL_inputReportReasonSpam();
        } else if (num.intValue() == 1) {
            reportprofilephoto.reason = new TLRPC.TL_inputReportReasonViolence();
        } else if (num.intValue() == 2) {
            reportprofilephoto.reason = new TLRPC.TL_inputReportReasonChildAbuse();
        } else if (num.intValue() == 5) {
            reportprofilephoto.reason = new TLRPC.TL_inputReportReasonPornography();
        } else if (num.intValue() == 3) {
            reportprofilephoto.reason = new TLRPC.TL_inputReportReasonIllegalDrugs();
        } else if (num.intValue() == 4) {
            reportprofilephoto.reason = new TLRPC.TL_inputReportReasonPersonalDetails();
        }
        ConnectionsManager.getInstance(i).sendRequest(reportprofilephoto, null);
        BulletinFactory.m1245of(Bulletin.BulletinWindow.make(context), resourcesProvider).createReportSent(resourcesProvider).show();
    }

    public static /* synthetic */ void $r8$lambda$txcxBV5SO7ATK1GdodLa0P_ZyUw(int[] iArr, Context context, Theme.ResourcesProvider resourcesProvider, final Utilities.Callback2 callback2, DialogInterface dialogInterface, int i) {
        int i2 = iArr[i];
        if (i2 == 100) {
            new ReportAlert(context, i2, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.55
                @Override // org.telegram.p029ui.Components.ReportAlert
                protected void onSend(int i3, String str) {
                    callback2.run(Integer.valueOf(i3), str);
                }
            }.show();
        } else {
            callback2.run(Integer.valueOf(i2), _UrlKt.FRAGMENT_ENCODE_SET);
        }
    }

    private static String getFloodWaitString(String str) {
        String pluralString;
        int iIntValue = Utilities.parseInt((CharSequence) str).intValue();
        if (iIntValue < 60) {
            pluralString = LocaleController.formatPluralString("Seconds", iIntValue, new Object[0]);
        } else {
            pluralString = LocaleController.formatPluralString("Minutes", iIntValue / 60, new Object[0]);
        }
        return LocaleController.formatString("FloodWaitTime", C2888R.string.FloodWaitTime, pluralString);
    }

    public static void showFloodWaitAlert(String str, BaseFragment baseFragment) {
        String pluralString;
        if (str == null || !str.startsWith("FLOOD_WAIT") || baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        int iIntValue = Utilities.parseInt((CharSequence) str).intValue();
        if (iIntValue < 60) {
            pluralString = LocaleController.formatPluralString("Seconds", iIntValue, new Object[0]);
        } else {
            pluralString = LocaleController.formatPluralString("Minutes", iIntValue / 60, new Object[0]);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity());
        builder.setTitle(LocaleController.getString(C2888R.string.AppName));
        builder.setMessage(LocaleController.formatString("FloodWaitTime", C2888R.string.FloodWaitTime, pluralString));
        builder.setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null);
        baseFragment.showDialog(builder.create(), true, null);
    }

    public static void showSendMediaAlert(int i, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider) {
        if (i == 0 || baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity(), resourcesProvider);
        builder.setTitle(LocaleController.getString(C2888R.string.UnableForward));
        if (i == 1) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedStickers));
        } else if (i == 2) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedMedia));
        } else if (i == 3) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedPolls));
        } else if (i == 4) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedStickersAll));
        } else if (i == 5) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedMediaAll));
        } else if (i == 6) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedPollsAll));
        } else if (i == 7) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedPrivacyVoiceMessages));
        } else if (i == 8) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedPrivacyVideoMessages));
        } else if (i == 9) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedVideoAll));
        } else if (i == 10) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedPhotoAll));
        } else if (i == 11) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedVideo));
        } else if (i == 12) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedPhoto));
        } else if (i == 13) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedVoiceAll));
        } else if (i == 14) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedVoice));
        } else if (i == 15) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedRoundAll));
        } else if (i == 16) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedRound));
        } else if (i == 17) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedDocumentsAll));
        } else if (i == 18) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedDocuments));
        } else if (i == 19) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedMusicAll));
        } else if (i == 20) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedMusic));
        } else if (i == 21) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedTodoAll));
        } else if (i == 22) {
            builder.setMessage(LocaleController.getString(C2888R.string.ErrorSendRestrictedTodo));
        }
        builder.setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null);
        baseFragment.showDialog(builder.create(), true, null);
    }

    public static void showAddUserAlert(String str, final BaseFragment baseFragment, boolean z, TLObject tLObject) {
        AlertDialog.Builder builder;
        if (str == null || baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        builder = new AlertDialog.Builder(baseFragment.getParentActivity());
        builder.setTitle(LocaleController.getString(C2888R.string.AppName));
        switch (str) {
            case "CHANNELS_ADMIN_LOCATED_TOO_MUCH":
                builder.setMessage(LocaleController.getString(C2888R.string.LocatedChannelsTooMuch));
                break;
            case "CHANNELS_ADMIN_PUBLIC_TOO_MUCH":
                builder.setMessage(LocaleController.getString(C2888R.string.PublicChannelsTooMuch));
                break;
            case "USERS_TOO_FEW":
                builder.setMessage(LocaleController.getString(C2888R.string.CreateGroupError));
                break;
            case "USER_BLOCKED":
            case "USER_BOT":
            case "USER_ID_INVALID":
                if (z) {
                    builder.setMessage(LocaleController.getString(C2888R.string.ChannelUserCantAdd));
                    break;
                } else {
                    builder.setMessage(LocaleController.getString(C2888R.string.GroupUserCantAdd));
                    break;
                }
                break;
            case "USER_RESTRICTED":
                builder.setMessage(LocaleController.getString(C2888R.string.UserRestricted));
                break;
            case "PEER_FLOOD":
                builder.setMessage(LocaleController.getString(C2888R.string.NobodyLikesSpam2));
                builder.setNegativeButton(LocaleController.getString(C2888R.string.MoreInfo), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda15
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        BaseFragment baseFragment2 = baseFragment;
                        MessagesController.getInstance(baseFragment2.getCurrentAccount()).openByUserName("spambot", baseFragment2, 1);
                    }
                });
                break;
            case "BOTS_TOO_MUCH":
                if (z) {
                    builder.setMessage(LocaleController.getString(C2888R.string.ChannelUserCantBot));
                    break;
                } else {
                    builder.setMessage(LocaleController.getString(C2888R.string.GroupUserCantBot));
                    break;
                }
                break;
            case "USER_KICKED":
            case "CHAT_ADMIN_BAN_REQUIRED":
                if (tLObject instanceof TLRPC.TL_channels_inviteToChannel) {
                    builder.setMessage(LocaleController.getString(C2888R.string.AddUserErrorBlacklisted));
                    break;
                } else {
                    builder.setMessage(LocaleController.getString(C2888R.string.AddAdminErrorBlacklisted));
                    break;
                }
                break;
            case "YOU_BLOCKED_USER":
                builder.setMessage(LocaleController.getString(C2888R.string.YouBlockedUser));
                break;
            case "USER_ADMIN_INVALID":
                builder.setMessage(LocaleController.getString(C2888R.string.AddBannedErrorAdmin));
                break;
            case "USERS_TOO_MUCH":
                if (z) {
                    builder.setMessage(LocaleController.getString(C2888R.string.ChannelUserAddLimit));
                    break;
                } else {
                    builder.setMessage(LocaleController.getString(C2888R.string.GroupUserAddLimit));
                    break;
                }
                break;
            case "ADMINS_TOO_MUCH":
                if (z) {
                    builder.setMessage(LocaleController.getString(C2888R.string.ChannelUserCantAdmin));
                    break;
                } else {
                    builder.setMessage(LocaleController.getString(C2888R.string.GroupUserCantAdmin));
                    break;
                }
                break;
            case "CHANNELS_TOO_MUCH":
                builder.setTitle(LocaleController.getString(C2888R.string.ChannelTooMuchTitle));
                if (tLObject instanceof TLRPC.TL_channels_createChannel) {
                    builder.setMessage(LocaleController.getString(C2888R.string.ChannelTooMuch));
                    break;
                } else {
                    builder.setMessage(LocaleController.getString(C2888R.string.ChannelTooMuchJoin));
                    break;
                }
                break;
            case "USER_CHANNELS_TOO_MUCH":
                builder.setTitle(LocaleController.getString(C2888R.string.ChannelTooMuchTitle));
                builder.setMessage(LocaleController.getString(C2888R.string.UserChannelTooMuchJoin));
                break;
            case "USER_NOT_MUTUAL_CONTACT":
                if (z) {
                    builder.setMessage(LocaleController.getString(C2888R.string.ChannelUserLeftError));
                    break;
                } else {
                    builder.setMessage(LocaleController.getString(C2888R.string.GroupUserLeftError));
                    break;
                }
                break;
            case "CHAT_ADMIN_INVITE_REQUIRED":
                builder.setMessage(LocaleController.getString(C2888R.string.AddAdminErrorNotAMember));
                break;
            case "USER_PRIVACY_RESTRICTED":
                if (z) {
                    builder.setMessage(LocaleController.getString(C2888R.string.InviteToChannelError));
                    break;
                } else {
                    builder.setMessage(LocaleController.getString(C2888R.string.InviteToGroupError));
                    break;
                }
                break;
            case "USER_ALREADY_PARTICIPANT":
                builder.setTitle(LocaleController.getString(C2888R.string.VoipGroupVoiceChat));
                builder.setMessage(LocaleController.getString(C2888R.string.VoipGroupInviteAlreadyParticipant));
                break;
            default:
                builder.setMessage(LocaleController.getString(C2888R.string.ErrorOccurred) + "\n" + str);
                break;
        }
        builder.setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null);
        baseFragment.showDialog(builder.create(), true, null);
    }

    public static Dialog createColorSelectDialog(Activity activity, long j, int i, int i2, Runnable runnable) {
        return createColorSelectDialog(activity, j, i, i2, runnable, null);
    }

    public static Dialog createColorSelectDialog(Activity activity, final long j, final long j2, final int i, final Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
        int i2;
        SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(UserConfig.selectedAccount);
        final String sharedPrefKey = NotificationsController.getSharedPrefKey(j, j2);
        if (j != 0) {
            if (notificationsSettings.contains("color_" + sharedPrefKey)) {
                i2 = notificationsSettings.getInt("color_" + sharedPrefKey, -16776961);
            } else if (DialogObject.isChatDialog(j)) {
                i2 = notificationsSettings.getInt("GroupLed", -16776961);
            } else {
                i2 = notificationsSettings.getInt("MessagesLed", -16776961);
            }
        } else if (i == 1) {
            i2 = notificationsSettings.getInt("MessagesLed", -16776961);
        } else if (i == 0) {
            i2 = notificationsSettings.getInt("GroupLed", -16776961);
        } else if (i == 3) {
            i2 = notificationsSettings.getInt("StoriesLed", -16776961);
        } else if (i == 5 || i == 4) {
            i2 = notificationsSettings.getInt("ReactionsLed", -16776961);
        } else {
            i2 = notificationsSettings.getInt("ChannelLed", -16776961);
        }
        final LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        String[] strArr = {LocaleController.getString(C2888R.string.ColorRed), LocaleController.getString(C2888R.string.ColorOrange), LocaleController.getString(C2888R.string.ColorYellow), LocaleController.getString(C2888R.string.ColorGreen), LocaleController.getString(C2888R.string.ColorCyan), LocaleController.getString(C2888R.string.ColorBlue), LocaleController.getString(C2888R.string.ColorViolet), LocaleController.getString(C2888R.string.ColorPink), LocaleController.getString(C2888R.string.ColorWhite)};
        final int[] iArr = {i2};
        for (int i3 = 0; i3 < 9; i3++) {
            RadioColorCell radioColorCell = new RadioColorCell(activity, resourcesProvider);
            radioColorCell.setPadding(AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f), 0);
            radioColorCell.setTag(Integer.valueOf(i3));
            int i4 = TextColorCell.colors[i3];
            radioColorCell.setCheckColor(i4, i4);
            radioColorCell.setTextAndValue(strArr[i3], i2 == TextColorCell.colorsToSave[i3]);
            linearLayout.addView(radioColorCell);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda195
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.m8512$r8$lambda$fx0F7wy0eMEy8_IYIdoVGI0VjI(linearLayout, iArr, view);
                }
            });
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity, resourcesProvider);
        builder.setTitle(LocaleController.getString(C2888R.string.LedColor));
        builder.setView(linearLayout);
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Set), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda196
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i5) {
                AlertsCreator.m8519$r8$lambda$mkOJ7dYLjXV4quNe9iN5yENcBc(j, sharedPrefKey, iArr, j2, i, runnable, alertDialog, i5);
            }
        });
        builder.setNeutralButton(LocaleController.getString(C2888R.string.LedDisabled), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda197
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i5) {
                AlertsCreator.$r8$lambda$FUorFl0mtnUXYux6luO5pOGDno0(j, i, runnable, alertDialog, i5);
            }
        });
        if (j != 0) {
            builder.setNegativeButton(LocaleController.getString(C2888R.string.Default), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda198
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i5) {
                    AlertsCreator.m8525$r8$lambda$rC8I1HHpwZB4w4UFRsVxvbbAY(sharedPrefKey, runnable, alertDialog, i5);
                }
            });
        }
        return builder.create();
    }

    /* JADX INFO: renamed from: $r8$lambda$fx0F7wy0eMEy8_IY-IdoVGI0VjI, reason: not valid java name */
    public static /* synthetic */ void m8512$r8$lambda$fx0F7wy0eMEy8_IYIdoVGI0VjI(LinearLayout linearLayout, int[] iArr, View view) {
        int childCount = linearLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RadioColorCell radioColorCell = (RadioColorCell) linearLayout.getChildAt(i);
            radioColorCell.setChecked(radioColorCell == view, true);
        }
        iArr[0] = TextColorCell.colorsToSave[((Integer) view.getTag()).intValue()];
    }

    /* JADX INFO: renamed from: $r8$lambda$mkOJ7dYLjX-V4quNe9iN5yENcBc, reason: not valid java name */
    public static /* synthetic */ void m8519$r8$lambda$mkOJ7dYLjXV4quNe9iN5yENcBc(long j, String str, int[] iArr, long j2, int i, Runnable runnable, AlertDialog alertDialog, int i2) {
        SharedPreferences.Editor editorEdit = MessagesController.getNotificationsSettings(UserConfig.selectedAccount).edit();
        if (j != 0) {
            editorEdit.putInt("color_" + str, iArr[0]);
            NotificationsController.getInstance(UserConfig.selectedAccount).deleteNotificationChannel(j, j2);
        } else {
            if (i == 1) {
                editorEdit.putInt("MessagesLed", iArr[0]);
            } else if (i == 0) {
                editorEdit.putInt("GroupLed", iArr[0]);
            } else if (i == 3) {
                editorEdit.putInt("StoriesLed", iArr[0]);
            } else if (i == 5 || i == 4) {
                editorEdit.putInt("ReactionLed", iArr[0]);
            } else {
                editorEdit.putInt("ChannelLed", iArr[0]);
            }
            NotificationsController.getInstance(UserConfig.selectedAccount).deleteNotificationChannelGlobal(i);
        }
        editorEdit.apply();
        if (runnable != null) {
            runnable.run();
        }
    }

    public static /* synthetic */ void $r8$lambda$FUorFl0mtnUXYux6luO5pOGDno0(long j, int i, Runnable runnable, AlertDialog alertDialog, int i2) {
        SharedPreferences.Editor editorEdit = MessagesController.getNotificationsSettings(UserConfig.selectedAccount).edit();
        if (j != 0) {
            editorEdit.putInt("color_" + j, 0);
        } else if (i == 1) {
            editorEdit.putInt("MessagesLed", 0);
        } else if (i == 0) {
            editorEdit.putInt("GroupLed", 0);
        } else if (i == 3) {
            editorEdit.putInt("StoriesLed", 0);
        } else if (i == 5 || i == 4) {
            editorEdit.putInt("ReactionsLed", 0);
        } else {
            editorEdit.putInt("ChannelLed", 0);
        }
        editorEdit.apply();
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$rC8-I1HHpwZB4w4-UFRsVxvbbAY, reason: not valid java name */
    public static /* synthetic */ void m8525$r8$lambda$rC8I1HHpwZB4w4UFRsVxvbbAY(String str, Runnable runnable, AlertDialog alertDialog, int i) {
        SharedPreferences.Editor editorEdit = MessagesController.getNotificationsSettings(UserConfig.selectedAccount).edit();
        editorEdit.remove("color_" + str);
        editorEdit.apply();
        if (runnable != null) {
            runnable.run();
        }
    }

    public static Dialog createVibrationSelectDialog(Activity activity, long j, long j2, boolean z, boolean z2, Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
        String str;
        if (j != 0) {
            str = "vibrate_" + j;
        } else {
            str = z ? "vibrate_group" : "vibrate_messages";
        }
        return createVibrationSelectDialog(activity, j, j2, str, runnable, resourcesProvider);
    }

    public static Dialog createVibrationSelectDialog(Activity activity, long j, long j2, String str, Runnable runnable) {
        return createVibrationSelectDialog(activity, j, j2, str, runnable, null);
    }

    public static Dialog createVibrationSelectDialog(Activity activity, final long j, final long j2, String str, final Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
        String[] strArr;
        final String str2 = str;
        SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(UserConfig.selectedAccount);
        boolean z = true;
        final int[] iArr = new int[1];
        if (j != 0) {
            int i = notificationsSettings.getInt(str2, 0);
            iArr[0] = i;
            if (i == 3) {
                iArr[0] = 2;
            } else if (i == 2) {
                iArr[0] = 3;
            }
            strArr = new String[]{LocaleController.getString(C2888R.string.VibrationDefault), LocaleController.getString(C2888R.string.Short), LocaleController.getString(C2888R.string.Long), LocaleController.getString(C2888R.string.VibrationDisabled)};
        } else {
            int i2 = notificationsSettings.getInt(str2, 0);
            iArr[0] = i2;
            if (i2 == 0) {
                iArr[0] = 1;
            } else if (i2 == 1) {
                iArr[0] = 2;
            } else if (i2 == 2) {
                iArr[0] = 0;
            }
            strArr = new String[]{LocaleController.getString(C2888R.string.VibrationDisabled), LocaleController.getString(C2888R.string.VibrationDefault), LocaleController.getString(C2888R.string.Short), LocaleController.getString(C2888R.string.Long), LocaleController.getString(C2888R.string.OnlyIfSilent)};
        }
        String[] strArr2 = strArr;
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        final AlertDialog.Builder builder = new AlertDialog.Builder(activity, resourcesProvider);
        int i3 = 0;
        while (i3 < strArr2.length) {
            RadioColorCell radioColorCell = new RadioColorCell(activity, resourcesProvider);
            radioColorCell.setPadding(AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f), 0);
            radioColorCell.setTag(Integer.valueOf(i3));
            radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground, resourcesProvider), Theme.getColor(Theme.key_dialogRadioBackgroundChecked, resourcesProvider));
            radioColorCell.setTextAndValue(strArr2[i3], iArr[0] == i3 ? z : false);
            linearLayout.addView(radioColorCell);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda199
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.$r8$lambda$E2SKt9NwTS4CMuA1xauWxuGs9Gw(iArr, j, str2, j2, builder, runnable, view);
                }
            });
            i3++;
            str2 = str;
            z = true;
        }
        builder.setTitle(LocaleController.getString(C2888R.string.Vibrate));
        builder.setView(linearLayout);
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Cancel), null);
        return builder.create();
    }

    public static /* synthetic */ void $r8$lambda$E2SKt9NwTS4CMuA1xauWxuGs9Gw(int[] iArr, long j, String str, long j2, AlertDialog.Builder builder, Runnable runnable, View view) {
        iArr[0] = ((Integer) view.getTag()).intValue();
        SharedPreferences.Editor editorEdit = MessagesController.getNotificationsSettings(UserConfig.selectedAccount).edit();
        if (j != 0) {
            int i = iArr[0];
            if (i == 0) {
                editorEdit.putInt(str, 0);
            } else if (i == 1) {
                editorEdit.putInt(str, 1);
            } else if (i == 2) {
                editorEdit.putInt(str, 3);
            } else if (i == 3) {
                editorEdit.putInt(str, 2);
            }
            NotificationsController.getInstance(UserConfig.selectedAccount).deleteNotificationChannel(j, j2);
        } else {
            int i2 = iArr[0];
            if (i2 == 0) {
                editorEdit.putInt(str, 2);
            } else if (i2 == 1) {
                editorEdit.putInt(str, 0);
            } else if (i2 == 2) {
                editorEdit.putInt(str, 1);
            } else if (i2 == 3) {
                editorEdit.putInt(str, 3);
            } else if (i2 == 4) {
                editorEdit.putInt(str, 4);
            }
            if (str.equals("vibrate_channel")) {
                NotificationsController.getInstance(UserConfig.selectedAccount).deleteNotificationChannelGlobal(2);
            } else if (str.equals("vibrate_group")) {
                NotificationsController.getInstance(UserConfig.selectedAccount).deleteNotificationChannelGlobal(0);
            } else if (str.equals("vibrate_react")) {
                NotificationsController.getInstance(UserConfig.selectedAccount).deleteNotificationChannelGlobal(4);
            } else {
                NotificationsController.getInstance(UserConfig.selectedAccount).deleteNotificationChannelGlobal(1);
            }
        }
        editorEdit.apply();
        builder.getDismissRunnable().run();
        if (runnable != null) {
            runnable.run();
        }
    }

    public static Dialog createLocationUpdateDialog(Activity activity, boolean z, TLRPC.User user, final MessagesStorage.IntCallback intCallback, Theme.ResourcesProvider resourcesProvider) {
        final int[] iArr = new int[1];
        String[] strArr = {LocaleController.getString(C2888R.string.SendLiveLocationFor15m), LocaleController.getString(C2888R.string.SendLiveLocationFor1h), LocaleController.getString(C2888R.string.SendLiveLocationFor8h), LocaleController.getString(C2888R.string.SendLiveLocationForever)};
        final LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(0, 0, 0, AndroidUtilities.m1124dp(4.0f));
        TextView textView = new TextView(activity);
        if (z) {
            textView.setText(LocaleController.getString(C2888R.string.LiveLocationAlertExpandMessage));
        } else if (user != null) {
            textView.setText(LocaleController.formatString(C2888R.string.LiveLocationAlertPrivate, UserObject.getFirstName(user)));
        } else {
            textView.setText(LocaleController.getString(C2888R.string.LiveLocationAlertGroup));
        }
        int i = Theme.key_dialogTextBlack;
        textView.setTextColor(resourcesProvider != null ? resourcesProvider.getColorOrDefault(i) : Theme.getColor(i));
        textView.setTextSize(1, 16.0f);
        textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, (LocaleController.isRTL ? 5 : 3) | 48, 24, z ? 4 : 0, 24, 8));
        int i2 = 0;
        while (i2 < 4) {
            RadioColorCell radioColorCell = new RadioColorCell(activity, resourcesProvider);
            radioColorCell.heightDp = 42;
            radioColorCell.setPadding(AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f), 0);
            radioColorCell.setTag(Integer.valueOf(i2));
            int i3 = Theme.key_radioBackground;
            int colorOrDefault = resourcesProvider != null ? resourcesProvider.getColorOrDefault(i3) : Theme.getColor(i3);
            int i4 = Theme.key_dialogRadioBackgroundChecked;
            radioColorCell.setCheckColor(colorOrDefault, resourcesProvider != null ? resourcesProvider.getColorOrDefault(i4) : Theme.getColor(i4));
            radioColorCell.setTextAndValue(strArr[i2], iArr[0] == i2);
            linearLayout.addView(radioColorCell);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda86
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.m8468$r8$lambda$2poM3bEBv3jIqItXQyeDZyA4M(iArr, linearLayout, view);
                }
            });
            i2++;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity, resourcesProvider);
        if (z) {
            builder.setTitle(LocaleController.getString(C2888R.string.LiveLocationAlertExpandTitle));
        } else {
            builder.setTopImage(new ShareLocationDrawable(activity, 0), resourcesProvider != null ? resourcesProvider.getColorOrDefault(Theme.key_dialogTopBackground) : Theme.getColor(Theme.key_dialogTopBackground));
        }
        builder.setView(linearLayout);
        builder.setPositiveButton(LocaleController.getString(C2888R.string.ShareFile), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda87
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i5) {
                AlertsCreator.$r8$lambda$_XmZkY3n8sZE9ZwxANUCwc9AmWM(iArr, intCallback, alertDialog, i5);
            }
        });
        builder.setNeutralButton(LocaleController.getString(C2888R.string.Cancel), null);
        return builder.create();
    }

    /* JADX INFO: renamed from: $r8$lambda$2poM3b-EBv3jIqI-tXQyeDZyA4M, reason: not valid java name */
    public static /* synthetic */ void m8468$r8$lambda$2poM3bEBv3jIqItXQyeDZyA4M(int[] iArr, LinearLayout linearLayout, View view) {
        iArr[0] = ((Integer) view.getTag()).intValue();
        int childCount = linearLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = linearLayout.getChildAt(i);
            if (childAt instanceof RadioColorCell) {
                ((RadioColorCell) childAt).setChecked(childAt == view, true);
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$_XmZkY3n8sZE9ZwxANUCwc9AmWM(int[] iArr, MessagesStorage.IntCallback intCallback, AlertDialog alertDialog, int i) {
        int i2 = iArr[0];
        intCallback.run(i2 == 0 ? 900 : i2 == 1 ? 3600 : i2 == 2 ? 28800 : Integer.MAX_VALUE);
    }

    public static AlertDialog.Builder createBackgroundLocationPermissionDialog(final Activity activity, TLRPC.User user, final Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
        if (activity == null || Build.VERSION.SDK_INT < 29) {
            return null;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity, resourcesProvider);
        String res = AndroidUtilities.readRes(Theme.getCurrentTheme().isDark() ? C2888R.raw.permission_map_dark : C2888R.raw.permission_map);
        String res2 = AndroidUtilities.readRes(Theme.getCurrentTheme().isDark() ? C2888R.raw.permission_pin_dark : C2888R.raw.permission_pin);
        FrameLayout frameLayout = new FrameLayout(activity);
        frameLayout.setClipToOutline(true);
        frameLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.AlertsCreator.56
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight() + AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(6.0f));
            }
        });
        View view = new View(activity);
        view.setBackground(SvgHelper.getDrawable(res));
        frameLayout.addView(view, LayoutHelper.createFrame(-1, -1.0f, 51, 0.0f, 0.0f, 0.0f, 0.0f));
        View view2 = new View(activity);
        view2.setBackground(SvgHelper.getDrawable(res2));
        frameLayout.addView(view2, LayoutHelper.createFrame(60, 82.0f, 17, 0.0f, 0.0f, 0.0f, 0.0f));
        BackupImageView backupImageView = new BackupImageView(activity);
        backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(52.0f));
        backupImageView.setForUserOrChat(user, new AvatarDrawable(user));
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(52, 52.0f, 17, 0.0f, 0.0f, 0.0f, 11.0f));
        builder.setTopView(frameLayout);
        builder.setTopViewAspectRatio(0.37820512f);
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.PermissionBackgroundLocation)));
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Continue), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda123
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                AlertsCreator.$r8$lambda$cN_ZnsCQiz0ZzGzJA3CglHa7Bxw(activity, alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda124
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                runnable.run();
            }
        });
        return builder;
    }

    public static /* synthetic */ void $r8$lambda$cN_ZnsCQiz0ZzGzJA3CglHa7Bxw(Activity activity, AlertDialog alertDialog, int i) {
        if (activity.checkSelfPermission("android.permission.ACCESS_BACKGROUND_LOCATION") != 0) {
            activity.requestPermissions(new String[]{"android.permission.ACCESS_BACKGROUND_LOCATION"}, 30);
        }
    }

    public static AlertDialog.Builder createGigagroupConvertAlert(Activity activity, AlertDialog.OnButtonClickListener onButtonClickListener, AlertDialog.OnButtonClickListener onButtonClickListener2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        String res = AndroidUtilities.readRes(C2888R.raw.gigagroup);
        FrameLayout frameLayout = new FrameLayout(activity);
        frameLayout.setClipToOutline(true);
        frameLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.AlertsCreator.57
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight() + AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(6.0f));
            }
        });
        View view = new View(activity);
        view.setBackground(new BitmapDrawable(SvgHelper.getBitmap(res, AndroidUtilities.m1124dp(320.0f), AndroidUtilities.m1124dp(127.17949f), false)));
        frameLayout.addView(view, LayoutHelper.createFrame(-1, -1.0f, 0, -1.0f, -1.0f, -1.0f, -1.0f));
        builder.setTopView(frameLayout);
        builder.setTopViewAspectRatio(0.3974359f);
        builder.setTitle(LocaleController.getString(C2888R.string.GigagroupAlertTitle));
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.GigagroupAlertText)));
        builder.setPositiveButton(LocaleController.getString(C2888R.string.GigagroupAlertLearnMore), onButtonClickListener);
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), onButtonClickListener2);
        return builder;
    }

    public static AlertDialog.Builder createDrawOverlayPermissionDialog(Activity activity, AlertDialog.OnButtonClickListener onButtonClickListener) {
        return createDrawOverlayPermissionDialog(activity, onButtonClickListener, false);
    }

    public static AlertDialog.Builder createDrawOverlayPermissionDialog(final Activity activity, AlertDialog.OnButtonClickListener onButtonClickListener, final boolean z) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        String res = AndroidUtilities.readRes(C2888R.raw.pip_video_request);
        FrameLayout frameLayout = new FrameLayout(activity);
        frameLayout.setBackground(new GradientDrawable(GradientDrawable.Orientation.BL_TR, new int[]{-14535089, -14527894}));
        frameLayout.setClipToOutline(true);
        frameLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.AlertsCreator.58
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight() + AndroidUtilities.m1124dp(6.0f), AndroidUtilities.dpf2(6.0f));
            }
        });
        View view = new View(activity);
        view.setBackground(new BitmapDrawable(SvgHelper.getBitmap(res, AndroidUtilities.m1124dp(320.0f), AndroidUtilities.m1124dp(161.36752f), false)));
        frameLayout.addView(view, LayoutHelper.createFrame(-1, -1.0f, 0, -1.0f, -1.0f, -1.0f, -1.0f));
        builder.setTopView(frameLayout);
        builder.setTitle(LocaleController.getString(C2888R.string.PermissionDrawAboveOtherAppsTitle));
        builder.setMessage(LocaleController.getString(C2888R.string.PermissionDrawAboveOtherApps));
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Enable), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda76
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                AlertsCreator.$r8$lambda$0PyGOol07Xe13J07EN6DOcfmTCA(activity, z, alertDialog, i);
            }
        });
        builder.notDrawBackgroundOnTopView(true);
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), onButtonClickListener);
        builder.setTopViewAspectRatio(0.50427353f);
        return builder;
    }

    public static /* synthetic */ void $r8$lambda$0PyGOol07Xe13J07EN6DOcfmTCA(Activity activity, boolean z, AlertDialog alertDialog, int i) {
        if (activity != null) {
            if (z && PipUtils.checkPermissions(activity) == -2) {
                try {
                    activity.startActivity(new Intent("android.settings.PICTURE_IN_PICTURE_SETTINGS", Uri.parse("package:" + activity.getPackageName())));
                    return;
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
            }
            try {
                activity.startActivity(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + activity.getPackageName())));
            } catch (Exception e2) {
                FileLog.m1136e(e2);
            }
        }
    }

    public static AlertDialog.Builder createDrawOverlayGroupCallPermissionDialog(final Context context) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        String res = AndroidUtilities.readRes(C2888R.raw.pip_voice_request);
        final GroupCallPipButton groupCallPipButton = new GroupCallPipButton(context, 0, true);
        groupCallPipButton.setImportantForAccessibility(2);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.59
            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                groupCallPipButton.setTranslationY((getMeasuredHeight() * 0.28f) - (groupCallPipButton.getMeasuredWidth() / 2.0f));
                groupCallPipButton.setTranslationX((getMeasuredWidth() * 0.82f) - (groupCallPipButton.getMeasuredWidth() / 2.0f));
            }
        };
        frameLayout.setBackground(new GradientDrawable(GradientDrawable.Orientation.BL_TR, new int[]{-15128003, -15118002}));
        frameLayout.setClipToOutline(true);
        frameLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.AlertsCreator.60
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight() + AndroidUtilities.m1124dp(6.0f), AndroidUtilities.dpf2(6.0f));
            }
        });
        View view = new View(context);
        view.setBackground(new BitmapDrawable(SvgHelper.getBitmap(res, AndroidUtilities.m1124dp(320.0f), AndroidUtilities.m1124dp(184.61539f), false)));
        frameLayout.addView(view, LayoutHelper.createFrame(-1, -1.0f, 0, -1.0f, -1.0f, -1.0f, -1.0f));
        frameLayout.addView(groupCallPipButton, LayoutHelper.createFrame(117, 117.0f));
        builder.setTopView(frameLayout);
        builder.setTitle(LocaleController.getString(C2888R.string.PermissionDrawAboveOtherAppsGroupCallTitle));
        builder.setMessage(LocaleController.getString(C2888R.string.PermissionDrawAboveOtherAppsGroupCall));
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Enable), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda44
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                AlertsCreator.m8511$r8$lambda$fl4okd29z504c_bhW5HL6zvHgM(context, alertDialog, i);
            }
        });
        builder.notDrawBackgroundOnTopView(true);
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        builder.setTopViewAspectRatio(0.5769231f);
        return builder;
    }

    /* JADX INFO: renamed from: $r8$lambda$fl4okd29z50-4c_bhW5HL6zvHgM, reason: not valid java name */
    public static /* synthetic */ void m8511$r8$lambda$fl4okd29z504c_bhW5HL6zvHgM(Context context, AlertDialog alertDialog, int i) {
        if (context != null) {
            try {
                Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + context.getPackageName()));
                Activity activityFindActivity = AndroidUtilities.findActivity(context);
                if (activityFindActivity instanceof LaunchActivity) {
                    activityFindActivity.startActivityForResult(intent, 105);
                } else {
                    context.startActivity(intent);
                }
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
    }

    public static AlertDialog.Builder createContactsPermissionDialog(Activity activity, final MessagesStorage.IntCallback intCallback) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTopAnimation(C2888R.raw.permission_request_contacts, 72, false, Theme.getColor(Theme.key_dialogTopBackground));
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ContactsPermissionAlert)));
        builder.setPositiveButton(LocaleController.getString(C2888R.string.ContactsPermissionAlertContinue), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda10
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                intCallback.run(1);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.ContactsPermissionAlertNotNow), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda11
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                intCallback.run(0);
            }
        });
        return builder;
    }

    public static Dialog createFreeSpaceDialog(final LaunchActivity launchActivity) {
        AlertDialog.Builder builder = new AlertDialog.Builder(launchActivity);
        builder.setTitle(LocaleController.getString(C2888R.string.LowDiskSpaceTitle));
        builder.setMessage(LocaleController.getString(C2888R.string.LowDiskSpaceMessage2));
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString(C2888R.string.LowDiskSpaceButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda126
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                launchActivity.lambda$runLinkRequest$106(new CacheControlActivity());
            }
        });
        return builder.create();
    }

    public static Dialog createPrioritySelectDialog(Activity activity, long j, int i, int i2, Runnable runnable) {
        return createPrioritySelectDialog(activity, j, i, i2, runnable, null);
    }

    public static Dialog createPrioritySelectDialog(Activity activity, long j, final long j2, int i, final Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
        String[] strArr;
        final long j3 = j;
        final int i2 = i;
        final SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(UserConfig.selectedAccount);
        boolean z = true;
        final int[] iArr = new int[1];
        if (j3 != 0) {
            int i3 = notificationsSettings.getInt("priority_" + j3, 3);
            iArr[0] = i3;
            if (i3 == 3) {
                iArr[0] = 0;
            } else if (i3 == 4) {
                iArr[0] = 1;
            } else if (i3 == 5) {
                iArr[0] = 2;
            } else if (i3 == 0) {
                iArr[0] = 3;
            } else {
                iArr[0] = 4;
            }
            strArr = new String[]{LocaleController.getString(C2888R.string.NotificationsPrioritySettings), LocaleController.getString(C2888R.string.NotificationsPriorityLow), LocaleController.getString(C2888R.string.NotificationsPriorityMedium), LocaleController.getString(C2888R.string.NotificationsPriorityHigh), LocaleController.getString(C2888R.string.NotificationsPriorityUrgent)};
        } else {
            if (i2 == 1) {
                iArr[0] = notificationsSettings.getInt("priority_messages", 1);
            } else if (i2 == 0) {
                iArr[0] = notificationsSettings.getInt("priority_group", 1);
            } else if (i2 == 2) {
                iArr[0] = notificationsSettings.getInt("priority_channel", 1);
            } else if (i2 == 3) {
                iArr[0] = notificationsSettings.getInt("priority_stories", 1);
            } else if (i2 == 4 || i2 == 5) {
                iArr[0] = notificationsSettings.getInt("priority_react", 1);
            }
            int i4 = iArr[0];
            if (i4 == 4) {
                iArr[0] = 0;
            } else if (i4 == 5) {
                iArr[0] = 1;
            } else if (i4 == 0) {
                iArr[0] = 2;
            } else {
                iArr[0] = 3;
            }
            strArr = new String[]{LocaleController.getString(C2888R.string.NotificationsPriorityLow), LocaleController.getString(C2888R.string.NotificationsPriorityMedium), LocaleController.getString(C2888R.string.NotificationsPriorityHigh), LocaleController.getString(C2888R.string.NotificationsPriorityUrgent)};
        }
        String[] strArr2 = strArr;
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        final AlertDialog.Builder builder = new AlertDialog.Builder(activity, resourcesProvider);
        int i5 = 0;
        while (i5 < strArr2.length) {
            RadioColorCell radioColorCell = new RadioColorCell(activity, resourcesProvider);
            radioColorCell.setPadding(AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f), 0);
            radioColorCell.setTag(Integer.valueOf(i5));
            radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground, resourcesProvider), Theme.getColor(Theme.key_dialogRadioBackgroundChecked, resourcesProvider));
            radioColorCell.setTextAndValue(strArr2[i5], iArr[0] == i5 ? z : false);
            linearLayout.addView(radioColorCell);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda209
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.$r8$lambda$0E5xGJul_ho1ZUQ2XKXUVqZqBcc(iArr, j3, j2, i2, notificationsSettings, builder, runnable, view);
                }
            });
            i5++;
            j3 = j;
            i2 = i;
            z = true;
        }
        builder.setTitle(LocaleController.getString(C2888R.string.NotificationsImportance));
        builder.setView(linearLayout);
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Cancel), null);
        return builder.create();
    }

    public static /* synthetic */ void $r8$lambda$0E5xGJul_ho1ZUQ2XKXUVqZqBcc(int[] iArr, long j, long j2, int i, SharedPreferences sharedPreferences, AlertDialog.Builder builder, Runnable runnable, View view) {
        int i2 = 0;
        iArr[0] = ((Integer) view.getTag()).intValue();
        SharedPreferences.Editor editorEdit = MessagesController.getNotificationsSettings(UserConfig.selectedAccount).edit();
        if (j != 0) {
            int i3 = iArr[0];
            if (i3 == 0) {
                i2 = 3;
            } else if (i3 == 1) {
                i2 = 4;
            } else if (i3 == 2) {
                i2 = 5;
            } else if (i3 != 3) {
                i2 = 1;
            }
            editorEdit.putInt("priority_" + j, i2);
            NotificationsController.getInstance(UserConfig.selectedAccount).deleteNotificationChannel(j, j2);
        } else {
            int i4 = iArr[0];
            int i5 = i4 == 0 ? 4 : i4 == 1 ? 5 : i4 == 2 ? 0 : 1;
            if (i == 1) {
                editorEdit.putInt("priority_messages", i5);
                iArr[0] = sharedPreferences.getInt("priority_messages", 1);
            } else if (i == 0) {
                editorEdit.putInt("priority_group", i5);
                iArr[0] = sharedPreferences.getInt("priority_group", 1);
            } else if (i == 2) {
                editorEdit.putInt("priority_channel", i5);
                iArr[0] = sharedPreferences.getInt("priority_channel", 1);
            } else if (i == 3) {
                editorEdit.putInt("priority_stories", i5);
                iArr[0] = sharedPreferences.getInt("priority_stories", 1);
            } else if (i == 4 || i == 5) {
                editorEdit.putInt("priority_react", i5);
                iArr[0] = sharedPreferences.getInt("priority_react", 1);
            }
            NotificationsController.getInstance(UserConfig.selectedAccount).deleteNotificationChannelGlobal(i);
        }
        editorEdit.apply();
        builder.getDismissRunnable().run();
        if (runnable != null) {
            runnable.run();
        }
    }

    public static Dialog createPopupSelectDialog(Activity activity, final int i, final Runnable runnable) {
        SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(UserConfig.selectedAccount);
        final int[] iArr = new int[1];
        if (i == 1) {
            iArr[0] = notificationsSettings.getInt("popupAll", 0);
        } else if (i == 0) {
            iArr[0] = notificationsSettings.getInt("popupGroup", 0);
        } else {
            iArr[0] = notificationsSettings.getInt("popupChannel", 0);
        }
        String[] strArr = {LocaleController.getString(C2888R.string.NoPopup), LocaleController.getString(C2888R.string.OnlyWhenScreenOn), LocaleController.getString(C2888R.string.OnlyWhenScreenOff), LocaleController.getString(C2888R.string.AlwaysShowPopup)};
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        final AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        int i2 = 0;
        while (i2 < 4) {
            RadioColorCell radioColorCell = new RadioColorCell(activity);
            radioColorCell.setTag(Integer.valueOf(i2));
            radioColorCell.setPadding(AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f), 0);
            radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
            radioColorCell.setTextAndValue(strArr[i2], iArr[0] == i2);
            linearLayout.addView(radioColorCell);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda189
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.m8467$r8$lambda$1ZbW06fE3ZHNB0HWdBzjfdai2U(iArr, i, builder, runnable, view);
                }
            });
            i2++;
        }
        builder.setTitle(LocaleController.getString(C2888R.string.PopupNotification));
        builder.setView(linearLayout);
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Cancel), null);
        return builder.create();
    }

    /* JADX INFO: renamed from: $r8$lambda$1ZbW06fE3ZHNB0HWdBzjfd-ai2U, reason: not valid java name */
    public static /* synthetic */ void m8467$r8$lambda$1ZbW06fE3ZHNB0HWdBzjfdai2U(int[] iArr, int i, AlertDialog.Builder builder, Runnable runnable, View view) {
        iArr[0] = ((Integer) view.getTag()).intValue();
        SharedPreferences.Editor editorEdit = MessagesController.getNotificationsSettings(UserConfig.selectedAccount).edit();
        if (i == 1) {
            editorEdit.putInt("popupAll", iArr[0]);
        } else if (i == 0) {
            editorEdit.putInt("popupGroup", iArr[0]);
        } else {
            editorEdit.putInt("popupChannel", iArr[0]);
        }
        editorEdit.apply();
        builder.getDismissRunnable().run();
        if (runnable != null) {
            runnable.run();
        }
    }

    public static Dialog createSingleChoiceDialog(Activity activity, String[] strArr, String str, int i, final DialogInterface.OnClickListener onClickListener) {
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        final AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        int i2 = 0;
        while (i2 < strArr.length) {
            RadioColorCell radioColorCell = new RadioColorCell(activity);
            radioColorCell.setPadding(AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f), 0);
            radioColorCell.setTag(Integer.valueOf(i2));
            radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
            radioColorCell.setTextAndValue(strArr[i2], i == i2);
            linearLayout.addView(radioColorCell);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda194
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.$r8$lambda$Q_PRK7tRTpTSKDraNQkY9vtJgV0(builder, onClickListener, view);
                }
            });
            i2++;
        }
        builder.setTitle(str);
        builder.setView(linearLayout);
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Cancel), null);
        return builder.create();
    }

    public static /* synthetic */ void $r8$lambda$Q_PRK7tRTpTSKDraNQkY9vtJgV0(AlertDialog.Builder builder, DialogInterface.OnClickListener onClickListener, View view) {
        int iIntValue = ((Integer) view.getTag()).intValue();
        builder.getDismissRunnable().run();
        onClickListener.onClick(null, iIntValue);
    }

    public static AlertDialog.Builder createTTLAlert(Context context, final TLRPC.EncryptedChat encryptedChat, Theme.ResourcesProvider resourcesProvider) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
        builder.setTitle(LocaleController.getString(C2888R.string.MessageLifetime));
        final NumberPicker numberPicker = new NumberPicker(context);
        numberPicker.setMinValue(0);
        numberPicker.setMaxValue(20);
        int i = encryptedChat.ttl;
        if (i > 0 && i < 16) {
            numberPicker.setValue(i);
        } else if (i == 30) {
            numberPicker.setValue(16);
        } else if (i == 60) {
            numberPicker.setValue(17);
        } else if (i == 3600) {
            numberPicker.setValue(18);
        } else if (i == 86400) {
            numberPicker.setValue(19);
        } else if (i == 604800) {
            numberPicker.setValue(20);
        } else if (i == 0) {
            numberPicker.setValue(0);
        }
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda42
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i2) {
                return AlertsCreator.m8532$r8$lambda$vQck9Rt4OUZNckIg5Sue9qFcNY(i2);
            }
        });
        builder.setView(numberPicker);
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Done), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda43
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                AlertsCreator.$r8$lambda$E7fi1al48wrfWToE5dfnifIKeqQ(encryptedChat, numberPicker, alertDialog, i2);
            }
        });
        return builder;
    }

    /* JADX INFO: renamed from: $r8$lambda$vQck9Rt4OUZNckI-g5Sue9qFcNY, reason: not valid java name */
    public static /* synthetic */ String m8532$r8$lambda$vQck9Rt4OUZNckIg5Sue9qFcNY(int i) {
        if (i == 0) {
            return LocaleController.getString(C2888R.string.ShortMessageLifetimeForever);
        }
        if (i >= 1 && i < 16) {
            return LocaleController.formatTTLString(i);
        }
        if (i == 16) {
            return LocaleController.formatTTLString(30);
        }
        if (i == 17) {
            return LocaleController.formatTTLString(60);
        }
        if (i == 18) {
            return LocaleController.formatTTLString(3600);
        }
        if (i == 19) {
            return LocaleController.formatTTLString(86400);
        }
        if (i == 20) {
            return LocaleController.formatTTLString(604800);
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public static /* synthetic */ void $r8$lambda$E7fi1al48wrfWToE5dfnifIKeqQ(TLRPC.EncryptedChat encryptedChat, NumberPicker numberPicker, AlertDialog alertDialog, int i) {
        int i2 = encryptedChat.ttl;
        int value = numberPicker.getValue();
        if (value >= 0 && value < 16) {
            encryptedChat.ttl = value;
        } else if (value == 16) {
            encryptedChat.ttl = 30;
        } else if (value == 17) {
            encryptedChat.ttl = 60;
        } else if (value == 18) {
            encryptedChat.ttl = 3600;
        } else if (value == 19) {
            encryptedChat.ttl = 86400;
        } else if (value == 20) {
            encryptedChat.ttl = 604800;
        }
        if (i2 != encryptedChat.ttl) {
            SecretChatHelper.getInstance(UserConfig.selectedAccount).sendTTLMessage(encryptedChat, null);
            MessagesStorage.getInstance(UserConfig.selectedAccount).updateEncryptedChatTTL(encryptedChat);
        }
    }

    public static AlertDialog createAccountSelectDialog(Activity activity, final AccountSelectDelegate accountSelectDelegate) {
        if (UserConfig.getActivatedAccountsCount() < 2) {
            return null;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        final Runnable dismissRunnable = builder.getDismissRunnable();
        final AlertDialog[] alertDialogArr = new AlertDialog[1];
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        for (int i = 0; i < 16; i++) {
            if (UserConfig.getInstance(i).getCurrentUser() != null) {
                AccountSelectCell accountSelectCell = new AccountSelectCell(activity, false);
                accountSelectCell.setAccount(i, false);
                accountSelectCell.setPadding(AndroidUtilities.m1124dp(14.0f), 0, AndroidUtilities.m1124dp(14.0f), 0);
                accountSelectCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                linearLayout.addView(accountSelectCell, LayoutHelper.createLinear(-1, 50));
                accountSelectCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda27
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        AlertsCreator.$r8$lambda$1wLQpRck4F5q_LqRKe0xHnA3R3Y(alertDialogArr, dismissRunnable, accountSelectDelegate, view);
                    }
                });
            }
        }
        builder.setTitle(LocaleController.getString(C2888R.string.SelectAccount));
        builder.setView(linearLayout);
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Cancel), null);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogArr[0] = alertDialogCreate;
        return alertDialogCreate;
    }

    public static /* synthetic */ void $r8$lambda$1wLQpRck4F5q_LqRKe0xHnA3R3Y(AlertDialog[] alertDialogArr, Runnable runnable, AccountSelectDelegate accountSelectDelegate, View view) {
        AlertDialog alertDialog = alertDialogArr[0];
        if (alertDialog != null) {
            alertDialog.setOnDismissListener(null);
        }
        runnable.run();
        accountSelectDelegate.didSelectAccount(((AccountSelectCell) view).getAccountNumber());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x04e1  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0691  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x06b8  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x06de  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x06f6  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x07a8  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x07e5  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x0843  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x087d  */
    /* JADX WARN: Removed duplicated region for block: B:398:0x0916  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x0928  */
    /* JADX WARN: Removed duplicated region for block: B:430:0x0232 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:432:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x022a  */
    /* JADX WARN: Type inference failed for: r0v104 */
    /* JADX WARN: Type inference failed for: r0v105 */
    /* JADX WARN: Type inference failed for: r0v106 */
    /* JADX WARN: Type inference failed for: r0v107 */
    /* JADX WARN: Type inference failed for: r0v108 */
    /* JADX WARN: Type inference failed for: r0v110 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v53 */
    /* JADX WARN: Type inference failed for: r0v60 */
    /* JADX WARN: Type inference failed for: r0v73 */
    /* JADX WARN: Type inference failed for: r0v80 */
    /* JADX WARN: Type inference failed for: r0v85 */
    /* JADX WARN: Type inference failed for: r0v86 */
    /* JADX WARN: Type inference failed for: r0v87, types: [int] */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v8, types: [android.view.View, org.telegram.ui.Cells.CheckBoxCell] */
    /* JADX WARN: Type inference failed for: r12v0, types: [org.telegram.ui.ActionBar.AlertDialog$Builder] */
    /* JADX WARN: Type inference failed for: r1v121, types: [android.view.View, android.view.ViewGroup, android.widget.FrameLayout] */
    /* JADX WARN: Type inference failed for: r1v126, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v130 */
    /* JADX WARN: Type inference failed for: r1v180 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v4, types: [int] */
    /* JADX WARN: Type inference failed for: r21v5 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r22v14 */
    /* JADX WARN: Type inference failed for: r22v15 */
    /* JADX WARN: Type inference failed for: r24v6 */
    /* JADX WARN: Type inference failed for: r24v7 */
    /* JADX WARN: Type inference failed for: r24v8 */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r2v52, types: [int] */
    /* JADX WARN: Type inference failed for: r2v88 */
    /* JADX WARN: Type inference failed for: r32v1 */
    /* JADX WARN: Type inference failed for: r32v4 */
    /* JADX WARN: Type inference failed for: r3v47 */
    /* JADX WARN: Type inference failed for: r3v48, types: [int] */
    /* JADX WARN: Type inference failed for: r3v50 */
    /* JADX WARN: Type inference failed for: r41v0 */
    /* JADX WARN: Type inference failed for: r4v9, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v27, types: [android.util.SparseArray] */
    /* JADX WARN: Type inference failed for: r6v18, types: [org.telegram.ui.ActionBar.AlertDialog$Builder] */
    /* JADX WARN: Type inference failed for: r6v19, types: [org.telegram.ui.ActionBar.AlertDialog$Builder] */
    /* JADX WARN: Type inference failed for: r6v21, types: [org.telegram.ui.ActionBar.AlertDialog$Builder] */
    /* JADX WARN: Type inference failed for: r6v22, types: [org.telegram.ui.ActionBar.AlertDialog$Builder] */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v29 */
    /* JADX WARN: Type inference failed for: r6v30 */
    /* JADX WARN: Type inference failed for: r6v31 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15, types: [int] */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17, types: [int] */
    /* JADX WARN: Type inference failed for: r9v35 */
    /* JADX WARN: Type inference failed for: r9v36 */
    /* JADX WARN: Type inference failed for: r9v37 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void createDeleteMessagesAlert(final BaseFragment baseFragment, final TLRPC.User user, final TLRPC.Chat chat, final TLRPC.EncryptedChat encryptedChat, final TLRPC.ChatFull chatFull, final long j, final MessageObject messageObject, final SparseArray[] sparseArrayArr, final MessageObject.GroupedMessages groupedMessages, final int i, final int i2, TLRPC.ChannelParticipant[] channelParticipantArr, final Runnable runnable, final Runnable runnable2, final Theme.ResourcesProvider resourcesProvider) {
        Activity parentActivity;
        int size;
        TLRPC.Chat chat2;
        long j2;
        long jMakeEncryptedDialogId;
        final int i3;
        ?? r22;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i4;
        int i5;
        boolean z5;
        boolean z6;
        int i6;
        int i7;
        int i8;
        ?? r0;
        boolean z7;
        int i9;
        boolean z8;
        boolean z9;
        TLRPC.MessageAction messageAction;
        ?? r02;
        final boolean z10;
        int i10;
        ?? r6;
        int i11;
        String str;
        TextView textView;
        TextView textView2;
        ?? r03;
        int i12;
        boolean z11;
        TLRPC.MessageAction messageAction2;
        ?? r21;
        boolean z12;
        boolean z13;
        int i13;
        int i14;
        TLRPC.Message message;
        boolean z14 = i2 == 1;
        boolean z15 = i2 == 3;
        if (baseFragment == null) {
            return;
        }
        if ((user == null && chat == null && encryptedChat == null) || (parentActivity = baseFragment.getParentActivity()) == null) {
            return;
        }
        final int currentAccount = baseFragment.getCurrentAccount();
        ?? builder = new AlertDialog.Builder(parentActivity, resourcesProvider);
        builder.setDimAlpha(runnable2 != null ? 0.5f : 0.6f);
        if (groupedMessages != null) {
            size = groupedMessages.messages.size();
        } else {
            size = messageObject != null ? 1 : sparseArrayArr[0].size() + sparseArrayArr[1].size();
        }
        if (encryptedChat != null) {
            jMakeEncryptedDialogId = DialogObject.makeEncryptedDialogId(encryptedChat.f1672id);
        } else if (user != null) {
            jMakeEncryptedDialogId = user.f1825id;
        } else {
            chat2 = chat;
            j2 = -chat2.f1660id;
            if (z14) {
                if (messageObject != null && (message = messageObject.messageOwner) != null && (i13 = message.schedule_repeat_period) > 0) {
                    i14 = message.date;
                } else if (groupedMessages == null || groupedMessages.messages.isEmpty() || groupedMessages.messages.get(0) == null || groupedMessages.messages.get(0).messageOwner == null || groupedMessages.messages.get(0).messageOwner.schedule_repeat_period <= 0) {
                    i13 = 0;
                    i14 = 0;
                } else {
                    i14 = groupedMessages.messages.get(0).messageOwner.date;
                    i13 = groupedMessages.messages.get(0).messageOwner.schedule_repeat_period;
                }
                if (i14 > 0 && i13 > 0) {
                    String string = LocaleController.formatString(C2888R.string.MessageScheduledRepeatDeletePostponeSeconds, Integer.valueOf(i13));
                    if (i13 == 31536000) {
                        string = LocaleController.getString(C2888R.string.MessageScheduledRepeatDeletePostponeYear);
                    } else if (i13 >= 2592000) {
                        string = LocaleController.formatPluralString("MessageScheduledRepeatDeletePostponeMonths", i13 / 2592000, new Object[0]);
                    } else if (i13 >= 604800) {
                        string = LocaleController.formatPluralString("MessageScheduledRepeatDeletePostponeWeeks", i13 / 604800, new Object[0]);
                    } else if (i13 >= 86400) {
                        string = LocaleController.formatPluralString("MessageScheduledRepeatDeletePostponeDays", i13 / 86400, new Object[0]);
                    }
                    String str2 = string;
                    AlertDialog.Builder message2 = new AlertDialog.Builder(parentActivity, resourcesProvider).setTitle(LocaleController.getString(C2888R.string.MessageScheduledRepeatDeleteTitle)).setMessage(LocaleController.getString(C2888R.string.MessageScheduledRepeatDeleteText));
                    final int i15 = i13;
                    final int i16 = i14;
                    final long j3 = j2;
                    final boolean z16 = z15;
                    message2.setNegativeButton(str2, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda89
                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                        public final void onClick(AlertDialog alertDialog, int i17) {
                            AlertsCreator.m8477$r8$lambda$AzUxfM7hhtIfeHaEYAteEGeCw(groupedMessages, currentAccount, baseFragment, i16, i15, messageObject, alertDialog, i17);
                        }
                    }).setNeutralButton(LocaleController.getString(C2888R.string.MessageScheduledRepeatDeleteAll), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda95
                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                        public final void onClick(AlertDialog alertDialog, int i17) {
                            AlertsCreator.$r8$lambda$doHB_k0Km2EjKnMBSSNXxqiYMqg(j3, z16, currentAccount, messageObject, groupedMessages, encryptedChat, j, i, i2, sparseArrayArr, runnable, alertDialog, i17);
                        }
                    }).setPositiveButton(LocaleController.getString(C2888R.string.Cancel), null).makeRed(-2).makeRed(-3).setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda96
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            AlertsCreator.m8514$r8$lambda$iRGAX312z0_WTqtjl6dHiHdXFs(runnable2, dialogInterface);
                        }
                    }).show();
                    return;
                }
            }
            final Runnable runnable3 = runnable2;
            final long j4 = j2;
            boolean z17 = z15;
            i3 = currentAccount;
            int currentTime = ConnectionsManager.getInstance(i3).getCurrentTime();
            MessagesController.getInstance(i3).config.starsSuggestedPostAgeMin.get(TimeUnit.SECONDS);
            if (messageObject == null) {
                if (messageObject.isDice()) {
                    boolean z18 = false;
                    z12 = z18;
                    if (Math.abs(currentTime - messageObject.messageOwner.date) <= 86400) {
                        z4 = false;
                        z13 = z18;
                    }
                    if (messageObject.isPaidSuggestedPostProtected()) {
                        z2 = z17;
                        z3 = z13 ? 1 : 0;
                        z = z3 ? 1 : 0;
                        r22 = z13;
                    } else {
                        TLRPC.Message message3 = messageObject.messageOwner;
                        z3 = message3.paid_suggested_post_stars;
                        z = message3.paid_suggested_post_ton;
                        z2 = z17;
                        r22 = z13;
                    }
                } else {
                    z12 = false;
                }
                z4 = true;
                z13 = z12;
                if (messageObject.isPaidSuggestedPostProtected()) {
                }
            } else {
                r22 = 0;
                int i17 = 0;
                boolean z19 = false;
                z = false;
                boolean z20 = false;
                while (i17 < 2) {
                    int i18 = 0;
                    while (true) {
                        i4 = i17;
                        if (i18 < sparseArrayArr[i17].size()) {
                            MessageObject messageObject2 = (MessageObject) sparseArrayArr[i4].valueAt(i18);
                            if (messageObject2.isDice()) {
                                i5 = i18;
                                z5 = z17;
                                if (Math.abs(currentTime - messageObject2.messageOwner.date) > 86400) {
                                }
                                if (!messageObject2.isPaidSuggestedPostProtected()) {
                                    TLRPC.Message message4 = messageObject2.messageOwner;
                                    z19 |= message4.paid_suggested_post_stars;
                                    z = (z ? 1 : 0) | (message4.paid_suggested_post_ton ? 1 : 0);
                                }
                                i18 = i5 + 1;
                                i17 = i4;
                                z17 = z5;
                            } else {
                                i5 = i18;
                                z5 = z17;
                            }
                            z20 = true;
                            if (!messageObject2.isPaidSuggestedPostProtected()) {
                            }
                            i18 = i5 + 1;
                            i17 = i4;
                            z17 = z5;
                        }
                    }
                    i17 = i4 + 1;
                    z17 = z17;
                }
                z2 = z17;
                z3 = z19;
                z4 = z20;
            }
            if (groupedMessages != null) {
                ?? r04 = r22;
                while (r04 < groupedMessages.messages.size()) {
                    MessageObject messageObject3 = groupedMessages.messages.get(r04);
                    if (messageObject3.isPaidSuggestedPostProtected()) {
                        TLRPC.Message message5 = messageObject3.messageOwner;
                        r21 = r04;
                        boolean z21 = (message5.paid_suggested_post_stars ? 1 : 0) | (z3 ? 1 : 0);
                        z = (message5.paid_suggested_post_ton ? 1 : 0) | (z ? 1 : 0);
                        z3 = z21;
                    } else {
                        r21 = r04;
                    }
                    r04 = r21 + 1;
                }
            }
            boolean z22 = z4;
            boolean z23 = z;
            z6 = z3;
            final boolean[] zArr = new boolean[1];
            ?? r05 = (user == null && MessagesController.getInstance(i3).canRevokePmInbox) ? 1 : r22;
            if (user == null) {
                i6 = MessagesController.getInstance(i3).revokeTimePmLimit;
            } else {
                i6 = MessagesController.getInstance(i3).revokeTimeLimit;
            }
            ?? r24 = (encryptedChat == null || user == null || r05 == 0 || i6 != Integer.MAX_VALUE) ? r22 : 1;
            if (chat2 == null && chat2.megagroup && !z14 && !z2) {
                ArrayList arrayList = new ArrayList();
                if (messageObject != null) {
                    TLRPC.MessageAction messageAction3 = messageObject.messageOwner.action;
                    if (messageAction3 == null || (messageAction3 instanceof TLRPC.TL_messageActionEmpty) || (messageAction3 instanceof TLRPC.TL_messageActionChatDeleteUser) || (messageAction3 instanceof TLRPC.TL_messageActionChatJoinedByLink) || (messageAction3 instanceof TLRPC.TL_messageActionChatAddUser)) {
                        if (groupedMessages != null) {
                            arrayList.addAll(groupedMessages.messages);
                        } else {
                            arrayList.add(messageObject);
                        }
                    }
                    r03 = (!messageObject.isSendError() && messageObject.getDialogId() == j && ((messageAction2 = messageObject.messageOwner.action) == null || (messageAction2 instanceof TLRPC.TL_messageActionEmpty)) && messageObject.isOut() && currentTime - messageObject.messageOwner.date <= i6) ? 1 : r22;
                } else {
                    ?? r9 = r22;
                    int i19 = 1;
                    while (i19 >= 0) {
                        ?? r2 = r22;
                        ?? r92 = r9;
                        while (r2 < sparseArrayArr[i19].size()) {
                            MessageObject messageObject4 = (MessageObject) sparseArrayArr[i19].valueAt(r2);
                            ?? r32 = r2;
                            if (i19 == 1 && messageObject4.isOut()) {
                                TLRPC.Message message6 = messageObject4.messageOwner;
                                i12 = i19;
                                if (message6.action == null && currentTime - message6.date <= i6) {
                                    r92++;
                                }
                            } else {
                                i12 = i19;
                            }
                            arrayList.add(messageObject4);
                            i19 = i12;
                            r2 = (r32 == true ? 1 : 0) + 1;
                            r92 = r92;
                        }
                        i19--;
                        r9 = r92;
                    }
                    r03 = r9;
                }
                final long clientUserId = UserConfig.getInstance(i3).getClientUserId();
                ArrayList arrayList2 = (ArrayList) Collection.EL.stream(arrayList).mapToLong(new ToLongFunction() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda97
                    @Override // java.util.function.ToLongFunction
                    public final long applyAsLong(Object obj) {
                        return ((MessageObject) obj).getFromChatId();
                    }
                }).distinct().mapToObj(new LongFunction() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda98
                    @Override // java.util.function.LongFunction
                    public final Object apply(long j5) {
                        return AlertsCreator.m8529$r8$lambda$upY3PgLe8AgSiCCJziTxHggxrE(i3, j5);
                    }
                }).filter(new Predicate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda99
                    public /* synthetic */ Predicate and(Predicate predicate) {
                        return Predicate$CC.$default$and(this, predicate);
                    }

                    public /* synthetic */ Predicate negate() {
                        return Predicate$CC.$default$negate(this);
                    }

                    /* JADX INFO: renamed from: or */
                    public /* synthetic */ Predicate m1243or(Predicate predicate) {
                        return Predicate$CC.$default$or(this, predicate);
                    }

                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return Objects.nonNull((TLObject) obj);
                    }
                }).filter(new Predicate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda100
                    public /* synthetic */ Predicate and(Predicate predicate) {
                        return Predicate$CC.$default$and(this, predicate);
                    }

                    public /* synthetic */ Predicate negate() {
                        return Predicate$CC.$default$negate(this);
                    }

                    /* JADX INFO: renamed from: or */
                    public /* synthetic */ Predicate m1242or(Predicate predicate) {
                        return Predicate$CC.$default$or(this, predicate);
                    }

                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return AlertsCreator.m8498$r8$lambda$U3oC_z2inzc5A0eKUBoXiqFAKI(clientUserId, (TLObject) obj);
                    }
                }).collect(Collectors.toCollection(new ExportMapper$$ExternalSyntheticLambda2()));
                if (!arrayList2.isEmpty()) {
                    if (channelParticipantArr == null) {
                        final AlertDialog[] alertDialogArr = new AlertDialog[1];
                        alertDialogArr[r22] = new AlertDialog(parentActivity, 3);
                        final int size2 = arrayList2.size();
                        final TLRPC.ChannelParticipant[] channelParticipantArr2 = new TLRPC.ChannelParticipant[size2];
                        int[] iArr = new int[size2];
                        int[] iArr2 = new int[1];
                        final ?? r3 = r22;
                        ?? r1 = arrayList2;
                        while (r3 < size2) {
                            TLRPC.TL_channels_getParticipant tL_channels_getParticipant = new TLRPC.TL_channels_getParticipant();
                            tL_channels_getParticipant.channel = MessagesController.getInputChannel(chat);
                            tL_channels_getParticipant.participant = MessagesController.getInputPeer((TLObject) r1.get(r3));
                            ?? r10 = r1;
                            final int[] iArr3 = iArr2;
                            final int[] iArr4 = iArr;
                            final Runnable runnable4 = runnable3;
                            ?? r8 = r3;
                            iArr4[r8 == true ? 1 : 0] = ConnectionsManager.getInstance(i3).sendRequest(tL_channels_getParticipant, new RequestDelegate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda101
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda158
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            AlertsCreator.$r8$lambda$dU_8Yeta6QNmiIXhtz3DPnbIoGc(iArr, iArr, i, tLObject, channelParticipantArr, i, alertDialogArr, baseFragment, user, chat, encryptedChat, chatFull, j, messageObject, sparseArrayArr, groupedMessages, i, i, runnable, runnable, resourcesProvider);
                                        }
                                    });
                                }
                            });
                            runnable3 = runnable2;
                            size2 = size2;
                            iArr = iArr4;
                            iArr2 = iArr3;
                            r3 = (r8 == true ? 1 : 0) + 1;
                            i3 = i3;
                            r1 = r10;
                        }
                        final int[] iArr5 = iArr;
                        final int i20 = i3;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda102
                            @Override // java.lang.Runnable
                            public final void run() {
                                AlertsCreator.$r8$lambda$p42QutKrvUHxXtcO074vcLYNnL4(alertDialogArr, iArr5, i20, runnable2, baseFragment);
                            }
                        }, 1000L);
                        return;
                    }
                    DeleteMessagesBottomSheet deleteMessagesBottomSheet = new DeleteMessagesBottomSheet(baseFragment, chat, arrayList, arrayList2, channelParticipantArr, j, i, i2, runnable);
                    if (runnable3 != null) {
                        deleteMessagesBottomSheet.setOnHideListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda90
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                runnable3.run();
                            }
                        });
                    }
                    deleteMessagesBottomSheet.show();
                    return;
                }
                i7 = i3;
                if (r03 <= 0 || !z22) {
                    z11 = false;
                } else {
                    ?? frameLayout = new FrameLayout(parentActivity);
                    ?? checkBoxCell = new CheckBoxCell(parentActivity, 1, resourcesProvider);
                    checkBoxCell.setBackgroundDrawable(Theme.getSelectorDrawable(r22));
                    ?? r4 = r22;
                    checkBoxCell.setText(LocaleController.getString(C2888R.string.DeleteMessagesOption), _UrlKt.FRAGMENT_ENCODE_SET, r4, r4);
                    checkBoxCell.setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(16.0f) : AndroidUtilities.m1124dp(8.0f), 0, LocaleController.isRTL ? AndroidUtilities.m1124dp(8.0f) : AndroidUtilities.m1124dp(16.0f), 0);
                    frameLayout.addView(checkBoxCell, LayoutHelper.createFrame(-1, 48.0f, 51, 0.0f, 0.0f, 0.0f, 0.0f));
                    zArr[0] = true;
                    checkBoxCell.setChecked(true, true);
                    checkBoxCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda91
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            AlertsCreator.$r8$lambda$1l6eKpuO2AizsHVrLdtMcCnnRyo(zArr, view);
                        }
                    });
                    builder.setView(frameLayout);
                    builder.setCustomViewOffset(9);
                    z11 = true;
                }
                z7 = z11;
                i8 = 1;
                r0 = r03;
            } else {
                i7 = i3;
                if (z14 && !z2 && !ChatObject.isChannel(chat) && encryptedChat == null) {
                    if ((user == null || user.f1825id == UserConfig.getInstance(i7).getClientUserId() || (user.bot && !user.support)) && chat == null) {
                        i9 = 0;
                        z8 = false;
                    } else if (messageObject != null) {
                        int i21 = (messageObject.isSendError() || !((messageAction = messageObject.messageOwner.action) == null || (messageAction instanceof TLRPC.TL_messageActionEmpty) || (messageAction instanceof TLRPC.TL_messageActionPhoneCall) || (messageAction instanceof TLRPC.TL_messageActionPinMessage) || (messageAction instanceof TLRPC.TL_messageActionGeoProximityReached) || (messageAction instanceof TLRPC.TL_messageActionSetChatTheme)) || (!(messageObject.isOut() || r05 != 0 || ChatObject.hasAdminRights(chat)) || currentTime - messageObject.messageOwner.date > i6)) ? 0 : 1;
                        z8 = !messageObject.isOut();
                        i9 = i21;
                    } else {
                        int i22 = 1;
                        boolean z24 = false;
                        int i23 = 0;
                        ?? r06 = r05;
                        while (i22 >= 0) {
                            ?? r322 = r06;
                            int i24 = 0;
                            while (i24 < sparseArrayArr[i22].size()) {
                                MessageObject messageObject5 = (MessageObject) sparseArrayArr[i22].valueAt(i24);
                                int i25 = i24;
                                TLRPC.MessageAction messageAction4 = messageObject5.messageOwner.action;
                                if ((messageAction4 == null || (messageAction4 instanceof TLRPC.TL_messageActionEmpty) || (messageAction4 instanceof TLRPC.TL_messageActionPhoneCall) || (messageAction4 instanceof TLRPC.TL_messageActionPinMessage) || (messageAction4 instanceof TLRPC.TL_messageActionGeoProximityReached)) && ((messageObject5.isOut() || r322 != 0 || (chat != null && ChatObject.canBlockUsers(chat))) && currentTime - messageObject5.messageOwner.date <= i6)) {
                                    i23++;
                                    if (!z24 && !messageObject5.isOut()) {
                                        z24 = true;
                                    }
                                }
                                i24 = i25 + 1;
                            }
                            i22--;
                            r06 = r322 == true ? 1 : 0;
                        }
                        z8 = z24;
                        i9 = i23;
                    }
                    if (i9 <= 0 || !z22 || (user != null && UserObject.isDeleted(user))) {
                        i8 = 1;
                        z9 = z8;
                        z7 = false;
                        r02 = i9;
                    } else {
                        FrameLayout frameLayout2 = new FrameLayout(parentActivity);
                        CheckBoxCell checkBoxCell2 = new CheckBoxCell(parentActivity, 1, resourcesProvider);
                        checkBoxCell2.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                        if (r24 != 0) {
                            checkBoxCell2.setText(LocaleController.formatString("DeleteMessagesOptionAlso", C2888R.string.DeleteMessagesOptionAlso, UserObject.getFirstName(user)), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                        } else if (chat == null || (!z8 && i9 != size)) {
                            checkBoxCell2.setText(LocaleController.getString(C2888R.string.DeleteMessagesOption), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                        } else {
                            checkBoxCell2.setText(LocaleController.getString(C2888R.string.DeleteForAll), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                        }
                        checkBoxCell2.setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(16.0f) : AndroidUtilities.m1124dp(8.0f), 0, LocaleController.isRTL ? AndroidUtilities.m1124dp(8.0f) : AndroidUtilities.m1124dp(16.0f), 0);
                        frameLayout2.addView(checkBoxCell2, LayoutHelper.createFrame(-1, 48.0f, 51, 0.0f, 0.0f, 0.0f, 0.0f));
                        i8 = 1;
                        zArr[0] = true;
                        checkBoxCell2.setChecked(true, true);
                        checkBoxCell2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda92
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                AlertsCreator.$r8$lambda$6FDgE9NoMzDLnnjQUOmxLp3N4fQ(zArr, view);
                            }
                        });
                        builder.setView(frameLayout2);
                        builder.setCustomViewOffset(9);
                        z9 = z8;
                        z7 = true;
                        r02 = i9;
                    }
                    ?? r41 = r02;
                    final int i26 = i7;
                    int i27 = size;
                    int i28 = i8;
                    z10 = z2;
                    AlertDialog.OnButtonClickListener onButtonClickListener = new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda93
                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                        public final void onClick(AlertDialog alertDialog, int i29) {
                            AlertsCreator.$r8$lambda$qVOr5vaXyqm5TE54Mq70QVxTm58(j4, z10, i26, messageObject, groupedMessages, encryptedChat, j, i, zArr, i2, sparseArrayArr, runnable, alertDialog, i29);
                        }
                    };
                    if (z10) {
                        i10 = i27;
                        if (i10 == i28) {
                            ?? r62 = builder;
                            r62.setTitle(LocaleController.getString(C2888R.string.UnsaveSingleMessagesTitle));
                            r6 = r62;
                        } else {
                            ?? r63 = builder;
                            int i29 = C2888R.string.UnsaveMessagesTitle;
                            Object[] objArr = new Object[i28];
                            objArr[0] = LocaleController.formatPluralString("messages", i10, new Object[0]);
                            r63.setTitle(LocaleController.formatString(i29, objArr));
                            r6 = r63;
                        }
                    } else {
                        ?? r64 = builder;
                        i10 = i27;
                        if (i10 == i28) {
                            r64.setTitle(LocaleController.getString(C2888R.string.DeleteSingleMessagesTitle));
                            r6 = r64;
                        } else {
                            int i30 = C2888R.string.DeleteMessagesTitle;
                            Object[] objArr2 = new Object[i28];
                            objArr2[0] = LocaleController.formatPluralString("messages", i10, new Object[0]);
                            r64.setTitle(LocaleController.formatString(i30, objArr2));
                            r6 = r64;
                        }
                    }
                    if (z10) {
                        if (i10 == i28) {
                            r6.setMessage(LocaleController.getString(C2888R.string.AreYouSureUnsaveSingleMessage));
                        } else {
                            r6.setMessage(LocaleController.getString(C2888R.string.AreYouSureUnsaveFewMessages));
                        }
                    } else if (chat == null || !z9) {
                        if (z7 && r24 == 0 && r41 != i10) {
                            if (chat != null) {
                                int i31 = C2888R.string.DeleteMessagesTextGroup;
                                Object[] objArr3 = new Object[i28];
                                objArr3[0] = LocaleController.formatPluralString("messages", r41 == true ? 1 : 0, new Object[0]);
                                r6.setMessage(LocaleController.formatString("DeleteMessagesTextGroup", i31, objArr3));
                            } else {
                                int i32 = C2888R.string.DeleteMessagesText;
                                String pluralString = LocaleController.formatPluralString("messages", r41 == true ? 1 : 0, new Object[0]);
                                String firstName = UserObject.getFirstName(user);
                                Object[] objArr4 = new Object[2];
                                objArr4[0] = pluralString;
                                objArr4[i28] = firstName;
                                r6.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("DeleteMessagesText", i32, objArr4)));
                            }
                        } else if (chat == null || !chat.megagroup || z14) {
                            if (i10 == i28) {
                                r6.setMessage(LocaleController.getString(C2888R.string.AreYouSureDeleteSingleMessage));
                            } else {
                                r6.setMessage(LocaleController.getString(C2888R.string.AreYouSureDeleteFewMessages));
                            }
                        } else if (i10 == i28) {
                            r6.setMessage(LocaleController.getString(C2888R.string.AreYouSureDeleteSingleMessageMega));
                        } else {
                            r6.setMessage(LocaleController.getString(C2888R.string.AreYouSureDeleteFewMessagesMega));
                        }
                    } else if (z7 && r41 != i10) {
                        int i33 = C2888R.string.DeleteMessagesTextGroupPart;
                        Object[] objArr5 = new Object[i28];
                        objArr5[0] = LocaleController.formatPluralString("messages", r41 == true ? 1 : 0, new Object[0]);
                        r6.setMessage(LocaleController.formatString(i33, objArr5));
                    } else if (i10 == i28) {
                        r6.setMessage(LocaleController.getString(C2888R.string.AreYouSureDeleteSingleMessage));
                    } else {
                        r6.setMessage(LocaleController.getString(C2888R.string.AreYouSureDeleteFewMessages));
                    }
                    if (messageObject != null) {
                        i11 = (!messageObject.isGiveaway() || messageObject.isForwarded()) ? 0 : i28;
                        if (i11 != 0) {
                            long j5 = ((long) ((TLRPC.TL_messageMediaGiveaway) messageObject.messageOwner.media).until_date) * 1000;
                            String str3 = LocaleController.getInstance().getFormatterGiveawayMonthDayYear().format(new Date(j5));
                            i11 = System.currentTimeMillis() < j5 ? i28 : 0;
                            str = str3;
                        } else {
                            str = null;
                        }
                    } else if (i10 == i28) {
                        str = null;
                        int i34 = 0;
                        for (int i35 = i28; i35 >= 0; i35--) {
                            for (int i36 = 0; i36 < sparseArrayArr[i35].size(); i36++) {
                                MessageObject messageObject6 = (MessageObject) sparseArrayArr[i35].valueAt(i36);
                                int i37 = (!messageObject6.isGiveaway() || messageObject6.isForwarded()) ? 0 : i28;
                                if (i37 != 0) {
                                    long j6 = ((long) ((TLRPC.TL_messageMediaGiveaway) messageObject6.messageOwner.media).until_date) * 1000;
                                    str = LocaleController.getInstance().getFormatterGiveawayMonthDayYear().format(new Date(j6));
                                    i34 = System.currentTimeMillis() < j6 ? i28 : 0;
                                } else {
                                    i34 = i37;
                                }
                            }
                        }
                        i11 = i34;
                    } else {
                        i11 = 0;
                        str = null;
                    }
                    if (z6) {
                        int i38 = (int) MessagesController.getInstance(i26).config.starsSuggestedPostAgeMin.get(TimeUnit.HOURS);
                        r6.setTitle(LocaleController.getString(C2888R.string.SuggestionStarsWillBeLost));
                        int i39 = C2888R.string.SuggestionStarsWillBeLostInfo;
                        Object[] objArr6 = new Object[i28];
                        objArr6[0] = Integer.valueOf(i38);
                        r6.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(i39, objArr6)));
                        r6.setPositiveButton(LocaleController.getString(C2888R.string.SuggestionStarsWillBeLostDelete), onButtonClickListener);
                    } else if (z23) {
                        int i40 = (int) MessagesController.getInstance(i26).config.starsSuggestedPostAgeMin.get(TimeUnit.HOURS);
                        r6.setTitle(LocaleController.getString(C2888R.string.SuggestionTONWillBeLost));
                        int i41 = C2888R.string.SuggestionTONWillBeLostInfo;
                        Object[] objArr7 = new Object[i28];
                        objArr7[0] = Integer.valueOf(i40);
                        r6.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(i41, objArr7)));
                        r6.setPositiveButton(LocaleController.getString(C2888R.string.SuggestionStarsWillBeLostDelete), onButtonClickListener);
                    } else if (i11 == 0 || z10) {
                        r6.setPositiveButton(LocaleController.getString(z10 ? C2888R.string.Remove : C2888R.string.Delete), onButtonClickListener);
                    } else {
                        r6.setTitle(LocaleController.getString(C2888R.string.BoostingGiveawayDeleteMsgTitle));
                        int i42 = C2888R.string.BoostingGiveawayDeleteMsgText;
                        Object[] objArr8 = new Object[i28];
                        objArr8[0] = str;
                        r6.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(i42, objArr8)));
                        r6.setNeutralButton(LocaleController.getString(C2888R.string.Delete), onButtonClickListener);
                    }
                    r6.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
                    r6.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda94
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            AlertsCreator.$r8$lambda$KXuPoDkGVje06oOegNkOZuuV7i8(runnable2, dialogInterface);
                        }
                    });
                    AlertDialog alertDialogCreate = r6.create();
                    baseFragment.showDialog(alertDialogCreate);
                    textView = (TextView) alertDialogCreate.getButton(-1);
                    if (textView != null) {
                        textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                    }
                    textView2 = (TextView) alertDialogCreate.getButton(-3);
                    if (textView2 != null) {
                        alertDialogCreate.getButtonsLayout().setPadding(AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(0.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(12.0f));
                        ((ViewGroup.MarginLayoutParams) alertDialogCreate.getButtonsLayout().getLayoutParams()).topMargin = AndroidUtilities.m1124dp(-8.0f);
                        textView2.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                        return;
                    }
                    return;
                }
                i8 = 1;
                r0 = 0;
                z7 = false;
            }
            z9 = false;
            r02 = r0;
            ?? r412 = r02;
            final int i262 = i7;
            int i272 = size;
            int i282 = i8;
            z10 = z2;
            AlertDialog.OnButtonClickListener onButtonClickListener2 = new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda93
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i292) {
                    AlertsCreator.$r8$lambda$qVOr5vaXyqm5TE54Mq70QVxTm58(j4, z10, i262, messageObject, groupedMessages, encryptedChat, j, i, zArr, i2, sparseArrayArr, runnable, alertDialog, i292);
                }
            };
            if (z10) {
            }
            if (z10) {
            }
            if (messageObject != null) {
            }
            if (z6) {
            }
            r6.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
            r6.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda94
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    AlertsCreator.$r8$lambda$KXuPoDkGVje06oOegNkOZuuV7i8(runnable2, dialogInterface);
                }
            });
            AlertDialog alertDialogCreate2 = r6.create();
            baseFragment.showDialog(alertDialogCreate2);
            textView = (TextView) alertDialogCreate2.getButton(-1);
            if (textView != null) {
            }
            textView2 = (TextView) alertDialogCreate2.getButton(-3);
            if (textView2 != null) {
            }
        }
        j2 = jMakeEncryptedDialogId;
        chat2 = chat;
        if (z14) {
        }
        final Runnable runnable32 = runnable2;
        final long j42 = j2;
        boolean z172 = z15;
        i3 = currentAccount;
        int currentTime2 = ConnectionsManager.getInstance(i3).getCurrentTime();
        MessagesController.getInstance(i3).config.starsSuggestedPostAgeMin.get(TimeUnit.SECONDS);
        if (messageObject == null) {
        }
        if (groupedMessages != null) {
        }
        boolean z222 = z4;
        boolean z232 = z;
        z6 = z3;
        final boolean[] zArr2 = new boolean[1];
        if (user == null) {
        }
        if (user == null) {
        }
        if (encryptedChat == null) {
        }
        if (chat2 == null) {
            i7 = i3;
            if (z14) {
            }
            i8 = 1;
            r0 = 0;
            z7 = false;
            z9 = false;
            r02 = r0;
        }
        ?? r4122 = r02;
        final int i2622 = i7;
        int i2722 = size;
        int i2822 = i8;
        z10 = z2;
        AlertDialog.OnButtonClickListener onButtonClickListener22 = new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda93
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i292) {
                AlertsCreator.$r8$lambda$qVOr5vaXyqm5TE54Mq70QVxTm58(j42, z10, i2622, messageObject, groupedMessages, encryptedChat, j, i, zArr2, i2, sparseArrayArr, runnable, alertDialog, i292);
            }
        };
        if (z10) {
        }
        if (z10) {
        }
        if (messageObject != null) {
        }
        if (z6) {
        }
        r6.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        r6.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda94
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AlertsCreator.$r8$lambda$KXuPoDkGVje06oOegNkOZuuV7i8(runnable2, dialogInterface);
            }
        });
        AlertDialog alertDialogCreate22 = r6.create();
        baseFragment.showDialog(alertDialogCreate22);
        textView = (TextView) alertDialogCreate22.getButton(-1);
        if (textView != null) {
        }
        textView2 = (TextView) alertDialogCreate22.getButton(-3);
        if (textView2 != null) {
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$AzUxf-M7hhtIf-eHaEYAteEGeCw, reason: not valid java name */
    public static /* synthetic */ void m8477$r8$lambda$AzUxfM7hhtIfeHaEYAteEGeCw(MessageObject.GroupedMessages groupedMessages, int i, BaseFragment baseFragment, int i2, int i3, MessageObject messageObject, AlertDialog alertDialog, int i4) {
        if (groupedMessages != null && !groupedMessages.messages.isEmpty()) {
            SendMessagesHelper.getInstance(i).editMessage(groupedMessages.messages.get(0), null, false, baseFragment, null, i2 + i3, i3);
        } else {
            SendMessagesHelper.getInstance(i).editMessage(messageObject, null, false, baseFragment, null, i2 + i3, i3);
        }
    }

    public static /* synthetic */ void $r8$lambda$doHB_k0Km2EjKnMBSSNXxqiYMqg(long j, boolean z, int i, MessageObject messageObject, MessageObject.GroupedMessages groupedMessages, TLRPC.EncryptedChat encryptedChat, long j2, int i2, int i3, SparseArray[] sparseArrayArr, Runnable runnable, AlertDialog alertDialog, int i4) {
        ArrayList<Long> arrayList;
        TLRPC.Peer peer;
        long clientUserId = z ? UserConfig.getInstance(i).getClientUserId() : j;
        ArrayList<Long> arrayList2 = null;
        long j3 = 0;
        if (messageObject != null) {
            ArrayList<Integer> arrayList3 = new ArrayList<>();
            if (groupedMessages != null) {
                for (int i5 = 0; i5 < groupedMessages.messages.size(); i5++) {
                    MessageObject messageObject2 = groupedMessages.messages.get(i5);
                    arrayList3.add(Integer.valueOf(messageObject2.getId()));
                    if (encryptedChat != null && messageObject2.messageOwner.random_id != 0 && messageObject2.type != 10) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList<>();
                        }
                        arrayList2.add(Long.valueOf(messageObject2.messageOwner.random_id));
                    }
                }
            } else {
                arrayList3.add(Integer.valueOf(messageObject.getId()));
                if (encryptedChat != null && messageObject.messageOwner.random_id != 0 && messageObject.type != 10) {
                    arrayList2 = new ArrayList<>();
                    arrayList2.add(Long.valueOf(messageObject.messageOwner.random_id));
                }
            }
            MessagesController.getInstance(i).deleteMessages(arrayList3, arrayList2, encryptedChat, (j2 == 0 || (peer = messageObject.messageOwner.peer_id) == null || peer.chat_id != (-j2)) ? clientUserId : j2, i2, true, i3);
        } else {
            int i6 = 1;
            while (i6 >= 0) {
                ArrayList<Integer> arrayList4 = new ArrayList<>();
                for (int i7 = 0; i7 < sparseArrayArr[i6].size(); i7++) {
                    arrayList4.add(Integer.valueOf(sparseArrayArr[i6].keyAt(i7)));
                }
                if (encryptedChat != null) {
                    ArrayList<Long> arrayList5 = new ArrayList<>();
                    int i8 = 0;
                    while (i8 < sparseArrayArr[i6].size()) {
                        MessageObject messageObject3 = (MessageObject) sparseArrayArr[i6].valueAt(i8);
                        long j4 = j3;
                        long j5 = messageObject3.messageOwner.random_id;
                        if (j5 != j4 && messageObject3.type != 10) {
                            arrayList5.add(Long.valueOf(j5));
                        }
                        i8++;
                        j3 = j4;
                    }
                    arrayList = arrayList5;
                } else {
                    arrayList = null;
                }
                long j6 = j3;
                MessagesController.getInstance(i).deleteMessages(arrayList4, arrayList, encryptedChat, (i6 != 1 || j2 == j6) ? clientUserId : j2, i2, true, i3);
                sparseArrayArr[i6].clear();
                i6--;
                j3 = j6;
            }
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$iRGAX31-2z0_WTqtjl6dHiHdXFs, reason: not valid java name */
    public static /* synthetic */ void m8514$r8$lambda$iRGAX312z0_WTqtjl6dHiHdXFs(Runnable runnable, DialogInterface dialogInterface) {
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$upY3PgLe8AgSiCCJzi-TxHggxrE, reason: not valid java name */
    public static /* synthetic */ TLObject m8529$r8$lambda$upY3PgLe8AgSiCCJziTxHggxrE(int i, long j) {
        if (j > 0) {
            return MessagesController.getInstance(i).getUser(Long.valueOf(j));
        }
        return MessagesController.getInstance(i).getChat(Long.valueOf(-j));
    }

    /* JADX INFO: renamed from: $r8$lambda$U3oC_z2inzc5A0eKUBoXi-qFAKI, reason: not valid java name */
    public static /* synthetic */ boolean m8498$r8$lambda$U3oC_z2inzc5A0eKUBoXiqFAKI(long j, TLObject tLObject) {
        if (tLObject instanceof TLRPC.User) {
            return ((TLRPC.User) tLObject).f1825id != j;
        }
        if (tLObject instanceof TLRPC.Chat) {
            return !ChatObject.hasAdminRights((TLRPC.Chat) tLObject);
        }
        return false;
    }

    public static /* synthetic */ void $r8$lambda$dU_8Yeta6QNmiIXhtz3DPnbIoGc(int[] iArr, int[] iArr2, int i, TLObject tLObject, TLRPC.ChannelParticipant[] channelParticipantArr, int i2, AlertDialog[] alertDialogArr, BaseFragment baseFragment, TLRPC.User user, TLRPC.Chat chat, TLRPC.EncryptedChat encryptedChat, TLRPC.ChatFull chatFull, long j, MessageObject messageObject, SparseArray[] sparseArrayArr, MessageObject.GroupedMessages groupedMessages, int i3, int i4, Runnable runnable, Runnable runnable2, Theme.ResourcesProvider resourcesProvider) {
        iArr[0] = iArr[0] + 1;
        iArr2[i] = 0;
        if (tLObject != null) {
            channelParticipantArr[i] = ((TLRPC.TL_channels_channelParticipant) tLObject).participant;
        }
        if (iArr[0] == i2) {
            try {
                alertDialogArr[0].dismiss();
            } catch (Throwable unused) {
            }
            alertDialogArr[0] = null;
            createDeleteMessagesAlert(baseFragment, user, chat, encryptedChat, chatFull, j, messageObject, sparseArrayArr, groupedMessages, i3, i4, channelParticipantArr, runnable, runnable2, resourcesProvider);
        }
    }

    public static /* synthetic */ void $r8$lambda$p42QutKrvUHxXtcO074vcLYNnL4(AlertDialog[] alertDialogArr, final int[] iArr, final int i, final Runnable runnable, BaseFragment baseFragment) {
        AlertDialog alertDialog = alertDialogArr[0];
        if (alertDialog == null) {
            return;
        }
        alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda147
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                AlertsCreator.$r8$lambda$ETRWeVgl2nw7uSxfjUUb7dt_R68(iArr, i, runnable, dialogInterface);
            }
        });
        baseFragment.showDialog(alertDialogArr[0]);
    }

    public static /* synthetic */ void $r8$lambda$ETRWeVgl2nw7uSxfjUUb7dt_R68(int[] iArr, int i, Runnable runnable, DialogInterface dialogInterface) {
        for (int i2 : iArr) {
            if (i2 != 0) {
                ConnectionsManager.getInstance(i).cancelRequest(i2, true);
            }
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public static /* synthetic */ void $r8$lambda$1l6eKpuO2AizsHVrLdtMcCnnRyo(boolean[] zArr, View view) {
        boolean z = !zArr[0];
        zArr[0] = z;
        ((CheckBoxCell) view).setChecked(z, true);
    }

    public static /* synthetic */ void $r8$lambda$6FDgE9NoMzDLnnjQUOmxLp3N4fQ(boolean[] zArr, View view) {
        boolean z = !zArr[0];
        zArr[0] = z;
        ((CheckBoxCell) view).setChecked(z, true);
    }

    public static /* synthetic */ void $r8$lambda$qVOr5vaXyqm5TE54Mq70QVxTm58(long j, boolean z, int i, MessageObject messageObject, MessageObject.GroupedMessages groupedMessages, TLRPC.EncryptedChat encryptedChat, long j2, int i2, boolean[] zArr, int i3, SparseArray[] sparseArrayArr, Runnable runnable, AlertDialog alertDialog, int i4) {
        ArrayList<Long> arrayList;
        TLRPC.Peer peer;
        long clientUserId = z ? UserConfig.getInstance(i).getClientUserId() : j;
        ArrayList<Long> arrayList2 = null;
        long j3 = 0;
        if (messageObject != null) {
            ArrayList<Integer> arrayList3 = new ArrayList<>();
            if (groupedMessages != null) {
                for (int i5 = 0; i5 < groupedMessages.messages.size(); i5++) {
                    MessageObject messageObject2 = groupedMessages.messages.get(i5);
                    arrayList3.add(Integer.valueOf(messageObject2.getId()));
                    if (encryptedChat != null && messageObject2.messageOwner.random_id != 0 && messageObject2.type != 10) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList<>();
                        }
                        arrayList2.add(Long.valueOf(messageObject2.messageOwner.random_id));
                    }
                }
            } else {
                arrayList3.add(Integer.valueOf(messageObject.getId()));
                if (encryptedChat != null && messageObject.messageOwner.random_id != 0 && messageObject.type != 10) {
                    arrayList2 = new ArrayList<>();
                    arrayList2.add(Long.valueOf(messageObject.messageOwner.random_id));
                }
            }
            MessagesController.getInstance(i).deleteMessages(arrayList3, arrayList2, encryptedChat, (j2 == 0 || (peer = messageObject.messageOwner.peer_id) == null || peer.chat_id != (-j2)) ? clientUserId : j2, i2, zArr[0], i3);
        } else {
            int i6 = 1;
            while (i6 >= 0) {
                ArrayList<Integer> arrayList4 = new ArrayList<>();
                for (int i7 = 0; i7 < sparseArrayArr[i6].size(); i7++) {
                    arrayList4.add(Integer.valueOf(sparseArrayArr[i6].keyAt(i7)));
                }
                if (encryptedChat != null) {
                    ArrayList<Long> arrayList5 = new ArrayList<>();
                    int i8 = 0;
                    while (i8 < sparseArrayArr[i6].size()) {
                        MessageObject messageObject3 = (MessageObject) sparseArrayArr[i6].valueAt(i8);
                        long j4 = j3;
                        long j5 = messageObject3.messageOwner.random_id;
                        if (j5 != j4 && messageObject3.type != 10) {
                            arrayList5.add(Long.valueOf(j5));
                        }
                        i8++;
                        j3 = j4;
                    }
                    arrayList = arrayList5;
                } else {
                    arrayList = null;
                }
                long j6 = j3;
                MessagesController.getInstance(i).deleteMessages(arrayList4, arrayList, encryptedChat, (i6 != 1 || j2 == j6) ? clientUserId : j2, i2, zArr[0], i3);
                sparseArrayArr[i6].clear();
                i6--;
                j3 = j6;
            }
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public static /* synthetic */ void $r8$lambda$KXuPoDkGVje06oOegNkOZuuV7i8(Runnable runnable, DialogInterface dialogInterface) {
        if (runnable != null) {
            runnable.run();
        }
    }

    public static void createThemeCreateDialog(final BaseFragment baseFragment, int i, final Theme.ThemeInfo themeInfo, final Theme.ThemeAccent themeAccent) {
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        Activity parentActivity = baseFragment.getParentActivity();
        final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(parentActivity);
        editTextBoldCursor.setBackground(null);
        editTextBoldCursor.setLineColors(Theme.getColor(Theme.key_dialogInputField), Theme.getColor(Theme.key_dialogInputFieldActivated), Theme.getColor(Theme.key_text_RedBold));
        AlertDialog.Builder builder = new AlertDialog.Builder(parentActivity);
        builder.setTitle(LocaleController.getString(C2888R.string.NewTheme));
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Create), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda108
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                AlertsCreator.$r8$lambda$XLrXO3U798RVB6lvyOsmtUEUMPg(alertDialog, i2);
            }
        });
        LinearLayout linearLayout = new LinearLayout(parentActivity);
        linearLayout.setOrientation(1);
        builder.setView(linearLayout);
        TextView textView = new TextView(parentActivity);
        if (i != 0) {
            textView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.EnterThemeNameEdit)));
        } else {
            textView.setText(LocaleController.getString(C2888R.string.EnterThemeName));
        }
        textView.setTextSize(1, 16.0f);
        textView.setPadding(AndroidUtilities.m1124dp(23.0f), AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(23.0f), AndroidUtilities.m1124dp(6.0f));
        int i2 = Theme.key_dialogTextBlack;
        textView.setTextColor(Theme.getColor(i2));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
        editTextBoldCursor.setTextSize(1, 16.0f);
        editTextBoldCursor.setTextColor(Theme.getColor(i2));
        editTextBoldCursor.setMaxLines(1);
        editTextBoldCursor.setLines(1);
        editTextBoldCursor.setInputType(16385);
        editTextBoldCursor.setGravity(51);
        editTextBoldCursor.setSingleLine(true);
        editTextBoldCursor.setImeOptions(6);
        editTextBoldCursor.setCursorColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        editTextBoldCursor.setCursorSize(AndroidUtilities.m1124dp(20.0f));
        editTextBoldCursor.setCursorWidth(1.5f);
        editTextBoldCursor.setPadding(0, AndroidUtilities.m1124dp(4.0f), 0, 0);
        linearLayout.addView(editTextBoldCursor, LayoutHelper.createLinear(-1, 36, 51, 24, 6, 24, 0));
        editTextBoldCursor.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda109
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView2, int i3, KeyEvent keyEvent) {
                return AlertsCreator.$r8$lambda$thD8TrKftonGnzB_U3XGqdjJsJ4(textView2, i3, keyEvent);
            }
        });
        editTextBoldCursor.setText(generateThemeName(themeAccent));
        editTextBoldCursor.setSelection(editTextBoldCursor.length());
        final AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda110
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda149
                    @Override // java.lang.Runnable
                    public final void run() {
                        AlertsCreator.$r8$lambda$CqEtDE_G2poehFJVuRD54rYUUgI(editTextBoldCursor);
                    }
                });
            }
        });
        baseFragment.showDialog(alertDialogCreate);
        editTextBoldCursor.requestFocus();
        alertDialogCreate.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda111
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws Throwable {
                AlertsCreator.$r8$lambda$Yfhu8dsKXDd4s3EV0G3RQ4XWmYg(baseFragment, editTextBoldCursor, themeAccent, themeInfo, alertDialogCreate, view);
            }
        });
    }

    public static /* synthetic */ boolean $r8$lambda$thD8TrKftonGnzB_U3XGqdjJsJ4(TextView textView, int i, KeyEvent keyEvent) {
        AndroidUtilities.hideKeyboard(textView);
        return false;
    }

    public static /* synthetic */ void $r8$lambda$CqEtDE_G2poehFJVuRD54rYUUgI(EditTextBoldCursor editTextBoldCursor) {
        editTextBoldCursor.requestFocus();
        AndroidUtilities.showKeyboard(editTextBoldCursor);
    }

    public static /* synthetic */ void $r8$lambda$Yfhu8dsKXDd4s3EV0G3RQ4XWmYg(final BaseFragment baseFragment, final EditTextBoldCursor editTextBoldCursor, Theme.ThemeAccent themeAccent, Theme.ThemeInfo themeInfo, final AlertDialog alertDialog, View view) throws Throwable {
        if (baseFragment.getParentActivity() == null) {
            return;
        }
        if (editTextBoldCursor.length() == 0) {
            editTextBoldCursor.performHapticFeedback(3, 2);
            AndroidUtilities.shakeView(editTextBoldCursor);
            return;
        }
        if (baseFragment instanceof ThemePreviewActivity) {
            Theme.applyPreviousTheme();
            baseFragment.finishFragment();
        }
        if (themeAccent != null) {
            themeInfo.setCurrentAccentId(themeAccent.f1877id);
            Theme.refreshThemeColors();
            Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda174
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda210
                        @Override // java.lang.Runnable
                        public final void run() throws Throwable {
                            AlertsCreator.processCreate(editTextBoldCursor, alertDialog, baseFragment);
                        }
                    });
                }
            });
            return;
        }
        processCreate(editTextBoldCursor, alertDialog, baseFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void processCreate(EditTextBoldCursor editTextBoldCursor, AlertDialog alertDialog, BaseFragment baseFragment) throws Throwable {
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        AndroidUtilities.hideKeyboard(editTextBoldCursor);
        Theme.ThemeInfo themeInfoCreateNewTheme = Theme.createNewTheme(editTextBoldCursor.getText().toString());
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.themeListUpdated, new Object[0]);
        new ThemeEditorView().show(baseFragment.getParentActivity(), themeInfoCreateNewTheme);
        alertDialog.dismiss();
        SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
        if (globalMainSettings.getBoolean("themehint", false)) {
            return;
        }
        globalMainSettings.edit().putBoolean("themehint", true).apply();
        try {
            Toast.makeText(baseFragment.getParentActivity(), LocaleController.getString(C2888R.string.CreateNewThemeHelp), 1).show();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    private static String generateThemeName(Theme.ThemeAccent themeAccent) {
        int i;
        List listAsList = Arrays.asList("Ancient", "Antique", "Autumn", "Baby", "Barely", "Baroque", "Blazing", "Blushing", "Bohemian", "Bubbly", "Burning", "Buttered", "Classic", "Clear", "Cool", "Cosmic", "Cotton", "Cozy", "Crystal", "Dark", "Daring", "Darling", "Dawn", "Dazzling", "Deep", "Deepest", "Delicate", "Delightful", "Divine", "Double", "Downtown", "Dreamy", "Dusky", "Dusty", "Electric", "Enchanted", "Endless", "Evening", "Fantastic", "Flirty", "Forever", "Frigid", "Frosty", "Frozen", "Gentle", "Heavenly", "Hyper", "Icy", "Infinite", "Innocent", "Instant", "Luscious", "Lunar", "Lustrous", "Magic", "Majestic", "Mambo", "Midnight", "Millenium", "Morning", "Mystic", "Natural", "Neon", "Night", "Opaque", "Paradise", "Perfect", "Perky", "Polished", "Powerful", "Rich", "Royal", "Sheer", "Simply", "Sizzling", "Solar", "Sparkling", "Splendid", "Spicy", "Spring", "Stellar", "Sugared", "Summer", "Sunny", "Super", "Sweet", "Tender", "Tenacious", "Tidal", "Toasted", "Totally", "Tranquil", "Tropical", "True", "Twilight", "Twinkling", "Ultimate", "Ultra", "Velvety", "Vibrant", "Vintage", "Virtual", "Warm", "Warmest", "Whipped", "Wild", "Winsome");
        List listAsList2 = Arrays.asList("Ambrosia", "Attack", "Avalanche", "Blast", "Bliss", "Blossom", "Blush", "Burst", "Butter", "Candy", "Carnival", "Charm", "Chiffon", "Cloud", "Comet", "Delight", "Dream", "Dust", "Fantasy", "Flame", "Flash", "Fire", "Freeze", "Frost", "Glade", "Glaze", "Gleam", "Glimmer", "Glitter", "Glow", "Grande", "Haze", "Highlight", "Ice", "Illusion", "Intrigue", "Jewel", "Jubilee", "Kiss", "Lights", "Lollypop", "Love", "Luster", "Madness", "Matte", "Mirage", "Mist", "Moon", "Muse", "Myth", "Nectar", "Nova", "Parfait", "Passion", "Pop", "Rain", "Reflection", "Rhapsody", "Romance", "Satin", "Sensation", "Silk", "Shine", "Shadow", "Shimmer", "Sky", "Spice", "Star", "Sugar", "Sunrise", "Sunset", "Sun", "Twist", "Unbound", "Velvet", "Vibrant", "Waters", "Wine", "Wink", "Wonder", "Zone");
        HashMap map = new HashMap();
        map.put(9306112, "Berry");
        map.put(14598550, "Brandy");
        map.put(8391495, "Cherry");
        map.put(16744272, "Coral");
        map.put(14372985, "Cranberry");
        map.put(14423100, "Crimson");
        map.put(14725375, "Mauve");
        map.put(16761035, "Pink");
        map.put(16711680, "Red");
        map.put(16711807, "Rose");
        map.put(8406555, "Russet");
        map.put(16720896, "Scarlet");
        map.put(15856113, "Seashell");
        map.put(16724889, "Strawberry");
        map.put(16760576, "Amber");
        map.put(15438707, "Apricot");
        map.put(16508850, "Banana");
        map.put(10601738, "Citrus");
        map.put(11560192, "Ginger");
        map.put(16766720, "Gold");
        map.put(16640272, "Lemon");
        map.put(16753920, "Orange");
        map.put(16770484, "Peach");
        map.put(16739155, "Persimmon");
        map.put(14996514, "Sunflower");
        map.put(15893760, "Tangerine");
        map.put(16763004, "Topaz");
        map.put(16776960, "Yellow");
        map.put(3688720, "Clover");
        map.put(8628829, "Cucumber");
        map.put(5294200, "Emerald");
        map.put(11907932, "Olive");
        map.put(65280, "Green");
        map.put(43115, "Jade");
        map.put(2730887, "Jungle");
        map.put(12582656, "Lime");
        map.put(776785, "Malachite");
        map.put(10026904, "Mint");
        map.put(11394989, "Moss");
        map.put(3234721, "Azure");
        map.put(255, "Blue");
        map.put(18347, "Cobalt");
        map.put(5204422, "Indigo");
        map.put(96647, "Lagoon");
        map.put(7461346, "Aquamarine");
        map.put(1182351, "Ultramarine");
        map.put(128, "Navy");
        map.put(3101086, "Sapphire");
        map.put(7788522, "Sky");
        map.put(32896, "Teal");
        map.put(4251856, "Turquoise");
        map.put(10053324, "Amethyst");
        map.put(5046581, "Blackberry");
        map.put(6373457, "Eggplant");
        map.put(13148872, "Lilac");
        map.put(11894492, "Lavender");
        map.put(13421823, "Periwinkle");
        map.put(8663417, "Plum");
        map.put(6684825, "Purple");
        map.put(14204888, "Thistle");
        map.put(14315734, "Orchid");
        map.put(2361920, "Violet");
        map.put(4137225, "Bronze");
        map.put(3604994, "Chocolate");
        map.put(8077056, "Cinnamon");
        map.put(3153694, "Cocoa");
        map.put(7365973, "Coffee");
        map.put(7956873, "Rum");
        map.put(5113350, "Mahogany");
        map.put(7875865, "Mocha");
        map.put(12759680, "Sand");
        map.put(8924439, "Sienna");
        map.put(7864585, "Maple");
        map.put(15787660, "Khaki");
        map.put(12088115, "Copper");
        map.put(12144200, "Chestnut");
        map.put(15653316, "Almond");
        map.put(16776656, "Cream");
        map.put(12186367, "Diamond");
        map.put(11109127, "Honey");
        map.put(16777200, "Ivory");
        map.put(15392968, "Pearl");
        map.put(15725299, "Porcelain");
        map.put(13745832, "Vanilla");
        map.put(16777215, "White");
        map.put(8421504, "Gray");
        map.put(0, "Black");
        map.put(15266260, "Chrome");
        map.put(3556687, "Charcoal");
        map.put(789277, "Ebony");
        map.put(12632256, "Silver");
        map.put(16119285, "Smoke");
        map.put(2499381, "Steel");
        map.put(5220413, "Apple");
        map.put(8434628, "Glacier");
        map.put(16693933, "Melon");
        map.put(12929932, "Mulberry");
        map.put(11126466, "Opal");
        map.put(5547512, "Blue");
        Theme.ThemeAccent accent = themeAccent == null ? Theme.getCurrentTheme().getAccent(false) : themeAccent;
        if (accent == null || (i = accent.accentColor) == 0) {
            i = AndroidUtilities.calcDrawableColor(Theme.getCachedWallpaper())[0];
        }
        int iRed = Color.red(i);
        int iGreen = Color.green(i);
        int iBlue = Color.blue(i);
        String str = null;
        int i2 = Integer.MAX_VALUE;
        for (Map.Entry entry : map.entrySet()) {
            Integer num = (Integer) entry.getKey();
            int iRed2 = Color.red(num.intValue());
            int i3 = (iRed + iRed2) / 2;
            int i4 = iRed - iRed2;
            int iGreen2 = iGreen - Color.green(num.intValue());
            int iBlue2 = iBlue - Color.blue(num.intValue());
            int i5 = ((((i3 + 512) * i4) * i4) >> 8) + (iGreen2 * 4 * iGreen2) + ((((767 - i3) * iBlue2) * iBlue2) >> 8);
            if (i5 < i2) {
                str = (String) entry.getValue();
                i2 = i5;
            }
        }
        if (Utilities.random.nextInt() % 2 == 0) {
            return ((String) listAsList.get(Utilities.random.nextInt(listAsList.size()))) + " " + str;
        }
        return str + " " + ((String) listAsList2.get(Utilities.random.nextInt(listAsList2.size())));
    }

    public static void showDeclineSuggestedPostDialog(BaseFragment baseFragment, long j, boolean z, final Utilities.Callback callback) {
        final Context context = baseFragment.getContext();
        AlertDialog.Builder builder = z ? new AlertDialogDecor.Builder(context) : new AlertDialog.Builder(context);
        builder.setTitle(LocaleController.getString(C2888R.string.SuggestedMessageDecline));
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.SuggestedMessageDeclineInfo, MessagesController.getInstance(UserConfig.selectedAccount).getPeerName(j))));
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setClipChildren(false);
        final EditText editText = new EditText(context);
        editText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        editText.setHint(LocaleController.getString(C2888R.string.SuggestedMessageDeclineReasonHint));
        editText.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText));
        editText.setTextSize(1, 16.0f);
        editText.setBackground(Theme.createEditTextDrawable(context, true));
        editText.setMaxLines(4);
        editText.setRawInputType(147457);
        editText.setImeOptions(6);
        editText.setFilters(new InputFilter[]{new CodepointsLengthInputFilter(255) { // from class: org.telegram.ui.Components.AlertsCreator.61
            @Override // org.telegram.p029ui.Components.CodepointsLengthInputFilter, android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                Vibrator vibrator;
                CharSequence charSequenceFilter = super.filter(charSequence, i, i2, spanned, i3, i4);
                if (charSequenceFilter != null && charSequence != null && charSequenceFilter.length() != charSequence.length() && (vibrator = (Vibrator) context.getSystemService("vibrator")) != null) {
                    vibrator.vibrate(200L);
                }
                return charSequenceFilter;
            }
        }});
        editText.setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(24.0f) : 0, AndroidUtilities.m1124dp(8.0f), LocaleController.isRTL ? 0 : AndroidUtilities.m1124dp(24.0f), AndroidUtilities.m1124dp(8.0f));
        editText.setSelection(editText.getText().toString().length());
        builder.setView(frameLayout);
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Decline), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda139
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                AlertsCreator.m8462$r8$lambda$pUHbxMB2qqdFkNyC6WnBZtYEHo(callback, editText, alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda140
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AndroidUtilities.hideKeyboard(editText);
            }
        });
        frameLayout.addView(editText, LayoutHelper.createFrame(-1, -2.0f, 0, 23.0f, 0.0f, 23.0f, 21.0f));
        editText.requestFocus();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda141
            @Override // java.lang.Runnable
            public final void run() {
                AndroidUtilities.showKeyboard(editText);
            }
        }, 100L);
        AlertDialog alertDialogCreate = builder.create();
        baseFragment.showDialog(alertDialogCreate);
        TextView textView = (TextView) alertDialogCreate.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$-pUHbxMB2qqdFkNyC6WnBZtYEHo, reason: not valid java name */
    public static /* synthetic */ void m8462$r8$lambda$pUHbxMB2qqdFkNyC6WnBZtYEHo(Utilities.Callback callback, EditText editText, AlertDialog alertDialog, int i) {
        alertDialog.dismiss();
        if (callback != null) {
            callback.run(editText.getText().toString());
        }
    }

    public static BottomSheet.Builder createSuggestedMessageDatePickerDialog(Context context, long j, ScheduleDatePickerDelegate scheduleDatePickerDelegate, Theme.ResourcesProvider resourcesProvider, int i) {
        return createSuggestedMessageDatePickerDialog(context, j, scheduleDatePickerDelegate, null, new ScheduleDatePickerColors(), resourcesProvider, i);
    }

    public static BottomSheet.Builder createSuggestedMessageDatePickerDialog(Context context, long j, final ScheduleDatePickerDelegate scheduleDatePickerDelegate, final Runnable runnable, ScheduleDatePickerColors scheduleDatePickerColors, Theme.ResourcesProvider resourcesProvider, int i) {
        long j2;
        Calendar calendar;
        if (context == null) {
            return null;
        }
        final BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        builder.setApplyBottomPadding(false);
        final NumberPicker numberPicker = new NumberPicker(context, resourcesProvider);
        numberPicker.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker.setTextOffset(AndroidUtilities.m1124dp(10.0f));
        numberPicker.setItemCount(5);
        final NumberPicker numberPicker2 = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.62
            @Override // org.telegram.p029ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i2) {
                return LocaleController.formatPluralString("Hours", i2, new Object[0]);
            }
        };
        numberPicker2.setWrapSelectorWheel(true);
        numberPicker2.setAllItemsCount(24);
        numberPicker2.setItemCount(5);
        numberPicker2.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker2.setTextOffset(-AndroidUtilities.m1124dp(10.0f));
        final NumberPicker numberPicker3 = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.63
            @Override // org.telegram.p029ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i2) {
                return LocaleController.formatPluralString("Minutes", i2, new Object[0]);
            }
        };
        numberPicker3.setWrapSelectorWheel(true);
        numberPicker3.setAllItemsCount(60);
        numberPicker3.setItemCount(5);
        numberPicker3.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker3.setTextOffset(-AndroidUtilities.m1124dp(34.0f));
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.64
            boolean ignoreLayout = false;

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                this.ignoreLayout = true;
                Point point = AndroidUtilities.displaySize;
                int i4 = point.x > point.y ? 3 : 5;
                numberPicker.setItemCount(i4);
                numberPicker2.setItemCount(i4);
                numberPicker3.setItemCount(i4);
                numberPicker.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i4;
                numberPicker2.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i4;
                numberPicker3.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i4;
                this.ignoreLayout = false;
                super.onMeasure(i2, i3);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        linearLayout.setOrientation(1);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 22, 4));
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString(i == 1 ? C2888R.string.SuggestedPostAcceptTitle : C2888R.string.PostSuggestionsAddTime));
        textView.setTextColor(scheduleDatePickerColors.textColor);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        linearLayout2.addView(textView, LayoutHelper.createLinear(-2, -2, 51, 0, 12, 0, 0));
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda200
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return AlertsCreator.m8464$r8$lambda$0BOxu9DeP7wQvbK9Scu9zUgAF4(view, motionEvent);
            }
        });
        TextView textView2 = new TextView(context);
        textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
        textView2.setTextSize(1, 14.0f);
        textView2.setText(LocaleController.getString(C2888R.string.PostSuggestionsAddTimeHint));
        linearLayout2.addView(textView2, LayoutHelper.createLinear(-2, -2, 51, 0, 2, 0, 0));
        textView2.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda201
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return AlertsCreator.$r8$lambda$pqdeBLQgRaQvhkWVhWxNBM9qMOk(view, motionEvent);
            }
        });
        LinearLayout linearLayout3 = new LinearLayout(context);
        linearLayout3.setOrientation(0);
        linearLayout3.setWeightSum(1.0f);
        linearLayout.addView(linearLayout3, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        long jCurrentTimeMillis = System.currentTimeMillis();
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(jCurrentTimeMillis);
        final int i2 = calendar2.get(1);
        AppGlobalConfig.ConfigTime configTime = MessagesController.getInstance(UserConfig.selectedAccount).config.starsSuggestedPostFutureMin;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        final long j3 = configTime.get(timeUnit) * 2;
        final long j4 = MessagesController.getInstance(UserConfig.selectedAccount).config.starsSuggestedPostFutureMax.get(timeUnit) - 86400;
        final TextView textView3 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.65
            @Override // android.widget.TextView, android.view.View
            public CharSequence getAccessibilityClassName() {
                return Button.class.getName();
            }
        };
        linearLayout3.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.5f));
        numberPicker.setMinValue(0);
        numberPicker.setMaxValue(365);
        numberPicker.setWrapSelectorWheel(false);
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda202
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i3) {
                return AlertsCreator.$r8$lambda$4IogzYzR_omDdtQfhTVFcV5I0L8(i2, i3);
            }
        });
        final int i3 = i == 1 ? 5 : 3;
        NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda203
            @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker4, int i4, int i5) {
                AlertsCreator.checkScheduleDate(textView3, null, j3, j4, i3, numberPicker, numberPicker2, numberPicker3);
            }
        };
        numberPicker.setOnValueChangedListener(onValueChangeListener);
        numberPicker2.setMinValue(0);
        numberPicker2.setMaxValue(23);
        linearLayout3.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.2f));
        numberPicker2.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda204
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i4) {
                return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i4));
            }
        });
        numberPicker2.setOnValueChangedListener(onValueChangeListener);
        numberPicker3.setMinValue(0);
        numberPicker3.setMaxValue(59);
        numberPicker3.setValue(0);
        numberPicker3.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda205
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i4) {
                return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i4));
            }
        });
        linearLayout3.addView(numberPicker3, LayoutHelper.createLinear(0, 270, 0.3f));
        numberPicker3.setOnValueChangedListener(onValueChangeListener);
        if (j <= 0 || j == 2147483646) {
            j2 = j3;
            calendar = calendar2;
        } else {
            long j5 = 1000 * j;
            calendar = calendar2;
            calendar.setTimeInMillis(System.currentTimeMillis());
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            calendar.set(11, 0);
            int timeInMillis = (int) ((j5 - calendar.getTimeInMillis()) / 86400000);
            j2 = j3;
            calendar.setTimeInMillis(j5);
            if (timeInMillis >= 0) {
                numberPicker3.setValue(calendar.get(12));
                numberPicker2.setValue(calendar.get(11));
                numberPicker.setValue(timeInMillis);
            }
        }
        final boolean[] zArr = {true};
        final long j6 = j2;
        checkScheduleDate(textView3, null, j6, j4, i3, numberPicker, numberPicker2, numberPicker3);
        textView3.setPadding(AndroidUtilities.m1124dp(34.0f), 0, AndroidUtilities.m1124dp(34.0f), 0);
        textView3.setGravity(17);
        textView3.setTextColor(scheduleDatePickerColors.buttonTextColor);
        textView3.setTextSize(1, 14.0f);
        textView3.setTypeface(AndroidUtilities.bold());
        textView3.setBackground(Theme.AdaptiveRipple.filledRect(scheduleDatePickerColors.buttonBackgroundColor, 8.0f));
        linearLayout.addView(textView3, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 4));
        final Calendar calendar3 = calendar;
        textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda206
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.m8534$r8$lambda$yRwpMsS8FDuM6Q9SnA60YH2X0(zArr, j6, j4, i3, numberPicker, numberPicker2, numberPicker3, calendar3, scheduleDatePickerDelegate, builder, view);
            }
        });
        ScaleStateListAnimator.apply(textView3, 0.02f, 1.2f);
        TextView textView4 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.66
            @Override // android.widget.TextView, android.view.View
            public CharSequence getAccessibilityClassName() {
                return Button.class.getName();
            }
        };
        textView4.setPadding(AndroidUtilities.m1124dp(34.0f), 0, AndroidUtilities.m1124dp(34.0f), 0);
        textView4.setGravity(17);
        textView4.setText(LocaleController.getString(i == 1 ? C2888R.string.MessageSuggestionPublishNow : C2888R.string.PostSuggestionsAnytime));
        textView4.setTextColor(scheduleDatePickerColors.buttonBackgroundColor);
        textView4.setTextSize(1, 14.0f);
        textView4.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(8.0f), Theme.getColor(Theme.key_windowBackgroundWhite), Theme.getColor(Theme.key_listSelector)));
        linearLayout.addView(textView4, LayoutHelper.createLinear(-1, 48, 83, 16, 0, 16, 16));
        textView4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda207
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.$r8$lambda$m_kzmcgNVEP0pAe_KgDFQwH6iOI(zArr, scheduleDatePickerDelegate, builder, view);
            }
        });
        ScaleStateListAnimator.apply(textView4, 0.02f, 1.2f);
        builder.setCustomView(linearLayout);
        BottomSheet bottomSheetShow = builder.show();
        bottomSheetShow.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda208
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AlertsCreator.$r8$lambda$mdHoOnbFuvBt6_BqDOeqMfIar2U(runnable, zArr, dialogInterface);
            }
        });
        bottomSheetShow.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
        bottomSheetShow.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
        return builder;
    }

    /* JADX INFO: renamed from: $r8$lambda$0BOxu9DeP7wQvbK9Sc-u9zUgAF4, reason: not valid java name */
    public static /* synthetic */ boolean m8464$r8$lambda$0BOxu9DeP7wQvbK9Scu9zUgAF4(View view, MotionEvent motionEvent) {
        return true;
    }

    public static /* synthetic */ boolean $r8$lambda$pqdeBLQgRaQvhkWVhWxNBM9qMOk(View view, MotionEvent motionEvent) {
        return true;
    }

    public static /* synthetic */ String $r8$lambda$4IogzYzR_omDdtQfhTVFcV5I0L8(int i, int i2) {
        if (i2 == 0) {
            return LocaleController.getString(C2888R.string.MessageScheduleToday);
        }
        LocalDate localDatePlusDays = LocalDate.now().plusDays(i2);
        int year = localDatePlusDays.getYear();
        long epochMilli = localDatePlusDays.atStartOfDay().toInstant(ZoneOffset.UTC).toEpochMilli();
        if (year == i) {
            return LocaleController.getInstance().getFormatterWeek().format(epochMilli) + ", " + LocaleController.getInstance().getFormatterScheduleDay().format(epochMilli);
        }
        return LocaleController.getInstance().getFormatterScheduleYear().format(epochMilli);
    }

    /* JADX INFO: renamed from: $r8$lambda$yRwpMsS-8FDuM6Q9Sn-A60YH2X0, reason: not valid java name */
    public static /* synthetic */ void m8534$r8$lambda$yRwpMsS8FDuM6Q9SnA60YH2X0(boolean[] zArr, long j, long j2, int i, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, Calendar calendar, ScheduleDatePickerDelegate scheduleDatePickerDelegate, BottomSheet.Builder builder, View view) {
        zArr[0] = false;
        boolean zCheckScheduleDate = checkScheduleDate(null, null, j, j2, i, numberPicker, numberPicker2, numberPicker3);
        calendar.setTimeInMillis(LocalDate.now().plusDays(numberPicker.getValue()).atStartOfDay(ZoneId.systemDefault()).toInstant().toEpochMilli());
        calendar.set(11, numberPicker2.getValue());
        calendar.set(12, numberPicker3.getValue());
        if (zCheckScheduleDate) {
            calendar.set(13, 0);
        }
        scheduleDatePickerDelegate.didSelectDate(true, (int) (calendar.getTimeInMillis() / 1000), 0);
        builder.getDismissRunnable().run();
    }

    public static /* synthetic */ void $r8$lambda$m_kzmcgNVEP0pAe_KgDFQwH6iOI(boolean[] zArr, ScheduleDatePickerDelegate scheduleDatePickerDelegate, BottomSheet.Builder builder, View view) {
        zArr[0] = false;
        scheduleDatePickerDelegate.didSelectDate(true, -1, 0);
        builder.getDismissRunnable().run();
    }

    public static /* synthetic */ void $r8$lambda$mdHoOnbFuvBt6_BqDOeqMfIar2U(Runnable runnable, boolean[] zArr, DialogInterface dialogInterface) {
        if (runnable == null || !zArr[0]) {
            return;
        }
        runnable.run();
    }

    public static void showCallsForbidden(Context context, final int i, final long j, final Theme.ResourcesProvider resourcesProvider) {
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.m1124dp(16.0f), 0, AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(8.0f));
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setClipChildren(false);
        frameLayout.setClipToPadding(false);
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, 92, 17, 0, 0, 0, 0));
        FrameLayout frameLayout2 = new FrameLayout(context);
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageResource(C2888R.drawable.story_link);
        imageView.setScaleX(2.0f);
        imageView.setScaleY(2.0f);
        frameLayout2.addView(imageView, LayoutHelper.createFrame(-1, -1, 17));
        frameLayout2.setBackground(Theme.createCircleDrawable(AndroidUtilities.m1124dp(80.0f), Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider)));
        frameLayout.addView(frameLayout2, LayoutHelper.createFrame(80, 80.0f, 1, 0.0f, 12.0f, 0.0f, 0.0f));
        TextView textView = new TextView(context);
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(Theme.getColor(i2, resourcesProvider));
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setText(LocaleController.getString(C2888R.string.CallForbiddenInviteLinkTitle));
        textView.setGravity(17);
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 32.0f, 16.0f, 32.0f, 8.0f));
        TextView textView2 = new TextView(context);
        textView2.setTextColor(Theme.getColor(i2, resourcesProvider));
        textView2.setTextSize(1, 14.0f);
        textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.CallForbiddenInviteLinkText, DialogObject.getName(i, j))));
        textView2.setGravity(17);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 32.0f, 0.0f, 32.0f, 18.0f));
        final ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
        buttonWithCounterView.setText(LocaleController.getString(C2888R.string.CallForbiddenInviteLinkButton), false);
        linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 0.0f, 0.0f, 0.0f, 0.0f));
        builder.setCustomView(linearLayout);
        final BottomSheet bottomSheetCreate = builder.create();
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.m8478$r8$lambda$BbROKPZPjxtZwJ9ovUWoYLMcI4(i, buttonWithCounterView, bottomSheetCreate, j, resourcesProvider, view);
            }
        });
        bottomSheetCreate.fixNavigationBar();
        bottomSheetCreate.show();
    }

    /* JADX INFO: renamed from: $r8$lambda$BbR-OKPZPjxtZwJ9ovUWoYLMcI4, reason: not valid java name */
    public static /* synthetic */ void m8478$r8$lambda$BbROKPZPjxtZwJ9ovUWoYLMcI4(final int i, final ButtonWithCounterView buttonWithCounterView, final BottomSheet bottomSheet, final long j, final Theme.ResourcesProvider resourcesProvider, View view) {
        TL_phone.createConferenceCall createconferencecall = new TL_phone.createConferenceCall();
        createconferencecall.random_id = Utilities.random.nextInt();
        ConnectionsManager.getInstance(i).sendRequest(createconferencecall, new RequestDelegate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda41
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda125
                    @Override // java.lang.Runnable
                    public final void run() {
                        AlertsCreator.$r8$lambda$Q39PLvU_PWvPL5rANWeYsdSxp8o(tLObject, i, buttonWithCounterView, bottomSheet, j, tL_error, resourcesProvider);
                    }
                });
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$Q39PLvU_PWvPL5rANWeYsdSxp8o(TLObject tLObject, final int i, ButtonWithCounterView buttonWithCounterView, BottomSheet bottomSheet, long j, TLRPC.TL_error tL_error, Theme.ResourcesProvider resourcesProvider) {
        if (tLObject instanceof TLRPC.Updates) {
            final TLRPC.Updates updates = (TLRPC.Updates) tLObject;
            MessagesController.getInstance(i).putUsers(updates.users, false);
            MessagesController.getInstance(i).putChats(updates.chats, false);
            ArrayList arrayListFindUpdates = MessagesController.findUpdates(updates, TLRPC.TL_updateGroupCall.class);
            int size = arrayListFindUpdates.size();
            TLRPC.GroupCall groupCall = null;
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayListFindUpdates.get(i2);
                i2++;
                groupCall = ((TLRPC.TL_updateGroupCall) obj).call;
            }
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda148
                @Override // java.lang.Runnable
                public final void run() {
                    MessagesController.getInstance(i).processUpdates(updates, false);
                }
            });
            if (groupCall == null || LaunchActivity.instance == null) {
                buttonWithCounterView.setLoading(false);
                return;
            }
            bottomSheet.lambda$new$0();
            SendMessagesHelper.getInstance(i).sendMessage(SendMessagesHelper.SendMessageParams.m1174of(groupCall.invite_link, j));
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment != null) {
                if (safeLastFragment instanceof ChatActivity) {
                    ChatActivity chatActivity = (ChatActivity) safeLastFragment;
                    if (chatActivity.getDialogId() == j && chatActivity.getChatMode() == 0) {
                        return;
                    }
                }
                safeLastFragment.presentFragment(ChatActivity.m1239of(j));
                return;
            }
            return;
        }
        if (!(tLObject instanceof TL_phone.groupCall)) {
            if (tL_error != null) {
                BulletinFactory.m1245of(bottomSheet.topBulletinContainer, resourcesProvider).showForError(tL_error);
                return;
            }
            return;
        }
        TL_phone.groupCall groupcall = (TL_phone.groupCall) tLObject;
        MessagesController.getInstance(i).putUsers(groupcall.users, false);
        MessagesController.getInstance(i).putChats(groupcall.chats, false);
        if (LaunchActivity.instance == null) {
            buttonWithCounterView.setLoading(false);
            return;
        }
        TLRPC.TL_inputGroupCall tL_inputGroupCall = new TLRPC.TL_inputGroupCall();
        TLRPC.GroupCall groupCall2 = groupcall.call;
        tL_inputGroupCall.f1682id = groupCall2.f1675id;
        tL_inputGroupCall.access_hash = groupCall2.access_hash;
        bottomSheet.lambda$new$0();
        VoIPHelper.joinConference(LaunchActivity.instance, i, tL_inputGroupCall, false, groupcall.call, null);
        SendMessagesHelper.getInstance(i).sendMessage(SendMessagesHelper.SendMessageParams.m1174of(groupcall.call.invite_link, j));
    }

    public static void showGiftThemeApplyConfirm(Context context, Theme.ResourcesProvider resourcesProvider, int i, TL_stars.StarGift starGift, long j, final Runnable runnable) {
        TLObject userOrChat = MessagesController.getInstance(i).getUserOrChat(j);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.addView(new StarGiftSheet.GiftThemeReuseTopView(context, starGift, userOrChat), LayoutHelper.createLinear(-1, -2, 48, 0, -4, 0, 0));
        TextView textView = new TextView(context);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
        textView.setTextSize(1, 16.0f);
        textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.GiftThemesSetInReuseInfo, DialogObject.getDialogTitle(userOrChat))));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 48, 24, 0, 24, 4));
        new AlertDialog.Builder(context, resourcesProvider).setView(linearLayout).setPositiveButton(LocaleController.getString(C2888R.string.GiftThemesSetInReuseConfirm), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda181
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                runnable.run();
            }
        }).setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null).show();
    }

    public static BottomSheet createCustomPicker(Context context, String str, int i, final String[] strArr, final Utilities.Callback callback) {
        if (TimezonesController.getInstance(UserConfig.selectedAccount).getTimezones().isEmpty()) {
            return null;
        }
        ScheduleDatePickerColors scheduleDatePickerColors = new ScheduleDatePickerColors();
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, null);
        builder.setApplyBottomPadding(false);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        linearLayout.setWeightSum(1.0f);
        final NumberPicker numberPicker = new NumberPicker(context);
        numberPicker.setAllItemsCount(strArr.length);
        numberPicker.setItemCount(Math.min(strArr.length, 8));
        numberPicker.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker.setGravity(17);
        numberPicker.setMinValue(0);
        numberPicker.setMaxValue(strArr.length - 1);
        numberPicker.setValue(i);
        linearLayout.addView(numberPicker, LayoutHelper.createLinear(0, 432, 1.0f));
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda236
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i2) {
                return AlertsCreator.$r8$lambda$VbY0soFFj3ZXLlX5l9fIWDvIXJI(strArr, i2);
            }
        });
        LinearLayout linearLayout2 = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.67
            boolean ignoreLayout = false;

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                this.ignoreLayout = true;
                numberPicker.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * 8;
                this.ignoreLayout = false;
                super.onMeasure(i2, i3);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        linearLayout2.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        TextView textView = new TextView(context);
        textView.setText(str);
        textView.setTextColor(scheduleDatePickerColors.textColor);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda237
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return AlertsCreator.m8513$r8$lambda$gdyMsTFOhGef_ZOOSaUAJY0VHA(view, motionEvent);
            }
        });
        linearLayout2.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
        linearLayout2.addView(linearLayout, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, null);
        buttonWithCounterView.setText(LocaleController.getString(C2888R.string.Select), false);
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda238
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                bottomSheetArr[0].lambda$new$0();
            }
        });
        linearLayout2.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 0, 16, 12, 16, 12));
        builder.setCustomView(linearLayout2);
        BottomSheet bottomSheetShow = builder.show();
        bottomSheetShow.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda239
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                callback.run(Integer.valueOf(numberPicker.getValue()));
            }
        });
        bottomSheetShow.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
        bottomSheetShow.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
        BottomSheet bottomSheetCreate = builder.create();
        final BottomSheet[] bottomSheetArr = {bottomSheetCreate};
        return bottomSheetCreate;
    }

    public static /* synthetic */ String $r8$lambda$VbY0soFFj3ZXLlX5l9fIWDvIXJI(String[] strArr, int i) {
        return strArr[i];
    }

    /* JADX INFO: renamed from: $r8$lambda$gdyMsTFOhGef_ZO-OSaUAJY0VHA, reason: not valid java name */
    public static /* synthetic */ boolean m8513$r8$lambda$gdyMsTFOhGef_ZOOSaUAJY0VHA(View view, MotionEvent motionEvent) {
        return true;
    }

    public static void showDisableSharingInfo(Context context, Theme.ResourcesProvider resourcesProvider, final Runnable runnable) {
        if (context == null) {
            return;
        }
        final boolean[] zArr = new boolean[1];
        BottomSheet.Builder builder = new BottomSheet.Builder(context);
        final Runnable dismissRunnable = builder.getDismissRunnable();
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        linearLayout.addView(rLottieImageView, LayoutHelper.createLinear(110, 110, 17, 0, 21, 0, 11));
        rLottieImageView.setAnimation(C2888R.raw.raised_hand, 110, 110);
        rLottieImageView.setAutoRepeat(false);
        rLottieImageView.playAnimation();
        TextView textView = new TextView(context);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setGravity(17);
        textView.setText(LocaleController.getString(C2888R.string.DisableSharingInfoHeader));
        textView.setTextSize(1, 20.0f);
        int i = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(Theme.getColor(i, resourcesProvider));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 17, 20, 0, 20, 14));
        PremiumFeatureCell premiumFeatureCell = new PremiumFeatureCell(context, resourcesProvider);
        premiumFeatureCell.title.setText(LocaleController.getString(C2888R.string.DisableSharingInfoHeader1));
        premiumFeatureCell.description.setText(LocaleController.getString(C2888R.string.DisableSharingInfoText1));
        premiumFeatureCell.nextIcon.setVisibility(8);
        premiumFeatureCell.imageView.setImageResource(C2888R.drawable.menu_photo_off_24);
        premiumFeatureCell.imageView.setColorFilter(Theme.getColor(i, resourcesProvider));
        linearLayout.addView(premiumFeatureCell, LayoutHelper.createLinear(-1, -2, 6.0f, 0.0f, 6.0f, -2.0f));
        PremiumFeatureCell premiumFeatureCell2 = new PremiumFeatureCell(context, resourcesProvider);
        premiumFeatureCell2.title.setText(LocaleController.getString(C2888R.string.DisableSharingInfoHeader2));
        premiumFeatureCell2.description.setText(LocaleController.getString(C2888R.string.DisableSharingInfoText2));
        premiumFeatureCell2.nextIcon.setVisibility(8);
        premiumFeatureCell2.imageView.setImageResource(C2888R.drawable.menu_share_off_24);
        premiumFeatureCell2.imageView.setColorFilter(Theme.getColor(i, resourcesProvider));
        linearLayout.addView(premiumFeatureCell2, LayoutHelper.createLinear(-1, -2, 6.0f, 0.0f, 6.0f, -2.0f));
        PremiumFeatureCell premiumFeatureCell3 = new PremiumFeatureCell(context, resourcesProvider);
        premiumFeatureCell3.title.setText(LocaleController.getString(C2888R.string.DisableSharingInfoHeader3));
        premiumFeatureCell3.description.setText(LocaleController.getString(C2888R.string.DisableSharingInfoText3));
        premiumFeatureCell3.nextIcon.setVisibility(8);
        premiumFeatureCell3.imageView.setImageResource(C2888R.drawable.menu_download_off_24);
        premiumFeatureCell3.imageView.setColorFilter(Theme.getColor(i, resourcesProvider));
        linearLayout.addView(premiumFeatureCell3, LayoutHelper.createLinear(-1, -2, 6.0f, 0.0f, 6.0f, 8.0f));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda64
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.m8507$r8$lambda$bmLpXr3PJqTUv0zGPS4_E7Is(zArr, dismissRunnable, view);
            }
        });
        buttonWithCounterView.setRound();
        buttonWithCounterView.setText(LocaleController.getString(C2888R.string.DisableSharingInfoButton), false);
        linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 16.0f, 10.0f, 16.0f, 8.0f));
        builder.setCustomView(linearLayout);
        builder.show().setOnDismissListener(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda65
            @Override // java.lang.Runnable
            public final void run() {
                AlertsCreator.$r8$lambda$mJfEHcwvdjhj0ZI0QHwfmI2J64w(zArr, runnable);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$bm-LpXr3PJqTU-v0zGP-S4_E7Is, reason: not valid java name */
    public static /* synthetic */ void m8507$r8$lambda$bmLpXr3PJqTUv0zGPS4_E7Is(boolean[] zArr, Runnable runnable, View view) {
        zArr[0] = true;
        runnable.run();
    }

    public static /* synthetic */ void $r8$lambda$mJfEHcwvdjhj0ZI0QHwfmI2J64w(boolean[] zArr, Runnable runnable) {
        if (!zArr[0] || runnable == null) {
            return;
        }
        runnable.run();
    }
}
