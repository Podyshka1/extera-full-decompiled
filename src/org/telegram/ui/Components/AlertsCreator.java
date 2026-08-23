package org.telegram.ui.Components;

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
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.util.Consumer;
import com.android.dx.io.Opcodes;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.export.ui.ExportMapper$$ExternalSyntheticLambda2;
import com.exteragram.messenger.utils.system.VibratorUtils;
import com.google.android.gms.cast.MediaError;
import com.google.android.material.timepicker.TimeModel;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.YearMonth;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.LongFunction;
import java.util.function.Predicate;
import java.util.function.ToLongFunction;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import kotlin.time.DurationKt;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AppGlobalConfig;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2573R;
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
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.tgnet.tl.TL_phone;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.tgnet.tl.TL_update;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.AlertDialogDecor;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Business.TimezonesController;
import org.telegram.ui.CacheControlActivity;
import org.telegram.ui.Cells.AccountSelectCell;
import org.telegram.ui.Cells.CheckBoxCell;
import org.telegram.ui.Cells.RadioColorCell;
import org.telegram.ui.Cells.TextColorCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.NumberPicker;
import org.telegram.ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.ui.Components.voip.VoIPHelper;
import org.telegram.ui.LanguageSelectActivity;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.NotificationsCustomSettingsActivity;
import org.telegram.ui.NotificationsSettingsActivity;
import org.telegram.ui.PhotoViewer;
import org.telegram.ui.PremiumFeatureCell;
import org.telegram.ui.PremiumPreviewFragment;
import org.telegram.ui.PrivacyControlActivity;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.ProfileNotificationsActivity;
import org.telegram.ui.SelectChatUserSheet;
import org.telegram.ui.Stars.StarGiftSheet;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Stories.DarkThemeResourceProvider;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Stories.recorder.HintView2;
import org.telegram.ui.ThemePreviewActivity;
import org.telegram.ui.TooManyCommunitiesActivity;
import org.telegram.ui.community.cells.CommunityBanGroupConfirmCell;

/* JADX INFO: loaded from: classes7.dex */
public abstract class AlertsCreator {
    private static final Pattern URL_PATTERN = Pattern.compile("^([a-zA-Z][a-zA-Z0-9+\\-.]*://)?([a-zA-Z0-9\\-]+\\.)+[a-zA-Z]{2,}(:\\d+)?(/[^\\s]*)?$");

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

    public static /* synthetic */ void $r8$lambda$JiwJr3bR3ySTvE4ZdMp08xfUBy0() {
    }

    /* JADX INFO: renamed from: $r8$lambda$P3UZJUdRWFnUu19WlGm7uCAc-CM, reason: not valid java name */
    public static /* synthetic */ void m9794$r8$lambda$P3UZJUdRWFnUu19WlGm7uCAcCM(NumberPicker numberPicker, int i, int i2) {
    }

    public static /* synthetic */ void $r8$lambda$TjoRtuwa3xGlRpiggpnVC9JthZM(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$_lyLW7empweDdhBitMKkn9KjJEc(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    /* JADX INFO: renamed from: $r8$lambda$oz_1YuJ21i1cZCXS0njAtleO-vw, reason: not valid java name */
    public static /* synthetic */ void m9840$r8$lambda$oz_1YuJ21i1cZCXS0njAtleOvw(NumberPicker numberPicker, int i, int i2) {
    }

    /* JADX INFO: renamed from: $r8$lambda$vKtI7mBYB6fypztloZfGvH-05hI, reason: not valid java name */
    public static /* synthetic */ void m9853$r8$lambda$vKtI7mBYB6fypztloZfGvH05hI(AlertDialog alertDialog, int i) {
    }

    public static Dialog createForgotPasscodeDialog(Context context) {
        return new AlertDialog.Builder(context).setTitle(LocaleController.getString(C2573R.string.ForgotPasscode)).setMessage(LocaleController.getString(C2573R.string.ForgotPasscodeInfo)).setPositiveButton(LocaleController.getString(C2573R.string.Close), null).create();
    }

    public static Dialog createLocationRequiredDialog(final Context context, boolean z) {
        return new AlertDialog.Builder(context).setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.PermissionNoLocationFriends))).setTopAnimation(C2573R.raw.permission_request_location, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).setPositiveButton(LocaleController.getString(C2573R.string.PermissionOpenSettings), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda167
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                AlertsCreator.m9857$r8$lambda$z9OV7Sej2fK9BMVVPq5XSk9LM(context, alertDialog, i);
            }
        }).setNegativeButton(LocaleController.getString(C2573R.string.ContactsPermissionAlertNotNow), null).create();
    }

    /* JADX INFO: renamed from: $r8$lambda$z9OV7Sej2fK9BMVVPq5X-Sk-9LM, reason: not valid java name */
    public static /* synthetic */ void m9857$r8$lambda$z9OV7Sej2fK9BMVVPq5XSk9LM(Context context, AlertDialog alertDialog, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            context.startActivity(intent);
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public static Dialog createBackgroundActivityDialog(final Context context) {
        int i;
        AlertDialog.Builder title = new AlertDialog.Builder(context).setTitle(LocaleController.getString(C2573R.string.AllowBackgroundActivity));
        if (OneUIUtilities.isOneUI()) {
            i = Build.VERSION.SDK_INT >= 31 ? C2573R.string.AllowBackgroundActivityInfoOneUIAboveS : C2573R.string.AllowBackgroundActivityInfoOneUIBelowS;
        } else {
            i = C2573R.string.AllowBackgroundActivityInfo;
        }
        return title.setMessage(AndroidUtilities.replaceTags(LocaleController.getString(i))).setTopAnimation(C2573R.raw.permission_request_apk, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).setPositiveButton(LocaleController.getString(C2573R.string.PermissionOpenSettings), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda7
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                AlertsCreator.$r8$lambda$AvuHCR1k6V5fBzOuStuj5qfZeNs(context, alertDialog, i2);
            }
        }).setNegativeButton(LocaleController.getString(C2573R.string.ContactsPermissionAlertNotNow), null).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda8
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
            FileLog.m898e(e);
        }
    }

    public static Dialog createWebViewPermissionsRequestDialog(final Context context, Theme.ResourcesProvider resourcesProvider, String[] strArr, int i, String str, String str2, final Consumer<Boolean> consumer) {
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
        return topAnimation.setMessage(AndroidUtilities.replaceTags(str)).setPositiveButton(LocaleController.getString(z ? C2573R.string.PermissionOpenSettings : C2573R.string.BotWebViewRequestAllow), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda162
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                AlertsCreator.m9850$r8$lambda$tUfQ2PKxixHa2KrEl7AuAV6nLo(z, context, atomicBoolean, consumer, alertDialog, i2);
            }
        }).setNegativeButton(LocaleController.getString(C2573R.string.BotWebViewRequestDontAllow), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda163
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                AlertsCreator.$r8$lambda$HEvbBaVkS3tygf2fstRGhrdMj8k(atomicBoolean, consumer, alertDialog, i2);
            }
        }).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda164
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AlertsCreator.$r8$lambda$e_UUPM06Fsq_qCQnM0W1euYrafk(atomicBoolean, consumer, dialogInterface);
            }
        }).create();
    }

    /* JADX INFO: renamed from: $r8$lambda$tUfQ2-PKxixHa2KrEl7AuAV6nLo, reason: not valid java name */
    public static /* synthetic */ void m9850$r8$lambda$tUfQ2PKxixHa2KrEl7AuAV6nLo(boolean z, Context context, AtomicBoolean atomicBoolean, Consumer consumer, AlertDialog alertDialog, int i) {
        if (z) {
            try {
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
                context.startActivity(intent);
                return;
            } catch (Exception e) {
                FileLog.m898e(e);
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
        return new AlertDialog.Builder(context, resourcesProvider).setMessage(LocaleController.getString(C2573R.string.ApkRestricted)).setTopAnimation(C2573R.raw.permission_request_apk, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).setPositiveButton(LocaleController.getString(C2573R.string.PermissionOpenSettings), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                AlertsCreator.m9774$r8$lambda$423SrzgdSx4Htk3AIZLaUXHAbI(context, alertDialog, i);
            }
        }).setNegativeButton(LocaleController.getString(C2573R.string.ContactsPermissionAlertNotNow), null).create();
    }

    /* JADX INFO: renamed from: $r8$lambda$423SrzgdSx4Htk3AI-ZLaUXHAbI, reason: not valid java name */
    public static /* synthetic */ void m9774$r8$lambda$423SrzgdSx4Htk3AIZLaUXHAbI(Context context, AlertDialog alertDialog, int i) {
        try {
            context.startActivity(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + context.getPackageName())));
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public static /* synthetic */ void $r8$lambda$4f2RXDpSskM5bIoBqQs4mqEINPk(long j, int i, long j2) {
        Activity activity = AndroidUtilities.getActivity();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        new StarsIntroActivity.StarsNeededSheet(activity, (PhotoViewer.getInstance().isVisible() || (safeLastFragment != null && safeLastFragment.hasShownSheet())) ? new DarkThemeResourceProvider() : safeLastFragment != null ? safeLastFragment.getResourceProvider() : null, j, 13, DialogObject.getShortName(i, j2), new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                AlertsCreator.$r8$lambda$JiwJr3bR3ySTvE4ZdMp08xfUBy0();
            }
        }, j2).show();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
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
            } else if (tL_error.text.equals("JOIN_GUARD_TIMEOUT")) {
                showSimpleAlert(lastFragment, LocaleController.getString(C2573R.string.GuardBotTimeoutTitle), LocaleController.getString(C2573R.string.GuardBotTimeout));
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
                    showSimpleAlert(lastFragment, LocaleController.getString(C2573R.string.MessagePremiumErrorTitle), LocaleController.formatString(C2573R.string.MessagePremiumErrorMessage, firstName));
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
                            showSimpleAlert(lastFragment, LocaleController.getString(C2573R.string.ImportErrorTitle), LocaleController.getString(C2573R.string.ImportErrorUserBlocked));
                        } else if (tL_error.text.contains("USER_NOT_MUTUAL_CONTACT")) {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2573R.string.ImportErrorTitle), LocaleController.getString(C2573R.string.ImportMutualError));
                        } else if (tL_error.text.contains("IMPORT_PEER_TYPE_INVALID")) {
                            if (inputPeer instanceof TLRPC.TL_inputPeerUser) {
                                showSimpleAlert(lastFragment, LocaleController.getString(C2573R.string.ImportErrorTitle), LocaleController.getString(C2573R.string.ImportErrorChatInvalidUser));
                            } else {
                                showSimpleAlert(lastFragment, LocaleController.getString(C2573R.string.ImportErrorTitle), LocaleController.getString(C2573R.string.ImportErrorChatInvalidGroup));
                            }
                        } else if (tL_error.text.contains("CHAT_ADMIN_REQUIRED")) {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2573R.string.ImportErrorTitle), LocaleController.getString(C2573R.string.ImportErrorNotAdmin));
                        } else if (tL_error.text.startsWith("IMPORT_FORMAT")) {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2573R.string.ImportErrorTitle), LocaleController.getString(C2573R.string.ImportErrorFileFormatInvalid));
                        } else if (tL_error.text.startsWith("PEER_ID_INVALID")) {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2573R.string.ImportErrorTitle), LocaleController.getString(C2573R.string.ImportErrorPeerInvalid));
                        } else if (tL_error.text.contains("IMPORT_LANG_NOT_FOUND")) {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2573R.string.ImportErrorTitle), LocaleController.getString(C2573R.string.ImportErrorFileLang));
                        } else if (tL_error.text.contains("IMPORT_UPLOAD_FAILED")) {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2573R.string.ImportErrorTitle), LocaleController.getString(C2573R.string.ImportFailedToUpload));
                        } else if (tL_error.text.startsWith("FLOOD_WAIT")) {
                            showFloodWaitAlert(tL_error.text, lastFragment);
                        } else {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2573R.string.ImportErrorTitle), LocaleController.getString(C2573R.string.ErrorOccurred) + "\n" + tL_error.text);
                        }
                    } else if ((tLObject instanceof TL_account.saveSecureValue) || (tLObject instanceof TL_account.getAuthorizationForm)) {
                        if (lastFragment == null) {
                            lastFragment = LaunchActivity.getLastFragment();
                        }
                        if (tL_error.text.contains("PHONE_NUMBER_INVALID")) {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2573R.string.InvalidPhoneNumber));
                        } else if (tL_error.text.startsWith("FLOOD_WAIT")) {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2573R.string.FloodWait));
                        } else if ("APP_VERSION_OUTDATED".equals(tL_error.text)) {
                            showUpdateAppAlert(lastFragment.getParentActivity(), LocaleController.getString(C2573R.string.UpdateAppAlert), true);
                        } else {
                            showSimpleAlert(lastFragment, LocaleController.getString(C2573R.string.ErrorOccurred) + "\n" + tL_error.text);
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
                                boolean zBooleanValue2 = (objArr == null || objArr.length <= 0) ? false : ((Boolean) objArr[0]).booleanValue();
                                if (objArr != null && objArr.length > 1) {
                                    zBooleanValue = ((Boolean) objArr[1]).booleanValue();
                                }
                                showAddUserAlert(tL_error, lastFragment, zBooleanValue2, zBooleanValue, tLObject);
                            } else if (tL_error.text.equals("PEER_FLOOD")) {
                                NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.needShowAlert, 1);
                            }
                        } else if (tLObject instanceof TLRPC.TL_messages_createChat) {
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
                                showAddUserAlert(tL_error, baseFragment2, false, false, tLObject);
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
                                showAddUserAlert(tL_error, baseFragment3, false, false, tLObject);
                            }
                        } else if (tLObject instanceof TLRPC.TL_messages_editMessage) {
                            if (!tL_error.text.equals("MESSAGE_NOT_MODIFIED")) {
                                if (lastFragment != null) {
                                    showSimpleAlert(lastFragment, LocaleController.getString(C2573R.string.EditMessageError));
                                } else {
                                    showSimpleToast(null, LocaleController.getString(C2573R.string.EditMessageError));
                                }
                            }
                        } else if (z || (tLObject instanceof TLRPC.TL_ephemeral_sendMessage) || (tLObject instanceof TLRPC.TL_messages_sendMedia) || (tLObject instanceof TLRPC.TL_messages_sendInlineBotResult) || (tLObject instanceof TLRPC.TL_messages_forwardMessages) || (tLObject instanceof TLRPC.TL_messages_sendMultiMedia) || (tLObject instanceof TLRPC.TL_messages_sendScheduledMessages)) {
                            if (z) {
                                peerDialogId = DialogObject.getPeerDialogId(((TLRPC.TL_messages_sendMessage) tLObject).peer);
                            } else if (tLObject instanceof TLRPC.TL_messages_sendMedia) {
                                peerDialogId = DialogObject.getPeerDialogId(((TLRPC.TL_messages_sendMedia) tLObject).peer);
                            } else if (tLObject instanceof TLRPC.TL_ephemeral_sendMessage) {
                                peerDialogId = DialogObject.getPeerDialogId(((TLRPC.TL_ephemeral_sendMessage) tLObject).peer);
                            } else if (tLObject instanceof TLRPC.TL_messages_sendInlineBotResult) {
                                peerDialogId = DialogObject.getPeerDialogId(((TLRPC.TL_messages_sendInlineBotResult) tLObject).peer);
                            } else if (tLObject instanceof TLRPC.TL_messages_forwardMessages) {
                                peerDialogId = DialogObject.getPeerDialogId(((TLRPC.TL_messages_forwardMessages) tLObject).to_peer);
                            } else if (tLObject instanceof TLRPC.TL_messages_sendMultiMedia) {
                                peerDialogId = DialogObject.getPeerDialogId(((TLRPC.TL_messages_sendMultiMedia) tLObject).peer);
                            } else {
                                peerDialogId = tLObject instanceof TLRPC.TL_messages_sendScheduledMessages ? DialogObject.getPeerDialogId(((TLRPC.TL_messages_sendScheduledMessages) tLObject).peer) : 0L;
                            }
                            String str2 = tL_error.text;
                            if (str2 != null && str2.startsWith("CHAT_SEND_") && tL_error.text.endsWith("FORBIDDEN")) {
                                restrictedErrorText = tL_error.text;
                                chat = peerDialogId < 0 ? MessagesController.getInstance(i).getChat(Long.valueOf(-peerDialogId)) : null;
                                String str3 = tL_error.text;
                                str3.getClass();
                                switch (str3) {
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
                                String str4 = tL_error.text;
                                str4.getClass();
                                switch (str4.hashCode()) {
                                    case -1809401834:
                                        if (!str4.equals("USER_BANNED_IN_CHANNEL")) {
                                        }
                                        break;
                                    case -454039871:
                                        if (!str4.equals("PEER_FLOOD")) {
                                        }
                                        break;
                                    case 1169786080:
                                        if (!str4.equals("SCHEDULE_TOO_MUCH")) {
                                        }
                                        break;
                                    default:
                                        break;
                                }
                                /*  JADX ERROR: Method code generation error
                                    java.lang.NullPointerException: Switch insn not found in header
                                    	at java.base/java.util.Objects.requireNonNull(Objects.java:259)
                                    	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                                    	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:88)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                    	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                    	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                    	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                    	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                    	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                    	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:305)
                                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:284)
                                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:412)
                                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:337)
                                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:303)
                                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
                                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
                                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                                    */
                                /*
                                    Method dump skipped, instruction units count: 2572
                                    To view this dump add '--comments-level debug' option
                                */
                                throw new UnsupportedOperationException("Method not decompiled: org.telegram.ui.Components.AlertsCreator.processError(int, org.telegram.tgnet.TLRPC$TL_error, org.telegram.ui.ActionBar.BaseFragment, org.telegram.tgnet.TLObject, java.lang.Object[]):android.app.Dialog");
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
                                    FileLog.m898e(e);
                                    return toastMakeText;
                                }
                            }

                            public static AlertDialog showUpdateAppAlert(final Context context, String str, boolean z) {
                                if (context == null || str == null) {
                                    return null;
                                }
                                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                                builder.setTitle(LocaleController.getString(C2573R.string.AppName));
                                builder.setMessage(str);
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.OK), null);
                                if (z) {
                                    builder.setNegativeButton(LocaleController.getString(C2573R.string.UpdateApp), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda32
                                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                        public final void onClick(AlertDialog alertDialog, int i) {
                                            Browser.openUrl(context, BuildVars.RELEASES_URL);
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
                                    builder.setTitle(LocaleController.getString(C2573R.string.Language));
                                    string = LocaleController.formatString("LanguageSame", C2573R.string.LanguageSame, tL_langPackLanguage.name);
                                    builder.setNegativeButton(LocaleController.getString(C2573R.string.OK), null);
                                    builder.setNeutralButton(LocaleController.getString(C2573R.string.SETTINGS), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda135
                                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                        public final void onClick(AlertDialog alertDialog, int i) {
                                            launchActivity.lambda$runLinkRequest$101(new LanguageSelectActivity());
                                        }
                                    });
                                } else if (tL_langPackLanguage.strings_count == 0) {
                                    builder.setTitle(LocaleController.getString(C2573R.string.LanguageUnknownTitle));
                                    string = LocaleController.formatString("LanguageUnknownCustomAlert", C2573R.string.LanguageUnknownCustomAlert, tL_langPackLanguage.name);
                                    builder.setNegativeButton(LocaleController.getString(C2573R.string.OK), null);
                                } else {
                                    builder.setTitle(LocaleController.getString(C2573R.string.LanguageTitle));
                                    boolean z = tL_langPackLanguage.official;
                                    String str2 = tL_langPackLanguage.name;
                                    if (z) {
                                        string = LocaleController.formatString("LanguageAlert", C2573R.string.LanguageAlert, str2, Integer.valueOf((int) Math.ceil((tL_langPackLanguage.translated_count / tL_langPackLanguage.strings_count) * 100.0f)));
                                    } else {
                                        string = LocaleController.formatString("LanguageCustomAlert", C2573R.string.LanguageCustomAlert, str2, Integer.valueOf((int) Math.ceil((tL_langPackLanguage.translated_count / tL_langPackLanguage.strings_count) * 100.0f)));
                                    }
                                    builder.setPositiveButton(LocaleController.getString(C2573R.string.Change), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda136
                                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                        public final void onClick(AlertDialog alertDialog, int i) {
                                            AlertsCreator.$r8$lambda$6ZqQMNFwAbwiSWlJWIeA75Lfd6A(tL_langPackLanguage, launchActivity, alertDialog, i);
                                        }
                                    });
                                    builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
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
                                        @Override // org.telegram.ui.Components.URLSpanNoUnderline, android.text.style.URLSpan, android.text.style.ClickableSpan
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
                                textView.setPadding(AndroidUtilities.dp(23.0f), 0, AndroidUtilities.dp(23.0f), 0);
                                textView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
                                textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
                                builder.setView(textView);
                                return builder;
                            }

                            public static /* synthetic */ void $r8$lambda$6ZqQMNFwAbwiSWlJWIeA75Lfd6A(TLRPC.TL_langPackLanguage tL_langPackLanguage, LaunchActivity launchActivity, AlertDialog alertDialog, int i) {
                                String str;
                                boolean z = tL_langPackLanguage.official;
                                String str2 = tL_langPackLanguage.lang_code;
                                if (z) {
                                    str = "remote_" + str2;
                                } else {
                                    str = "unofficial_" + str2;
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
                                    TLRPC.ChatFull chatFull = MessagesController.getInstance(i).getChatFull(chat.id);
                                    if (chatFull == null) {
                                        chatFull = MessagesStorage.getInstance(i).loadChatInfo(chat.id, ChatObject.isChannel(chat), new CountDownLatch(1), false, false);
                                    }
                                    if (chatFull != null && chatFull.slowmode_next_send_date >= ConnectionsManager.getInstance(i).getCurrentTime()) {
                                        z = true;
                                    }
                                }
                                if (!z) {
                                    return false;
                                }
                                createSimpleAlert(context, chat.title, LocaleController.getString(C2573R.string.SlowmodeSendError)).show();
                                return true;
                            }

                            public static AlertDialog.Builder createNoAccessAlert(Context context, String str, String str2, Theme.ResourcesProvider resourcesProvider) {
                                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                                builder.setTitle(str);
                                HashMap map = new HashMap();
                                int i = Theme.key_dialogTopBackground;
                                map.put("info1.**", Integer.valueOf(Theme.getColor(i, resourcesProvider)));
                                map.put("info2.**", Integer.valueOf(Theme.getColor(i, resourcesProvider)));
                                builder.setTopAnimation(C2573R.raw.not_available, 52, false, Theme.getColor(i, resourcesProvider), map);
                                builder.setTopAnimationIsNew(true);
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Close), null);
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
                                    str = LocaleController.getString(C2573R.string.AppName);
                                }
                                builder.setTitle(str);
                                builder.setMessage(str2);
                                if (str3 == null) {
                                    builder.setPositiveButton(LocaleController.getString(C2573R.string.OK), null);
                                    return builder;
                                }
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
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
                                createStoriesAlbumEnterName(context, baseFragment, LocaleController.getString(C2573R.string.StoriesAlbumCreateNew), LocaleController.getString(C2573R.string.StoriesAlbumAddHint), LocaleController.getString(C2573R.string.StoriesAlbumTitleInputHint), null, LocaleController.getString(C2573R.string.Create), resourcesProvider, stringCallback);
                            }

                            public static void createStoriesAlbumEnterNameForRename(Context context, BaseFragment baseFragment, String str, Theme.ResourcesProvider resourcesProvider, MessagesStorage.StringCallback stringCallback) {
                                createStoriesAlbumEnterName(context, baseFragment, LocaleController.getString(C2573R.string.StoriesAlbumRename), LocaleController.getString(C2573R.string.StoriesAlbumRenameHint), LocaleController.getString(C2573R.string.StoriesAlbumTitleInputHint), str, LocaleController.getString(C2573R.string.Rename), resourcesProvider, stringCallback);
                            }

                            public static void createStoriesAlbumEnterName(Context context, BaseFragment baseFragment, String str, String str2, String str3, String str4, String str5, Theme.ResourcesProvider resourcesProvider, MessagesStorage.StringCallback stringCallback) {
                                createSimpleTextInputAlert(context, baseFragment, str, str2, str3, str4, 12, str5, resourcesProvider, stringCallback);
                            }

                            public static void createSimpleTextInputAlert(Context context, final BaseFragment baseFragment, String str, String str2, String str3, String str4, final int i, String str5, Theme.ResourcesProvider resourcesProvider, final MessagesStorage.StringCallback stringCallback) {
                                final Activity activityFindActivity = AndroidUtilities.findActivity(context);
                                final View currentFocus = activityFindActivity != null ? activityFindActivity.getCurrentFocus() : null;
                                final AlertDialog[] alertDialogArr = new AlertDialog[1];
                                AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
                                builder.setTitle(str == null ? LocaleController.getString(C2573R.string.AppName) : str);
                                builder.setMessage(str2);
                                final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
                                editTextBoldCursor.setTextSize(1, 16.0f);
                                int i2 = Theme.key_dialogTextBlack;
                                editTextBoldCursor.setTextColor(Theme.getColor(i2, resourcesProvider));
                                editTextBoldCursor.setHintTextColor(Theme.getColor(Theme.key_groupcreate_hintText, resourcesProvider));
                                editTextBoldCursor.setHint(str3);
                                editTextBoldCursor.setFocusable(true);
                                editTextBoldCursor.setInputType(147457);
                                editTextBoldCursor.setImeOptions(6);
                                editTextBoldCursor.setMaxLines(10);
                                editTextBoldCursor.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(11.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(11.0f));
                                editTextBoldCursor.setCursorWidth(1.5f);
                                editTextBoldCursor.setCursorColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4, resourcesProvider));
                                if (str4 != null) {
                                    editTextBoldCursor.setText(str4);
                                }
                                editTextBoldCursor.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda194
                                    @Override // android.widget.TextView.OnEditorActionListener
                                    public final boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                                        return AlertsCreator.$r8$lambda$AwoAOrUvysrgnd0Ax8bTi1NNwP0(editTextBoldCursor, i, stringCallback, alertDialogArr, currentFocus, textView, i3, keyEvent);
                                    }
                                });
                                editTextBoldCursor.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.AlertsCreator.2
                                    boolean ignoreTextChange;

                                    @Override // android.text.TextWatcher
                                    public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                                    }

                                    @Override // android.text.TextWatcher
                                    public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                                    }

                                    @Override // android.text.TextWatcher
                                    public void afterTextChanged(Editable editable) {
                                        if (this.ignoreTextChange) {
                                            return;
                                        }
                                        int length = editable.length();
                                        int i3 = i;
                                        if (length > i3) {
                                            this.ignoreTextChange = true;
                                            editable.delete(i3, editable.length());
                                            AndroidUtilities.shakeView(editTextBoldCursor);
                                            try {
                                                editTextBoldCursor.performHapticFeedback(3, 2);
                                            } catch (Exception unused) {
                                            }
                                            this.ignoreTextChange = false;
                                        }
                                    }
                                });
                                GradientDrawable gradientDrawable = new GradientDrawable();
                                gradientDrawable.setCornerRadius(AndroidUtilities.dp(22.0f));
                                gradientDrawable.setColor(Theme.multAlpha(Theme.getColor(i2, resourcesProvider), 0.06f));
                                editTextBoldCursor.setBackground(gradientDrawable);
                                LinearLayout linearLayout = new LinearLayout(context);
                                linearLayout.setOrientation(1);
                                linearLayout.addView(editTextBoldCursor, LayoutHelper.createLinear(-1, -2, 20.0f, 9.0f, 20.0f, 9.0f));
                                builder.makeCustomMaxHeight();
                                builder.setView(linearLayout);
                                builder.setWidth(Math.min(AndroidUtilities.dp(320.0f), (AndroidUtilities.displaySize.x * 85) / 100));
                                builder.setPositiveButton(str5, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda195
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i3) {
                                        AlertsCreator.$r8$lambda$VsuoOj6LgHZM26KtLRCL7eTiDlo(editTextBoldCursor, i, stringCallback, alertDialog, i3);
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda196
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i3) {
                                        alertDialog.dismiss();
                                    }
                                });
                                alertDialogArr[0] = builder.create();
                                if (baseFragment != null) {
                                    AndroidUtilities.requestAdjustNothing(activityFindActivity, baseFragment.getClassGuid());
                                }
                                alertDialogArr[0].setDismissDialogByButtons(false);
                                alertDialogArr[0].setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda197
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        AlertsCreator.m9768$r8$lambda$0gG6wS6rVuahA1HzAWarVn01Bo(editTextBoldCursor, baseFragment, activityFindActivity, dialogInterface);
                                    }
                                });
                                alertDialogArr[0].setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda198
                                    @Override // android.content.DialogInterface.OnShowListener
                                    public final void onShow(DialogInterface dialogInterface) {
                                        AlertsCreator.$r8$lambda$ybbFo4N65zXy_x4GVHtgSmHtb9U(editTextBoldCursor, dialogInterface);
                                    }
                                });
                                alertDialogArr[0].show();
                                editTextBoldCursor.setSelection(editTextBoldCursor.getText().length());
                            }

                            public static /* synthetic */ boolean $r8$lambda$AwoAOrUvysrgnd0Ax8bTi1NNwP0(EditTextBoldCursor editTextBoldCursor, int i, MessagesStorage.StringCallback stringCallback, AlertDialog[] alertDialogArr, View view, TextView textView, int i2, KeyEvent keyEvent) {
                                if (i2 != 6) {
                                    return false;
                                }
                                String string = editTextBoldCursor.getText().toString();
                                if (string.length() > i) {
                                    AndroidUtilities.shakeView(editTextBoldCursor);
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

                            public static /* synthetic */ void $r8$lambda$VsuoOj6LgHZM26KtLRCL7eTiDlo(EditTextBoldCursor editTextBoldCursor, int i, MessagesStorage.StringCallback stringCallback, AlertDialog alertDialog, int i2) {
                                String strTrim = editTextBoldCursor.getText().toString().trim();
                                if (strTrim.length() > i || strTrim.isEmpty()) {
                                    AndroidUtilities.shakeView(editTextBoldCursor);
                                } else {
                                    stringCallback.run(strTrim);
                                    alertDialog.dismiss();
                                }
                            }

                            /* JADX INFO: renamed from: $r8$lambda$0gG6wS-6rVuahA1HzAWarVn01Bo, reason: not valid java name */
                            public static /* synthetic */ void m9768$r8$lambda$0gG6wS6rVuahA1HzAWarVn01Bo(EditTextBoldCursor editTextBoldCursor, BaseFragment baseFragment, Activity activity, DialogInterface dialogInterface) {
                                AndroidUtilities.hideKeyboard(editTextBoldCursor);
                                if (baseFragment != null) {
                                    AndroidUtilities.requestAdjustResize(activity, baseFragment.getClassGuid());
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$ybbFo4N65zXy_x4GVHtgSmHtb9U(EditTextBoldCursor editTextBoldCursor, DialogInterface dialogInterface) {
                                editTextBoldCursor.requestFocus();
                                AndroidUtilities.showKeyboard(editTextBoldCursor);
                            }

                            public static void showAddLinkToPoll(Context context, Theme.ResourcesProvider resourcesProvider, String str, TLRPC.WebPage webPage, final Utilities.Callback<String> callback, final Runnable runnable) {
                                Activity activityFindActivity = AndroidUtilities.findActivity(context);
                                final View currentFocus = activityFindActivity != null ? activityFindActivity.getCurrentFocus() : null;
                                final AlertDialog[] alertDialogArr = new AlertDialog[1];
                                AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
                                builder.setTitle(LocaleController.getString(C2573R.string.PollV2AddLinkTitle));
                                builder.setMessage(LocaleController.getString(C2573R.string.PollV2AddLinkMessage));
                                final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context) { // from class: org.telegram.ui.Components.AlertsCreator.3
                                    @Override // com.exteragram.messenger.components.ReceiveContentEditText, android.widget.TextView, android.view.View
                                    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
                                        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
                                        editorInfo.imeOptions &= -1073741825;
                                        return inputConnectionOnCreateInputConnection;
                                    }
                                };
                                editTextBoldCursor.setTextSize(1, 16.0f);
                                int i = Theme.key_dialogTextBlack;
                                editTextBoldCursor.setTextColor(Theme.getColor(i, resourcesProvider));
                                editTextBoldCursor.setHintTextColor(Theme.getColor(Theme.key_groupcreate_hintText, resourcesProvider));
                                editTextBoldCursor.setHint(LocaleController.getString(C2573R.string.PollV2AddLinkUrlHint));
                                editTextBoldCursor.setInputType(17);
                                editTextBoldCursor.setImeOptions(6);
                                editTextBoldCursor.setMaxLines(10);
                                editTextBoldCursor.setSingleLine(false);
                                editTextBoldCursor.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(13.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(13.0f));
                                editTextBoldCursor.setCursorWidth(1.5f);
                                editTextBoldCursor.setCursorColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4, resourcesProvider));
                                if (str != null) {
                                    editTextBoldCursor.setText(str);
                                    editTextBoldCursor.setSelection(str.length());
                                }
                                editTextBoldCursor.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda255
                                    @Override // android.widget.TextView.OnEditorActionListener
                                    public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                                        return AlertsCreator.$r8$lambda$ISGHVganXhbap0xqfzUQvvZf8iE(editTextBoldCursor, callback, alertDialogArr, currentFocus, textView, i2, keyEvent);
                                    }
                                });
                                GradientDrawable gradientDrawable = new GradientDrawable();
                                gradientDrawable.setCornerRadius(AndroidUtilities.dp(22.0f));
                                gradientDrawable.setColor(Theme.multAlpha(Theme.getColor(i, resourcesProvider), 0.06f));
                                editTextBoldCursor.setBackground(gradientDrawable);
                                LinearLayout linearLayout = new LinearLayout(context);
                                linearLayout.setOrientation(1);
                                linearLayout.addView(editTextBoldCursor, LayoutHelper.createLinear(-1, -2, 24.0f, 4.0f, 24.0f, 9.0f));
                                if (WebPagePreviewView.hasPreview(webPage)) {
                                    WebPagePreviewView webPagePreviewView = new WebPagePreviewView(context, resourcesProvider, UserConfig.selectedAccount);
                                    webPagePreviewView.setWebPage(webPage);
                                    linearLayout.addView(webPagePreviewView, LayoutHelper.createLinear(-1, -2, 22.0f, 3.0f, 22.0f, 7.0f));
                                }
                                builder.makeCustomMaxHeight();
                                builder.setView(linearLayout);
                                builder.setWidth(Math.min(AndroidUtilities.dp(320.0f), (AndroidUtilities.displaySize.x * 85) / 100));
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Done), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda256
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i2) {
                                        AlertsCreator.$r8$lambda$gG9xjEcjlYHYWcSNM7cus94BWsQ(editTextBoldCursor, callback, alertDialog, i2);
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda257
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i2) {
                                        alertDialog.dismiss();
                                    }
                                });
                                if (runnable != null) {
                                    builder.setNeutralButton(LocaleController.getString(C2573R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda258
                                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                        public final void onClick(AlertDialog alertDialog, int i2) {
                                            AlertsCreator.m9795$r8$lambda$QBsRViuFHoT2tZXxJrB59PHg(runnable, alertDialog, i2);
                                        }
                                    });
                                }
                                AlertDialog alertDialogCreate = builder.create();
                                alertDialogArr[0] = alertDialogCreate;
                                alertDialogCreate.setDismissDialogByButtons(false);
                                alertDialogArr[0].setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda259
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        AndroidUtilities.hideKeyboard(editTextBoldCursor);
                                    }
                                });
                                alertDialogArr[0].setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda260
                                    @Override // android.content.DialogInterface.OnShowListener
                                    public final void onShow(DialogInterface dialogInterface) {
                                        AlertsCreator.$r8$lambda$ADkHyuSF8XrVGKedIjp7IUXCv8c(editTextBoldCursor, dialogInterface);
                                    }
                                });
                                alertDialogArr[0].show();
                                TextView textView = (TextView) alertDialogArr[0].getButton(-3);
                                if (textView != null) {
                                    textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                                }
                            }

                            public static /* synthetic */ boolean $r8$lambda$ISGHVganXhbap0xqfzUQvvZf8iE(EditTextBoldCursor editTextBoldCursor, Utilities.Callback callback, AlertDialog[] alertDialogArr, View view, TextView textView, int i, KeyEvent keyEvent) {
                                if (i != 6) {
                                    return false;
                                }
                                String strTrim = editTextBoldCursor.getText().toString().trim();
                                if (!isValidUrl(strTrim)) {
                                    AndroidUtilities.shakeView(editTextBoldCursor);
                                    return true;
                                }
                                callback.run(strTrim);
                                AlertDialog alertDialog = alertDialogArr[0];
                                if (alertDialog != null) {
                                    alertDialog.dismiss();
                                }
                                if (view != null) {
                                    view.requestFocus();
                                }
                                return true;
                            }

                            public static /* synthetic */ void $r8$lambda$gG9xjEcjlYHYWcSNM7cus94BWsQ(EditTextBoldCursor editTextBoldCursor, Utilities.Callback callback, AlertDialog alertDialog, int i) {
                                String strTrim = editTextBoldCursor.getText().toString().trim();
                                if (!isValidUrl(strTrim)) {
                                    AndroidUtilities.shakeView(editTextBoldCursor);
                                } else {
                                    callback.run(strTrim);
                                    alertDialog.dismiss();
                                }
                            }

                            /* JADX INFO: renamed from: $r8$lambda$QBsRViu-FHoT2t-ZXxJrB59-PHg, reason: not valid java name */
                            public static /* synthetic */ void m9795$r8$lambda$QBsRViuFHoT2tZXxJrB59PHg(Runnable runnable, AlertDialog alertDialog, int i) {
                                runnable.run();
                                alertDialog.dismiss();
                            }

                            public static /* synthetic */ void $r8$lambda$ADkHyuSF8XrVGKedIjp7IUXCv8c(EditTextBoldCursor editTextBoldCursor, DialogInterface dialogInterface) {
                                editTextBoldCursor.requestFocus();
                                AndroidUtilities.showKeyboard(editTextBoldCursor);
                            }

                            public static void showAddBrowserException(Context context, Theme.ResourcesProvider resourcesProvider, boolean z, final Utilities.Callback<String> callback) {
                                int i;
                                int i2;
                                Activity activityFindActivity = AndroidUtilities.findActivity(context);
                                final View currentFocus = activityFindActivity != null ? activityFindActivity.getCurrentFocus() : null;
                                final AlertDialog[] alertDialogArr = new AlertDialog[1];
                                AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
                                if (z) {
                                    i = C2573R.string.BrowserSettingsAddTitle;
                                } else {
                                    i = C2573R.string.BrowserSettingsAddTitleExternal;
                                }
                                builder.setTitle(LocaleController.getString(i));
                                if (z) {
                                    i2 = C2573R.string.BrowserSettingsAddText;
                                } else {
                                    i2 = C2573R.string.BrowserSettingsAddTextExternal;
                                }
                                builder.setMessage(LocaleController.getString(i2));
                                final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
                                editTextBoldCursor.setTextSize(1, 16.0f);
                                int i3 = Theme.key_dialogTextBlack;
                                editTextBoldCursor.setTextColor(Theme.getColor(i3, resourcesProvider));
                                editTextBoldCursor.setHintTextColor(Theme.getColor(Theme.key_groupcreate_hintText, resourcesProvider));
                                editTextBoldCursor.setHint(LocaleController.getString(C2573R.string.BrowserSettingsAddHint));
                                editTextBoldCursor.setInputType(17);
                                editTextBoldCursor.setImeOptions(6);
                                editTextBoldCursor.setSingleLine(true);
                                editTextBoldCursor.setFocusable(true);
                                editTextBoldCursor.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(13.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(13.0f));
                                editTextBoldCursor.setCursorWidth(1.5f);
                                editTextBoldCursor.setCursorColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4, resourcesProvider));
                                GradientDrawable gradientDrawable = new GradientDrawable();
                                gradientDrawable.setCornerRadius(AndroidUtilities.dp(22.0f));
                                gradientDrawable.setColor(Theme.multAlpha(Theme.getColor(i3, resourcesProvider), 0.06f));
                                editTextBoldCursor.setBackground(gradientDrawable);
                                final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda116
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AlertsCreator.$r8$lambda$ZItObE1VZ1DDG7W_v3Fox3KBpr0(editTextBoldCursor, callback, alertDialogArr, currentFocus);
                                    }
                                };
                                editTextBoldCursor.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda117
                                    @Override // android.widget.TextView.OnEditorActionListener
                                    public final boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
                                        return AlertsCreator.$r8$lambda$VRQrE8qeVBub6KxkCgxwZs0jPpo(runnable, textView, i4, keyEvent);
                                    }
                                });
                                LinearLayout linearLayout = new LinearLayout(context);
                                linearLayout.setOrientation(1);
                                linearLayout.addView(editTextBoldCursor, LayoutHelper.createLinear(-1, -2, 24.0f, 4.0f, 24.0f, 9.0f));
                                builder.makeCustomMaxHeight();
                                builder.setView(linearLayout);
                                builder.setWidth(Math.min(AndroidUtilities.dp(320.0f), (AndroidUtilities.displaySize.x * 85) / 100));
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Done), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda118
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i4) {
                                        runnable.run();
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda119
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i4) {
                                        alertDialog.dismiss();
                                    }
                                });
                                AlertDialog alertDialogCreate = builder.create();
                                alertDialogArr[0] = alertDialogCreate;
                                alertDialogCreate.setDismissDialogByButtons(false);
                                alertDialogArr[0].setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda120
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        AndroidUtilities.hideKeyboard(editTextBoldCursor);
                                    }
                                });
                                alertDialogArr[0].setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda121
                                    @Override // android.content.DialogInterface.OnShowListener
                                    public final void onShow(DialogInterface dialogInterface) {
                                        AlertsCreator.$r8$lambda$iT0Q1OqWEhHXGl71eDAXEy3kh3U(editTextBoldCursor, dialogInterface);
                                    }
                                });
                                alertDialogArr[0].show();
                            }

                            public static /* synthetic */ void $r8$lambda$ZItObE1VZ1DDG7W_v3Fox3KBpr0(EditTextBoldCursor editTextBoldCursor, Utilities.Callback callback, AlertDialog[] alertDialogArr, View view) {
                                String strTrim = editTextBoldCursor.getText().toString().trim();
                                Uri uri = Uri.parse(strTrim);
                                if (uri == null || uri.getHost() == null) {
                                    uri = Uri.parse("https://" + strTrim);
                                }
                                if (uri == null || uri.getHost() == null) {
                                    AndroidUtilities.shakeView(editTextBoldCursor);
                                    return;
                                }
                                String lowerCase = uri.getHost().toLowerCase();
                                if (lowerCase.startsWith("www.")) {
                                    lowerCase = lowerCase.substring(4);
                                }
                                callback.run(lowerCase);
                                AlertDialog alertDialog = alertDialogArr[0];
                                if (alertDialog != null) {
                                    alertDialog.dismiss();
                                }
                                if (view != null) {
                                    view.requestFocus();
                                }
                            }

                            public static /* synthetic */ boolean $r8$lambda$VRQrE8qeVBub6KxkCgxwZs0jPpo(Runnable runnable, TextView textView, int i, KeyEvent keyEvent) {
                                if (i != 6) {
                                    return false;
                                }
                                runnable.run();
                                return true;
                            }

                            public static /* synthetic */ void $r8$lambda$iT0Q1OqWEhHXGl71eDAXEy3kh3U(EditTextBoldCursor editTextBoldCursor, DialogInterface dialogInterface) {
                                editTextBoldCursor.requestFocus();
                                AndroidUtilities.showKeyboard(editTextBoldCursor);
                            }

                            private static boolean isValidUrl(String str) {
                                if (TextUtils.isEmpty(str)) {
                                    return false;
                                }
                                return URL_PATTERN.matcher(str.trim()).matches();
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

                            public static AlertDialog createSimpleConfirmAlert(Context context, Theme.ResourcesProvider resourcesProvider, String str, CharSequence charSequence, String str2, final Runnable runnable) {
                                AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
                                builder.setTitle(str);
                                builder.setMessage(charSequence);
                                builder.setPositiveButton(str2, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda122
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i) {
                                        AlertsCreator.$r8$lambda$7o7k7qpPmmMfrAymo4NyxHyiJ6c(runnable, alertDialog, i);
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                return builder.create();
                            }

                            public static /* synthetic */ void $r8$lambda$7o7k7qpPmmMfrAymo4NyxHyiJ6c(Runnable runnable, AlertDialog alertDialog, int i) {
                                if (runnable != null) {
                                    runnable.run();
                                }
                            }

                            public static AlertDialog showSimpleConfirmAlert(Context context, Theme.ResourcesProvider resourcesProvider, String str, CharSequence charSequence, String str2, boolean z, Runnable runnable) {
                                TextView textView;
                                AlertDialog alertDialogCreateSimpleConfirmAlert = createSimpleConfirmAlert(context, resourcesProvider, str, charSequence, str2, runnable);
                                alertDialogCreateSimpleConfirmAlert.show();
                                if (z && (textView = (TextView) alertDialogCreateSimpleConfirmAlert.getButton(-1)) != null) {
                                    textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                                }
                                return alertDialogCreateSimpleConfirmAlert;
                            }

                            public static AlertDialog showSimpleConfirmAlert(BaseFragment baseFragment, String str, CharSequence charSequence, String str2, boolean z, Runnable runnable) {
                                TextView textView;
                                AlertDialog alertDialogCreateSimpleConfirmAlert = createSimpleConfirmAlert(baseFragment.getContext(), baseFragment.getResourceProvider(), str, charSequence, str2, runnable);
                                baseFragment.showDialog(alertDialogCreateSimpleConfirmAlert);
                                if (z && (textView = (TextView) alertDialogCreateSimpleConfirmAlert.getButton(-1)) != null) {
                                    textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                                }
                                return alertDialogCreateSimpleConfirmAlert;
                            }

                            /* JADX WARN: Multi-variable type inference failed */
                            /* JADX WARN: Type inference failed for: r7v1 */
                            /* JADX WARN: Type inference failed for: r7v3 */
                            /* JADX WARN: Type inference failed for: r7v8 */
                            public static AlertDialog showBanGroupCreatorFromCommunityJoinedChatsAlert(Context context, Theme.ResourcesProvider resourcesProvider, int i, long j, ArrayList<Long> arrayList, final MessagesStorage.LongCallback longCallback) {
                                boolean z;
                                CharSequence pluralString;
                                LinearLayout linearLayout = new LinearLayout(context);
                                linearLayout.setOrientation(1);
                                final AlertDialog[] alertDialogArr = new AlertDialog[1];
                                AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
                                builder.setTitle(LocaleController.getString(C2573R.string.CommunityBanUserTitle));
                                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatPluralString("CommunityBanWillRemoveFromChats", arrayList.size(), DialogObject.getShortName(i, j))));
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.OK), null);
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                builder.setView(linearLayout);
                                int size = arrayList.size();
                                int i2 = 0;
                                int i3 = 0;
                                while (i3 < size) {
                                    Long l = arrayList.get(i3);
                                    i3++;
                                    Long l2 = l;
                                    final long jLongValue = l2.longValue();
                                    TLRPC.Chat chat = MessagesController.getInstance(i).getChat(l2);
                                    TLRPC.ChatFull chatFull = MessagesController.getInstance(i).getChatFull(jLongValue);
                                    if (chat != null) {
                                        CommunityBanGroupConfirmCell communityBanGroupConfirmCell = new CommunityBanGroupConfirmCell(context, resourcesProvider, i2);
                                        communityBanGroupConfirmCell.titleView.setText(DialogObject.getName(chat));
                                        TextView textView = communityBanGroupConfirmCell.subtitleView;
                                        if (chatFull != null) {
                                            z = i2;
                                            pluralString = LocaleController.formatPluralString("Members", chatFull.participants_count, new Object[i2]);
                                        } else {
                                            z = i2;
                                            pluralString = null;
                                        }
                                        textView.setText(pluralString);
                                        communityBanGroupConfirmCell.avatarView.setForUserOrChat(chat, new AvatarDrawable(chat));
                                        communityBanGroupConfirmCell.setBackground(Theme.getSelectorDrawable(z));
                                        communityBanGroupConfirmCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda261
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                AlertsCreator.$r8$lambda$Htpg1_4_5jM2uBTX0BHN7zjSByY(alertDialogArr, longCallback, jLongValue, view);
                                            }
                                        });
                                        linearLayout.addView(communityBanGroupConfirmCell, LayoutHelper.createLinear(-1, -2));
                                        i2 = z;
                                    }
                                }
                                AlertDialog alertDialogCreate = builder.create();
                                alertDialogArr[i2 == true ? 1 : 0] = alertDialogCreate;
                                alertDialogCreate.show();
                                return alertDialogCreate;
                            }

                            public static /* synthetic */ void $r8$lambda$Htpg1_4_5jM2uBTX0BHN7zjSByY(AlertDialog[] alertDialogArr, MessagesStorage.LongCallback longCallback, long j, View view) {
                                alertDialogArr[0].dismiss();
                                longCallback.run(-j);
                            }

                            /* JADX WARN: Multi-variable type inference failed */
                            public static AlertDialog showBanGroupCreatorFromCommunityConfirmAlert(Context context, Theme.ResourcesProvider resourcesProvider, int i, long j, ArrayList<Long> arrayList, final MessagesStorage.LongCallback longCallback, final Runnable runnable) {
                                boolean z;
                                CharSequence pluralString;
                                LinearLayout linearLayout = new LinearLayout(context);
                                linearLayout.setOrientation(1);
                                final AlertDialog[] alertDialogArr = new AlertDialog[1];
                                AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
                                builder.setTitle(LocaleController.getString(C2573R.string.CommunityBanWarningTitle));
                                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatPluralString("CommunityBanWarningMessage", arrayList.size(), DialogObject.getShortName(i, j))));
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Ban), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda229
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i2) {
                                        AlertsCreator.$r8$lambda$mC3OtQ0uEbOu4bH2FqVHadGoRVg(runnable, alertDialog, i2);
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                builder.setView(linearLayout);
                                int size = arrayList.size();
                                int i2 = 0;
                                int i3 = 0;
                                while (i3 < size) {
                                    Long l = arrayList.get(i3);
                                    i3++;
                                    Long l2 = l;
                                    final long jLongValue = l2.longValue();
                                    TLRPC.Chat chat = MessagesController.getInstance(i).getChat(l2);
                                    TLRPC.ChatFull chatFull = MessagesController.getInstance(i).getChatFull(jLongValue);
                                    if (chat != null) {
                                        CommunityBanGroupConfirmCell communityBanGroupConfirmCell = new CommunityBanGroupConfirmCell(context, resourcesProvider);
                                        communityBanGroupConfirmCell.titleView.setText(DialogObject.getName(chat));
                                        TextView textView = communityBanGroupConfirmCell.subtitleView;
                                        if (chatFull != null) {
                                            z = i2;
                                            pluralString = LocaleController.formatPluralString("Members", chatFull.participants_count, new Object[i2]);
                                        } else {
                                            z = i2;
                                            pluralString = null;
                                        }
                                        textView.setText(pluralString);
                                        communityBanGroupConfirmCell.avatarView.setForUserOrChat(chat, new AvatarDrawable(chat));
                                        communityBanGroupConfirmCell.setBackground(Theme.getSelectorDrawable(z));
                                        communityBanGroupConfirmCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda230
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                AlertsCreator.$r8$lambda$ifAR8QapK5_4z3Au3xJHUzB0djk(alertDialogArr, longCallback, jLongValue, view);
                                            }
                                        });
                                        linearLayout.addView(communityBanGroupConfirmCell, LayoutHelper.createLinear(-1, -2));
                                        i2 = z;
                                    }
                                }
                                AlertDialog alertDialogCreate = builder.create();
                                alertDialogArr[i2 == true ? 1 : 0] = alertDialogCreate;
                                alertDialogCreate.show();
                                TextView textView2 = (TextView) alertDialogCreate.getButton(-1);
                                if (textView2 != null) {
                                    textView2.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                                }
                                return alertDialogCreate;
                            }

                            public static /* synthetic */ void $r8$lambda$mC3OtQ0uEbOu4bH2FqVHadGoRVg(Runnable runnable, AlertDialog alertDialog, int i) {
                                if (runnable != null) {
                                    runnable.run();
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$ifAR8QapK5_4z3Au3xJHUzB0djk(AlertDialog[] alertDialogArr, MessagesStorage.LongCallback longCallback, long j, View view) {
                                alertDialogArr[0].dismiss();
                                longCallback.run(-j);
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
                                builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda112
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        AlertsCreator.$r8$lambda$1aIuKIILGAVlIwZXhXuc9nfmWu8(runnable, dialogInterface);
                                    }
                                });
                                builder.setTitle(LocaleController.getString(C2573R.string.BlockUser));
                                if (user != null) {
                                    builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BlockUserReplyAlert", C2573R.string.BlockUserReplyAlert, UserObject.getFirstName(user))));
                                } else {
                                    builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BlockUserReplyAlert", C2573R.string.BlockUserReplyAlert, chat.title)));
                                }
                                LinearLayout linearLayout = new LinearLayout(chatActivity.getParentActivity());
                                linearLayout.setOrientation(1);
                                final CheckBoxCell[] checkBoxCellArr = {new CheckBoxCell(chatActivity.getParentActivity(), 1, resourcesProvider)};
                                checkBoxCellArr[0].setBackgroundDrawable(Theme.getSelectorDrawable(false));
                                checkBoxCellArr[0].setTag(0);
                                checkBoxCellArr[0].setText(LocaleController.getString(C2573R.string.DeleteReportSpam), _UrlKt.FRAGMENT_ENCODE_SET, true, false);
                                checkBoxCellArr[0].setPadding(LocaleController.isRTL ? AndroidUtilities.dp(16.0f) : AndroidUtilities.dp(8.0f), 0, LocaleController.isRTL ? AndroidUtilities.dp(8.0f) : AndroidUtilities.dp(16.0f), 0);
                                linearLayout.addView(checkBoxCellArr[0], LayoutHelper.createLinear(-1, -2));
                                checkBoxCellArr[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda113
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        checkBoxCellArr[((Integer) view.getTag()).intValue()].setChecked(!r0[view.intValue()].isChecked(), true);
                                    }
                                });
                                builder.setView(linearLayout);
                                final TLRPC.User user2 = user;
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.BlockAndDeleteReplies), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda114
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i) {
                                        AlertsCreator.m9837$r8$lambda$nZty1amtSGod2dJ4IIrC60e7KI(user2, accountInstance, chatActivity, chat, messageObject, checkBoxCellArr, resourcesProvider, alertDialog, i);
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                AlertDialog alertDialogCreate = builder.create();
                                chatActivity.showDialog(alertDialogCreate);
                                TextView textView = (TextView) alertDialogCreate.getButton(-1);
                                if (textView != null) {
                                    textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$1aIuKIILGAVlIwZXhXuc9nfmWu8(Runnable runnable, DialogInterface dialogInterface) {
                                if (runnable != null) {
                                    runnable.run();
                                }
                            }

                            /* JADX INFO: renamed from: $r8$lambda$nZty1amtSGod2dJ4IIr-C60e7KI, reason: not valid java name */
                            public static /* synthetic */ void m9837$r8$lambda$nZty1amtSGod2dJ4IIrC60e7KI(TLRPC.User user, final AccountInstance accountInstance, ChatActivity chatActivity, TLRPC.Chat chat, MessageObject messageObject, CheckBoxCell[] checkBoxCellArr, Theme.ResourcesProvider resourcesProvider, AlertDialog alertDialog, int i) {
                                UndoView undoView;
                                if (user != null) {
                                    accountInstance.getMessagesStorage().deleteUserChatHistory(chatActivity.getDialogId(), user.id);
                                } else {
                                    accountInstance.getMessagesStorage().deleteUserChatHistory(chatActivity.getDialogId(), -chat.id);
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
                                accountInstance.getConnectionsManager().sendRequest(tL_contacts_blockFromReplies, new RequestDelegate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda191
                                    @Override // org.telegram.tgnet.RequestDelegate
                                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                        AlertsCreator.$r8$lambda$Wui4zyolXQCx9ysbyHxqZCWt420(accountInstance, tLObject, tL_error);
                                    }
                                });
                            }

                            public static /* synthetic */ void $r8$lambda$Wui4zyolXQCx9ysbyHxqZCWt420(AccountInstance accountInstance, TLObject tLObject, TLRPC.TL_error tL_error) {
                                if (tLObject instanceof TLRPC.Updates) {
                                    accountInstance.getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
                                }
                            }

                            /* JADX WARN: Multi-variable type inference failed */
                            /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
                            /* JADX WARN: Removed duplicated region for block: B:36:0x011c  */
                            /* JADX WARN: Removed duplicated region for block: B:43:0x0149  */
                            /* JADX WARN: Removed duplicated region for block: B:53:0x01ac  */
                            /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                            */
                            public static void showBlockReportSpamAlert(BaseFragment baseFragment, long j, final TLRPC.User user, final TLRPC.Chat chat, final TLRPC.EncryptedChat encryptedChat, final boolean z, TLRPC.ChatFull chatFull, final MessagesStorage.IntCallback intCallback, Theme.ResourcesProvider resourcesProvider) {
                                long j2;
                                Object[] objArr;
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
                                boolean z2 = true;
                                if (encryptedChat == null) {
                                    StringBuilder sb = new StringBuilder("dialog_bar_report");
                                    j2 = j;
                                    sb.append(j2);
                                    if (!notificationsSettings.getBoolean(sb.toString(), false)) {
                                        objArr = false;
                                    }
                                    if (user == null) {
                                        builder.setTitle(LocaleController.formatString("BlockUserTitle", C2573R.string.BlockUserTitle, UserObject.getFirstName(user)));
                                        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BlockUserAlert", C2573R.string.BlockUserAlert, UserObject.getFirstName(user))));
                                        CharSequence string2 = LocaleController.getString(C2573R.string.BlockContact);
                                        final CheckBoxCell[] checkBoxCellArr2 = new CheckBoxCell[2];
                                        LinearLayout linearLayout = new LinearLayout(baseFragment.getParentActivity());
                                        linearLayout.setOrientation(1);
                                        int i = 0;
                                        for (int i2 = 2; i < i2; i2 = 2) {
                                            if (i != 0 || objArr == true) {
                                                CheckBoxCell checkBoxCell = new CheckBoxCell(baseFragment.getParentActivity(), z2 ? 1 : 0, resourcesProvider2);
                                                checkBoxCellArr2[i] = checkBoxCell;
                                                checkBoxCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                                                checkBoxCellArr2[i].setTag(Integer.valueOf(i));
                                                if (i == 0) {
                                                    charSequence = string2;
                                                    checkBoxCellArr2[i].setText(LocaleController.getString(C2573R.string.DeleteReportSpam), _UrlKt.FRAGMENT_ENCODE_SET, z2, false);
                                                } else {
                                                    charSequence = string2;
                                                    z2 = true;
                                                    checkBoxCellArr2[i].setText(LocaleController.formatString("DeleteThisChat", C2573R.string.DeleteThisChat, new Object[0]), _UrlKt.FRAGMENT_ENCODE_SET, true, false);
                                                }
                                                checkBoxCellArr2[i].setPadding(LocaleController.isRTL ? AndroidUtilities.dp(16.0f) : AndroidUtilities.dp(8.0f), 0, LocaleController.isRTL ? AndroidUtilities.dp(8.0f) : AndroidUtilities.dp(16.0f), 0);
                                                linearLayout.addView(checkBoxCellArr2[i], LayoutHelper.createLinear(-1, -2));
                                                checkBoxCellArr2[i].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda80
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
                                        }
                                        builder.setView(linearLayout);
                                        checkBoxCellArr = checkBoxCellArr2;
                                        string = string2;
                                    } else {
                                        if (chat != null && z) {
                                            builder.setTitle(LocaleController.getString(C2573R.string.ReportUnrelatedGroup));
                                            if (chatFull != null) {
                                                TLRPC.ChannelLocation channelLocation = chatFull.location;
                                                if (channelLocation instanceof TLRPC.TL_channelLocation) {
                                                    builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("ReportUnrelatedGroupText", C2573R.string.ReportUnrelatedGroupText, ((TLRPC.TL_channelLocation) channelLocation).address)));
                                                } else {
                                                    builder.setMessage(LocaleController.getString(C2573R.string.ReportUnrelatedGroupTextNoAddress));
                                                }
                                            }
                                        } else {
                                            builder.setTitle(LocaleController.getString(C2573R.string.ReportSpamTitle));
                                            if (ChatObject.isChannel(chat) && !chat.megagroup) {
                                                builder.setMessage(LocaleController.getString(C2573R.string.ReportSpamAlertChannel));
                                            } else {
                                                builder.setMessage(LocaleController.getString(C2573R.string.ReportSpamAlertGroup));
                                            }
                                        }
                                        string = LocaleController.getString(C2573R.string.ReportChat);
                                        checkBoxCellArr = null;
                                    }
                                    final long j3 = j2;
                                    builder.setPositiveButton(string, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda81
                                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                        public final void onClick(AlertDialog alertDialog, int i3) {
                                            AlertsCreator.$r8$lambda$vnc7xQJSMx1gukA4o_qv4Liibm4(user, accountInstance, checkBoxCellArr, j3, chat, encryptedChat, z, intCallback, alertDialog, i3);
                                        }
                                    });
                                    builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
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
                                objArr = true;
                                if (user == null) {
                                }
                                final long j32 = j2;
                                builder.setPositiveButton(string, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda81
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i3) {
                                        AlertsCreator.$r8$lambda$vnc7xQJSMx1gukA4o_qv4Liibm4(user, accountInstance, checkBoxCellArr, j32, chat, encryptedChat, z, intCallback, alertDialog, i3);
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                AlertDialog alertDialogCreate2 = builder.create();
                                baseFragment.showDialog(alertDialogCreate2);
                                textView = (TextView) alertDialogCreate2.getButton(-1);
                                if (textView == null) {
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$vnc7xQJSMx1gukA4o_qv4Liibm4(TLRPC.User user, AccountInstance accountInstance, CheckBoxCell[] checkBoxCellArr, long j, TLRPC.Chat chat, TLRPC.EncryptedChat encryptedChat, boolean z, MessagesStorage.IntCallback intCallback, AlertDialog alertDialog, int i) {
                                CheckBoxCell checkBoxCell;
                                if (user != null) {
                                    accountInstance.getMessagesController().blockPeer(user.id);
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

                            public static void showCustomNotificationsDialog(BaseFragment baseFragment, long j, int i, int i2, ArrayList<NotificationsSettingsActivity.NotificationException> arrayList, ArrayList<NotificationsSettingsActivity.NotificationException> arrayList2, int i3, MessagesStorage.IntCallback intCallback) {
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
                            /* JADX WARN: Type inference failed for: r5v8, types: [android.view.View, android.widget.TextView] */
                            /* JADX WARN: Type inference failed for: r6v22 */
                            public static void showCustomNotificationsDialog(final BaseFragment baseFragment, long j, final int i, final int i2, final ArrayList<NotificationsSettingsActivity.NotificationException> arrayList, final ArrayList<NotificationsSettingsActivity.NotificationException> arrayList2, final int i3, final MessagesStorage.IntCallback intCallback, final MessagesStorage.IntCallback intCallback2) {
                                int i4;
                                ?? r13;
                                final long j2 = j;
                                if (baseFragment == null || baseFragment.getParentActivity() == null) {
                                    return;
                                }
                                ?? r132 = 0;
                                final boolean zIsGlobalNotificationsEnabled = NotificationsController.getInstance(i3).isGlobalNotificationsEnabled(j2, false, false);
                                ?? r14 = 1;
                                String[] strArr = {LocaleController.getString(C2573R.string.NotificationsTurnOn), LocaleController.formatString("MuteFor", C2573R.string.MuteFor, LocaleController.formatPluralString("Hours", 1, new Object[0])), LocaleController.formatString("MuteFor", C2573R.string.MuteFor, LocaleController.formatPluralString("Days", 2, new Object[0])), (j2 == 0 && (baseFragment instanceof NotificationsCustomSettingsActivity)) ? null : LocaleController.getString(C2573R.string.NotificationsCustomize), LocaleController.getString(C2573R.string.NotificationsTurnOff)};
                                int[] iArr = {C2573R.drawable.notifications_on, C2573R.drawable.notifications_mute1h, C2573R.drawable.notifications_mute2d, C2573R.drawable.notifications_settings, C2573R.drawable.notifications_off};
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
                                        textView.setPadding(AndroidUtilities.dp(24.0f), r132, AndroidUtilities.dp(24.0f), r132);
                                        textView.setSingleLine(r14);
                                        textView.setGravity(19);
                                        textView.setCompoundDrawablePadding(AndroidUtilities.dp(26.0f));
                                        textView.setText(strArr[i5]);
                                        r0.addView(textView, LayoutHelper.createLinear(-1, 48, 51));
                                        i4 = i5;
                                        r13 = r0;
                                        textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda137
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                AlertsCreator.m9832$r8$lambda$lVM18fDfbPN8jTUkYUZ879ND04(j2, i3, zIsGlobalNotificationsEnabled, i, intCallback2, i2, baseFragment, arrayList, arrayList2, intCallback, builder, view);
                                            }
                                        });
                                    }
                                    i5 = i4 + 1;
                                    j2 = j;
                                    r0 = r13;
                                    r132 = 0;
                                    r14 = 1;
                                }
                                builder.setTitle(LocaleController.getString(C2573R.string.Notifications));
                                builder.setView(r0);
                                baseFragment.showDialog(builder.create());
                            }

                            /* JADX WARN: Removed duplicated region for block: B:39:0x00e8  */
                            /* JADX WARN: Removed duplicated region for block: B:41:0x00ed  */
                            /* JADX INFO: renamed from: $r8$lambda$lVM18fDfbPN8jTUk-YUZ879ND04, reason: not valid java name */
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                            */
                            public static /* synthetic */ void m9832$r8$lambda$lVM18fDfbPN8jTUkYUZ879ND04(long j, int i, boolean z, int i2, MessagesStorage.IntCallback intCallback, int i3, BaseFragment baseFragment, ArrayList arrayList, ArrayList arrayList2, MessagesStorage.IntCallback intCallback2, AlertDialog.Builder builder, View view) {
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
                                        TLRPC.Dialog dialog = MessagesController.getInstance(i).dialogs_dict.get(j);
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
                                    arrayList.add(LocaleController.getString(C2573R.string.MapPreviewProviderTelegram));
                                    arrayList2.add(0);
                                }
                                if ((i2 & 2) != 0) {
                                    arrayList.add(LocaleController.getString(C2573R.string.MapPreviewProviderGoogle));
                                    arrayList2.add(1);
                                }
                                if ((i2 & 4) != 0) {
                                    arrayList.add(LocaleController.getString(C2573R.string.MapPreviewProviderYandex));
                                    arrayList2.add(3);
                                }
                                arrayList.add(LocaleController.getString(C2573R.string.MapPreviewProviderNobody));
                                arrayList2.add(2);
                                final AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
                                builder.setTitle(LocaleController.getString(C2573R.string.MapPreviewProviderTitle));
                                LinearLayout linearLayout = new LinearLayout(context);
                                linearLayout.setOrientation(1);
                                builder.setView(linearLayout);
                                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                                    RadioColorCell radioColorCell = new RadioColorCell(context, resourcesProvider);
                                    radioColorCell.setPadding(AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f), 0);
                                    radioColorCell.setTag(Integer.valueOf(i3));
                                    radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
                                    radioColorCell.setTextAndValue((CharSequence) arrayList.get(i3), SharedConfig.mapPreviewType == ((Integer) arrayList2.get(i3)).intValue());
                                    radioColorCell.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 2));
                                    linearLayout.addView(radioColorCell);
                                    radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda78
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            AlertsCreator.$r8$lambda$D9oh4ZDfJDJuAdh2qMMwYPcPcvQ(arrayList2, runnable, builder, view);
                                        }
                                    });
                                }
                                if (!z) {
                                    builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                }
                                AlertDialog alertDialogShow = builder.show();
                                if (z) {
                                    alertDialogShow.setCanceledOnTouchOutside(false);
                                }
                                return alertDialogShow;
                            }

                            public static /* synthetic */ void $r8$lambda$D9oh4ZDfJDJuAdh2qMMwYPcPcvQ(ArrayList arrayList, Runnable runnable, AlertDialog.Builder builder, View view) {
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

                            public static void showOpenUrlAlert(BaseFragment baseFragment, String str, boolean z, boolean z2, boolean z3, boolean z4, Browser.Progress progress, Theme.ResourcesProvider resourcesProvider) {
                                showOpenUrlAlert(baseFragment, str, z, z2, z3, z4, progress, (TLRPC.WebPage) null, resourcesProvider);
                            }

                            public static void showOpenUrlAlert(Context context, String str, boolean z, boolean z2, boolean z3, boolean z4, long j, Browser.Progress progress, Theme.ResourcesProvider resourcesProvider) {
                                showOpenUrlAlert(context, str, z, z2, z3, z4, j, progress, null, resourcesProvider);
                            }

                            public static void showOpenUrlAlert(BaseFragment baseFragment, String str, boolean z, boolean z2, boolean z3, boolean z4, Browser.Progress progress, TLRPC.WebPage webPage, Theme.ResourcesProvider resourcesProvider) {
                                if (baseFragment == null || baseFragment.getParentActivity() == null) {
                                    return;
                                }
                                showOpenUrlAlert(baseFragment, baseFragment.getParentActivity(), str, z, z2, z3, z4, baseFragment instanceof ChatActivity ? ((ChatActivity) baseFragment).getInlineReturn() : 0L, progress, webPage, resourcesProvider);
                            }

                            public static void showOpenUrlAlert(Context context, String str, boolean z, boolean z2, boolean z3, boolean z4, long j, Browser.Progress progress, TLRPC.WebPage webPage, Theme.ResourcesProvider resourcesProvider) {
                                showOpenUrlAlert(null, context, str, z, z2, z3, z4, j, progress, webPage, resourcesProvider);
                            }

                            private static void showOpenUrlAlert(final BaseFragment baseFragment, final Context context, final String str, boolean z, final boolean z2, boolean z3, boolean z4, final long j, final Browser.Progress progress, TLRPC.WebPage webPage, Theme.ResourcesProvider resourcesProvider) {
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
                                            FileLog.m898e(e);
                                            strReplaceHostname = str;
                                        }
                                    } else {
                                        strReplaceHostname = str;
                                    }
                                    final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            Browser.openUrl(context, Uri.parse(str), j == 0, z2, progress);
                                        }
                                    };
                                    final AlertDialog[] alertDialogArr = new AlertDialog[1];
                                    AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
                                    builder.setTitle(LocaleController.getString(C2573R.string.OpenUrlTitle));
                                    TextView textView = new TextView(context);
                                    textView.setText(strReplaceHostname);
                                    textView.setTextSize(1, 14.0f);
                                    int i = Theme.key_dialogTextBlack;
                                    textView.setTextColor(Theme.getColor(i, resourcesProvider));
                                    textView.setGravity(17);
                                    textView.setMaxLines(5);
                                    textView.setEllipsize(TextUtils.TruncateAt.END);
                                    LinearLayout linearLayout = new LinearLayout(context);
                                    linearLayout.setOrientation(1);
                                    linearLayout.setGravity(17);
                                    linearLayout.setPadding(AndroidUtilities.dp(14.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(10.0f));
                                    GradientDrawable gradientDrawable = new GradientDrawable();
                                    gradientDrawable.setCornerRadius(AndroidUtilities.dp(22.0f));
                                    gradientDrawable.setColor(Theme.multAlpha(Theme.getColor(i, resourcesProvider), 0.06f));
                                    linearLayout.setBackground(gradientDrawable);
                                    ScaleStateListAnimator.apply(linearLayout, 0.025f, 1.2f);
                                    linearLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda2
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            AlertsCreator.$r8$lambda$TQ0L29vgsmat3hW9OnHC7DqvGAQ(alertDialogArr, str, baseFragment, view);
                                        }
                                    });
                                    linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
                                    SimpleTextView simpleTextView = new SimpleTextView(context);
                                    simpleTextView.setText(LocaleController.getString(C2573R.string.TapToCopy));
                                    simpleTextView.setTextSize(12);
                                    simpleTextView.setTextColor(Theme.multAlpha(Theme.getColor(i, resourcesProvider), 0.45f));
                                    simpleTextView.setGravity(17);
                                    simpleTextView.setMaxLines(1);
                                    simpleTextView.setPadding(0, AndroidUtilities.dp(6.0f), 0, 0);
                                    linearLayout.addView(simpleTextView, LayoutHelper.createLinear(-1, -2));
                                    LinearLayout linearLayout2 = new LinearLayout(context);
                                    linearLayout2.setOrientation(1);
                                    linearLayout2.addView(linearLayout, LayoutHelper.createLinear(-1, -2, 22.0f, 4.0f, 22.0f, 9.0f));
                                    if (WebPagePreviewView.hasPreview(webPage)) {
                                        WebPagePreviewView webPagePreviewView = new WebPagePreviewView(context, resourcesProvider, UserConfig.selectedAccount);
                                        webPagePreviewView.setWebPage(webPage);
                                        linearLayout2.addView(webPagePreviewView, LayoutHelper.createLinear(-1, -2, 22.0f, 3.0f, 22.0f, 7.0f));
                                    }
                                    builder.setView(linearLayout2);
                                    builder.setWidth(Math.min(AndroidUtilities.dp(320.0f), (AndroidUtilities.displaySize.x * 85) / 100));
                                    builder.setPositiveButton(LocaleController.getString(C2573R.string.Open), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda3
                                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                        public final void onClick(AlertDialog alertDialog, int i2) {
                                            runnable.run();
                                        }
                                    });
                                    builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                    alertDialogArr[0] = builder.show();
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$TQ0L29vgsmat3hW9OnHC7DqvGAQ(AlertDialog[] alertDialogArr, String str, BaseFragment baseFragment, View view) {
                                AlertDialog alertDialog = alertDialogArr[0];
                                if (alertDialog != null) {
                                    alertDialog.dismiss();
                                }
                                if (AndroidUtilities.addToClipboard(str)) {
                                    BulletinFactory.of(baseFragment).createCopyLinkBulletin().show();
                                }
                            }

                            public static void showOpenExternalBrowserAlert(Context context, Theme.ResourcesProvider resourcesProvider, String str, boolean z, boolean z2, final Utilities.Callback2<Boolean, Boolean> callback2) {
                                if (AndroidUtilities.isContextSafe(context)) {
                                    final AlertDialog[] alertDialogArr = new AlertDialog[1];
                                    AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
                                    builder.setTitle(LocaleController.getString(C2573R.string.OpenUrlTitle));
                                    TextView textView = new TextView(context);
                                    textView.setText(str);
                                    textView.setTextSize(1, 14.0f);
                                    int i = Theme.key_dialogTextBlack;
                                    textView.setTextColor(Theme.getColor(i, resourcesProvider));
                                    textView.setGravity(17);
                                    textView.setMaxLines(5);
                                    textView.setEllipsize(TextUtils.TruncateAt.END);
                                    textView.setPadding(AndroidUtilities.dp(14.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(12.0f));
                                    GradientDrawable gradientDrawable = new GradientDrawable();
                                    gradientDrawable.setCornerRadius(AndroidUtilities.dp(22.0f));
                                    gradientDrawable.setColor(Theme.multAlpha(Theme.getColor(i, resourcesProvider), 0.06f));
                                    textView.setBackground(gradientDrawable);
                                    final CheckBoxCell checkBoxCell = new CheckBoxCell(context, 1, resourcesProvider);
                                    checkBoxCell.setMultiline(true);
                                    checkBoxCell.getTextView().getLayoutParams().width = -1;
                                    checkBoxCell.getTextView().setSingleLine(false);
                                    checkBoxCell.getTextView().setMaxLines(3);
                                    checkBoxCell.getTextView().setTextSize(1, 16.0f);
                                    checkBoxCell.setText(LocaleController.getString(z ? C2573R.string.BrowserAlwaysOpenExternal : C2573R.string.BrowserAlwaysOpenInApp), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                                    checkBoxCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda138
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            checkBoxCell.setChecked(!r0.isChecked(), true);
                                        }
                                    });
                                    LinearLayout linearLayout = new LinearLayout(context);
                                    linearLayout.setOrientation(1);
                                    linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 22.0f, 4.0f, 22.0f, 9.0f));
                                    if (z2) {
                                        linearLayout.addView(checkBoxCell, LayoutHelper.createLinear(-1, -2, 3, 8, 6, 8, 4));
                                    }
                                    builder.setView(linearLayout);
                                    builder.setWidth(Math.min(AndroidUtilities.dp(320.0f), (AndroidUtilities.displaySize.x * 85) / 100));
                                    builder.setPositiveButton(LocaleController.getString(C2573R.string.Open), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda139
                                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                        public final void onClick(AlertDialog alertDialog, int i2) {
                                            AlertsCreator.$r8$lambda$zQAevWB6uuL7DP9vk4cQmoCklys(callback2, checkBoxCell, alertDialogArr, alertDialog, i2);
                                        }
                                    });
                                    builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda140
                                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                        public final void onClick(AlertDialog alertDialog, int i2) {
                                            AlertsCreator.$r8$lambda$MSxnwsmqBQLnTqouFS7kXjhlKXY(callback2, checkBoxCell, alertDialogArr, alertDialog, i2);
                                        }
                                    });
                                    alertDialogArr[0] = builder.show();
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$zQAevWB6uuL7DP9vk4cQmoCklys(Utilities.Callback2 callback2, CheckBoxCell checkBoxCell, AlertDialog[] alertDialogArr, AlertDialog alertDialog, int i) {
                                callback2.run(Boolean.TRUE, Boolean.valueOf(checkBoxCell.isChecked()));
                                AlertDialog alertDialog2 = alertDialogArr[0];
                                if (alertDialog2 != null) {
                                    alertDialog2.dismiss();
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$MSxnwsmqBQLnTqouFS7kXjhlKXY(Utilities.Callback2 callback2, CheckBoxCell checkBoxCell, AlertDialog[] alertDialogArr, AlertDialog alertDialog, int i) {
                                callback2.run(Boolean.FALSE, Boolean.valueOf(checkBoxCell.isChecked()));
                                AlertDialog alertDialog2 = alertDialogArr[0];
                                if (alertDialog2 != null) {
                                    alertDialog2.dismiss();
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
                                SpannableString spannableString = new SpannableString(Html.fromHtml(LocaleController.getString(C2573R.string.AskAQuestionInfo).replace("\n", "<br>")));
                                for (URLSpan uRLSpan : (URLSpan[]) spannableString.getSpans(0, spannableString.length(), URLSpan.class)) {
                                    int spanStart = spannableString.getSpanStart(uRLSpan);
                                    int spanEnd = spannableString.getSpanEnd(uRLSpan);
                                    spannableString.removeSpan(uRLSpan);
                                    spannableString.setSpan(new URLSpanNoUnderline(uRLSpan.getURL()) { // from class: org.telegram.ui.Components.AlertsCreator.4
                                        @Override // org.telegram.ui.Components.URLSpanNoUnderline, android.text.style.URLSpan, android.text.style.ClickableSpan
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
                                linksTextView.setPadding(AndroidUtilities.dp(23.0f), 0, AndroidUtilities.dp(23.0f), 0);
                                linksTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
                                linksTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
                                AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity(), resourcesProvider);
                                builder.setView(linksTextView);
                                builder.setTitle(LocaleController.getString(C2573R.string.AskAQuestion));
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.AskButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda77
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i) {
                                        AlertsCreator.performAskAQuestion(baseFragment);
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
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
                                                if (userTLdeserialize != null && userTLdeserialize.id == 333000) {
                                                    userTLdeserialize = null;
                                                }
                                                serializedData.cleanup();
                                                user = userTLdeserialize;
                                            }
                                        } catch (Exception e) {
                                            FileLog.m898e(e);
                                        }
                                    }
                                }
                                if (user == null) {
                                    final AlertDialog alertDialog = new AlertDialog(baseFragment.getParentActivity(), 3);
                                    alertDialog.setCanCancel(false);
                                    alertDialog.show();
                                    ConnectionsManager.getInstance(currentAccount).sendRequest(new TLRPC.TL_help_getSupport(), new RequestDelegate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda115
                                        @Override // org.telegram.tgnet.RequestDelegate
                                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                            AlertsCreator.$r8$lambda$DmCpeigz3pbtaYG4DvqKXDA9KMw(mainSettings, alertDialog, currentAccount, baseFragment, tLObject, tL_error);
                                        }
                                    });
                                    return;
                                }
                                MessagesController.getInstance(currentAccount).putUser(user, true);
                                Bundle bundle = new Bundle();
                                bundle.putLong("user_id", user.id);
                                baseFragment.presentFragment(new ChatActivity(bundle));
                            }

                            public static /* synthetic */ void $r8$lambda$DmCpeigz3pbtaYG4DvqKXDA9KMw(final SharedPreferences sharedPreferences, final AlertDialog alertDialog, final int i, final BaseFragment baseFragment, TLObject tLObject, TLRPC.TL_error tL_error) {
                                if (tL_error == null) {
                                    final TLRPC.TL_help_support tL_help_support = (TLRPC.TL_help_support) tLObject;
                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda165
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            AlertsCreator.$r8$lambda$47BZmzpDx8mGT7Vhowhn1LRRYME(sharedPreferences, tL_help_support, alertDialog, i, baseFragment);
                                        }
                                    });
                                } else {
                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda166
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            AlertsCreator.m9854$r8$lambda$vrSLp3UFCmVSRXwpxLktMt1BEY(alertDialog);
                                        }
                                    });
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$47BZmzpDx8mGT7Vhowhn1LRRYME(SharedPreferences sharedPreferences, TLRPC.TL_help_support tL_help_support, AlertDialog alertDialog, int i, BaseFragment baseFragment) {
                                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                                editorEdit.putLong("support_id2", tL_help_support.user.id);
                                SerializedData serializedData = new SerializedData();
                                tL_help_support.user.serializeToStream(serializedData);
                                editorEdit.putString("support_user", Base64.encodeToString(serializedData.toByteArray(), 0));
                                editorEdit.apply();
                                serializedData.cleanup();
                                try {
                                    alertDialog.dismiss();
                                } catch (Exception e) {
                                    FileLog.m898e(e);
                                }
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(tL_help_support.user);
                                MessagesStorage.getInstance(i).putUsersAndChats(arrayList, null, true, true);
                                MessagesController.getInstance(i).putUser(tL_help_support.user, false);
                                Bundle bundle = new Bundle();
                                bundle.putLong("user_id", tL_help_support.user.id);
                                baseFragment.presentFragment(new ChatActivity(bundle));
                            }

                            /* JADX INFO: renamed from: $r8$lambda$vrSLp3UFCmVSRXwpxLktM-t1BEY, reason: not valid java name */
                            public static /* synthetic */ void m9854$r8$lambda$vrSLp3UFCmVSRXwpxLktMt1BEY(AlertDialog alertDialog) {
                                try {
                                    alertDialog.dismiss();
                                } catch (Exception e) {
                                    FileLog.m898e(e);
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
                                avatarDrawable.setTextSize(AndroidUtilities.dp(12.0f));
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
                                textView2.setText(LocaleController.getString(C2573R.string.ImportMessages));
                                boolean z = LocaleController.isRTL;
                                frameLayout.addView(textView2, LayoutHelper.createFrame(-1, -2.0f, (z ? 5 : 3) | 48, z ? 21 : 76, 11.0f, z ? 76 : 21, 0.0f));
                                frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 5 : 3) | 48, 24.0f, 57.0f, 24.0f, 9.0f));
                                if (user != null) {
                                    if (UserObject.isReplyUser(user)) {
                                        avatarDrawable.setScaleSize(0.8f);
                                        avatarDrawable.setAvatarType(12);
                                        backupImageView.setImage((ImageLocation) null, (String) null, avatarDrawable, user);
                                    } else if (user.id == clientUserId) {
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
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Import), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda192
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i) {
                                        AlertsCreator.$r8$lambda$A9CsCTjLm111axuBTTYnjeSO95w(runnable, alertDialog, i);
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                baseFragment.showDialog(builder.create());
                            }

                            public static /* synthetic */ void $r8$lambda$A9CsCTjLm111axuBTTYnjeSO95w(Runnable runnable, AlertDialog alertDialog, int i) {
                                if (runnable != null) {
                                    runnable.run();
                                }
                            }

                            public static void createBotLaunchAlert(final BaseFragment baseFragment, final TLRPC.User user, final Runnable runnable, final Runnable runnable2) {
                                final Context context = baseFragment.getContext();
                                final AlertDialog.Builder builder = new AlertDialog.Builder(context);
                                LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.5
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
                                avatarDrawable.setTextSize(AndroidUtilities.dp(18.0f));
                                BackupImageView backupImageView = new BackupImageView(context);
                                backupImageView.setRoundRadius(AndroidUtilities.dp(20.0f));
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
                                    Drawable drawableMutate = context.getResources().getDrawable(C2573R.drawable.verified_area).mutate();
                                    int color = Theme.getColor(Theme.key_chats_verifiedBackground);
                                    PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
                                    drawableMutate.setColorFilter(new PorterDuffColorFilter(color, mode));
                                    Drawable drawableMutate2 = context.getResources().getDrawable(C2573R.drawable.verified_check).mutate();
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
                                textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda12
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        AlertsCreator.m9776$r8$lambda$4jQxRDs8XvljzRFU76zZA7Jr0Q(user, baseFragment, builder, view);
                                    }
                                });
                                SpannableString spannableStringValueOf = SpannableString.valueOf(LocaleController.getString(C2573R.string.MoreAboutThisBot) + "  ");
                                ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2573R.drawable.attach_arrow_right);
                                coloredImageSpan.setTopOffset(1);
                                coloredImageSpan.setSize(AndroidUtilities.dp(10.0f));
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
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Start), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda13
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i) {
                                        AlertsCreator.$r8$lambda$LRAdENUP_MozpZnBzKEsiPXAOfU(runnable, alertDialog, i);
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                final AlertDialog alertDialogCreate = builder.create();
                                baseFragment.showDialog(alertDialogCreate, false, new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda14
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        AlertsCreator.$r8$lambda$0RhnXu7skqioEiKmEllOuwIH5pk(runnable2, dialogInterface);
                                    }
                                });
                                linksTextView.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.BotWebViewStartPermission2), new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda15
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AlertsCreator.$r8$lambda$m3nAnNtqC8ylzyCI632g3yivEM4(alertDialogCreate, context);
                                    }
                                }));
                            }

                            /* JADX INFO: renamed from: $r8$lambda$4jQxRDs8XvljzRFU76zZA7Jr0-Q, reason: not valid java name */
                            public static /* synthetic */ void m9776$r8$lambda$4jQxRDs8XvljzRFU76zZA7Jr0Q(TLRPC.User user, BaseFragment baseFragment, AlertDialog.Builder builder, View view) {
                                Bundle bundle = new Bundle();
                                bundle.putLong("user_id", user.id);
                                if (baseFragment.getMessagesController().checkCanOpenChat(bundle, baseFragment)) {
                                    baseFragment.presentFragment(new ProfileActivity(bundle));
                                }
                                builder.getDismissRunnable().run();
                            }

                            public static /* synthetic */ void $r8$lambda$LRAdENUP_MozpZnBzKEsiPXAOfU(Runnable runnable, AlertDialog alertDialog, int i) {
                                if (runnable != null) {
                                    runnable.run();
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$0RhnXu7skqioEiKmEllOuwIH5pk(Runnable runnable, DialogInterface dialogInterface) {
                                if (runnable != null) {
                                    runnable.run();
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$m3nAnNtqC8ylzyCI632g3yivEM4(AlertDialog alertDialog, Context context) {
                                if (alertDialog != null) {
                                    alertDialog.dismiss();
                                }
                                Browser.openUrl(context, LocaleController.getString(C2573R.string.BotWebViewStartPermissionLink));
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
                            /* JADX WARN: Removed duplicated region for block: B:72:0x027e  */
                            /* JADX WARN: Removed duplicated region for block: B:73:0x028d  */
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
                                LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.6
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
                                FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.7
                                    @Override // android.widget.FrameLayout, android.view.View
                                    public void onMeasure(int i, int i2) {
                                        super.onMeasure(i, i2);
                                        if (checkBoxCellArr[0] != null) {
                                            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight() + checkBoxCellArr[0].getMeasuredHeight() + AndroidUtilities.dp(7.0f));
                                        }
                                    }
                                };
                                builder.setCustomViewOffset(6);
                                builder.setView(frameLayout);
                                AvatarDrawable avatarDrawable = new AvatarDrawable();
                                avatarDrawable.setTextSize(AndroidUtilities.dp(18.0f));
                                BackupImageView backupImageView = new BackupImageView(context);
                                backupImageView.setRoundRadius(AndroidUtilities.dp(20.0f));
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
                                        Drawable drawableMutate = context.getResources().getDrawable(C2573R.drawable.verified_area).mutate();
                                        int color = Theme.getColor(Theme.key_chats_verifiedBackground);
                                        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
                                        drawableMutate.setColorFilter(new PorterDuffColorFilter(color, mode));
                                        Drawable drawableMutate2 = context.getResources().getDrawable(C2573R.drawable.verified_check).mutate();
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
                                    textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda200
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            AlertsCreator.m9809$r8$lambda$UzKwpdmH_YIHrzuajqlglY1go(user, baseFragment, builder, view);
                                        }
                                    });
                                    SpannableString spannableStringValueOf = SpannableString.valueOf(LocaleController.getString(C2573R.string.MoreAboutThisBot) + "  ");
                                    ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2573R.drawable.attach_arrow_right);
                                    coloredImageSpan.setTopOffset(1);
                                    coloredImageSpan.setSize(AndroidUtilities.dp(10.0f));
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
                                        checkBoxCellArr[0].setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.OpenUrlOption2, UserObject.getUserName(user))), _UrlKt.FRAGMENT_ENCODE_SET, true, false);
                                        checkBoxCellArr[0].setPadding(LocaleController.isRTL ? AndroidUtilities.dp(f) : AndroidUtilities.dp(8.0f), 0, LocaleController.isRTL ? AndroidUtilities.dp(8.0f) : AndroidUtilities.dp(f), 0);
                                        checkBoxCellArr[0].setChecked(true, false);
                                        frameLayout.addView(checkBoxCellArr[0], LayoutHelper.createFrame(-1, 48.0f, 83, 0.0f, 0.0f, 0.0f, 0.0f));
                                        checkBoxCellArr[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda201
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                AlertsCreator.m9836$r8$lambda$nRFyRZe8xju6JoJoWq2UeH6nC8(atomicBoolean, view);
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
                                    builder.setPositiveButton(LocaleController.getString(C2573R.string.Start), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda202
                                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                        public final void onClick(AlertDialog alertDialog, int i) {
                                            runnable.run();
                                        }
                                    });
                                    builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                    final AlertDialog alertDialogCreate = builder.create();
                                    baseFragment.showDialog(alertDialogCreate);
                                    linksTextView.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.BotWebViewStartPermission2), new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda203
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            AlertsCreator.$r8$lambda$ZgbXSj66_3gXC06di0KFHWI1904(alertDialogCreate, context);
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
                                textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda200
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        AlertsCreator.m9809$r8$lambda$UzKwpdmH_YIHrzuajqlglY1go(user, baseFragment, builder, view);
                                    }
                                });
                                SpannableString spannableStringValueOf2 = SpannableString.valueOf(LocaleController.getString(C2573R.string.MoreAboutThisBot) + "  ");
                                ColoredImageSpan coloredImageSpan2 = new ColoredImageSpan(C2573R.drawable.attach_arrow_right);
                                coloredImageSpan2.setTopOffset(1);
                                coloredImageSpan2.setSize(AndroidUtilities.dp(10.0f));
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
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Start), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda202
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i) {
                                        runnable.run();
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                final AlertDialog alertDialogCreate2 = builder.create();
                                baseFragment.showDialog(alertDialogCreate2);
                                linksTextView.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.BotWebViewStartPermission2), new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda203
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AlertsCreator.$r8$lambda$ZgbXSj66_3gXC06di0KFHWI1904(alertDialogCreate2, context);
                                    }
                                }));
                            }

                            /* JADX INFO: renamed from: $r8$lambda$UzKw-pdmH_-YIHrzuajqlglY1go, reason: not valid java name */
                            public static /* synthetic */ void m9809$r8$lambda$UzKwpdmH_YIHrzuajqlglY1go(TLRPC.User user, BaseFragment baseFragment, AlertDialog.Builder builder, View view) {
                                Bundle bundle = new Bundle();
                                bundle.putLong("user_id", user.id);
                                if (baseFragment.getMessagesController().checkCanOpenChat(bundle, baseFragment)) {
                                    baseFragment.presentFragment(new ProfileActivity(bundle));
                                }
                                builder.getDismissRunnable().run();
                            }

                            /* JADX INFO: renamed from: $r8$lambda$nRFyR-Ze8xju6JoJoWq2UeH6nC8, reason: not valid java name */
                            public static /* synthetic */ void m9836$r8$lambda$nRFyRZe8xju6JoJoWq2UeH6nC8(AtomicBoolean atomicBoolean, View view) {
                                atomicBoolean.set(!atomicBoolean.get());
                                ((CheckBoxCell) view).setChecked(atomicBoolean.get(), true);
                            }

                            public static /* synthetic */ void $r8$lambda$ZgbXSj66_3gXC06di0KFHWI1904(AlertDialog alertDialog, Context context) {
                                if (alertDialog != null) {
                                    alertDialog.dismiss();
                                }
                                Browser.openUrl(context, LocaleController.getString(C2573R.string.BotWebViewStartPermissionLink));
                            }

                            public static boolean ensurePaidMessagesMultiConfirmationTopicKeys(int i, ArrayList<MessagesStorage.TopicKey> arrayList, int i2, Utilities.Callback<HashMap<Long, Long>> callback) {
                                HashSet hashSet = new HashSet();
                                if (arrayList != null) {
                                    int size = arrayList.size();
                                    int i3 = 0;
                                    while (i3 < size) {
                                        MessagesStorage.TopicKey topicKey = arrayList.get(i3);
                                        i3++;
                                        hashSet.add(Long.valueOf(topicKey.dialogId));
                                    }
                                }
                                return ensurePaidMessagesMultiConfirmation(i, new ArrayList(hashSet), i2, callback);
                            }

                            public static boolean ensurePaidMessagesMultiConfirmation(final int i, final ArrayList<Long> arrayList, int i2, final Utilities.Callback<HashMap<Long, Long>> callback) {
                                boolean z = false;
                                if (callback == null) {
                                    return false;
                                }
                                if (arrayList == null || arrayList.isEmpty()) {
                                    callback.run(new HashMap<>());
                                    return false;
                                }
                                final HashMap<Long, Long> map = new HashMap<>();
                                int size = arrayList.size();
                                int i3 = 0;
                                int i4 = 0;
                                long j = 0;
                                boolean z2 = true;
                                while (i4 < size) {
                                    Long l = arrayList.get(i4);
                                    i4++;
                                    Long l2 = l;
                                    long jLongValue = l2.longValue();
                                    boolean z3 = z;
                                    long sendPaidMessagesStars = MessagesController.getInstance(i).getSendPaidMessagesStars(jLongValue);
                                    if (sendPaidMessagesStars <= 0 && jLongValue > 0) {
                                        sendPaidMessagesStars = DialogObject.getMessagesStarsPrice(MessagesController.getInstance(i).isUserContactBlocked(jLongValue));
                                    }
                                    map.put(l2, Long.valueOf(sendPaidMessagesStars));
                                    j += sendPaidMessagesStars;
                                    StarsController.getInstance(i).sendingMessagesCount.put(l2, Integer.valueOf(i2));
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
                                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("MessageLockedStarsConfirmMessageMulti2", (int) jMax, LocaleController.formatPluralStringComma("MessageLockedStarsConfirmMessageMulti2Messages", i2 * Math.max(1, i3)))));
                                showAlertWithCheckboxWithBalance(activity, LocaleController.getString(C2573R.string.MessageLockedStarsConfirmTitle), spannableStringBuilder, LocaleController.getString(C2573R.string.MessageLockedStarsConfirmMessageDontAsk), LocaleController.formatPluralStringComma("MessageLockedStarsConfirmMessagePay", i2), new Utilities.Callback() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda82
                                    @Override // org.telegram.messenger.Utilities.Callback
                                    public final void run(Object obj) {
                                        AlertsCreator.$r8$lambda$8iOZHHjibVZj7obo7SH8qRfO5VI(i, arrayList, jMax, activity, darkThemeResourceProvider, callback, map, (Boolean) obj);
                                    }
                                }, darkThemeResourceProvider);
                                return true;
                            }

                            public static /* synthetic */ void $r8$lambda$8iOZHHjibVZj7obo7SH8qRfO5VI(final int i, final ArrayList arrayList, final long j, final Activity activity, final Theme.ResourcesProvider resourcesProvider, final Utilities.Callback callback, final HashMap map, Boolean bool) {
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
                                Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda111
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AlertsCreator.$r8$lambda$VLjUSpmT6YBIljMXSsRLV2fl7Mw(i, j, activity, arrayList, resourcesProvider, callback, map);
                                    }
                                };
                                if (!StarsController.getInstance(i).balanceAvailable()) {
                                    StarsController.getInstance(i).invalidateBalance(runnable);
                                } else {
                                    runnable.run();
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$VLjUSpmT6YBIljMXSsRLV2fl7Mw(int i, long j, Activity activity, ArrayList arrayList, Theme.ResourcesProvider resourcesProvider, final Utilities.Callback callback, final HashMap map) {
                                if (StarsController.getInstance(i).getBalance().amount >= j) {
                                    callback.run(map);
                                } else {
                                    if (activity == null) {
                                        return;
                                    }
                                    long jLongValue = ((Long) arrayList.get(0)).longValue();
                                    new StarsIntroActivity.StarsNeededSheet(activity, resourcesProvider, j, 13, DialogObject.getShortName(i, jLongValue), new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda174
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
                                StringBuilder sb = new StringBuilder("ask_paid_message_");
                                sb.append(j);
                                sb.append("_price");
                                return sendPaidMessagesStars > mainSettings.getLong(sb.toString(), 0L);
                            }

                            public static boolean ensurePaidMessageConfirmation(int i, long j, int i2, Utilities.Callback<Long> callback) {
                                return ensurePaidMessageConfirmation(i, j, i2, callback, 0L);
                            }

                            public static boolean ensurePaidMessageConfirmation(final int i, final long j, int i2, final Utilities.Callback<Long> callback, long j2) {
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
                                        AlertsCreator.m9799$r8$lambda$SKXQCmUoeDjbFnpTrxbuZrA548(i, j3, j, callback, j4);
                                    }
                                });
                                return true;
                            }

                            /* JADX INFO: renamed from: $r8$lambda$SKXQCmUoeDjb-FnpTrxbuZrA548, reason: not valid java name */
                            public static /* synthetic */ void m9799$r8$lambda$SKXQCmUoeDjbFnpTrxbuZrA548(final int i, final long j, final long j2, final Utilities.Callback callback, final long j3) {
                                Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda56
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AlertsCreator.$r8$lambda$5aUufNy1MDZKIkBKmtkSXzIDxdE(i, j, j2, callback, j3);
                                    }
                                };
                                if (!StarsController.getInstance(i).balanceAvailable()) {
                                    StarsController.getInstance(i).invalidateBalance(runnable);
                                } else {
                                    runnable.run();
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$5aUufNy1MDZKIkBKmtkSXzIDxdE(int i, long j, long j2, final Utilities.Callback callback, final long j3) {
                                if (StarsController.getInstance(i).getBalance().amount < j) {
                                    Activity activity = AndroidUtilities.getActivity();
                                    BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                                    Theme.ResourcesProvider darkThemeResourceProvider = (PhotoViewer.getInstance().isVisible() || (safeLastFragment != null && safeLastFragment.hasShownSheet())) ? new DarkThemeResourceProvider() : safeLastFragment != null ? safeLastFragment.getResourceProvider() : null;
                                    if (activity == null) {
                                        return;
                                    }
                                    new StarsIntroActivity.StarsNeededSheet(activity, darkThemeResourceProvider, j, 13, DialogObject.getShortName(i, j2), new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda149
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
                                        shortName = DialogObject.getShortName(i, -chat.id);
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
                                showAlertWithCheckboxWithBalance(activity, LocaleController.getString(C2573R.string.MessageLockedStarsConfirmTitle), spannableStringBuilder, LocaleController.getString(C2573R.string.MessageLockedStarsConfirmMessageDontAsk), LocaleController.formatPluralStringComma("MessageLockedStarsConfirmMessagePay", i2), new Utilities.Callback() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda92
                                    @Override // org.telegram.messenger.Utilities.Callback
                                    public final void run(Object obj) {
                                        AlertsCreator.$r8$lambda$cIEbSFwNMk9x0u8zyC3c0fb61LQ(i, j, j2, runnable, (Boolean) obj);
                                    }
                                }, darkThemeResourceProvider);
                            }

                            public static /* synthetic */ void $r8$lambda$cIEbSFwNMk9x0u8zyC3c0fb61LQ(int i, long j, long j2, Runnable runnable, Boolean bool) {
                                if (bool.booleanValue()) {
                                    MessagesController.getInstance(i).getMainSettings().edit().putLong("ask_paid_message_" + j + "_price", j2).apply();
                                    StarsController.getInstance(i).justAgreedToNotAskDialogs.put(Long.valueOf(j), Long.valueOf(System.currentTimeMillis()));
                                }
                                AndroidUtilities.runOnUIThread(runnable);
                            }

                            public static AlertDialog showAlertWithCheckbox(Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, Utilities.Callback<Boolean> callback, Theme.ResourcesProvider resourcesProvider) {
                                return showAlertWithCheckbox(context, charSequence, charSequence2, charSequence3, charSequence4, callback, resourcesProvider, false);
                            }

                            public static AlertDialog showAlertWithCheckboxWithBalance(Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, Utilities.Callback<Boolean> callback, Theme.ResourcesProvider resourcesProvider) {
                                return showAlertWithCheckbox(context, charSequence, charSequence2, charSequence3, charSequence4, callback, resourcesProvider, true);
                            }

                            public static AlertDialog showAlertWithCheckbox(Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, final Utilities.Callback<Boolean> callback, Theme.ResourcesProvider resourcesProvider, boolean z) {
                                if (context == null) {
                                    callback.run(Boolean.FALSE);
                                    return null;
                                }
                                AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
                                final CheckBoxCell[] checkBoxCellArr = new CheckBoxCell[1];
                                final boolean[] zArr = new boolean[1];
                                TextView textView = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.8
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
                                FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.9
                                    @Override // android.widget.FrameLayout, android.view.View
                                    public void onMeasure(int i, int i2) {
                                        super.onMeasure(i, i2);
                                        if (checkBoxCellArr[0] != null) {
                                            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight() + checkBoxCellArr[0].getMeasuredHeight() + AndroidUtilities.dp(7.0f));
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
                                    checkBoxCell.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), 7, AndroidUtilities.dp(12.0f)));
                                    checkBoxCellArr[0].setMultiline(true);
                                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) checkBoxCellArr[0].getCheckBoxView().getLayoutParams();
                                    layoutParams.topMargin = 0;
                                    layoutParams.gravity = (LocaleController.isRTL ? 5 : 3) | 16;
                                    checkBoxCellArr[0].getCheckBoxView().setLayoutParams(layoutParams);
                                    checkBoxCellArr[0].setText(charSequence3, _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                                    checkBoxCellArr[0].setPadding(LocaleController.isRTL ? AndroidUtilities.dp(4.0f) : 0, AndroidUtilities.dp(12.0f), LocaleController.isRTL ? 0 : AndroidUtilities.dp(4.0f), AndroidUtilities.dp(12.0f));
                                    frameLayout.addView(checkBoxCellArr[0], LayoutHelper.createFrame(-1, -2.0f, 83, 8.0f, 0.0f, 8.0f, 0.0f));
                                    checkBoxCellArr[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda74
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            AlertsCreator.$r8$lambda$nyOEnuWOBNA9cdKho4EIGHjgFWY(zArr, view);
                                        }
                                    });
                                }
                                builder.setPositiveButton(charSequence4, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda75
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i) {
                                        callback.run(Boolean.valueOf(zArr[0]));
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                AlertDialog alertDialogCreate = builder.create();
                                if (z) {
                                    alertDialogCreate.setShowStarsBalance(true);
                                }
                                alertDialogCreate.show();
                                return alertDialogCreate;
                            }

                            public static /* synthetic */ void $r8$lambda$nyOEnuWOBNA9cdKho4EIGHjgFWY(boolean[] zArr, View view) {
                                boolean z = !zArr[0];
                                zArr[0] = z;
                                ((CheckBoxCell) view).setChecked(z, true);
                            }

                            public static void createClearOrDeleteDialogAlert(BaseFragment baseFragment, boolean z, TLRPC.Chat chat, TLRPC.User user, boolean z2, boolean z3, boolean z4, boolean z5, MessagesStorage.BooleanCallback booleanCallback) {
                                createClearOrDeleteDialogAlert(baseFragment, z, false, chat, user, z2, z3, z4, z5, booleanCallback, baseFragment != null ? baseFragment.getResourceProvider() : null);
                            }

                            /* JADX WARN: Removed duplicated region for block: B:165:0x03b8  */
                            /* JADX WARN: Removed duplicated region for block: B:172:0x03f0  */
                            /* JADX WARN: Removed duplicated region for block: B:182:0x0409  */
                            /* JADX WARN: Removed duplicated region for block: B:190:0x0444  */
                            /* JADX WARN: Removed duplicated region for block: B:237:0x0598  */
                            /* JADX WARN: Removed duplicated region for block: B:239:0x05a1  */
                            /* JADX WARN: Removed duplicated region for block: B:263:0x062e  */
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
                                ArrayList<MessageObject> arrayList;
                                boolean z9;
                                boolean z10;
                                CheckBoxCell[] checkBoxCellArr;
                                float f;
                                final boolean z11;
                                boolean z12;
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
                                TextView textView2 = new TextView(parentActivity) { // from class: org.telegram.ui.Components.AlertsCreator.10
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
                                FrameLayout frameLayout = new FrameLayout(parentActivity) { // from class: org.telegram.ui.Components.AlertsCreator.11
                                    @Override // android.widget.FrameLayout, android.view.View
                                    public void onMeasure(int i2, int i3) {
                                        super.onMeasure(i2, i3);
                                        if (checkBoxCellArr2[0] != null) {
                                            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight() + checkBoxCellArr2[0].getMeasuredHeight() + AndroidUtilities.dp(7.0f));
                                        }
                                    }
                                };
                                builder.setCustomViewOffset(6);
                                builder.setView(frameLayout);
                                AvatarDrawable avatarDrawable = new AvatarDrawable();
                                avatarDrawable.setTextSize(AndroidUtilities.dp(18.0f));
                                BackupImageView backupImageView = new BackupImageView(parentActivity);
                                backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(30.0f));
                                frameLayout.addView(backupImageView, LayoutHelper.createFrame(30, 30.0f, (LocaleController.isRTL ? 5 : 3) | 48, 22.0f, 5.0f, 22.0f, 0.0f));
                                AnimatedTextView animatedTextView = new AnimatedTextView(parentActivity);
                                animatedTextView.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem));
                                animatedTextView.setTextSize(AndroidUtilities.dp(20.0f));
                                animatedTextView.setTypeface(AndroidUtilities.bold());
                                animatedTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
                                animatedTextView.setEllipsizeByGradient(true);
                                if (z) {
                                    if (z7) {
                                        animatedTextView.setText(LocaleController.getString(C2573R.string.ClearHistoryCache));
                                    } else {
                                        animatedTextView.setText(LocaleController.getString(C2573R.string.ClearHistory));
                                    }
                                } else if (chat != null) {
                                    if (ChatObject.isCommunity(chat)) {
                                        animatedTextView.setText(LocaleController.getString(C2573R.string.CommunityDelete));
                                    } else if (ChatObject.isChannel(chat)) {
                                        if (chat.monoforum) {
                                            animatedTextView.setText(LocaleController.getString(C2573R.string.LeaveConversationMenu));
                                        } else if (chat.megagroup) {
                                            animatedTextView.setText(LocaleController.getString(C2573R.string.LeaveMega));
                                        } else {
                                            animatedTextView.setText(LocaleController.getString(C2573R.string.LeaveChannel));
                                        }
                                    } else {
                                        animatedTextView.setText(LocaleController.getString(C2573R.string.LeaveMega));
                                    }
                                } else {
                                    animatedTextView.setText(LocaleController.getString(C2573R.string.DeleteChatUser));
                                }
                                boolean z13 = LocaleController.isRTL;
                                frameLayout.addView(animatedTextView, LayoutHelper.createFrame(-1, 24.0f, (z13 ? 5 : 3) | 48, z13 ? 22 : 65, 7.66f, z13 ? 65 : 22, 0.0f));
                                frameLayout.addView(textView2, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 5 : 3) | 48, 24.0f, 49.0f, 24.0f, 1.0f));
                                TLRPC.Chat monoForumLinkedChat = ChatObject.isMonoForum(chat) ? baseFragment.getMessagesController().getMonoForumLinkedChat(chat.id) : null;
                                boolean z14 = (user == null || user.bot || user.id == j || !MessagesController.getInstance(currentAccount).canRevokePmInbox) ? false : true;
                                if (user != null) {
                                    i = MessagesController.getInstance(currentAccount).revokeTimePmLimit;
                                } else {
                                    i = MessagesController.getInstance(currentAccount).revokeTimeLimit;
                                }
                                boolean z15 = !z3 && user != null && z14 && i == Integer.MAX_VALUE;
                                final boolean[] zArr = new boolean[1];
                                if (user != null) {
                                    chat2 = monoForumLinkedChat;
                                    z8 = z15;
                                    arrayList = MessagesController.getInstance(currentAccount).dialogMessage.get(user.id);
                                } else {
                                    chat2 = monoForumLinkedChat;
                                    z8 = z15;
                                    arrayList = null;
                                }
                                boolean z16 = (arrayList == null || arrayList.size() != 1 || arrayList.get(0) == null || arrayList.get(0).messageOwner == null || (!(arrayList.get(0).messageOwner.action instanceof TLRPC.TL_messageActionUserJoined) && !(arrayList.get(0).messageOwner.action instanceof TLRPC.TL_messageActionContactSignUp))) ? false : true;
                                if (user != null) {
                                    f = 8.0f;
                                    if (user.bot) {
                                        boolean z17 = z7;
                                        z10 = z16;
                                        if (user.id != UserObject.VERIFY) {
                                            CheckBoxCell checkBoxCell = new CheckBoxCell(parentActivity, 1, resourcesProvider);
                                            checkBoxCellArr2[0] = checkBoxCell;
                                            checkBoxCell.setBackground(Theme.getSelectorDrawable(false));
                                            checkBoxCellArr2[0].setText(LocaleController.getString(C2573R.string.BlockBot), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                                            z9 = z17;
                                            checkBoxCellArr2[0].setPadding(LocaleController.isRTL ? AndroidUtilities.dp(16.0f) : AndroidUtilities.dp(8.0f), AndroidUtilities.dp(10.0f), LocaleController.isRTL ? AndroidUtilities.dp(8.0f) : AndroidUtilities.dp(16.0f), AndroidUtilities.dp(10.0f));
                                            CheckBoxCell checkBoxCell2 = checkBoxCellArr2[0];
                                            zArr[0] = true;
                                            checkBoxCell2.setChecked(true, false);
                                            checkBoxCellArr2[0].setMultiline(true);
                                            frameLayout.addView(checkBoxCellArr2[0], LayoutHelper.createFrame(-1, 48.0f, 83, 0.0f, 0.0f, 0.0f, 0.0f));
                                            checkBoxCellArr2[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda50
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    AlertsCreator.$r8$lambda$uVCYcnN8kCCFstlQg99xvO4dOpQ(zArr, view);
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
                                                    if (user.id == j) {
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
                                                    textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.DeleteAllMessagesSavedAlert)));
                                                } else if (chat != null && ChatObject.isChannelAndNotMegaGroup(chat)) {
                                                    textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.DeleteAllMessagesChannelAlert)));
                                                } else {
                                                    textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.DeleteAllMessagesAlert)));
                                                }
                                            } else if (!z) {
                                                TLRPC.Chat chat3 = chat2;
                                                if (user != null) {
                                                    if (z3) {
                                                        textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.AreYouSureDeleteThisChatWithSecretUser, UserObject.getUserName(user))));
                                                    } else if (user.id == j) {
                                                        textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.AreYouSureDeleteThisChatSavedMessages)));
                                                    } else if (user.bot && !user.support) {
                                                        textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.AreYouSureDeleteThisChatWithBotWithCheckmark, UserObject.getUserName(user))));
                                                    } else {
                                                        textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.AreYouSureDeleteThisChatWithUser, UserObject.getUserName(user))));
                                                    }
                                                } else if (ChatObject.isChannel(chat)) {
                                                    String string2 = chat3 != null ? LocaleController.formatString(C2573R.string.MonoforumTitle, chat3.title) : chat.title;
                                                    if (chat.megagroup) {
                                                        textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.MegaLeaveAlertWithName, string2)));
                                                    } else {
                                                        textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.ChannelLeaveAlertWithName, string2)));
                                                    }
                                                } else {
                                                    textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.AreYouSureDeleteAndExitName, chat.title)));
                                                }
                                            } else if (user == null) {
                                                String string3 = chat2 != null ? LocaleController.formatString(C2573R.string.MonoforumTitle, chat2.title) : chat.title;
                                                if (!ChatObject.isChannel(chat) || (chat.megagroup && !ChatObject.isPublic(chat))) {
                                                    textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.AreYouSureClearHistoryWithChat, string3)));
                                                } else if (chat.megagroup) {
                                                    textView2.setText(LocaleController.getString(C2573R.string.AreYouSureClearHistoryGroup));
                                                } else {
                                                    textView2.setText(LocaleController.getString(C2573R.string.AreYouSureClearHistoryChannel));
                                                }
                                            } else if (z3) {
                                                textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.AreYouSureClearHistoryWithSecretUser, UserObject.getUserName(user))));
                                            } else if (user.id == j) {
                                                textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.AreYouSureClearHistorySavedMessages)));
                                            } else {
                                                textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.AreYouSureClearHistoryWithUser, UserObject.getUserName(user))));
                                            }
                                            if (z2) {
                                                string = LocaleController.getString(C2573R.string.DeleteAll);
                                            } else if (z) {
                                                if (z9) {
                                                    string = LocaleController.getString(C2573R.string.ClearHistoryCache);
                                                } else {
                                                    string = LocaleController.getString(C2573R.string.ClearForMe);
                                                }
                                            } else if (z12 && zArr[0]) {
                                                string = LocaleController.getString(ChatObject.isChannelAndNotMegaGroup(chat) ? C2573R.string.ChannelDelete : C2573R.string.DeleteMega);
                                            } else if (ChatObject.isChannel(chat)) {
                                                if (chat.monoforum) {
                                                    string = LocaleController.getString(C2573R.string.LeaveConversationMenu);
                                                } else if (chat.megagroup) {
                                                    string = LocaleController.getString(C2573R.string.LeaveMegaMenu);
                                                } else {
                                                    string = LocaleController.getString(C2573R.string.LeaveChannelMenu);
                                                }
                                            } else {
                                                string = LocaleController.getString(C2573R.string.DeleteChatUser);
                                            }
                                            CharSequence charSequence = string;
                                            final boolean z18 = z9;
                                            builder.setPositiveButton(charSequence, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda53
                                                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                                public final void onClick(AlertDialog alertDialog, int i2) {
                                                    AlertsCreator.$r8$lambda$F13ytT5slXERaTEg_lytSyQvct4(z18, z2, z3, user, baseFragment, z, chat, z4, zArr, z6, booleanCallback, resourcesProvider, builder, currentAccount, parentActivity, alertDialog, i2);
                                                }
                                            });
                                            builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
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
                                        z9 = z17;
                                    } else {
                                        z9 = z7;
                                        z10 = z16;
                                        checkBoxCellArr = checkBoxCellArr2;
                                    }
                                } else {
                                    z9 = z7;
                                    z10 = z16;
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
                                    final boolean z182 = z9;
                                    builder.setPositiveButton(charSequence2, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda53
                                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                        public final void onClick(AlertDialog alertDialog, int i2) {
                                            AlertsCreator.$r8$lambda$F13ytT5slXERaTEg_lytSyQvct4(z182, z2, z3, user, baseFragment, z, chat, z4, zArr, z6, booleanCallback, resourcesProvider, builder, currentAccount, parentActivity, alertDialog, i2);
                                        }
                                    });
                                    builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
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
                                        checkBoxCellArr[0].setText(LocaleController.getString(C2573R.string.DeleteGroupForAll), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                                    } else {
                                        checkBoxCellArr[0].setText(LocaleController.getString(C2573R.string.DeleteChannelForAll), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                                    }
                                } else if (z) {
                                    checkBoxCellArr[0].setText(LocaleController.formatString(C2573R.string.ClearHistoryOptionAlso, UserObject.getFirstName(user)), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                                } else {
                                    checkBoxCellArr[0].setText(LocaleController.formatString(C2573R.string.DeleteMessagesOptionAlso, UserObject.getFirstName(user)), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                                }
                                checkBoxCellArr[0].setMultiline(true);
                                checkBoxCellArr[0].setPadding(LocaleController.isRTL ? AndroidUtilities.dp(16.0f) : AndroidUtilities.dp(f), AndroidUtilities.dp(10.0f), LocaleController.isRTL ? AndroidUtilities.dp(f) : AndroidUtilities.dp(16.0f), AndroidUtilities.dp(10.0f));
                                frameLayout.addView(checkBoxCellArr[0], LayoutHelper.createFrame(-1, 48.0f, 83, 0.0f, 0.0f, 0.0f, 0.0f));
                                final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda51
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AlertsCreator.$r8$lambda$rwVXaDntC1d0r6iIe_4FrzjwPAI(z11, chat, builder, zArr);
                                    }
                                };
                                checkBoxCellArr[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda52
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        AlertsCreator.m9828$r8$lambda$hYIElNLFjZQWhDdA1vgkdAElso(zArr, runnable, view);
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
                                final boolean z1822 = z9;
                                builder.setPositiveButton(charSequence22, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda53
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i2) {
                                        AlertsCreator.$r8$lambda$F13ytT5slXERaTEg_lytSyQvct4(z1822, z2, z3, user, baseFragment, z, chat, z4, zArr, z6, booleanCallback, resourcesProvider, builder, currentAccount, parentActivity, alertDialog, i2);
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                AlertDialog alertDialogCreate22 = builder.create();
                                baseFragment.showDialog(alertDialogCreate22);
                                textView = (TextView) alertDialogCreate22.getButton(-1);
                                if (textView != null) {
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$uVCYcnN8kCCFstlQg99xvO4dOpQ(boolean[] zArr, View view) {
                                boolean z = !zArr[0];
                                zArr[0] = z;
                                ((CheckBoxCell) view).setChecked(z, true);
                            }

                            public static /* synthetic */ void $r8$lambda$rwVXaDntC1d0r6iIe_4FrzjwPAI(boolean z, TLRPC.Chat chat, AlertDialog.Builder builder, boolean[] zArr) {
                                if (z && ChatObject.isChannel(chat)) {
                                    View button = builder.create().getButton(-1);
                                    if (button instanceof TextView) {
                                        TextView textView = (TextView) button;
                                        if (zArr[0]) {
                                            textView.setText(LocaleController.getString(ChatObject.isChannelAndNotMegaGroup(chat) ? C2573R.string.ChannelDelete : C2573R.string.DeleteMega));
                                            return;
                                        }
                                        if (chat.monoforum) {
                                            textView.setText(LocaleController.getString(C2573R.string.LeaveConversationMenu));
                                        } else if (chat.megagroup) {
                                            textView.setText(LocaleController.getString(C2573R.string.LeaveMega));
                                        } else {
                                            textView.setText(LocaleController.getString(C2573R.string.LeaveChannel));
                                        }
                                    }
                                }
                            }

                            /* JADX INFO: renamed from: $r8$lambda$hYIElN-LFjZQWhDdA1vgkdAElso, reason: not valid java name */
                            public static /* synthetic */ void m9828$r8$lambda$hYIElNLFjZQWhDdA1vgkdAElso(boolean[] zArr, Runnable runnable, View view) {
                                boolean z = !zArr[0];
                                zArr[0] = z;
                                ((CheckBoxCell) view).setChecked(z, true);
                                runnable.run();
                            }

                            public static /* synthetic */ void $r8$lambda$F13ytT5slXERaTEg_lytSyQvct4(boolean z, final boolean z2, boolean z3, final TLRPC.User user, final BaseFragment baseFragment, final boolean z4, final TLRPC.Chat chat, final boolean z5, final boolean[] zArr, final boolean z6, final MessagesStorage.BooleanCallback booleanCallback, final Theme.ResourcesProvider resourcesProvider, AlertDialog.Builder builder, final int i, final Context context, AlertDialog alertDialog, int i2) {
                                if (!z && !z2 && !z3) {
                                    if (UserObject.isUserSelf(user)) {
                                        createClearOrDeleteDialogAlert(baseFragment, z4, true, chat, user, false, z5, zArr[0], z6, booleanCallback, resourcesProvider);
                                        return;
                                    }
                                    if (user != null && zArr[0]) {
                                        MessagesStorage.getInstance(baseFragment.getCurrentAccount()).getMessagesCount(user.id, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda160
                                            @Override // org.telegram.messenger.MessagesStorage.IntCallback
                                            public final void run(int i3) {
                                                AlertsCreator.$r8$lambda$s8IFEOUSMBH81wsbyedoGFRSDi4(baseFragment, z4, chat, user, z5, zArr, z6, booleanCallback, resourcesProvider, i3);
                                            }
                                        });
                                        return;
                                    }
                                    if (ChatObject.isChannel(chat) && chat.creator && !zArr[0]) {
                                        final Browser.Progress progressMakeButtonLoading = builder.create().makeButtonLoading(-1);
                                        progressMakeButtonLoading.init();
                                        TLRPC.TL_channels_getFutureCreatorAfterLeave tL_channels_getFutureCreatorAfterLeave = new TLRPC.TL_channels_getFutureCreatorAfterLeave();
                                        tL_channels_getFutureCreatorAfterLeave.channel = MessagesController.getInputChannel(chat);
                                        ConnectionsManager.getInstance(i).sendRequestTyped(tL_channels_getFutureCreatorAfterLeave, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda161
                                            @Override // org.telegram.messenger.Utilities.Callback2
                                            public final void run(Object obj, Object obj2) {
                                                AlertsCreator.m9796$r8$lambda$QO_sCcaXxHlbSGh500edC5GVR0(progressMakeButtonLoading, booleanCallback, z2, zArr, baseFragment, chat, context, i, resourcesProvider, (TLRPC.User) obj, (TLRPC.TL_error) obj2);
                                            }
                                        });
                                        return;
                                    }
                                }
                                if (booleanCallback != null) {
                                    booleanCallback.run(z2 || zArr[0]);
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$s8IFEOUSMBH81wsbyedoGFRSDi4(BaseFragment baseFragment, boolean z, TLRPC.Chat chat, TLRPC.User user, boolean z2, boolean[] zArr, boolean z3, MessagesStorage.BooleanCallback booleanCallback, Theme.ResourcesProvider resourcesProvider, int i) {
                                if (i >= 50) {
                                    createClearOrDeleteDialogAlert(baseFragment, z, true, chat, user, false, z2, zArr[0], z3, booleanCallback, resourcesProvider);
                                } else if (booleanCallback != null) {
                                    booleanCallback.run(zArr[0]);
                                }
                            }

                            /* JADX WARN: Removed duplicated region for block: B:11:0x0016  */
                            /* JADX INFO: renamed from: $r8$lambda$QO_sCcaXxHlbSGh500edC5GV-R0, reason: not valid java name */
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                            */
                            public static /* synthetic */ void m9796$r8$lambda$QO_sCcaXxHlbSGh500edC5GVR0(Browser.Progress progress, final MessagesStorage.BooleanCallback booleanCallback, boolean z, boolean[] zArr, BaseFragment baseFragment, final TLRPC.Chat chat, final Context context, final int i, final Theme.ResourcesProvider resourcesProvider, TLRPC.User user, TLRPC.TL_error tL_error) {
                                boolean z2;
                                progress.end();
                                TLRPC.User user2 = user;
                                if (user2 instanceof TLRPC.TL_userEmpty) {
                                    user2 = null;
                                }
                                final TLRPC.User user3 = user2;
                                if (user3 != null) {
                                    showLeaveGroupWithFutureOwner(baseFragment, chat, user3, new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda172
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            new SelectChatUserSheet(context, chat, user3, new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda208
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AlertsCreator.$r8$lambda$qiNSShFEN0MkdKThkYEAMciB3gA(i, booleanCallback);
                                                }
                                            }, resourcesProvider).show();
                                        }
                                    }, new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda173
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            AlertsCreator.m9790$r8$lambda$KxBOIUYTGOYrp8SW9YsZt7HpYM(booleanCallback);
                                        }
                                    });
                                } else if (booleanCallback != null) {
                                    if (!z) {
                                        z2 = zArr[0];
                                    }
                                    booleanCallback.run(z2);
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$qiNSShFEN0MkdKThkYEAMciB3gA(int i, final MessagesStorage.BooleanCallback booleanCallback) {
                                NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeChats, new Object[0]);
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda232
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AlertsCreator.$r8$lambda$fKbIdNPGh8xbX2LJhDZjzohPd4Q(booleanCallback);
                                    }
                                }, 250L);
                            }

                            public static /* synthetic */ void $r8$lambda$fKbIdNPGh8xbX2LJhDZjzohPd4Q(MessagesStorage.BooleanCallback booleanCallback) {
                                if (booleanCallback != null) {
                                    booleanCallback.run(false);
                                }
                            }

                            /* JADX INFO: renamed from: $r8$lambda$KxBOIUYT-GOYrp8SW9YsZt7HpYM, reason: not valid java name */
                            public static /* synthetic */ void m9790$r8$lambda$KxBOIUYTGOYrp8SW9YsZt7HpYM(MessagesStorage.BooleanCallback booleanCallback) {
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
                                backupImageView.setRoundRadius(AndroidUtilities.dp(30.0f));
                                backupImageView.setForUserOrChat(currentUser, avatarDrawable);
                                frameLayout.addView(backupImageView, LayoutHelper.createFrame(60, 60.0f, 17, -48.0f, 15.0f, 0.0f, 12.0f));
                                ImageView imageView = new ImageView(context);
                                imageView.setImageResource(C2573R.drawable.msg_arrow_avatar);
                                imageView.setColorFilter(new PorterDuffColorFilter(baseFragment.getThemedColor(Theme.key_divider), PorterDuff.Mode.SRC_IN));
                                frameLayout.addView(imageView, LayoutHelper.createFrame(24, 24.0f, 17, 0.0f, 15.0f, 0.0f, 12.0f));
                                BackupImageView backupImageView2 = new BackupImageView(context) { // from class: org.telegram.ui.Components.AlertsCreator.12
                                    final Path path = new Path();

                                    @Override // org.telegram.ui.Components.BackupImageView, android.view.View
                                    public void onDraw(Canvas canvas) {
                                        canvas.save();
                                        this.path.rewind();
                                        this.path.addCircle(AndroidUtilities.dp(54.0f), AndroidUtilities.dp(53.0f), AndroidUtilities.dp(14.0f), Path.Direction.CW);
                                        canvas.clipPath(this.path, Region.Op.DIFFERENCE);
                                        super.onDraw(canvas);
                                        canvas.restore();
                                    }
                                };
                                AvatarDrawable avatarDrawable2 = new AvatarDrawable();
                                avatarDrawable2.setInfo(user);
                                backupImageView2.setRoundRadius(AndroidUtilities.dp(30.0f));
                                backupImageView2.setForUserOrChat(user, avatarDrawable2);
                                frameLayout.addView(backupImageView2, LayoutHelper.createFrame(60, 60.0f, 17, 48.0f, 15.0f, 0.0f, 12.0f));
                                BackupImageView backupImageView3 = new BackupImageView(context);
                                AvatarDrawable avatarDrawable3 = new AvatarDrawable();
                                avatarDrawable3.setInfo(chat);
                                backupImageView3.setRoundRadius(AndroidUtilities.dp(12.0f));
                                backupImageView3.setForUserOrChat(chat, avatarDrawable3);
                                frameLayout.addView(backupImageView3, LayoutHelper.createFrame(24, 24.0f, 17, 72.0f, 26.0f, 0.0f, 0.0f));
                                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                                builder.setTopViewAspectRatio(-1.0f);
                                builder.setTopView(frameLayout);
                                builder.setTitle(LocaleController.getString(zIsChannelAndNotMegaGroup ? C2573R.string.LeaveChannelTitle : C2573R.string.LeaveGroupTitle));
                                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(zIsChannelAndNotMegaGroup ? C2573R.string.LeaveChannelNewOwnerText : C2573R.string.LeaveGroupNewOwnerText, UserObject.getUserName(user), chat.title)));
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.AppointNewOwner), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda221
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i) {
                                        runnable.run();
                                    }
                                });
                                builder.setNeutralButton(LocaleController.getString(C2573R.string.Cancel), null);
                                builder.setPositiveButton(LocaleController.getString(zIsChannelAndNotMegaGroup ? C2573R.string.LeaveChannel : C2573R.string.LeaveMegaMenu), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda222
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
                                FrameLayout frameLayout = new FrameLayout(parentActivity) { // from class: org.telegram.ui.Components.AlertsCreator.13
                                    @Override // android.widget.FrameLayout, android.view.View
                                    public void onMeasure(int i3, int i4) {
                                        super.onMeasure(i3, i4);
                                        if (checkBoxCellArr[0] != null) {
                                            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight() + checkBoxCellArr[0].getMeasuredHeight() + AndroidUtilities.dp(7.0f));
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
                                        checkBoxCellArr[0].setText(LocaleController.getString(C2573R.string.DeleteMessagesForBothSidesWherePossible), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                                        checkBoxCellArr[0].setPadding(LocaleController.isRTL ? AndroidUtilities.dp(16.0f) : AndroidUtilities.dp(8.0f), 0, LocaleController.isRTL ? AndroidUtilities.dp(8.0f) : AndroidUtilities.dp(16.0f), 0);
                                        frameLayout.addView(checkBoxCellArr[0], LayoutHelper.createFrame(-1, 48.0f, 83, 0.0f, 0.0f, 0.0f, 0.0f));
                                        checkBoxCellArr[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda132
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                AlertsCreator.m9858$r8$lambda$zda2CJF2LrhKzHj2eGwSHbPoX4(zArr, view);
                                            }
                                        });
                                    }
                                    textView2.setText(LocaleController.formatString("DeleteFewChatsTitle", C2573R.string.DeleteFewChatsTitle, LocaleController.formatPluralString("ChatsSelected", i2, new Object[0])));
                                    textView.setText(LocaleController.getString("AreYouSureDeleteFewChats", C2573R.string.AreYouSureDeleteFewChats));
                                } else if (i != 0) {
                                    textView2.setText(LocaleController.formatString("ClearCacheFewChatsTitle", C2573R.string.ClearCacheFewChatsTitle, LocaleController.formatPluralString("ChatsSelectedClearCache", i2, new Object[0])));
                                    textView.setText(LocaleController.getString("AreYouSureClearHistoryCacheFewChats", C2573R.string.AreYouSureClearHistoryCacheFewChats));
                                } else {
                                    textView2.setText(LocaleController.formatString("ClearFewChatsTitle", C2573R.string.ClearFewChatsTitle, LocaleController.formatPluralString("ChatsSelectedClear", i2, new Object[0])));
                                    textView.setText(LocaleController.getString("AreYouSureClearHistoryFewChats", C2573R.string.AreYouSureClearHistoryFewChats));
                                }
                                frameLayout.addView(textView2, LayoutHelper.createFrame(-1, -2.0f, (LocaleController.isRTL ? 5 : 3) | 48, 24.0f, 11.0f, 24.0f, 0.0f));
                                frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 5 : 3) | 48, 24.0f, 57.0f, 24.0f, 1.0f));
                                if (z2) {
                                    string = LocaleController.getString("Delete", C2573R.string.Delete);
                                } else if (i != 0) {
                                    string = LocaleController.getString("ClearHistoryCache", C2573R.string.ClearHistoryCache);
                                } else {
                                    string = LocaleController.getString("ClearHistory", C2573R.string.ClearHistory);
                                }
                                builder.setPositiveButton(string, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda133
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i3) {
                                        AlertsCreator.$r8$lambda$HKeVx7WnmXlQkXrs_AlsLS8rHSU(booleanCallback, zArr, alertDialog, i3);
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString("Cancel", C2573R.string.Cancel), null);
                                AlertDialog alertDialogCreate = builder.create();
                                baseFragment.showDialog(alertDialogCreate);
                                TextView textView3 = (TextView) alertDialogCreate.getButton(-1);
                                if (textView3 != null) {
                                    textView3.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                                }
                            }

                            /* JADX INFO: renamed from: $r8$lambda$zda2CJF2LrhK-zHj2eGwSHbPoX4, reason: not valid java name */
                            public static /* synthetic */ void m9858$r8$lambda$zda2CJF2LrhKzHj2eGwSHbPoX4(boolean[] zArr, View view) {
                                boolean z = !zArr[0];
                                zArr[0] = z;
                                ((CheckBoxCell) view).setChecked(z, true);
                            }

                            public static /* synthetic */ void $r8$lambda$HKeVx7WnmXlQkXrs_AlsLS8rHSU(MessagesStorage.BooleanCallback booleanCallback, boolean[] zArr, AlertDialog alertDialog, int i) {
                                if (booleanCallback != null) {
                                    booleanCallback.run(zArr[0]);
                                }
                            }

                            /* JADX WARN: Removed duplicated region for block: B:54:0x017b  */
                            /* JADX WARN: Removed duplicated region for block: B:62:0x0191  */
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                            */
                            public static void createClearDaysDialogAlert(BaseFragment baseFragment, int i, TLRPC.User user, TLRPC.Chat chat, boolean z, final MessagesStorage.BooleanCallback booleanCallback, Theme.ResourcesProvider resourcesProvider) {
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
                                TextView textView = new TextView(parentActivity) { // from class: org.telegram.ui.Components.AlertsCreator.14
                                    @Override // android.widget.TextView
                                    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                                        super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), false), bufferType);
                                    }
                                };
                                NotificationCenter.listenEmojiLoading(textView);
                                textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
                                textView.setTextSize(1, 16.0f);
                                textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
                                FrameLayout frameLayout = new FrameLayout(parentActivity) { // from class: org.telegram.ui.Components.AlertsCreator.15
                                    @Override // android.widget.FrameLayout, android.view.View
                                    public void onMeasure(int i2, int i3) {
                                        super.onMeasure(i2, i3);
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
                                if (i == -1) {
                                    textView2.setText(LocaleController.formatString("ClearHistory", C2573R.string.ClearHistory, new Object[0]));
                                    if (user != null) {
                                        textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("AreYouSureClearHistoryWithUser", C2573R.string.AreYouSureClearHistoryWithUser, UserObject.getUserName(user))));
                                    } else if (z) {
                                        if (ChatObject.isChannelAndNotMegaGroup(chat)) {
                                            textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("AreYouSureClearHistoryWithChannel", C2573R.string.AreYouSureClearHistoryWithChannel, chat.title)));
                                        } else {
                                            textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("AreYouSureClearHistoryWithChat", C2573R.string.AreYouSureClearHistoryWithChat, chat.title)));
                                        }
                                    } else if (chat.megagroup) {
                                        textView.setText(LocaleController.getString(C2573R.string.AreYouSureClearHistoryGroup));
                                    } else {
                                        textView.setText(LocaleController.getString(C2573R.string.AreYouSureClearHistoryChannel));
                                    }
                                } else {
                                    textView2.setText(LocaleController.formatPluralString("DeleteDays", i, new Object[0]));
                                    textView.setText(LocaleController.getString(C2573R.string.DeleteHistoryByDaysMessage));
                                }
                                final boolean[] zArr = {false};
                                if (chat != null && z && ChatObject.isPublic(chat)) {
                                    zArr[0] = true;
                                }
                                if (user != null) {
                                    long j = user.id;
                                    if (j == clientUserId || j == UserObject.VERIFY || ChatObject.isMonoForum(chat)) {
                                        if (chat != null && z && !ChatObject.isPublic(chat) && !ChatObject.isChannelAndNotMegaGroup(chat) && !ChatObject.isMonoForum(chat)) {
                                            CheckBoxCell checkBoxCell = new CheckBoxCell(parentActivity, 1, resourcesProvider);
                                            checkBoxCellArr[0] = checkBoxCell;
                                            checkBoxCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                                            if (chat != null) {
                                                checkBoxCellArr[0].setText(LocaleController.getString(C2573R.string.DeleteMessagesOptionAlsoChat), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                                            } else {
                                                checkBoxCellArr[0].setText(LocaleController.formatString("DeleteMessagesOptionAlso", C2573R.string.DeleteMessagesOptionAlso, UserObject.getFirstName(user)), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                                            }
                                            checkBoxCellArr[0].setPadding(LocaleController.isRTL ? AndroidUtilities.dp(16.0f) : AndroidUtilities.dp(8.0f), 0, LocaleController.isRTL ? AndroidUtilities.dp(8.0f) : AndroidUtilities.dp(16.0f), 0);
                                            frameLayout.addView(checkBoxCellArr[0], LayoutHelper.createFrame(-1, 48.0f, 83, 0.0f, 0.0f, 0.0f, 0.0f));
                                            checkBoxCellArr[0].setChecked(false, false);
                                            checkBoxCellArr[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda54
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    AlertsCreator.$r8$lambda$bi_EHXbKrkbSi48nn1yOL9N_fF8(zArr, view);
                                                }
                                            });
                                        }
                                    }
                                }
                                CharSequence string = LocaleController.getString(C2573R.string.Delete);
                                if (chat != null && z && ChatObject.isPublic(chat) && !ChatObject.isChannelAndNotMegaGroup(chat)) {
                                    string = LocaleController.getString(C2573R.string.ClearForAll);
                                }
                                builder.setPositiveButton(string, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda55
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i2) {
                                        booleanCallback.run(zArr[0]);
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                AlertDialog alertDialogCreate = builder.create();
                                baseFragment.showDialog(alertDialogCreate);
                                TextView textView3 = (TextView) alertDialogCreate.getButton(-1);
                                if (textView3 != null) {
                                    textView3.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$bi_EHXbKrkbSi48nn1yOL9N_fF8(boolean[] zArr, View view) {
                                boolean z = !zArr[0];
                                zArr[0] = z;
                                ((CheckBoxCell) view).setChecked(z, true);
                            }

                            public static void createCallDialogAlert(final BaseFragment baseFragment, final TLRPC.User user, final boolean z) {
                                String string;
                                String string2;
                                if (baseFragment == null || baseFragment.getParentActivity() == null || user == null || UserObject.isDeleted(user) || UserConfig.getInstance(baseFragment.getCurrentAccount()).getClientUserId() == user.id) {
                                    return;
                                }
                                baseFragment.getCurrentAccount();
                                Activity parentActivity = baseFragment.getParentActivity();
                                FrameLayout frameLayout = new FrameLayout(parentActivity);
                                if (z) {
                                    string = LocaleController.getString(C2573R.string.VideoCallAlertTitle);
                                    string2 = LocaleController.formatString("VideoCallAlert", C2573R.string.VideoCallAlert, UserObject.getUserName(user));
                                } else {
                                    string = LocaleController.getString(C2573R.string.CallAlertTitle);
                                    string2 = LocaleController.formatString("CallAlert", C2573R.string.CallAlert, UserObject.getUserName(user));
                                }
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
                                textView.setText(AndroidUtilities.replaceTags(string2));
                                AvatarDrawable avatarDrawable = new AvatarDrawable();
                                avatarDrawable.setTextSize(AndroidUtilities.dp(12.0f));
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
                                baseFragment.showDialog(new AlertDialog.Builder(parentActivity).setView(frameLayout).setPositiveButton(LocaleController.getString(C2573R.string.Call), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda16
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i) {
                                        AlertsCreator.m9839$r8$lambda$otAJCGEVgtFbZWfVWG7cKeRdxU(baseFragment, user, z, alertDialog, i);
                                    }
                                }).setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null).create());
                            }

                            /* JADX INFO: renamed from: $r8$lambda$otAJCGEVgtFbZWfVWG7-cKeRdxU, reason: not valid java name */
                            public static /* synthetic */ void m9839$r8$lambda$otAJCGEVgtFbZWfVWG7cKeRdxU(BaseFragment baseFragment, TLRPC.User user, boolean z, AlertDialog alertDialog, int i) {
                                TLRPC.UserFull userFull = baseFragment.getMessagesController().getUserFull(user.id);
                                VoIPHelper.startCall(user, z, userFull != null && userFull.video_calls_available, baseFragment.getParentActivity(), userFull, baseFragment.getAccountInstance(), true);
                            }

                            public static void createChangeBioAlert(String str, final long j, Context context, final int i) {
                                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                                builder.setTitle(LocaleController.getString(j > 0 ? C2573R.string.UserBio : C2573R.string.DescriptionPlaceholder));
                                builder.setMessage(LocaleController.getString(j > 0 ? C2573R.string.VoipGroupBioEditAlertText : C2573R.string.DescriptionInfo));
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
                                editText.setHint(LocaleController.getString(j > 0 ? C2573R.string.UserBio : C2573R.string.DescriptionPlaceholder));
                                editText.setTextSize(1, 16.0f);
                                editText.setBackground(Theme.createEditTextDrawable(context, true));
                                editText.setMaxLines(4);
                                editText.setRawInputType(147457);
                                editText.setImeOptions(6);
                                final int i3 = j > 0 ? 70 : 255;
                                editText.setFilters(new InputFilter[]{new CodepointsLengthInputFilter(i3) { // from class: org.telegram.ui.Components.AlertsCreator.17
                                    @Override // org.telegram.ui.Components.CodepointsLengthInputFilter, android.text.InputFilter
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
                                editText.setPadding(LocaleController.isRTL ? AndroidUtilities.dp(24.0f) : 0, AndroidUtilities.dp(8.0f), LocaleController.isRTL ? 0 : AndroidUtilities.dp(24.0f), AndroidUtilities.dp(8.0f));
                                editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.AlertsCreator.18
                                    @Override // android.text.TextWatcher
                                    public void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
                                    }

                                    @Override // android.text.TextWatcher
                                    public void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
                                    }

                                    @Override // android.text.TextWatcher
                                    public void afterTextChanged(Editable editable) {
                                        int iCodePointCount = i3 - Character.codePointCount(editable, 0, editable.length());
                                        NumberTextView numberTextView2 = numberTextView;
                                        if (iCodePointCount < 30) {
                                            numberTextView2.setNumber(iCodePointCount, numberTextView2.getVisibility() == 0);
                                            AndroidUtilities.updateViewVisibilityAnimated(numberTextView, true);
                                        } else {
                                            AndroidUtilities.updateViewVisibilityAnimated(numberTextView2, false);
                                        }
                                    }
                                });
                                AndroidUtilities.updateViewVisibilityAnimated(numberTextView, false, 0.0f, false);
                                editText.setText(str);
                                editText.setSelection(editText.getText().toString().length());
                                builder.setView(frameLayout);
                                final AlertDialog.OnButtonClickListener onButtonClickListener = new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda209
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i4) {
                                        AlertsCreator.m9802$r8$lambda$S_PmKWCL6pvR5CSCL7cjOaUWj0(j, i, editText, alertDialog, i4);
                                    }
                                };
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Save), onButtonClickListener);
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda210
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        AndroidUtilities.hideKeyboard(editText);
                                    }
                                });
                                frameLayout.addView(editText, LayoutHelper.createFrame(-1, -2.0f, 0, 23.0f, 12.0f, 23.0f, 21.0f));
                                editText.requestFocus();
                                AndroidUtilities.showKeyboard(editText);
                                final AlertDialog alertDialogCreate = builder.create();
                                editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda211
                                    @Override // android.widget.TextView.OnEditorActionListener
                                    public final boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
                                        return AlertsCreator.$r8$lambda$70kgG05GPY4bbiUAQmjvxShXoBI(j, alertDialogCreate, onButtonClickListener, textView, i4, keyEvent);
                                    }
                                });
                                alertDialogCreate.setBackgroundColor(Theme.getColor(Theme.key_voipgroup_dialogBackground));
                                alertDialogCreate.show();
                                alertDialogCreate.setTextColor(Theme.getColor(i2));
                            }

                            /* JADX INFO: renamed from: $r8$lambda$S_PmKWCL6pvR5CSC-L7cjOaUWj0, reason: not valid java name */
                            public static /* synthetic */ void m9802$r8$lambda$S_PmKWCL6pvR5CSCL7cjOaUWj0(long j, int i, EditText editText, AlertDialog alertDialog, int i2) {
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
                                    updateprofile.flags |= 4;
                                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 2, Long.valueOf(j));
                                    ConnectionsManager.getInstance(i).sendRequest(updateprofile, new RequestDelegate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda231
                                        @Override // org.telegram.tgnet.RequestDelegate
                                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                            AlertsCreator.$r8$lambda$_lyLW7empweDdhBitMKkn9KjJEc(tLObject, tL_error);
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

                            public static /* synthetic */ boolean $r8$lambda$70kgG05GPY4bbiUAQmjvxShXoBI(long j, AlertDialog alertDialog, AlertDialog.OnButtonClickListener onButtonClickListener, TextView textView, int i, KeyEvent keyEvent) {
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
                                builder.setTitle(LocaleController.getString(j > 0 ? C2573R.string.VoipEditName : C2573R.string.VoipEditTitle));
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
                                editText2.setHint(LocaleController.getString(j > 0 ? C2573R.string.FirstName : C2573R.string.VoipEditTitleHint));
                                editText2.setBackground(Theme.createEditTextDrawable(context, true));
                                editText2.setPadding(0, AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f));
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
                                    editText.setHint(LocaleController.getString(C2573R.string.LastName));
                                    editText.setBackground(Theme.createEditTextDrawable(context, true));
                                    editText.setPadding(0, AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f));
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
                                final AlertDialog.OnButtonClickListener onButtonClickListener = new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda205
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i3) {
                                        AlertsCreator.$r8$lambda$tLKHOLvmGQIdm47MwScEem6WaXA(editText2, j, i, editText, alertDialog, i3);
                                    }
                                };
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Save), onButtonClickListener);
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda206
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        AlertsCreator.$r8$lambda$kdMtrCw_l_B7tgDk0QNhT2E_68U(editText2, editText, dialogInterface);
                                    }
                                });
                                final AlertDialog alertDialogCreate = builder.create();
                                alertDialogCreate.setBackgroundColor(Theme.getColor(Theme.key_voipgroup_dialogBackground));
                                alertDialogCreate.show();
                                alertDialogCreate.setTextColor(Theme.getColor(i2));
                                TextView.OnEditorActionListener onEditorActionListener = new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda207
                                    @Override // android.widget.TextView.OnEditorActionListener
                                    public final boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                                        return AlertsCreator.$r8$lambda$wH5vMMAp3IINl6iHFFPefOnAVXs(alertDialogCreate, onButtonClickListener, textView, i3, keyEvent);
                                    }
                                };
                                if (editText != null) {
                                    editText.setOnEditorActionListener(onEditorActionListener);
                                } else {
                                    editText2.setOnEditorActionListener(onEditorActionListener);
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$tLKHOLvmGQIdm47MwScEem6WaXA(EditText editText, long j, int i, EditText editText2, AlertDialog alertDialog, int i2) {
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
                                    ConnectionsManager.getInstance(i).sendRequest(updateprofile, new RequestDelegate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda254
                                        @Override // org.telegram.tgnet.RequestDelegate
                                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                            AlertsCreator.$r8$lambda$TjoRtuwa3xGlRpiggpnVC9JthZM(tLObject, tL_error);
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

                            public static /* synthetic */ void $r8$lambda$kdMtrCw_l_B7tgDk0QNhT2E_68U(EditText editText, EditText editText2, DialogInterface dialogInterface) {
                                AndroidUtilities.hideKeyboard(editText);
                                AndroidUtilities.hideKeyboard(editText2);
                            }

                            public static /* synthetic */ boolean $r8$lambda$wH5vMMAp3IINl6iHFFPefOnAVXs(AlertDialog alertDialog, AlertDialog.OnButtonClickListener onButtonClickListener, TextView textView, int i, KeyEvent keyEvent) {
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
                                builder.setTitle(LocaleController.getString(z ? C2573R.string.ChatWithAdminChannelTitle : C2573R.string.ChatWithAdminGroupTitle), true);
                                LinearLayout linearLayout = new LinearLayout(baseFragment.getParentActivity());
                                linearLayout.setOrientation(1);
                                TextView textView = new TextView(baseFragment.getParentActivity());
                                linearLayout.addView(textView, LayoutHelper.createLinear(-1, -1, 0, 21, 0, 21, 8));
                                textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
                                textView.setTextSize(1, 16.0f);
                                textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("ChatWithAdminMessage", C2573R.string.ChatWithAdminMessage, str, LocaleController.formatDateAudio(i, false))));
                                TextView textView2 = new TextView(baseFragment.getParentActivity());
                                textView2.setPadding(AndroidUtilities.dp(34.0f), 0, AndroidUtilities.dp(34.0f), 0);
                                textView2.setGravity(17);
                                textView2.setTextSize(1, 14.0f);
                                textView2.setTypeface(AndroidUtilities.bold());
                                textView2.setText(LocaleController.getString(C2573R.string.IUnderstand));
                                textView2.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
                                textView2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(8.0f), Theme.getColor(Theme.key_featuredStickers_addButton), Theme.getColor(Theme.key_featuredStickers_addButtonPressed)));
                                linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 0, 16, 12, 16, 8));
                                builder.setCustomView(linearLayout);
                                final BottomSheet bottomSheetShow = builder.show();
                                textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda79
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        bottomSheetShow.lambda$new$0();
                                    }
                                });
                            }

                            public static void createContactInviteDialog(final BaseFragment baseFragment, String str, String str2, final String str3) {
                                AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity());
                                builder.setTitle(LocaleController.getString(C2573R.string.ContactNotRegisteredTitle));
                                builder.setMessage(LocaleController.formatString("ContactNotRegistered", C2573R.string.ContactNotRegistered, ContactsController.formatName(str, str2)));
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Invite), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda159
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i) {
                                        AlertsCreator.$r8$lambda$jgxPbhvn0h_7g9kEGE5wLRvYVb0(str3, baseFragment, alertDialog, i);
                                    }
                                });
                                baseFragment.showDialog(builder.create());
                            }

                            public static /* synthetic */ void $r8$lambda$jgxPbhvn0h_7g9kEGE5wLRvYVb0(String str, BaseFragment baseFragment, AlertDialog alertDialog, int i) {
                                try {
                                    Intent intent = new Intent("android.intent.action.VIEW", Uri.fromParts("sms", str, null));
                                    intent.putExtra("sms_body", ContactsController.getInstance(baseFragment.getCurrentAccount()).getInviteText(1));
                                    baseFragment.getParentActivity().startActivityForResult(intent, MediaError.DetailedErrorCode.SEGMENT_UNKNOWN);
                                } catch (Exception e) {
                                    FileLog.m898e(e);
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
                                actionBarPopupWindow.setAnimationStyle(C2573R.style.PopupContextAnimation);
                                actionBarPopupWindow.setFocusable(true);
                                view.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE));
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
                                ArrayList<TLRPC.TL_missingInvitee> arrayList4 = tL_messages_invitedUsers.missing_invitees;
                                int size = arrayList4.size();
                                int i2 = 0;
                                while (i2 < size) {
                                    TLRPC.TL_missingInvitee tL_missingInvitee = arrayList4.get(i2);
                                    i2++;
                                    TLRPC.TL_missingInvitee tL_missingInvitee2 = tL_missingInvitee;
                                    if (tL_messages_invitedUsers.updates != null) {
                                        for (int i3 = 0; i3 < tL_messages_invitedUsers.updates.users.size(); i3++) {
                                            user = tL_messages_invitedUsers.updates.users.get(i3);
                                            if (user.id == tL_missingInvitee2.user_id) {
                                                break;
                                            }
                                        }
                                        user = null;
                                    } else {
                                        user = null;
                                    }
                                    if (user == null) {
                                        user = MessagesController.getInstance(i).getUser(Long.valueOf(tL_missingInvitee2.user_id));
                                    }
                                    if (user != null) {
                                        arrayList.add(user);
                                        if (tL_missingInvitee2.premium_required_for_pm) {
                                            arrayList2.add(Long.valueOf(user.id));
                                        }
                                        if (tL_missingInvitee2.premium_would_allow_invite) {
                                            arrayList3.add(Long.valueOf(user.id));
                                        }
                                    }
                                }
                                if (arrayList.isEmpty()) {
                                    return;
                                }
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda4
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AlertsCreator.$r8$lambda$dZYrZBKHFMAi_w_wUcwOfwQ_nJo(i, chat, arrayList, arrayList2, arrayList3);
                                    }
                                }, 200L);
                            }

                            public static /* synthetic */ void $r8$lambda$dZYrZBKHFMAi_w_wUcwOfwQ_nJo(int i, TLRPC.Chat chat, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
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
                                    builder.setTitle(LocaleController.formatString("BlockUserTitle", C2573R.string.BlockUserTitle, LocaleController.formatPluralString("UsersCountTitle", i, new Object[0])));
                                    string = LocaleController.getString(C2573R.string.BlockUsers);
                                    builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BlockUsersMessage", C2573R.string.BlockUsersMessage, LocaleController.formatPluralString("UsersCount", i, new Object[0]))));
                                } else {
                                    String name = ContactsController.formatName(user.first_name, user.last_name);
                                    builder.setTitle(LocaleController.formatString("BlockUserTitle", C2573R.string.BlockUserTitle, name));
                                    string = LocaleController.getString(C2573R.string.BlockUser);
                                    builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BlockUserMessage", C2573R.string.BlockUserMessage, name)));
                                }
                                final boolean[] zArr = {true, true};
                                for (final int i2 = 0; i2 < 2; i2++) {
                                    if (i2 != 0 || z) {
                                        CheckBoxCell checkBoxCell = new CheckBoxCell(parentActivity, 1);
                                        checkBoxCellArr[i2] = checkBoxCell;
                                        checkBoxCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                                        if (i2 == 0) {
                                            checkBoxCellArr[i2].setText(LocaleController.getString(C2573R.string.ReportSpamTitle), _UrlKt.FRAGMENT_ENCODE_SET, true, false);
                                        } else {
                                            checkBoxCellArr[i2].setText(LocaleController.getString(i == 1 ? C2573R.string.DeleteThisChatBothSides : C2573R.string.DeleteTheseChatsBothSides), _UrlKt.FRAGMENT_ENCODE_SET, true, false);
                                        }
                                        checkBoxCellArr[i2].setPadding(LocaleController.isRTL ? AndroidUtilities.dp(16.0f) : AndroidUtilities.dp(8.0f), 0, LocaleController.isRTL ? AndroidUtilities.dp(8.0f) : AndroidUtilities.dp(16.0f), 0);
                                        linearLayout.addView(checkBoxCellArr[i2], LayoutHelper.createLinear(-1, 48));
                                        checkBoxCellArr[i2].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda150
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                AlertsCreator.m9813$r8$lambda$WkjL7WgvI7DrvPQw1SDGaaQiw(zArr, i2, view);
                                            }
                                        });
                                    }
                                }
                                builder.setPositiveButton(string, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda151
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i3) {
                                        AlertsCreator.BlockDialogCallback blockDialogCallback2 = blockDialogCallback;
                                        boolean[] zArr2 = zArr;
                                        blockDialogCallback2.run(zArr2[0], zArr2[1]);
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                AlertDialog alertDialogCreate = builder.create();
                                baseFragment.showDialog(alertDialogCreate);
                                TextView textView = (TextView) alertDialogCreate.getButton(-1);
                                if (textView != null) {
                                    textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                                }
                            }

                            /* JADX INFO: renamed from: $r8$lambda$WkjL7WgvI-7DrvPQw-1SDGaaQiw, reason: not valid java name */
                            public static /* synthetic */ void m9813$r8$lambda$WkjL7WgvI7DrvPQw1SDGaaQiw(boolean[] zArr, int i, View view) {
                                boolean z = !zArr[i];
                                zArr[i] = z;
                                ((CheckBoxCell) view).setChecked(z, true);
                            }

                            public static BottomSheet createTimePickerDialog(Context context, String str, final int i, final int i2, final int i3, final Utilities.Callback<Integer> callback) {
                                if (context == null) {
                                    return null;
                                }
                                ScheduleDatePickerColors scheduleDatePickerColors = new ScheduleDatePickerColors();
                                BottomSheet.Builder builder = new BottomSheet.Builder(context, false, null);
                                builder.setApplyBottomPadding(false);
                                final NumberPicker numberPicker = new NumberPicker(context) { // from class: org.telegram.ui.Components.AlertsCreator.21
                                    @Override // org.telegram.ui.Components.NumberPicker
                                    public CharSequence getContentDescription(int i4) {
                                        return LocaleController.formatPluralString("Hours", i4, new Object[0]);
                                    }
                                };
                                final LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.22
                                    private Text ampmText;
                                    private boolean isAM;
                                    private final Text separatorText = new Text(":", 18.0f);

                                    @Override // android.view.ViewGroup, android.view.View
                                    public void dispatchDraw(Canvas canvas) {
                                        int i4 = Theme.key_windowBackgroundWhiteBlackText;
                                        this.separatorText.draw(canvas, (getWidth() - this.separatorText.getCurrentWidth()) / 2.0f, getHeight() / 2.0f, Theme.getColor(i4), 1.0f);
                                        if (!LocaleController.is24HourFormat) {
                                            boolean z = numberPicker.getValue() % 24 < 12;
                                            if (this.isAM != z || this.ampmText == null) {
                                                this.isAM = z;
                                                this.ampmText = new Text(z ? "AM" : "PM", 18.0f);
                                            }
                                            this.ampmText.draw(canvas, (getWidth() / 2.0f) + AndroidUtilities.dp(43.0f), (getHeight() / 2.0f) + AndroidUtilities.dp(1.0f), Theme.getColor(i4), 1.0f);
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
                                numberPicker.setTextOffset(-AndroidUtilities.dp(12.0f));
                                final NumberPicker numberPicker2 = new NumberPicker(context) { // from class: org.telegram.ui.Components.AlertsCreator.23
                                    @Override // org.telegram.ui.Components.NumberPicker
                                    public CharSequence getContentDescription(int i4) {
                                        return LocaleController.formatPluralString("Minutes", i4, new Object[0]);
                                    }
                                };
                                numberPicker2.setWrapSelectorWheel(true);
                                numberPicker2.setAllItemsCount(60);
                                numberPicker2.setItemCount(5);
                                numberPicker2.setTextColor(scheduleDatePickerColors.textColor);
                                numberPicker2.setGravity(3);
                                numberPicker2.setTextOffset(AndroidUtilities.dp(12.0f));
                                final Utilities.Callback callback2 = new Utilities.Callback() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda246
                                    @Override // org.telegram.messenger.Utilities.Callback
                                    public final void run(Object obj) {
                                        AlertsCreator.$r8$lambda$MsXNQ8U6DHyZcXFzwN3CJ_zkd5s(i2, i3, numberPicker, numberPicker2, i, linearLayout, (Boolean) obj);
                                    }
                                };
                                linearLayout.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.5f));
                                numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda247
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i4) {
                                        return AlertsCreator.$r8$lambda$7w5QnENBrX9PLIJoNdbHch723kc(i4);
                                    }
                                });
                                numberPicker.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda248
                                    @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
                                    public final void onValueChange(NumberPicker numberPicker3, int i4, int i5) {
                                        callback2.run(Boolean.TRUE);
                                    }
                                });
                                linearLayout.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.5f));
                                numberPicker2.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda249
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i4) {
                                        return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i4));
                                    }
                                });
                                numberPicker2.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda250
                                    @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
                                    public final void onValueChange(NumberPicker numberPicker3, int i4, int i5) {
                                        callback2.run(Boolean.TRUE);
                                    }
                                });
                                callback2.run(Boolean.FALSE);
                                LinearLayout linearLayout2 = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.24
                                    boolean ignoreLayout = false;

                                    @Override // android.widget.LinearLayout, android.view.View
                                    public void onMeasure(int i4, int i5) {
                                        this.ignoreLayout = true;
                                        Point point = AndroidUtilities.displaySize;
                                        int i6 = point.x > point.y ? 3 : 5;
                                        numberPicker.setItemCount(i6);
                                        numberPicker2.setItemCount(i6);
                                        numberPicker.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i6;
                                        numberPicker2.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i6;
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
                                textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda251
                                    @Override // android.view.View.OnTouchListener
                                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                                        return AlertsCreator.$r8$lambda$ILg2DIFBjViKu6uyQfDHywCW6Hg(view, motionEvent);
                                    }
                                });
                                linearLayout2.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
                                linearLayout2.addView(linearLayout, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
                                ButtonWithCounterView round = new ButtonWithCounterView(context, null).setRound();
                                round.setText(LocaleController.getString(C2573R.string.Select), false);
                                round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda252
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        bottomSheetArr[0].lambda$new$0();
                                    }
                                });
                                linearLayout2.addView(round, LayoutHelper.createLinear(-1, 48, 0, 16, 12, 16, 12));
                                builder.setCustomView(linearLayout2);
                                BottomSheet bottomSheetShow = builder.show();
                                bottomSheetShow.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda253
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

                            public static /* synthetic */ void $r8$lambda$MsXNQ8U6DHyZcXFzwN3CJ_zkd5s(int i, int i2, NumberPicker numberPicker, NumberPicker numberPicker2, int i3, LinearLayout linearLayout, Boolean bool) {
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

                            public static /* synthetic */ String $r8$lambda$7w5QnENBrX9PLIJoNdbHch723kc(int i) {
                                boolean z = LocaleController.is24HourFormat;
                                String str = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf((i % 12 != 0 || z) ? i % (z ? 24 : 12) : 12));
                                return i >= 24 ? LocaleController.formatString(C2573R.string.BusinessHoursNextDayPicker, str) : str;
                            }

                            public static /* synthetic */ boolean $r8$lambda$ILg2DIFBjViKu6uyQfDHywCW6Hg(View view, MotionEvent motionEvent) {
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
                                numberPicker2.setOnScrollListener(new NumberPicker.OnScrollListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda175
                                    @Override // org.telegram.ui.Components.NumberPicker.OnScrollListener
                                    public final void onScrollStateChange(NumberPicker numberPicker4, int i7) {
                                        AlertsCreator.m9849$r8$lambda$tFDmHyRJSNiynm2aUcs6X0nOIU(z, numberPicker2, numberPicker, numberPicker3, numberPicker4, i7);
                                    }
                                });
                                numberPicker.setMinValue(0);
                                numberPicker.setMaxValue(11);
                                linearLayout.addView(numberPicker, LayoutHelper.createLinear(0, -2, 0.3f));
                                numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda176
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i7) {
                                        return AlertsCreator.m9772$r8$lambda$3ruG3ADpljK1V8lWjMp32MtuE(i7);
                                    }
                                });
                                numberPicker.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda177
                                    @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
                                    public final void onValueChange(NumberPicker numberPicker4, int i7, int i8) {
                                        AlertsCreator.updateDayPicker(numberPicker2, numberPicker, numberPicker3);
                                    }
                                });
                                numberPicker.setOnScrollListener(new NumberPicker.OnScrollListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda178
                                    @Override // org.telegram.ui.Components.NumberPicker.OnScrollListener
                                    public final void onScrollStateChange(NumberPicker numberPicker4, int i7) {
                                        AlertsCreator.$r8$lambda$_AniuwtpReVSx2W3DnlJni8WkEc(z, numberPicker2, numberPicker, numberPicker3, numberPicker4, i7);
                                    }
                                });
                                Calendar calendar = Calendar.getInstance();
                                calendar.setTimeInMillis(System.currentTimeMillis());
                                int i7 = calendar.get(1);
                                numberPicker3.setMinValue(i + i7);
                                numberPicker3.setMaxValue(i2 + i7);
                                numberPicker3.setValue(i7 + i3);
                                linearLayout.addView(numberPicker3, LayoutHelper.createLinear(0, -2, 0.4f));
                                numberPicker3.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda179
                                    @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
                                    public final void onValueChange(NumberPicker numberPicker4, int i8, int i9) {
                                        AlertsCreator.updateDayPicker(numberPicker2, numberPicker, numberPicker3);
                                    }
                                });
                                numberPicker3.setOnScrollListener(new NumberPicker.OnScrollListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda180
                                    @Override // org.telegram.ui.Components.NumberPicker.OnScrollListener
                                    public final void onScrollStateChange(NumberPicker numberPicker4, int i8) {
                                        AlertsCreator.$r8$lambda$UwYneRTtdQeuiVgviBwWevOX4DM(z, numberPicker2, numberPicker, numberPicker3, numberPicker4, i8);
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
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Set), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda181
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i8) {
                                        AlertsCreator.$r8$lambda$XFfVAIcsWP_jo770lPJNoU0UCXs(z, numberPicker2, numberPicker, numberPicker3, datePickerDelegate, alertDialog, i8);
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                return builder;
                            }

                            /* JADX INFO: renamed from: $r8$lambda$tFDmHyRJSNiynm2aUcs6X0-nOIU, reason: not valid java name */
                            public static /* synthetic */ void m9849$r8$lambda$tFDmHyRJSNiynm2aUcs6X0nOIU(boolean z, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, NumberPicker numberPicker4, int i) {
                                if (z && i == 0) {
                                    checkPickerDate(numberPicker, numberPicker2, numberPicker3);
                                }
                            }

                            /* JADX INFO: renamed from: $r8$lambda$3ruG3ADp-ljK1V8lWjMp32M-tuE, reason: not valid java name */
                            public static /* synthetic */ String m9772$r8$lambda$3ruG3ADpljK1V8lWjMp32MtuE(int i) {
                                Calendar calendar = Calendar.getInstance();
                                calendar.set(5, 1);
                                calendar.set(2, i);
                                return calendar.getDisplayName(2, 1, Locale.getDefault());
                            }

                            public static /* synthetic */ void $r8$lambda$_AniuwtpReVSx2W3DnlJni8WkEc(boolean z, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, NumberPicker numberPicker4, int i) {
                                if (z && i == 0) {
                                    checkPickerDate(numberPicker, numberPicker2, numberPicker3);
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$UwYneRTtdQeuiVgviBwWevOX4DM(boolean z, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, NumberPicker numberPicker4, int i) {
                                if (z && i == 0) {
                                    checkPickerDate(numberPicker, numberPicker2, numberPicker3);
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$XFfVAIcsWP_jo770lPJNoU0UCXs(boolean z, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, DatePickerDelegate datePickerDelegate, AlertDialog alertDialog, int i) {
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
                                int iBetween;
                                int i3;
                                int i4;
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
                                    calendar.setTimeInMillis(jCurrentTimeMillis + (j2 * 1000));
                                    calendar.set(11, 23);
                                    calendar.set(12, 59);
                                    calendar.set(13, 59);
                                    calendar.set(14, 0);
                                    j3 = jCurrentTimeMillis;
                                    iBetween = (int) ChronoUnit.DAYS.between(Instant.ofEpochMilli(jCurrentTimeMillis).atZone(ZoneId.systemDefault()).mo561n(), Instant.ofEpochMilli(calendar.getTimeInMillis()).atZone(ZoneId.systemDefault()).mo561n());
                                    timeInMillis = calendar.getTimeInMillis();
                                    i3 = 23;
                                    i4 = 59;
                                } else {
                                    j3 = jCurrentTimeMillis;
                                    i2 = i5;
                                    timeInMillis = j2;
                                    iBetween = 0;
                                    i3 = 0;
                                    i4 = 0;
                                }
                                int i6 = i4;
                                long millis = j > 0 ? TimeUnit.SECONDS.toMillis(j) : 60000L;
                                long j4 = j3 + millis;
                                calendar.setTimeInMillis(j4);
                                int i7 = calendar.get(11);
                                int i8 = calendar.get(12);
                                long j5 = timeInMillis;
                                calendar.setTimeInMillis(System.currentTimeMillis());
                                calendar.add(6, value);
                                calendar.set(11, value2);
                                calendar.set(12, value3);
                                calendar.set(13, 0);
                                calendar.set(14, 0);
                                long timeInMillis2 = calendar.getTimeInMillis();
                                numberPicker.setMinValue(0);
                                if (j5 > 0) {
                                    numberPicker.setMaxValue(iBetween);
                                }
                                int value4 = numberPicker.getValue();
                                numberPicker2.setMinValue(value4 == 0 ? i7 : 0);
                                if (j5 > 0) {
                                    numberPicker2.setMaxValue(value4 == iBetween ? i3 : 23);
                                }
                                int value5 = numberPicker2.getValue();
                                numberPicker3.setMinValue((value4 == 0 && value5 == i7) ? i8 : 0);
                                if (j5 > 0) {
                                    numberPicker3.setMaxValue((value4 == iBetween && value5 == i3) ? i6 : 59);
                                }
                                int value6 = numberPicker3.getValue();
                                if (timeInMillis2 <= j4) {
                                    calendar.setTimeInMillis(j4);
                                } else if (j5 > 0 && timeInMillis2 > j5) {
                                    calendar.setTimeInMillis(j5);
                                }
                                int i9 = calendar.get(1);
                                calendar.setTimeInMillis(System.currentTimeMillis());
                                calendar.add(6, value4);
                                calendar.set(11, value5);
                                calendar.set(12, value6);
                                calendar.set(13, 0);
                                calendar.set(14, 0);
                                long timeInMillis3 = calendar.getTimeInMillis();
                                if (textView != null) {
                                    textView.setText(LocaleController.getInstance().getFormatterScheduleSend((value4 == 0 ? 0 : i2 == i9 ? 1 : 2) + (i * 3)).format(timeInMillis3));
                                }
                                if (textView2 != null) {
                                    int i10 = (int) ((timeInMillis3 - j3) / 1000);
                                    if (i10 > 86400) {
                                        pluralString = LocaleController.formatPluralString("DaysSchedule", Math.round(i10 / 86400.0f), new Object[0]);
                                    } else if (i10 >= 3600) {
                                        pluralString = LocaleController.formatPluralString("HoursSchedule", Math.round(i10 / 3600.0f), new Object[0]);
                                    } else if (i10 >= 60) {
                                        pluralString = LocaleController.formatPluralString("MinutesSchedule", Math.round(i10 / 60.0f), new Object[0]);
                                    } else {
                                        pluralString = LocaleController.formatPluralString("SecondsSchedule", i10, new Object[0]);
                                    }
                                    if (textView2.getTag() != null) {
                                        textView2.setText(LocaleController.formatString("VoipChannelScheduleInfo", C2573R.string.VoipChannelScheduleInfo, pluralString));
                                    } else {
                                        textView2.setText(LocaleController.formatString("VoipGroupScheduleInfo", C2573R.string.VoipGroupScheduleInfo, pluralString));
                                    }
                                }
                                return timeInMillis2 - j3 > millis;
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
                            /* JADX WARN: Type inference failed for: r0v11, types: [android.view.View] */
                            /* JADX WARN: Type inference failed for: r0v19, types: [android.view.View, org.telegram.ui.ActionBar.ActionBarMenuItem] */
                            /* JADX WARN: Type inference failed for: r11v10 */
                            /* JADX WARN: Type inference failed for: r11v11, types: [org.telegram.ui.ActionBar.ActionBarMenuItem] */
                            /* JADX WARN: Type inference failed for: r11v30 */
                            /* JADX WARN: Type inference failed for: r11v31, types: [boolean] */
                            /* JADX WARN: Type inference failed for: r11v32 */
                            /* JADX WARN: Type inference failed for: r11v35 */
                            /* JADX WARN: Type inference failed for: r13v1 */
                            /* JADX WARN: Type inference failed for: r13v2, types: [android.view.ViewGroup] */
                            /* JADX WARN: Type inference failed for: r13v4 */
                            /* JADX WARN: Type inference failed for: r14v0, types: [org.telegram.ui.ActionBar.BottomSheet$Builder] */
                            /* JADX WARN: Type inference failed for: r29v3, types: [org.telegram.ui.ActionBar.ActionBarMenuItem] */
                            /* JADX WARN: Type inference failed for: r36v0 */
                            /* JADX WARN: Type inference failed for: r36v1 */
                            /* JADX WARN: Type inference failed for: r36v2 */
                            /* JADX WARN: Type inference failed for: r4v3, types: [android.view.ViewGroup, android.widget.FrameLayout] */
                            /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout, org.telegram.ui.Components.AlertsCreator$27] */
                            /* JADX WARN: Type inference failed for: r7v1 */
                            /* JADX WARN: Type inference failed for: r7v17, types: [android.view.ViewGroup] */
                            /* JADX WARN: Type inference failed for: r7v18 */
                            /* JADX WARN: Type inference failed for: r7v2, types: [android.view.ViewGroup] */
                            public static BottomSheet.Builder createScheduleDatePickerDialog(final Context context, final String str, final long j, long j2, int i, boolean z, final ScheduleDatePickerDelegate scheduleDatePickerDelegate, final Runnable runnable, final ScheduleDatePickerColors scheduleDatePickerColors, final Theme.ResourcesProvider resourcesProvider) {
                                char c2;
                                NumberPicker numberPicker;
                                FrameLayout frameLayout;
                                ?? r7;
                                ?? r36;
                                Context context2;
                                NumberPicker numberPicker2;
                                int[] iArr;
                                char c3;
                                char c4;
                                int i2;
                                ?? r13;
                                final ?? r11;
                                char c5;
                                char c6;
                                int i3;
                                int i4;
                                final int[] iArr2;
                                final String[] strArr;
                                NumberPicker numberPicker3;
                                NumberPicker numberPicker4;
                                boolean[] zArr;
                                long j3;
                                float f;
                                final int[] iArr3;
                                final TextView textView;
                                FrameLayout frameLayout2;
                                Runnable runnable2;
                                TLRPC.User user;
                                TLRPC.UserStatus userStatus;
                                ?? r112;
                                if (context == null) {
                                    return null;
                                }
                                int[] iArr4 = {i};
                                final long clientUserId = UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId();
                                final ?? builder = new BottomSheet.Builder(context, false, resourcesProvider);
                                builder.setApplyBottomPadding(false);
                                final NumberPicker numberPicker5 = new NumberPicker(context, resourcesProvider);
                                numberPicker5.setTextColor(scheduleDatePickerColors.textColor);
                                numberPicker5.setTextOffset(AndroidUtilities.dp(10.0f));
                                numberPicker5.setItemCount(5);
                                final NumberPicker numberPicker6 = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.25
                                    @Override // org.telegram.ui.Components.NumberPicker
                                    public CharSequence getContentDescription(int i5) {
                                        return LocaleController.formatPluralString("Hours", i5, new Object[0]);
                                    }
                                };
                                numberPicker6.setWrapSelectorWheel(true);
                                numberPicker6.setAllItemsCount(24);
                                numberPicker6.setItemCount(5);
                                numberPicker6.setTextColor(scheduleDatePickerColors.textColor);
                                numberPicker6.setTextOffset(-AndroidUtilities.dp(10.0f));
                                final NumberPicker numberPicker7 = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.26
                                    @Override // org.telegram.ui.Components.NumberPicker
                                    public CharSequence getContentDescription(int i5) {
                                        return LocaleController.formatPluralString("Minutes", i5, new Object[0]);
                                    }
                                };
                                numberPicker7.setWrapSelectorWheel(true);
                                numberPicker7.setAllItemsCount(60);
                                numberPicker7.setItemCount(5);
                                numberPicker7.setTextColor(scheduleDatePickerColors.textColor);
                                numberPicker7.setTextOffset(-AndroidUtilities.dp(34.0f));
                                ?? frameLayout3 = new FrameLayout(context);
                                ?? r5 = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.27
                                    boolean ignoreLayout = false;

                                    @Override // android.widget.LinearLayout, android.view.View
                                    public void onMeasure(int i5, int i6) {
                                        this.ignoreLayout = true;
                                        Point point = AndroidUtilities.displaySize;
                                        int i7 = point.x > point.y ? 3 : 5;
                                        numberPicker5.setItemCount(i7);
                                        numberPicker6.setItemCount(i7);
                                        numberPicker7.setItemCount(i7);
                                        numberPicker5.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i7;
                                        numberPicker6.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i7;
                                        numberPicker7.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i7;
                                        this.ignoreLayout = false;
                                        super.onMeasure(i5, i6);
                                    }

                                    @Override // android.view.View, android.view.ViewParent
                                    public void requestLayout() {
                                        if (this.ignoreLayout) {
                                            return;
                                        }
                                        super.requestLayout();
                                    }
                                };
                                r5.setClipToPadding(false);
                                r5.setClipChildren(false);
                                r5.setOrientation(1);
                                frameLayout3.addView(r5, LayoutHelper.createFrame(-1, -1.0f));
                                FrameLayout frameLayout4 = new FrameLayout(context);
                                frameLayout3.addView(frameLayout4, LayoutHelper.createFrame(-1, 100.0f, 87, 0.0f, 0.0f, 0.0f, 120.0f));
                                FrameLayout frameLayout5 = new FrameLayout(context);
                                r5.addView(frameLayout5, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
                                TextView textView2 = new TextView(context);
                                if (!TextUtils.isEmpty(str)) {
                                    textView2.setText(str);
                                    c2 = 0;
                                } else if (j == clientUserId) {
                                    c2 = 0;
                                    textView2.setText(LocaleController.getString(C2573R.string.SetReminder));
                                } else {
                                    c2 = 0;
                                    textView2.setText(LocaleController.getString(C2573R.string.ScheduleMessage));
                                }
                                textView2.setTextColor(scheduleDatePickerColors.textColor);
                                textView2.setTextSize(1, 20.0f);
                                textView2.setTypeface(AndroidUtilities.bold());
                                frameLayout5.addView(textView2, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
                                textView2.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda19
                                    @Override // android.view.View.OnTouchListener
                                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                                        return AlertsCreator.m9819$r8$lambda$dY6Ry0X8Qe57dyVkl0YiAoiy1M(view, motionEvent);
                                    }
                                });
                                final boolean[] zArr2 = new boolean[1];
                                zArr2[c2] = true;
                                if (!DialogObject.isUserDialog(j) || j == clientUserId || (user = MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(j))) == null || user.bot || (userStatus = user.status) == null || userStatus.expires <= 0) {
                                    numberPicker = numberPicker7;
                                    frameLayout = frameLayout4;
                                    r7 = frameLayout5;
                                    r36 = frameLayout3;
                                    context2 = context;
                                    numberPicker2 = numberPicker6;
                                    iArr = iArr4;
                                    c3 = 2;
                                    c4 = 5;
                                    i2 = 60;
                                    r13 = r5;
                                    r11 = 0;
                                } else {
                                    String firstName = UserObject.getFirstName(user);
                                    if (firstName.length() > 10) {
                                        char c7 = c2;
                                        firstName = firstName.substring(c7 == true ? 1 : 0, 10).concat("…");
                                        r112 = c7;
                                    } else {
                                        r112 = c2;
                                    }
                                    String str2 = firstName;
                                    numberPicker = numberPicker7;
                                    frameLayout = frameLayout4;
                                    context2 = context;
                                    iArr = iArr4;
                                    r36 = frameLayout3;
                                    r13 = r5;
                                    ?? r72 = frameLayout5;
                                    c4 = 5;
                                    i2 = 60;
                                    numberPicker2 = numberPicker6;
                                    c3 = 2;
                                    ?? actionBarMenuItem = new ActionBarMenuItem(context2, null, 0, scheduleDatePickerColors.textColor, false, resourcesProvider);
                                    actionBarMenuItem.setLongClickEnabled(r112);
                                    actionBarMenuItem.setSubMenuOpenSide(2);
                                    actionBarMenuItem.setIcon(C2573R.drawable.ic_ab_other);
                                    actionBarMenuItem.setBackground(Theme.createSelectorDrawable(scheduleDatePickerColors.iconSelectorColor, 1));
                                    r72.addView(actionBarMenuItem, LayoutHelper.createFrame(40, 40.0f, 53, 0.0f, 8.0f, 5.0f, 0.0f));
                                    actionBarMenuItem.addSubItem(1, LocaleController.formatString(C2573R.string.ScheduleWhenOnline, str2));
                                    actionBarMenuItem.setContentDescription(LocaleController.getString(C2573R.string.AccDescrMoreOptions));
                                    r11 = actionBarMenuItem;
                                    r7 = r72;
                                }
                                if (r11 != 0) {
                                    r11.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda22
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            AlertsCreator.$r8$lambda$KhcpysP5nkkpDoA4FTkC9k5dpuQ(r11, scheduleDatePickerColors, view);
                                        }
                                    });
                                    r11.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda23
                                        @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
                                        public final void onItemClick(int i5) {
                                            AlertsCreator.$r8$lambda$byCCrsBM7UcMsJG8ZA2yYWdYxkE(scheduleDatePickerDelegate, zArr2, builder, i5);
                                        }
                                    });
                                }
                                RLottieImageView rLottieImageView = new RLottieImageView(context2);
                                final RLottieDrawable rLottieDrawable = new RLottieDrawable(C2573R.raw.notify_toggle, "notify_toggle", AndroidUtilities.dp(24.0f), AndroidUtilities.dp(24.0f), true, null);
                                rLottieDrawable.setAllowDecodeSingleFrame(true);
                                rLottieDrawable.setPlayInDirectionOfCustomEndFrame(true);
                                rLottieDrawable.start();
                                rLottieDrawable.setCurrentFrame(40);
                                rLottieDrawable.setCustomEndFrame(40);
                                rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
                                rLottieImageView.setAnimation(rLottieDrawable);
                                rLottieImageView.setColorFilter(new PorterDuffColorFilter(scheduleDatePickerColors.textColor, PorterDuff.Mode.SRC_IN));
                                rLottieImageView.setBackground(Theme.createSelectorDrawable(scheduleDatePickerColors.iconSelectorColor, 1));
                                r7.addView(rLottieImageView, LayoutHelper.createFrame(40, 40.0f, 53, 0.0f, 8.0f, (r11 != 0 ? 42 : 0) + 8, 0.0f));
                                LinearLayout linearLayout = new LinearLayout(context2);
                                linearLayout.setOrientation(0);
                                linearLayout.setWeightSum(1.0f);
                                r13.addView(linearLayout, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
                                final Calendar calendar = Calendar.getInstance();
                                final TextView textView3 = new TextView(context2) { // from class: org.telegram.ui.Components.AlertsCreator.28
                                    @Override // android.widget.TextView, android.view.View
                                    public CharSequence getAccessibilityClassName() {
                                        return Button.class.getName();
                                    }
                                };
                                final ?? r29 = r11;
                                linearLayout.addView(numberPicker5, LayoutHelper.createLinear(0, 270, 0.5f));
                                numberPicker5.setMinValue(0);
                                numberPicker5.setMaxValue(365);
                                numberPicker5.setWrapSelectorWheel(false);
                                numberPicker5.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda24
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i5) {
                                        return AlertsCreator.$r8$lambda$pdttBajPPOl_qElf_B9hkTbdmqY(i5);
                                    }
                                });
                                char c8 = c3;
                                final NumberPicker numberPicker8 = numberPicker2;
                                final NumberPicker numberPicker9 = numberPicker;
                                NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda25
                                    @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
                                    public final void onValueChange(NumberPicker numberPicker10, int i5, int i6) {
                                        AlertsCreator.checkScheduleDate(textView3, null, str != null ? 3 : clientUserId == j ? 1 : 0, numberPicker5, numberPicker8, numberPicker9);
                                    }
                                };
                                numberPicker5.setOnValueChangedListener(onValueChangeListener);
                                numberPicker8.setMinValue(0);
                                numberPicker8.setMaxValue(23);
                                linearLayout.addView(numberPicker8, LayoutHelper.createLinear(0, 270, 0.2f));
                                numberPicker8.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda26
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i5) {
                                        return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i5));
                                    }
                                });
                                numberPicker8.setOnValueChangedListener(onValueChangeListener);
                                numberPicker9.setMinValue(0);
                                numberPicker9.setMaxValue(59);
                                numberPicker9.setValue(0);
                                numberPicker9.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda27
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i5) {
                                        return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i5));
                                    }
                                });
                                linearLayout.addView(numberPicker9, LayoutHelper.createLinear(0, 270, 0.3f));
                                numberPicker9.setOnValueChangedListener(onValueChangeListener);
                                if (j2 > 0 && j2 != 2147483646) {
                                    long j4 = 1000 * j2;
                                    calendar.setTimeInMillis(System.currentTimeMillis());
                                    calendar.set(12, 0);
                                    calendar.set(13, 0);
                                    calendar.set(14, 0);
                                    calendar.set(11, 0);
                                    int timeInMillis = (int) ((j4 - calendar.getTimeInMillis()) / DurationKt.MILLIS_IN_DAY);
                                    calendar.setTimeInMillis(j4);
                                    if (timeInMillis >= 0) {
                                        numberPicker9.setValue(calendar.get(12));
                                        numberPicker8.setValue(calendar.get(11));
                                        numberPicker5.setValue(timeInMillis);
                                    }
                                }
                                boolean[] zArr3 = {true};
                                checkScheduleDate(textView3, null, str != null ? 3 : clientUserId == j ? 1 : 0, numberPicker5, numberPicker8, numberPicker9);
                                boolean zIsTestBackend = ConnectionsManager.getInstance(UserConfig.selectedAccount).isTestBackend();
                                if (zIsTestBackend) {
                                    c6 = '\t';
                                    i3 = 10;
                                    int[] iArr5 = new int[10];
                                    iArr5[0] = 0;
                                    iArr5[1] = i2;
                                    iArr5[c8] = 300;
                                    iArr5[3] = 86400;
                                    iArr5[4] = 604800;
                                    iArr5[c4] = 1209600;
                                    iArr5[6] = 2592000;
                                    iArr5[7] = 7862400;
                                    iArr5[8] = 15724800;
                                    iArr5[9] = 31536000;
                                    c5 = 3;
                                    iArr2 = iArr5;
                                    i4 = 8;
                                } else {
                                    c5 = 3;
                                    c6 = '\t';
                                    i3 = 10;
                                    i4 = 8;
                                    iArr2 = new int[8];
                                    iArr2[0] = 0;
                                    iArr2[1] = 86400;
                                    iArr2[c8] = 604800;
                                    iArr2[3] = 1209600;
                                    iArr2[4] = 2592000;
                                    iArr2[c4] = 7862400;
                                    iArr2[6] = 15724800;
                                    iArr2[7] = 31536000;
                                }
                                if (zIsTestBackend) {
                                    strArr = new String[i3];
                                    strArr[0] = LocaleController.getString(C2573R.string.MessageScheduledRepeatOptionNever);
                                    strArr[1] = "Every minute";
                                    strArr[c8] = "Every 5 minutes";
                                    strArr[c5] = LocaleController.getString(C2573R.string.MessageScheduledRepeatOptionDaily);
                                    strArr[4] = LocaleController.getString(C2573R.string.MessageScheduledRepeatOptionWeekly);
                                    strArr[c4] = LocaleController.getString(C2573R.string.MessageScheduledRepeatOptionBiweekly);
                                    strArr[6] = LocaleController.getString(C2573R.string.MessageScheduledRepeatOptionMonthly);
                                    strArr[7] = LocaleController.getString(C2573R.string.MessageScheduledRepeatOption3Monthly);
                                    strArr[i4] = LocaleController.getString(C2573R.string.MessageScheduledRepeatOption6Monthly);
                                    strArr[c6] = LocaleController.getString(C2573R.string.MessageScheduledRepeatOptionYearly);
                                } else {
                                    strArr = new String[i4];
                                    strArr[0] = LocaleController.getString(C2573R.string.MessageScheduledRepeatOptionNever);
                                    strArr[1] = LocaleController.getString(C2573R.string.MessageScheduledRepeatOptionDaily);
                                    strArr[c8] = LocaleController.getString(C2573R.string.MessageScheduledRepeatOptionWeekly);
                                    strArr[c5] = LocaleController.getString(C2573R.string.MessageScheduledRepeatOptionBiweekly);
                                    strArr[4] = LocaleController.getString(C2573R.string.MessageScheduledRepeatOptionMonthly);
                                    strArr[c4] = LocaleController.getString(C2573R.string.MessageScheduledRepeatOption3Monthly);
                                    strArr[6] = LocaleController.getString(C2573R.string.MessageScheduledRepeatOption6Monthly);
                                    strArr[7] = LocaleController.getString(C2573R.string.MessageScheduledRepeatOptionYearly);
                                }
                                if (z) {
                                    numberPicker3 = numberPicker5;
                                    numberPicker4 = numberPicker8;
                                    zArr = zArr3;
                                    j3 = clientUserId;
                                    f = 14.0f;
                                    iArr3 = iArr;
                                    textView = null;
                                    frameLayout2 = null;
                                    runnable2 = null;
                                } else {
                                    FrameLayout frameLayout6 = new FrameLayout(context);
                                    f = 14.0f;
                                    int i5 = scheduleDatePickerColors.textColor;
                                    numberPicker3 = numberPicker5;
                                    int iBlendOver = Theme.blendOver(scheduleDatePickerColors.backgroundColor, Theme.multAlpha(i5, 0.075f));
                                    numberPicker4 = numberPicker8;
                                    int iMultAlpha = Theme.multAlpha(scheduleDatePickerColors.textColor, 0.1f);
                                    textView = new TextView(context);
                                    zArr = zArr3;
                                    j3 = clientUserId;
                                    textView.setTextSize(1, 13.0f);
                                    textView.setTextColor(i5);
                                    textView.setPadding(AndroidUtilities.dp(12.0f), 0, AndroidUtilities.dp(12.0f), 0);
                                    textView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(14.0f), iBlendOver, Theme.blendOver(iBlendOver, iMultAlpha)));
                                    textView.setGravity(17);
                                    iArr3 = iArr;
                                    Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda28
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            AlertsCreator.$r8$lambda$3Z__0fZ_SzFQaPXq6q4NvKYCyqI(iArr2, iArr3, strArr, textView);
                                        }
                                    };
                                    runnable3.run();
                                    frameLayout6.addView(textView, LayoutHelper.createFrame(-2, 28.0f, 1, 32.0f, 4.0f, 32.0f, 5.0f));
                                    r13.addView(frameLayout6, LayoutHelper.createLinear(-1, -2));
                                    runnable2 = runnable3;
                                    frameLayout2 = frameLayout6;
                                }
                                textView3.setPadding(AndroidUtilities.dp(34.0f), 0, AndroidUtilities.dp(34.0f), 0);
                                textView3.setGravity(17);
                                textView3.setTextColor(scheduleDatePickerColors.buttonTextColor);
                                textView3.setTextSize(1, f);
                                textView3.setTypeface(AndroidUtilities.bold());
                                textView3.setBackground(Theme.AdaptiveRipple.filledRect(scheduleDatePickerColors.buttonBackgroundColor, 24.0f));
                                r13.addView(textView3, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
                                final String[] strArr2 = strArr;
                                TextView textView4 = textView;
                                final int[] iArr6 = iArr3;
                                final int[] iArr7 = iArr2;
                                final NumberPicker numberPicker10 = numberPicker3;
                                final NumberPicker numberPicker11 = numberPicker4;
                                final boolean[] zArr4 = zArr;
                                final long j5 = j3;
                                textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda29
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        AlertsCreator.$r8$lambda$NNSJfy2sja2z9fBQu3TYVjqPSO4(zArr4, str, j5, j, numberPicker10, numberPicker11, numberPicker9, calendar, scheduleDatePickerDelegate, zArr2, iArr6, builder, view);
                                    }
                                });
                                builder.setCustomView(r36);
                                final BottomSheet bottomSheetShow = builder.show();
                                bottomSheetShow.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda30
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        AlertsCreator.$r8$lambda$AwguZseODyQKOO6OAJGEVmKorI0(runnable, zArr4, dialogInterface);
                                    }
                                });
                                bottomSheetShow.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
                                bottomSheetShow.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
                                if (textView4 != null) {
                                    final FrameLayout frameLayout7 = frameLayout2;
                                    final FrameLayout frameLayout8 = frameLayout;
                                    final Runnable runnable4 = runnable2;
                                    textView4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda20
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            AlertsCreator.m9804$r8$lambda$T9cu8CGTflzEUhwe1H9tf0uMqs(frameLayout8, resourcesProvider, bottomSheetShow, frameLayout7, iArr7, strArr2, iArr6, runnable4, view);
                                        }
                                    });
                                }
                                final HintView2[] hintView2Arr = new HintView2[1];
                                final long j6 = j3;
                                rLottieImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda21
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        AlertsCreator.m9815$r8$lambda$Z7nbZzMgWK1IHUiadpi2X2myEY(zArr2, rLottieDrawable, hintView2Arr, j, context, j6, r29, bottomSheetShow, view);
                                    }
                                });
                                return builder;
                            }

                            /* JADX INFO: renamed from: $r8$lambda$dY-6Ry0X8Qe57dyVkl0YiAoiy1M, reason: not valid java name */
                            public static /* synthetic */ boolean m9819$r8$lambda$dY6Ry0X8Qe57dyVkl0YiAoiy1M(View view, MotionEvent motionEvent) {
                                return true;
                            }

                            public static /* synthetic */ void $r8$lambda$KhcpysP5nkkpDoA4FTkC9k5dpuQ(ActionBarMenuItem actionBarMenuItem, ScheduleDatePickerColors scheduleDatePickerColors, View view) {
                                actionBarMenuItem.toggleSubMenu();
                                actionBarMenuItem.setPopupItemsColor(scheduleDatePickerColors.subMenuTextColor, false);
                                actionBarMenuItem.setupPopupRadialSelectors(scheduleDatePickerColors.subMenuSelectorColor);
                                actionBarMenuItem.redrawPopup(scheduleDatePickerColors.subMenuBackgroundColor);
                            }

                            public static /* synthetic */ void $r8$lambda$byCCrsBM7UcMsJG8ZA2yYWdYxkE(ScheduleDatePickerDelegate scheduleDatePickerDelegate, boolean[] zArr, BottomSheet.Builder builder, int i) {
                                if (i == 1) {
                                    scheduleDatePickerDelegate.didSelectDate(zArr[0], 2147483646, 0);
                                    builder.getDismissRunnable().run();
                                }
                            }

                            public static /* synthetic */ String $r8$lambda$pdttBajPPOl_qElf_B9hkTbdmqY(int i) {
                                if (i == 0) {
                                    return LocaleController.getString(C2573R.string.MessageScheduleToday);
                                }
                                Calendar calendar = Calendar.getInstance();
                                int i2 = calendar.get(1);
                                calendar.add(6, i);
                                long timeInMillis = calendar.getTimeInMillis();
                                int i3 = calendar.get(1);
                                LocaleController.getInstance().getFormatterWeek().format(timeInMillis);
                                if (i3 == i2) {
                                    return LocaleController.getInstance().getFormatterWeek().format(timeInMillis) + ", " + LocaleController.getInstance().getFormatterScheduleDay().format(timeInMillis);
                                }
                                return LocaleController.getInstance().getFormatterScheduleYear().format(timeInMillis);
                            }

                            public static /* synthetic */ void $r8$lambda$3Z__0fZ_SzFQaPXq6q4NvKYCyqI(int[] iArr, int[] iArr2, String[] strArr, TextView textView) {
                                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                                spannableStringBuilder.append((CharSequence) LocaleController.getString(C2573R.string.MessageScheduledRepeatOption));
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
                                    ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2573R.drawable.arrows_select);
                                    coloredImageSpan.spaceScaleX = 0.7f;
                                    coloredImageSpan.translate(AndroidUtilities.dp(-1.33f), AndroidUtilities.dp(0.0f));
                                    coloredImageSpan.setAlpha(0.75f);
                                    spannableStringBuilder.setSpan(coloredImageSpan, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                                } else {
                                    ColoredImageSpan coloredImageSpan2 = new ColoredImageSpan(C2573R.drawable.mini_switch_lock);
                                    coloredImageSpan2.spaceScaleX = 0.7f;
                                    coloredImageSpan2.translate(AndroidUtilities.dp(-1.33f), AndroidUtilities.dp(0.0f));
                                    coloredImageSpan2.setAlpha(0.75f);
                                    spannableStringBuilder.setSpan(coloredImageSpan2, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                                }
                                textView.setText(spannableStringBuilder);
                            }

                            /* JADX WARN: Removed duplicated region for block: B:12:0x003b  */
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                            */
                            public static /* synthetic */ void $r8$lambda$NNSJfy2sja2z9fBQu3TYVjqPSO4(boolean[] zArr, String str, long j, long j2, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, Calendar calendar, ScheduleDatePickerDelegate scheduleDatePickerDelegate, boolean[] zArr2, int[] iArr, BottomSheet.Builder builder, View view) {
                                int i;
                                int i2;
                                boolean zCheckScheduleDate;
                                zArr[0] = false;
                                if (str != null) {
                                    i2 = 3;
                                } else {
                                    if (j != j2) {
                                        i = 0;
                                        zCheckScheduleDate = checkScheduleDate(null, null, i, numberPicker, numberPicker2, numberPicker3);
                                        calendar.setTimeInMillis(System.currentTimeMillis());
                                        calendar.add(6, numberPicker.getValue());
                                        calendar.set(11, numberPicker2.getValue());
                                        calendar.set(12, numberPicker3.getValue());
                                        if (zCheckScheduleDate) {
                                            calendar.set(13, 0);
                                            calendar.set(14, 0);
                                        }
                                        scheduleDatePickerDelegate.didSelectDate(zArr2[0], (int) (calendar.getTimeInMillis() / 1000), iArr[0]);
                                        builder.getDismissRunnable().run();
                                    }
                                    i2 = 1;
                                }
                                i = i2;
                                zCheckScheduleDate = checkScheduleDate(null, null, i, numberPicker, numberPicker2, numberPicker3);
                                calendar.setTimeInMillis(System.currentTimeMillis());
                                calendar.add(6, numberPicker.getValue());
                                calendar.set(11, numberPicker2.getValue());
                                calendar.set(12, numberPicker3.getValue());
                                if (zCheckScheduleDate) {
                                }
                                scheduleDatePickerDelegate.didSelectDate(zArr2[0], (int) (calendar.getTimeInMillis() / 1000), iArr[0]);
                                builder.getDismissRunnable().run();
                            }

                            public static /* synthetic */ void $r8$lambda$AwguZseODyQKOO6OAJGEVmKorI0(Runnable runnable, boolean[] zArr, DialogInterface dialogInterface) {
                                if (runnable == null || !zArr[0]) {
                                    return;
                                }
                                runnable.run();
                            }

                            /* JADX INFO: renamed from: $r8$lambda$T9cu8CGTflzEUhwe-1H9tf0uMqs, reason: not valid java name */
                            public static /* synthetic */ void m9804$r8$lambda$T9cu8CGTflzEUhwe1H9tf0uMqs(FrameLayout frameLayout, Theme.ResourcesProvider resourcesProvider, BottomSheet bottomSheet, FrameLayout frameLayout2, int[] iArr, String[] strArr, final int[] iArr2, final Runnable runnable, View view) {
                                if (!UserConfig.getInstance(UserConfig.selectedAccount).isPremium()) {
                                    BulletinFactory.of(frameLayout, resourcesProvider).createSimpleBulletin(C2573R.raw.star_premium_2, AndroidUtilities.premiumText(LocaleController.getString(C2573R.string.MessageScheduledRepeatPremium), new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda68
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            AlertsCreator.$r8$lambda$Cz3wuWTWR9Idipo9ackwcAIKHO4();
                                        }
                                    })).show();
                                    return;
                                }
                                ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(bottomSheet.container, resourcesProvider, frameLayout2);
                                for (int i = 0; i < iArr.length; i++) {
                                    final int i2 = iArr[i];
                                    itemOptionsMakeOptions.add(strArr[i], new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda69
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            AlertsCreator.$r8$lambda$uW4QSppfZwBrBGFbXMYFIssnLgw(iArr2, i2, runnable);
                                        }
                                    });
                                }
                                itemOptionsMakeOptions.setGravity(1);
                                itemOptionsMakeOptions.show();
                            }

                            public static /* synthetic */ void $r8$lambda$Cz3wuWTWR9Idipo9ackwcAIKHO4() {
                                BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                                if (safeLastFragment == null) {
                                    return;
                                }
                                BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
                                bottomSheetParams.transitionFromLeft = true;
                                bottomSheetParams.allowNestedScroll = false;
                                safeLastFragment.showAsSheet(new PremiumPreviewFragment("schedule_repeat"), bottomSheetParams);
                            }

                            public static /* synthetic */ void $r8$lambda$uW4QSppfZwBrBGFbXMYFIssnLgw(int[] iArr, int i, Runnable runnable) {
                                iArr[0] = i;
                                runnable.run();
                            }

                            /* JADX INFO: renamed from: $r8$lambda$Z7nbZzMgWK-1IHUiadpi2X2myEY, reason: not valid java name */
                            public static /* synthetic */ void m9815$r8$lambda$Z7nbZzMgWK1IHUiadpi2X2myEY(boolean[] zArr, RLottieDrawable rLottieDrawable, HintView2[] hintView2Arr, long j, Context context, long j2, ActionBarMenuItem actionBarMenuItem, BottomSheet bottomSheet, View view) {
                                String string;
                                boolean z = zArr[0];
                                zArr[0] = !z;
                                if (!z) {
                                    if (rLottieDrawable.getCurrentFrame() >= 40) {
                                        rLottieDrawable.setCurrentFrame(0);
                                    }
                                    rLottieDrawable.setCustomEndFrame(40);
                                    rLottieDrawable.start();
                                } else {
                                    if (rLottieDrawable.getCurrentFrame() < 40) {
                                        rLottieDrawable.setCurrentFrame(40);
                                    }
                                    rLottieDrawable.setCustomEndFrame(80);
                                    rLottieDrawable.start();
                                }
                                HintView2 hintView2 = hintView2Arr[0];
                                if (hintView2 != null) {
                                    hintView2.hide();
                                    hintView2Arr[0] = null;
                                }
                                TLRPC.User user = MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(j));
                                TLRPC.Chat chat = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-j));
                                final HintView2 hintView22 = new HintView2(context, 3);
                                hintView2Arr[0] = hintView22;
                                hintView22.setRoundingWithCornerEffect(false);
                                hintView22.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f), 0);
                                hintView22.setRounding(20.0f);
                                hintView22.setShadow(AndroidUtilities.dp(12.0f), 0.0f, AndroidUtilities.dp(4.0f), Theme.multAlpha(-16777216, 0.25f));
                                if (ChatObject.isChannelAndNotMegaGroup(chat)) {
                                    string = LocaleController.getString(zArr[0] ? C2573R.string.ScheduleNotifyOnChannel : C2573R.string.ScheduleNotifyOffChannel);
                                } else if (chat != null || user == null) {
                                    string = LocaleController.getString(zArr[0] ? C2573R.string.ScheduleNotifyOnGroup : C2573R.string.ScheduleNotifyOffGroup);
                                } else if (j == j2) {
                                    string = LocaleController.getString(zArr[0] ? C2573R.string.ScheduleNotifyOnSelf : C2573R.string.ScheduleNotifyOffSelf);
                                } else {
                                    string = LocaleController.formatString(zArr[0] ? C2573R.string.ScheduleNotifyOnChat : C2573R.string.ScheduleNotifyOffChat, UserObject.getForcedFirstName(user));
                                }
                                hintView22.setText(string);
                                hintView22.setDuration(5000L);
                                hintView22.setJoint(1.0f, -((actionBarMenuItem != null ? 42 : -8) + 20));
                                hintView22.setOnHiddenListener(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda76
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AndroidUtilities.removeFromParent(hintView22);
                                    }
                                });
                                bottomSheet.getContainerView().setClipToPadding(false);
                                bottomSheet.getContainerView().setClipChildren(false);
                                bottomSheet.getContainerView().addView(hintView22, LayoutHelper.createFrame(-1, 200.0f, 48, 0.0f, -194.0f, 0.0f, 0.0f));
                                hintView22.show();
                            }

                            /* JADX WARN: Multi-variable type inference failed */
                            /* JADX WARN: Type inference failed for: r11v0, types: [android.view.ViewGroup, android.widget.LinearLayout, org.telegram.ui.Components.AlertsCreator$31] */
                            /* JADX WARN: Type inference failed for: r17v3 */
                            /* JADX WARN: Type inference failed for: r17v4 */
                            /* JADX WARN: Type inference failed for: r17v5 */
                            /* JADX WARN: Type inference failed for: r17v6 */
                            /* JADX WARN: Type inference failed for: r17v7 */
                            /* JADX WARN: Type inference failed for: r2v2, types: [android.view.View, android.view.ViewGroup] */
                            /* JADX WARN: Type inference failed for: r9v0, types: [org.telegram.ui.ActionBar.BottomSheet$Builder] */
                            public static BottomSheet.Builder createDatePickerDialog(Context context, String str, String str2, long j, final ScheduleDatePickerDelegate scheduleDatePickerDelegate) {
                                ScheduleDatePickerColors scheduleDatePickerColors;
                                float f;
                                ?? r17;
                                if (context == null) {
                                    return null;
                                }
                                ScheduleDatePickerColors scheduleDatePickerColors2 = new ScheduleDatePickerColors();
                                final ?? builder = new BottomSheet.Builder(context, false);
                                builder.setApplyBottomPadding(false);
                                final NumberPicker numberPicker = new NumberPicker(context);
                                numberPicker.setTextColor(scheduleDatePickerColors2.textColor);
                                numberPicker.setTextOffset(AndroidUtilities.dp(10.0f));
                                numberPicker.setItemCount(5);
                                final NumberPicker numberPicker2 = new NumberPicker(context) { // from class: org.telegram.ui.Components.AlertsCreator.29
                                    @Override // org.telegram.ui.Components.NumberPicker
                                    public CharSequence getContentDescription(int i) {
                                        return LocaleController.formatPluralString("Hours", i, new Object[0]);
                                    }
                                };
                                numberPicker2.setItemCount(5);
                                numberPicker2.setTextColor(scheduleDatePickerColors2.textColor);
                                numberPicker2.setTextOffset(-AndroidUtilities.dp(10.0f));
                                final NumberPicker numberPicker3 = new NumberPicker(context) { // from class: org.telegram.ui.Components.AlertsCreator.30
                                    @Override // org.telegram.ui.Components.NumberPicker
                                    public CharSequence getContentDescription(int i) {
                                        return LocaleController.formatPluralString("Minutes", i, new Object[0]);
                                    }
                                };
                                numberPicker3.setItemCount(5);
                                numberPicker3.setTextColor(scheduleDatePickerColors2.textColor);
                                numberPicker3.setTextOffset(-AndroidUtilities.dp(34.0f));
                                ?? r11 = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.31
                                    boolean ignoreLayout = false;

                                    @Override // android.widget.LinearLayout, android.view.View
                                    public void onMeasure(int i, int i2) {
                                        this.ignoreLayout = true;
                                        Point point = AndroidUtilities.displaySize;
                                        int i3 = point.x > point.y ? 3 : 5;
                                        numberPicker.setItemCount(i3);
                                        numberPicker2.setItemCount(i3);
                                        numberPicker3.setItemCount(i3);
                                        numberPicker.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i3;
                                        numberPicker2.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i3;
                                        numberPicker3.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i3;
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
                                textView.setText(str);
                                textView.setTextColor(scheduleDatePickerColors2.textColor);
                                textView.setTextSize(1, 20.0f);
                                textView.setTypeface(AndroidUtilities.bold());
                                frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
                                textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda182
                                    @Override // android.view.View.OnTouchListener
                                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                                        return AlertsCreator.$r8$lambda$keCcwZQUn5bSIOzKBgWQbehl9mU(view, motionEvent);
                                    }
                                });
                                LinearLayout linearLayout = new LinearLayout(context);
                                linearLayout.setOrientation(0);
                                linearLayout.setWeightSum(1.0f);
                                r11.addView(linearLayout, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
                                final Calendar calendar = Calendar.getInstance();
                                TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.32
                                    @Override // android.widget.TextView, android.view.View
                                    public CharSequence getAccessibilityClassName() {
                                        return Button.class.getName();
                                    }
                                };
                                linearLayout.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.5f));
                                numberPicker.setMinValue(0);
                                numberPicker.setMaxValue(365);
                                numberPicker.setWrapSelectorWheel(false);
                                numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda183
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i) {
                                        return AlertsCreator.$r8$lambda$3cJWMvwUi7xHuegRoJGu1pkgIPQ(i);
                                    }
                                });
                                NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda184
                                    @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
                                    public final void onValueChange(NumberPicker numberPicker4, int i, int i2) {
                                        AlertsCreator.checkScheduleDate(null, null, 0, numberPicker, numberPicker2, numberPicker3);
                                    }
                                };
                                numberPicker.setOnValueChangedListener(onValueChangeListener);
                                numberPicker2.setMinValue(0);
                                numberPicker2.setMaxValue(23);
                                linearLayout.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.2f));
                                numberPicker2.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda185
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i) {
                                        return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i));
                                    }
                                });
                                numberPicker2.setOnValueChangedListener(onValueChangeListener);
                                numberPicker3.setMinValue(0);
                                numberPicker3.setMaxValue(59);
                                numberPicker3.setValue(0);
                                numberPicker3.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda186
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i) {
                                        return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i));
                                    }
                                });
                                linearLayout.addView(numberPicker3, LayoutHelper.createLinear(0, 270, 0.3f));
                                numberPicker3.setOnValueChangedListener(onValueChangeListener);
                                if (j <= 0 || j == 2147483646) {
                                    scheduleDatePickerColors = scheduleDatePickerColors2;
                                    f = 34.0f;
                                    r17 = r11;
                                } else {
                                    ?? r172 = r11;
                                    long j2 = j * 1000;
                                    f = 34.0f;
                                    calendar.setTimeInMillis(System.currentTimeMillis());
                                    calendar.set(12, 0);
                                    calendar.set(13, 0);
                                    calendar.set(14, 0);
                                    calendar.set(11, 0);
                                    scheduleDatePickerColors = scheduleDatePickerColors2;
                                    int timeInMillis = (int) ((j2 - calendar.getTimeInMillis()) / DurationKt.MILLIS_IN_DAY);
                                    calendar.setTimeInMillis(j2);
                                    r17 = r172;
                                    if (timeInMillis >= 0) {
                                        numberPicker3.setValue(calendar.get(12));
                                        numberPicker2.setValue(calendar.get(11));
                                        numberPicker.setValue(timeInMillis);
                                        r17 = r172;
                                    }
                                }
                                checkScheduleDate(null, null, 0, numberPicker, numberPicker2, numberPicker3);
                                textView2.setPadding(AndroidUtilities.dp(f), 0, AndroidUtilities.dp(f), 0);
                                textView2.setGravity(17);
                                ScheduleDatePickerColors scheduleDatePickerColors3 = scheduleDatePickerColors;
                                textView2.setTextColor(scheduleDatePickerColors3.buttonTextColor);
                                textView2.setTextSize(1, 14.0f);
                                textView2.setTypeface(AndroidUtilities.bold());
                                textView2.setBackgroundDrawable(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(8.0f), scheduleDatePickerColors3.buttonBackgroundColor, scheduleDatePickerColors3.buttonBackgroundPressedColor));
                                textView2.setText(str2);
                                ?? r2 = r17;
                                r2.addView(textView2, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
                                textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda187
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        AlertsCreator.$r8$lambda$AXfzc1V0Fk6E4ivE9LTDxYqr1bc(numberPicker, numberPicker2, numberPicker3, calendar, scheduleDatePickerDelegate, builder, view);
                                    }
                                });
                                builder.setCustomView(r2);
                                BottomSheet bottomSheetShow = builder.show();
                                bottomSheetShow.setBackgroundColor(scheduleDatePickerColors3.backgroundColor);
                                bottomSheetShow.fixNavigationBar(scheduleDatePickerColors3.backgroundColor);
                                return builder;
                            }

                            public static /* synthetic */ boolean $r8$lambda$keCcwZQUn5bSIOzKBgWQbehl9mU(View view, MotionEvent motionEvent) {
                                return true;
                            }

                            public static /* synthetic */ String $r8$lambda$3cJWMvwUi7xHuegRoJGu1pkgIPQ(int i) {
                                if (i == 0) {
                                    return LocaleController.getString(C2573R.string.MessageScheduleToday);
                                }
                                Calendar calendar = Calendar.getInstance();
                                int i2 = calendar.get(1);
                                calendar.add(6, i);
                                long timeInMillis = calendar.getTimeInMillis();
                                if (calendar.get(1) == i2) {
                                    return LocaleController.getInstance().getFormatterScheduleDay().format(timeInMillis);
                                }
                                return LocaleController.getInstance().getFormatterScheduleYear().format(timeInMillis);
                            }

                            public static /* synthetic */ void $r8$lambda$AXfzc1V0Fk6E4ivE9LTDxYqr1bc(NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, Calendar calendar, ScheduleDatePickerDelegate scheduleDatePickerDelegate, BottomSheet.Builder builder, View view) {
                                boolean zCheckScheduleDate = checkScheduleDate(null, null, 0, numberPicker, numberPicker2, numberPicker3);
                                calendar.setTimeInMillis(System.currentTimeMillis());
                                calendar.add(6, numberPicker.getValue());
                                calendar.set(11, numberPicker2.getValue());
                                calendar.set(12, numberPicker3.getValue());
                                if (zCheckScheduleDate) {
                                    calendar.set(13, 0);
                                    calendar.set(14, 0);
                                }
                                scheduleDatePickerDelegate.didSelectDate(true, (int) (calendar.getTimeInMillis() / 1000), 0);
                                builder.getDismissRunnable().run();
                            }

                            public static BottomSheet.Builder createBirthdayPickerDialog(Context context, String str, String str2, TL_account.TL_birthday tL_birthday, final Utilities.Callback<TL_account.TL_birthday> callback, Runnable runnable, boolean z, boolean z2, Theme.ResourcesProvider resourcesProvider) {
                                if (context == null) {
                                    return null;
                                }
                                final BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
                                builder.setApplyBottomPadding(false);
                                final NumberPicker numberPicker = new NumberPicker(context, resourcesProvider);
                                numberPicker.setTextOffset(AndroidUtilities.dp(10.0f));
                                numberPicker.setItemCount(5);
                                final NumberPicker numberPicker2 = new NumberPicker(context, resourcesProvider);
                                numberPicker2.setItemCount(5);
                                numberPicker2.setTextOffset(-AndroidUtilities.dp(10.0f));
                                final NumberPicker numberPicker3 = new NumberPicker(context, resourcesProvider);
                                numberPicker3.setItemCount(5);
                                numberPicker3.setTextOffset(-AndroidUtilities.dp(24.0f));
                                LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.33
                                    boolean ignoreLayout = false;

                                    @Override // android.widget.LinearLayout, android.view.View
                                    public void onMeasure(int i, int i2) {
                                        this.ignoreLayout = true;
                                        Point point = AndroidUtilities.displaySize;
                                        int i3 = point.x > point.y ? 3 : 5;
                                        numberPicker.setItemCount(i3);
                                        numberPicker2.setItemCount(i3);
                                        numberPicker3.setItemCount(i3);
                                        numberPicker.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i3;
                                        numberPicker2.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i3;
                                        numberPicker3.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i3;
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
                                textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda57
                                    @Override // android.view.View.OnTouchListener
                                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                                        return AlertsCreator.$r8$lambda$quFLlkM89UpQR3a4R3pbmuoonZ0(view, motionEvent);
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
                                final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda59
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AlertsCreator.$r8$lambda$ZwCXGgRBLB0dk5jqabrgdShl5J8(numberPicker3, i5, numberPicker, numberPicker2, i4, i3, i2);
                                    }
                                };
                                System.currentTimeMillis();
                                TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.34
                                    @Override // android.widget.TextView, android.view.View
                                    public CharSequence getAccessibilityClassName() {
                                        return Button.class.getName();
                                    }
                                };
                                linearLayout2.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.25f));
                                numberPicker.setMinValue(1);
                                numberPicker.setMaxValue(31);
                                numberPicker.setWrapSelectorWheel(false);
                                numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda60
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i6) {
                                        return AlertsCreator.$r8$lambda$A3N78y69brDFDcfSNp5AtDnPszI(i6);
                                    }
                                });
                                NumberPicker.OnScrollListener onScrollListener = new NumberPicker.OnScrollListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda61
                                    @Override // org.telegram.ui.Components.NumberPicker.OnScrollListener
                                    public final void onScrollStateChange(NumberPicker numberPicker4, int i6) {
                                        AlertsCreator.m9842$r8$lambda$pq8j9Pd5XkxSddFgAZmEpPqaSE(runnable2, numberPicker4, i6);
                                    }
                                };
                                numberPicker.setOnScrollListener(onScrollListener);
                                numberPicker2.setMinValue(0);
                                numberPicker2.setMaxValue(11);
                                numberPicker2.setWrapSelectorWheel(false);
                                linearLayout2.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.5f));
                                numberPicker2.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda62
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i6) {
                                        return AlertsCreator.m9845$r8$lambda$qWpnOqCVwltGGH8IFYjVyL_SC4(i6);
                                    }
                                });
                                numberPicker2.setOnScrollListener(onScrollListener);
                                numberPicker3.setMinValue(i);
                                numberPicker3.setMaxValue(i5);
                                numberPicker3.setWrapSelectorWheel(false);
                                numberPicker3.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda63
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i6) {
                                        return AlertsCreator.$r8$lambda$Dn8pmCsIIynmaZM4RXRTLKjWjsc(i5, i6);
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
                                    linksTextView.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f), 0);
                                    linksTextView.setTextSize(1, 13.0f);
                                    linksTextView.setTextColor(Theme.getColor(Theme.key_dialogTextGray2, resourcesProvider));
                                    linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
                                    linksTextView.setGravity(17);
                                    frameLayout2.addView(linksTextView, LayoutHelper.createFrame(-2, -2, 17));
                                    linearLayout.addView(frameLayout2, LayoutHelper.createLinear(-1, -2));
                                    final int i6 = UserConfig.selectedAccount;
                                    final Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda64
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            AlertsCreator.$r8$lambda$ybyRgPIDaxmaU2dTTD2itje9Cvg(i6, linksTextView);
                                        }
                                    };
                                    runnable3.run();
                                    NotificationCenter.getInstance(i6).listen(frameLayout2, NotificationCenter.privacyRulesUpdated, new Utilities.Callback() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda65
                                        @Override // org.telegram.messenger.Utilities.Callback
                                        public final void run(Object obj) {
                                            runnable3.run();
                                        }
                                    });
                                    ContactsController.getInstance(i6).loadPrivacySettings();
                                }
                                if (z) {
                                    ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, false, resourcesProvider);
                                    buttonWithCounterView.setText(LocaleController.getString(C2573R.string.DateOfBirthHideYear), false);
                                    buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda66
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            AlertsCreator.$r8$lambda$jemlvi6mKrQLB9Wj6RbQDKURoB4(numberPicker3, i5, runnable2, view);
                                        }
                                    });
                                    linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 4));
                                }
                                textView2.setPadding(AndroidUtilities.dp(34.0f), 0, AndroidUtilities.dp(34.0f), 0);
                                textView2.setGravity(17);
                                textView2.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText, resourcesProvider));
                                textView2.setTextSize(1, 14.0f);
                                textView2.setTypeface(AndroidUtilities.bold());
                                textView2.setText(str2);
                                textView2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(8.0f), Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider), Theme.getColor(Theme.key_featuredStickers_addButtonPressed, resourcesProvider)));
                                ScaleStateListAnimator.apply(textView2);
                                linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 83, 16, z ? 0 : 15, 16, z2 ? 0 : 16));
                                textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda67
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        AlertsCreator.$r8$lambda$Z6A3x4C4ZBk_BmibMjgXd3XyQH4(numberPicker, numberPicker2, numberPicker3, i5, builder, callback, view);
                                    }
                                });
                                if (z2) {
                                    ButtonWithCounterView buttonWithCounterView2 = new ButtonWithCounterView(context, false, resourcesProvider);
                                    buttonWithCounterView2.setText(LocaleController.getString(C2573R.string.BirthdayRemove), false);
                                    buttonWithCounterView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda58
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            AlertsCreator.$r8$lambda$NCQRxBjszVhUVo0Miw27kuKThQY(builder, callback, view);
                                        }
                                    });
                                    linearLayout.addView(buttonWithCounterView2, LayoutHelper.createLinear(-1, 48, 83, 16, 4, 16, 16));
                                }
                                builder.setCustomView(linearLayout);
                                return builder;
                            }

                            public static /* synthetic */ boolean $r8$lambda$quFLlkM89UpQR3a4R3pbmuoonZ0(View view, MotionEvent motionEvent) {
                                return true;
                            }

                            public static /* synthetic */ void $r8$lambda$ZwCXGgRBLB0dk5jqabrgdShl5J8(NumberPicker numberPicker, int i, NumberPicker numberPicker2, NumberPicker numberPicker3, int i2, int i3, int i4) {
                                if (numberPicker.getValue() == i) {
                                    numberPicker2.setMinValue(1);
                                    try {
                                        numberPicker2.setMaxValue(YearMonth.of(2024, numberPicker3.getValue() + 1).lengthOfMonth());
                                    } catch (Exception e) {
                                        FileLog.m898e(e);
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
                                        numberPicker2.setMaxValue(YearMonth.of(numberPicker.getValue(), numberPicker3.getValue() + 1).lengthOfMonth());
                                        return;
                                    } catch (Exception e2) {
                                        FileLog.m898e(e2);
                                        numberPicker2.setMaxValue(31);
                                        return;
                                    }
                                }
                                numberPicker2.setMinValue(1);
                                try {
                                    numberPicker2.setMaxValue(YearMonth.of(numberPicker.getValue(), numberPicker3.getValue() + 1).lengthOfMonth());
                                } catch (Exception e3) {
                                    FileLog.m898e(e3);
                                    numberPicker2.setMaxValue(31);
                                }
                                numberPicker3.setMinValue(0);
                                numberPicker3.setMaxValue(11);
                            }

                            public static /* synthetic */ String $r8$lambda$A3N78y69brDFDcfSNp5AtDnPszI(int i) {
                                return _UrlKt.FRAGMENT_ENCODE_SET + i;
                            }

                            /* JADX INFO: renamed from: $r8$lambda$pq8j9Pd5XkxSdd-FgAZmEpPqaSE, reason: not valid java name */
                            public static /* synthetic */ void m9842$r8$lambda$pq8j9Pd5XkxSddFgAZmEpPqaSE(Runnable runnable, NumberPicker numberPicker, int i) {
                                if (i == 0) {
                                    runnable.run();
                                }
                            }

                            /* JADX INFO: renamed from: $r8$lambda$qWpnOqCVwltGGH8I-FYjVyL_SC4, reason: not valid java name */
                            public static /* synthetic */ String m9845$r8$lambda$qWpnOqCVwltGGH8IFYjVyL_SC4(int i) {
                                switch (i) {
                                    case 0:
                                        return LocaleController.getString(C2573R.string.January);
                                    case 1:
                                        return LocaleController.getString(C2573R.string.February);
                                    case 2:
                                        return LocaleController.getString(C2573R.string.March);
                                    case 3:
                                        return LocaleController.getString(C2573R.string.April);
                                    case 4:
                                        return LocaleController.getString(C2573R.string.May);
                                    case 5:
                                        return LocaleController.getString(C2573R.string.June);
                                    case 6:
                                        return LocaleController.getString(C2573R.string.July);
                                    case 7:
                                        return LocaleController.getString(C2573R.string.August);
                                    case 8:
                                        return LocaleController.getString(C2573R.string.September);
                                    case 9:
                                        return LocaleController.getString(C2573R.string.October);
                                    case 10:
                                        return LocaleController.getString(C2573R.string.November);
                                    default:
                                        return LocaleController.getString(C2573R.string.December);
                                }
                            }

                            public static /* synthetic */ String $r8$lambda$Dn8pmCsIIynmaZM4RXRTLKjWjsc(int i, int i2) {
                                return i2 == i ? "—" : String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i2));
                            }

                            public static /* synthetic */ void $r8$lambda$ybyRgPIDaxmaU2dTTD2itje9Cvg(int i, LinkSpanDrawable.LinksTextView linksTextView) {
                                final ArrayList<TLRPC.PrivacyRule> privacyRules = ContactsController.getInstance(i).getPrivacyRules(11);
                                String string = LocaleController.getString(C2573R.string.EditProfileBirthdayInfoContacts);
                                if (privacyRules != null && !privacyRules.isEmpty()) {
                                    int i2 = 0;
                                    while (true) {
                                        if (i2 >= privacyRules.size()) {
                                            break;
                                        }
                                        if (privacyRules.get(i2) instanceof TLRPC.TL_privacyValueAllowContacts) {
                                            string = LocaleController.getString(C2573R.string.EditProfileBirthdayInfoContacts);
                                            break;
                                        }
                                        if ((privacyRules.get(i2) instanceof TLRPC.TL_privacyValueAllowAll) || (privacyRules.get(i2) instanceof TLRPC.TL_privacyValueDisallowAll)) {
                                            string = LocaleController.getString(C2573R.string.EditProfileBirthdayInfo);
                                        }
                                        i2++;
                                    }
                                }
                                linksTextView.setText(AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(string, new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda152
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AlertsCreator.$r8$lambda$8CCWsNUayFqU_OVFndpKF4JwN3A(privacyRules);
                                    }
                                }), true, AndroidUtilities.dp(2.6666667f), AndroidUtilities.dp(0.66f)));
                            }

                            public static /* synthetic */ void $r8$lambda$8CCWsNUayFqU_OVFndpKF4JwN3A(ArrayList arrayList) {
                                BaseFragment lastFragment;
                                if (arrayList == null || (lastFragment = LaunchActivity.getLastFragment()) == null) {
                                    return;
                                }
                                BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
                                bottomSheetParams.transitionFromLeft = true;
                                bottomSheetParams.allowNestedScroll = false;
                                lastFragment.showAsSheet(new PrivacyControlActivity(11), bottomSheetParams);
                            }

                            public static /* synthetic */ void $r8$lambda$jemlvi6mKrQLB9Wj6RbQDKURoB4(NumberPicker numberPicker, int i, Runnable runnable, View view) {
                                numberPicker.setValue(i);
                                runnable.run();
                            }

                            public static /* synthetic */ void $r8$lambda$Z6A3x4C4ZBk_BmibMjgXd3XyQH4(NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, int i, BottomSheet.Builder builder, Utilities.Callback callback, View view) {
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

                            public static /* synthetic */ void $r8$lambda$NCQRxBjszVhUVo0Miw27kuKThQY(BottomSheet.Builder builder, Utilities.Callback callback, View view) {
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
                                numberPicker.setTextOffset(AndroidUtilities.dp(10.0f));
                                numberPicker.setItemCount(5);
                                numberPicker.setMinValue(1);
                                numberPicker.setMaxValue(31);
                                numberPicker.setWrapSelectorWheel(false);
                                numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda33
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i2) {
                                        return AlertsCreator.$r8$lambda$NOMVvCxYCTpiagkgFs21K69ZNsU(i2);
                                    }
                                });
                                final NumberPicker numberPicker2 = new NumberPicker(context, resourcesProvider);
                                numberPicker2.setTextColor(scheduleDatePickerColors.textColor);
                                numberPicker2.setTextOffset(-AndroidUtilities.dp(10.0f));
                                numberPicker2.setItemCount(5);
                                numberPicker2.setMinValue(0);
                                numberPicker2.setMaxValue(239);
                                numberPicker2.setValue(120);
                                numberPicker2.setWrapSelectorWheel(false);
                                numberPicker2.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda36
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i2) {
                                        return AlertsCreator.m9844$r8$lambda$q7i2EEeeHUTpAm8JqW8ax1SIqk(calendar, i, i2);
                                    }
                                });
                                final NumberPicker numberPicker3 = new NumberPicker(context, resourcesProvider);
                                numberPicker3.setContentDescriptionCallback(new Utilities.CallbackReturn() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda37
                                    @Override // org.telegram.messenger.Utilities.CallbackReturn
                                    public final Object run(Object obj) {
                                        return LocaleController.formatPluralString("Hours", ((Integer) obj).intValue(), new Object[0]);
                                    }
                                });
                                numberPicker3.setWrapSelectorWheel(true);
                                numberPicker3.setAllItemsCount(24);
                                numberPicker3.setItemCount(5);
                                numberPicker3.setTextColor(scheduleDatePickerColors.textColor);
                                numberPicker3.setTextOffset(AndroidUtilities.dp(10.0f));
                                numberPicker3.setMinValue(0);
                                numberPicker3.setMaxValue(23);
                                numberPicker3.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda38
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i2) {
                                        return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i2));
                                    }
                                });
                                final NumberPicker numberPicker4 = new NumberPicker(context, resourcesProvider);
                                numberPicker4.setContentDescriptionCallback(new Utilities.CallbackReturn() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda39
                                    @Override // org.telegram.messenger.Utilities.CallbackReturn
                                    public final Object run(Object obj) {
                                        return LocaleController.formatPluralString("Minutes", ((Integer) obj).intValue(), new Object[0]);
                                    }
                                });
                                numberPicker4.setWrapSelectorWheel(true);
                                numberPicker4.setAllItemsCount(60);
                                numberPicker4.setItemCount(5);
                                numberPicker4.setTextColor(scheduleDatePickerColors.textColor);
                                numberPicker4.setTextOffset(-AndroidUtilities.dp(10.0f));
                                numberPicker4.setMinValue(0);
                                numberPicker4.setMaxValue(59);
                                numberPicker4.setValue(0);
                                numberPicker4.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda40
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
                                Text maxWidth = new Text(LocaleController.formatString(C2573R.string.formatDateAtTime, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET).trim(), 16.0f).setMaxWidth(AndroidUtilities.dp(100.0f));
                                Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
                                maxWidth.align(alignment).multiline(1).setColor(scheduleDatePickerColors.textColor);
                                final Text color = new Text(":", 18.0f).setMaxWidth(AndroidUtilities.dp(100.0f)).align(alignment).multiline(1).setColor(scheduleDatePickerColors.textColor);
                                FrameLayout frameLayout = new FrameLayout(context);
                                LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.35
                                    boolean ignoreLayout = false;

                                    @Override // android.widget.LinearLayout, android.view.View
                                    public void onMeasure(int i2, int i3) {
                                        this.ignoreLayout = true;
                                        Point point = AndroidUtilities.displaySize;
                                        int i4 = point.x > point.y ? 3 : 5;
                                        numberPicker2.setItemCount(i4);
                                        numberPicker.setItemCount(i4);
                                        numberPicker3.setItemCount(i4);
                                        numberPicker4.setItemCount(i4);
                                        numberPicker2.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i4;
                                        numberPicker.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i4;
                                        numberPicker3.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i4;
                                        numberPicker4.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i4;
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
                                textView.setText(LocaleController.getString(C2573R.string.RelativeDateAddDate));
                                textView.setTextColor(scheduleDatePickerColors.textColor);
                                textView.setTextSize(1, 20.0f);
                                textView.setTypeface(AndroidUtilities.bold());
                                frameLayout2.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
                                textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda41
                                    @Override // android.view.View.OnTouchListener
                                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                                        return AlertsCreator.m9829$r8$lambda$ixa66GvTix6a0S3VtbhlBL42HM(view, motionEvent);
                                    }
                                });
                                LinearLayout linearLayout2 = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.36
                                    @Override // android.view.ViewGroup, android.view.View
                                    public void dispatchDraw(Canvas canvas) {
                                        super.dispatchDraw(canvas);
                                        color.draw(canvas, numberPicker4.getX() - AndroidUtilities.dp(50.0f), getHeight() / 2.0f);
                                    }
                                };
                                linearLayout2.setOrientation(0);
                                linearLayout2.setWeightSum(1.0f);
                                linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
                                final ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
                                final String[] strArr = {LocaleController.getString(C2573R.string.DateFormatOptionNone), LocaleController.getString(C2573R.string.DateFormatOptionRelative), LocaleController.getString(C2573R.string.DateFormatOptionShortTime), LocaleController.getString(C2573R.string.DateFormatOptionLongTime), LocaleController.getString(C2573R.string.DateFormatOptionShortDate), LocaleController.getString(C2573R.string.DateFormatOptionLongDate), LocaleController.getString(C2573R.string.DateFormatOptionDayOfWeek)};
                                final int[] iArr = {0, 1, 2, 4, 8, 16, 32};
                                final int[] iArr2 = {5};
                                int iBlendOver = Theme.blendOver(scheduleDatePickerColors.backgroundColor, Theme.multAlpha(scheduleDatePickerColors.textColor, 0.075f));
                                int iMultAlpha = Theme.multAlpha(scheduleDatePickerColors.textColor, 0.1f);
                                final FrameLayout frameLayout3 = new FrameLayout(context);
                                final TextView textView2 = new TextView(context);
                                textView2.setTextSize(1, 13.0f);
                                textView2.setTextColor(scheduleDatePickerColors.textColor);
                                textView2.setPadding(AndroidUtilities.dp(12.0f), 0, AndroidUtilities.dp(12.0f), 0);
                                textView2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(14.0f), iBlendOver, Theme.blendOver(iBlendOver, iMultAlpha)));
                                textView2.setGravity(17);
                                final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda42
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AlertsCreator.m9791$r8$lambda$LdJu7Qmuemuf6TZOVhs9v4mB0o(strArr, iArr2, textView2, buttonWithCounterView, numberPicker, numberPicker2, numberPicker3, numberPicker4, iArr);
                                    }
                                };
                                frameLayout3.addView(textView2, LayoutHelper.createFrame(-2, 28.0f, 1, 32.0f, 4.0f, 32.0f, 5.0f));
                                linearLayout.addView(frameLayout3, LayoutHelper.createLinear(-1, -2));
                                NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda43
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
                                buttonWithCounterView.setPadding(AndroidUtilities.dp(34.0f), 0, AndroidUtilities.dp(34.0f), 0);
                                buttonWithCounterView.setRound();
                                linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
                                buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda44
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        AlertsCreator.$r8$lambda$B_MntKRtRTIQ5Hy1AOEzBFyoS_8(zArr, iArr, iArr2, numberPicker, numberPicker2, numberPicker3, numberPicker4, formattedDatePickerDelegate, builder, view);
                                    }
                                });
                                builder.setCustomView(frameLayout);
                                final BottomSheet bottomSheetShow = builder.show();
                                bottomSheetShow.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda34
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        AlertsCreator.$r8$lambda$6oZc5n3MdDzwF4a5SzW4RKje_ok(runnable, zArr, dialogInterface);
                                    }
                                });
                                bottomSheetShow.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
                                bottomSheetShow.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
                                textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda35
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        AlertsCreator.m9793$r8$lambda$OJrOFv3MzH5qWx3hfnlcA8Z5NM(bottomSheetShow, resourcesProvider, frameLayout3, strArr, iArr2, runnable2, view);
                                    }
                                });
                                runnable2.run();
                                return builder;
                            }

                            public static /* synthetic */ String $r8$lambda$NOMVvCxYCTpiagkgFs21K69ZNsU(int i) {
                                return _UrlKt.FRAGMENT_ENCODE_SET + i;
                            }

                            /* JADX INFO: renamed from: $r8$lambda$q7i2EEeeHUTpA-m8JqW8ax1SIqk, reason: not valid java name */
                            public static /* synthetic */ String m9844$r8$lambda$q7i2EEeeHUTpAm8JqW8ax1SIqk(Calendar calendar, int i, int i2) {
                                calendar.clear();
                                calendar.set(1, i);
                                calendar.set(2, 0);
                                calendar.add(2, i2 - 120);
                                if (calendar.get(1) == i) {
                                    return LocaleController.getInstance().getFormatterMonthOnly().format(calendar.getTimeInMillis());
                                }
                                return LocaleController.getInstance().getFormatterMonthYear().format(calendar.getTimeInMillis());
                            }

                            /* JADX INFO: renamed from: $r8$lambda$ixa66GvTix6a0S3VtbhlBL4-2HM, reason: not valid java name */
                            public static /* synthetic */ boolean m9829$r8$lambda$ixa66GvTix6a0S3VtbhlBL42HM(View view, MotionEvent motionEvent) {
                                return true;
                            }

                            /* JADX INFO: renamed from: $r8$lambda$LdJu7Qmuemuf-6TZOVhs9v4mB0o, reason: not valid java name */
                            public static /* synthetic */ void m9791$r8$lambda$LdJu7Qmuemuf6TZOVhs9v4mB0o(String[] strArr, int[] iArr, TextView textView, ButtonWithCounterView buttonWithCounterView, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, NumberPicker numberPicker4, int[] iArr2) {
                                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                                spannableStringBuilder.append((CharSequence) LocaleController.getString(C2573R.string.DateFormatOption));
                                spannableStringBuilder.append((CharSequence) " ");
                                int length = spannableStringBuilder.length();
                                spannableStringBuilder.append((CharSequence) strArr[iArr[0]]);
                                spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold()), length, spannableStringBuilder.length(), 33);
                                spannableStringBuilder.append((CharSequence) " v");
                                ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2573R.drawable.arrows_select);
                                coloredImageSpan.spaceScaleX = 0.7f;
                                coloredImageSpan.translate(AndroidUtilities.dp(-1.33f), AndroidUtilities.dp(0.0f));
                                coloredImageSpan.setAlpha(0.75f);
                                spannableStringBuilder.setSpan(coloredImageSpan, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                                textView.setText(spannableStringBuilder);
                                checkFormattedDateInput(buttonWithCounterView, numberPicker, numberPicker2, numberPicker3, numberPicker4, iArr2[iArr[0]]);
                            }

                            public static /* synthetic */ void $r8$lambda$B_MntKRtRTIQ5Hy1AOEzBFyoS_8(boolean[] zArr, int[] iArr, int[] iArr2, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, NumberPicker numberPicker4, FormattedDatePickerDelegate formattedDatePickerDelegate, BottomSheet.Builder builder, View view) {
                                zArr[0] = false;
                                int i = iArr[iArr2[0]];
                                formattedDatePickerDelegate.didSelectDate((int) (checkFormattedDateInput(null, numberPicker, numberPicker2, numberPicker3, numberPicker4, i) / 1000), i);
                                builder.getDismissRunnable().run();
                            }

                            public static /* synthetic */ void $r8$lambda$6oZc5n3MdDzwF4a5SzW4RKje_ok(Runnable runnable, boolean[] zArr, DialogInterface dialogInterface) {
                                if (runnable == null || !zArr[0]) {
                                    return;
                                }
                                runnable.run();
                            }

                            /* JADX INFO: renamed from: $r8$lambda$OJr-OFv3MzH5qWx3hfnlcA8Z5NM, reason: not valid java name */
                            public static /* synthetic */ void m9793$r8$lambda$OJrOFv3MzH5qWx3hfnlcA8Z5NM(BottomSheet bottomSheet, Theme.ResourcesProvider resourcesProvider, FrameLayout frameLayout, String[] strArr, final int[] iArr, final Runnable runnable, View view) {
                                ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(bottomSheet.container, resourcesProvider, frameLayout);
                                for (final int i = 0; i < strArr.length; i++) {
                                    itemOptionsMakeOptions.add(strArr[i], new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda84
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            AlertsCreator.$r8$lambda$nxReu0SzfGIRporicn4mosQOams(iArr, i, runnable);
                                        }
                                    });
                                }
                                itemOptionsMakeOptions.setGravity(1);
                                itemOptionsMakeOptions.show();
                            }

                            public static /* synthetic */ void $r8$lambda$nxReu0SzfGIRporicn4mosQOams(int[] iArr, int i, Runnable runnable) {
                                iArr[0] = i;
                                runnable.run();
                            }

                            private static String formatPollCloseCustomDeadline(int i) {
                                String pluralString;
                                int i2 = i / 86400;
                                int i3 = (i % 86400) / 3600;
                                int i4 = (i % 3600) / 60;
                                String pluralString2 = _UrlKt.FRAGMENT_ENCODE_SET;
                                String pluralString3 = i2 > 0 ? LocaleController.formatPluralString("Days", i2, new Object[0]) : _UrlKt.FRAGMENT_ENCODE_SET;
                                if (i3 <= 0) {
                                    pluralString = _UrlKt.FRAGMENT_ENCODE_SET;
                                } else {
                                    pluralString = LocaleController.formatPluralString("Hours", i3, new Object[0]);
                                }
                                if (i4 > 0) {
                                    pluralString2 = LocaleController.formatPluralString("Minutes", i4, new Object[0]);
                                }
                                return LocaleController.formatString(C2573R.string.PollCustomDeadlineClosesIn, LocaleController.formatString(C2573R.string.PollCustomDeadlineClosesInFmt, pluralString3, pluralString, pluralString2).trim());
                            }

                            public static void checkPollCloseCustomDeadline(TextView textView, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3) {
                                int value = numberPicker.getValue();
                                int value2 = numberPicker2.getValue();
                                int value3 = numberPicker3.getValue();
                                Calendar calendar = Calendar.getInstance();
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                calendar.setTimeInMillis(jCurrentTimeMillis);
                                calendar.add(6, value);
                                calendar.set(11, value2);
                                calendar.set(12, value3);
                                calendar.set(13, 0);
                                calendar.set(14, 0);
                                long timeInMillis = calendar.getTimeInMillis();
                                if (textView != null) {
                                    textView.setText(formatPollCloseCustomDeadline((int) ((timeInMillis - jCurrentTimeMillis) / 1000)));
                                }
                            }

                            public static BottomSheet.Builder createPollCloseDatePickerDialog(Context context, long j, final ScheduleDatePickerDelegate scheduleDatePickerDelegate, final Runnable runnable, ScheduleDatePickerColors scheduleDatePickerColors, Theme.ResourcesProvider resourcesProvider) {
                                TextView textView;
                                if (context == null) {
                                    return null;
                                }
                                final int i = (int) MessagesController.getInstance(UserConfig.selectedAccount).config.pollClosePeriodMax.get(TimeUnit.SECONDS);
                                final BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
                                builder.setApplyBottomPadding(false);
                                final NumberPicker numberPicker = new NumberPicker(context, resourcesProvider);
                                numberPicker.setTextColor(scheduleDatePickerColors.textColor);
                                numberPicker.setTextOffset(AndroidUtilities.dp(10.0f));
                                numberPicker.setItemCount(5);
                                final NumberPicker numberPicker2 = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.37
                                    @Override // org.telegram.ui.Components.NumberPicker
                                    public CharSequence getContentDescription(int i2) {
                                        return LocaleController.formatPluralString("Hours", i2, new Object[0]);
                                    }
                                };
                                numberPicker2.setWrapSelectorWheel(true);
                                numberPicker2.setAllItemsCount(24);
                                numberPicker2.setItemCount(5);
                                numberPicker2.setTextColor(scheduleDatePickerColors.textColor);
                                numberPicker2.setTextOffset(-AndroidUtilities.dp(10.0f));
                                final NumberPicker numberPicker3 = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.38
                                    @Override // org.telegram.ui.Components.NumberPicker
                                    public CharSequence getContentDescription(int i2) {
                                        return LocaleController.formatPluralString("Minutes", i2, new Object[0]);
                                    }
                                };
                                numberPicker3.setWrapSelectorWheel(true);
                                numberPicker3.setAllItemsCount(60);
                                numberPicker3.setItemCount(5);
                                numberPicker3.setTextColor(scheduleDatePickerColors.textColor);
                                numberPicker3.setTextOffset(-AndroidUtilities.dp(34.0f));
                                FrameLayout frameLayout = new FrameLayout(context);
                                LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.39
                                    boolean ignoreLayout = false;

                                    @Override // android.widget.LinearLayout, android.view.View
                                    public void onMeasure(int i2, int i3) {
                                        this.ignoreLayout = true;
                                        Point point = AndroidUtilities.displaySize;
                                        int i4 = point.x > point.y ? 3 : 5;
                                        numberPicker.setItemCount(i4);
                                        numberPicker2.setItemCount(i4);
                                        numberPicker3.setItemCount(i4);
                                        numberPicker.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i4;
                                        numberPicker2.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i4;
                                        numberPicker3.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i4;
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
                                frameLayout.addView(new FrameLayout(context), LayoutHelper.createFrame(-1, 100.0f, 87, 0.0f, 0.0f, 0.0f, 120.0f));
                                FrameLayout frameLayout2 = new FrameLayout(context);
                                linearLayout.addView(frameLayout2, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
                                TextView textView2 = new TextView(context);
                                textView2.setText(LocaleController.getString(C2573R.string.StopPollDeadlineHeader));
                                textView2.setTextColor(scheduleDatePickerColors.textColor);
                                textView2.setTextSize(1, 20.0f);
                                textView2.setTypeface(AndroidUtilities.bold());
                                frameLayout2.addView(textView2, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
                                textView2.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda233
                                    @Override // android.view.View.OnTouchListener
                                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                                        return AlertsCreator.m9824$r8$lambda$fzBMFdOXKOQnDfeb5PrhwriVGo(view, motionEvent);
                                    }
                                });
                                LinearLayout linearLayout2 = new LinearLayout(context);
                                linearLayout2.setOrientation(0);
                                linearLayout2.setWeightSum(1.0f);
                                linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 23, 0, 23));
                                final TextView textView3 = new TextView(context);
                                textView3.setTextSize(1, 12.0f);
                                textView3.setTextColor(Theme.getColor(Theme.key_dialogTextGray2, resourcesProvider));
                                textView3.setGravity(17);
                                final Calendar calendar = Calendar.getInstance();
                                TextView textView4 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.40
                                    @Override // android.widget.TextView, android.view.View
                                    public CharSequence getAccessibilityClassName() {
                                        return Button.class.getName();
                                    }
                                };
                                textView4.setText(LocaleController.getString(C2573R.string.StopPollDeadlineButton));
                                ScaleStateListAnimator.apply(textView4, 0.02f, 1.2f);
                                linearLayout2.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.5f));
                                numberPicker.setMinValue(0);
                                numberPicker.setMaxValue(365);
                                numberPicker.setWrapSelectorWheel(false);
                                numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda234
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i2) {
                                        return AlertsCreator.$r8$lambda$ZVI_mk2PHVpmxvL4DDjrEj_yblg(i2);
                                    }
                                });
                                NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda235
                                    @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
                                    public final void onValueChange(NumberPicker numberPicker4, int i2, int i3) {
                                        AlertsCreator.$r8$lambda$ELZyW1pRDW5quWeAPRVNxAsJ25k(i, numberPicker, numberPicker2, numberPicker3, textView3, numberPicker4, i2, i3);
                                    }
                                };
                                numberPicker.setOnValueChangedListener(onValueChangeListener);
                                numberPicker2.setMinValue(0);
                                numberPicker2.setMaxValue(23);
                                linearLayout2.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.2f));
                                numberPicker2.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda236
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i2) {
                                        return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i2));
                                    }
                                });
                                numberPicker2.setOnValueChangedListener(onValueChangeListener);
                                numberPicker3.setMinValue(0);
                                numberPicker3.setMaxValue(59);
                                numberPicker3.setValue(0);
                                numberPicker3.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda237
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i2) {
                                        return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i2));
                                    }
                                });
                                linearLayout2.addView(numberPicker3, LayoutHelper.createLinear(0, 270, 0.3f));
                                numberPicker3.setOnValueChangedListener(onValueChangeListener);
                                if (j <= 0 || j == 2147483646) {
                                    textView = textView3;
                                } else {
                                    long j2 = j * 1000;
                                    calendar.setTimeInMillis(System.currentTimeMillis());
                                    calendar.set(12, 0);
                                    calendar.set(13, 0);
                                    calendar.set(14, 0);
                                    calendar.set(11, 0);
                                    textView = textView3;
                                    int timeInMillis = (int) ((j2 - calendar.getTimeInMillis()) / DurationKt.MILLIS_IN_DAY);
                                    calendar.setTimeInMillis(j2);
                                    if (timeInMillis >= 0) {
                                        numberPicker3.setValue(calendar.get(12));
                                        numberPicker2.setValue(calendar.get(11));
                                        numberPicker.setValue(timeInMillis);
                                    }
                                }
                                final boolean[] zArr = {true};
                                checkScheduleDate(null, null, i, 3, numberPicker, numberPicker2, numberPicker3);
                                final TextView textView5 = textView;
                                checkPollCloseCustomDeadline(textView5, numberPicker, numberPicker2, numberPicker3);
                                textView4.setPadding(AndroidUtilities.dp(34.0f), 0, AndroidUtilities.dp(34.0f), 0);
                                textView4.setGravity(17);
                                textView4.setTextColor(scheduleDatePickerColors.buttonTextColor);
                                textView4.setTextSize(1, 14.0f);
                                textView4.setTypeface(AndroidUtilities.bold());
                                textView4.setBackground(Theme.AdaptiveRipple.filledRect(scheduleDatePickerColors.buttonBackgroundColor, 24.0f));
                                linearLayout.addView(textView4, LayoutHelper.createLinear(-1, 48, 83, 14, 15, 14, 16));
                                textView4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda238
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        AlertsCreator.$r8$lambda$2aRFXAKpWnrK4jEGOhxP4OI9Meg(zArr, i, numberPicker, numberPicker2, numberPicker3, textView5, calendar, scheduleDatePickerDelegate, builder, view);
                                    }
                                });
                                linearLayout.addView(textView5, LayoutHelper.createLinear(-1, -2, 83, 14, 0, 14, 16));
                                builder.setCustomView(frameLayout);
                                BottomSheet bottomSheetShow = builder.show();
                                bottomSheetShow.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda239
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        AlertsCreator.$r8$lambda$SXCmYtWaLCYGwiTLSvC87LQTSjo(runnable, zArr, dialogInterface);
                                    }
                                });
                                bottomSheetShow.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
                                bottomSheetShow.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
                                return builder;
                            }

                            /* JADX INFO: renamed from: $r8$lambda$fzBMF-dOXKOQnDfeb5PrhwriVGo, reason: not valid java name */
                            public static /* synthetic */ boolean m9824$r8$lambda$fzBMFdOXKOQnDfeb5PrhwriVGo(View view, MotionEvent motionEvent) {
                                return true;
                            }

                            public static /* synthetic */ String $r8$lambda$ZVI_mk2PHVpmxvL4DDjrEj_yblg(int i) {
                                if (i == 0) {
                                    return LocaleController.getString(C2573R.string.MessageScheduleToday);
                                }
                                Calendar calendar = Calendar.getInstance();
                                int i2 = calendar.get(1);
                                calendar.add(6, i);
                                long timeInMillis = calendar.getTimeInMillis();
                                if (calendar.get(1) == i2) {
                                    return LocaleController.getInstance().getFormatterWeek().format(timeInMillis) + ", " + LocaleController.getInstance().getFormatterScheduleDay().format(timeInMillis);
                                }
                                return LocaleController.getInstance().getFormatterScheduleYear().format(timeInMillis);
                            }

                            public static /* synthetic */ void $r8$lambda$ELZyW1pRDW5quWeAPRVNxAsJ25k(int i, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, TextView textView, NumberPicker numberPicker4, int i2, int i3) {
                                checkScheduleDate(null, null, i, 3, numberPicker, numberPicker2, numberPicker3);
                                checkPollCloseCustomDeadline(textView, numberPicker, numberPicker2, numberPicker3);
                            }

                            public static /* synthetic */ void $r8$lambda$2aRFXAKpWnrK4jEGOhxP4OI9Meg(boolean[] zArr, int i, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, TextView textView, Calendar calendar, ScheduleDatePickerDelegate scheduleDatePickerDelegate, BottomSheet.Builder builder, View view) {
                                zArr[0] = false;
                                boolean zCheckScheduleDate = checkScheduleDate(null, null, i, 3, numberPicker, numberPicker2, numberPicker3);
                                checkPollCloseCustomDeadline(textView, numberPicker, numberPicker2, numberPicker3);
                                calendar.setTimeInMillis(System.currentTimeMillis());
                                calendar.add(6, numberPicker.getValue());
                                calendar.set(11, numberPicker2.getValue());
                                calendar.set(12, numberPicker3.getValue());
                                if (zCheckScheduleDate) {
                                    calendar.set(13, 0);
                                    calendar.set(14, 0);
                                }
                                scheduleDatePickerDelegate.didSelectDate(true, (int) (calendar.getTimeInMillis() / 1000), 0);
                                builder.getDismissRunnable().run();
                            }

                            public static /* synthetic */ void $r8$lambda$SXCmYtWaLCYGwiTLSvC87LQTSjo(Runnable runnable, boolean[] zArr, DialogInterface dialogInterface) {
                                if (runnable == null || !zArr[0]) {
                                    return;
                                }
                                runnable.run();
                            }

                            /* JADX WARN: Multi-variable type inference failed */
                            /* JADX WARN: Type inference failed for: r11v0, types: [android.view.ViewGroup, android.widget.LinearLayout, org.telegram.ui.Components.AlertsCreator$43] */
                            /* JADX WARN: Type inference failed for: r17v3 */
                            /* JADX WARN: Type inference failed for: r17v4 */
                            /* JADX WARN: Type inference failed for: r17v5 */
                            /* JADX WARN: Type inference failed for: r17v6 */
                            /* JADX WARN: Type inference failed for: r17v7 */
                            /* JADX WARN: Type inference failed for: r2v2, types: [android.view.View, android.view.ViewGroup] */
                            /* JADX WARN: Type inference failed for: r9v0, types: [org.telegram.ui.ActionBar.BottomSheet$Builder] */
                            public static BottomSheet.Builder createStatusUntilDatePickerDialog(Context context, long j, final StatusUntilDatePickerDelegate statusUntilDatePickerDelegate) {
                                ScheduleDatePickerColors scheduleDatePickerColors;
                                float f;
                                ?? r17;
                                if (context == null) {
                                    return null;
                                }
                                ScheduleDatePickerColors scheduleDatePickerColors2 = new ScheduleDatePickerColors();
                                final ?? builder = new BottomSheet.Builder(context, false);
                                builder.setApplyBottomPadding(false);
                                final NumberPicker numberPicker = new NumberPicker(context);
                                numberPicker.setTextColor(scheduleDatePickerColors2.textColor);
                                numberPicker.setTextOffset(AndroidUtilities.dp(10.0f));
                                numberPicker.setItemCount(5);
                                final NumberPicker numberPicker2 = new NumberPicker(context) { // from class: org.telegram.ui.Components.AlertsCreator.41
                                    @Override // org.telegram.ui.Components.NumberPicker
                                    public CharSequence getContentDescription(int i) {
                                        return LocaleController.formatPluralString("Hours", i, new Object[0]);
                                    }
                                };
                                numberPicker2.setItemCount(5);
                                numberPicker2.setTextColor(scheduleDatePickerColors2.textColor);
                                numberPicker2.setTextOffset(-AndroidUtilities.dp(10.0f));
                                final NumberPicker numberPicker3 = new NumberPicker(context) { // from class: org.telegram.ui.Components.AlertsCreator.42
                                    @Override // org.telegram.ui.Components.NumberPicker
                                    public CharSequence getContentDescription(int i) {
                                        return LocaleController.formatPluralString("Minutes", i, new Object[0]);
                                    }
                                };
                                numberPicker3.setItemCount(5);
                                numberPicker3.setTextColor(scheduleDatePickerColors2.textColor);
                                numberPicker3.setTextOffset(-AndroidUtilities.dp(34.0f));
                                ?? r11 = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.43
                                    boolean ignoreLayout = false;

                                    @Override // android.widget.LinearLayout, android.view.View
                                    public void onMeasure(int i, int i2) {
                                        this.ignoreLayout = true;
                                        Point point = AndroidUtilities.displaySize;
                                        int i3 = point.x > point.y ? 3 : 5;
                                        numberPicker.setItemCount(i3);
                                        numberPicker2.setItemCount(i3);
                                        numberPicker3.setItemCount(i3);
                                        numberPicker.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i3;
                                        numberPicker2.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i3;
                                        numberPicker3.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i3;
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
                                textView.setText(LocaleController.getString(C2573R.string.SetEmojiStatusUntilTitle));
                                textView.setTextColor(scheduleDatePickerColors2.textColor);
                                textView.setTextSize(1, 20.0f);
                                textView.setTypeface(AndroidUtilities.bold());
                                frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
                                textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda240
                                    @Override // android.view.View.OnTouchListener
                                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                                        return AlertsCreator.$r8$lambda$xKDEoQOzSYNNzqzXH2P1J7k6Inc(view, motionEvent);
                                    }
                                });
                                LinearLayout linearLayout = new LinearLayout(context);
                                linearLayout.setOrientation(0);
                                linearLayout.setWeightSum(1.0f);
                                r11.addView(linearLayout, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
                                final Calendar calendar = Calendar.getInstance();
                                TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.44
                                    @Override // android.widget.TextView, android.view.View
                                    public CharSequence getAccessibilityClassName() {
                                        return Button.class.getName();
                                    }
                                };
                                linearLayout.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.5f));
                                numberPicker.setMinValue(0);
                                numberPicker.setMaxValue(365);
                                numberPicker.setWrapSelectorWheel(false);
                                numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda241
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i) {
                                        return AlertsCreator.$r8$lambda$Pyb8SQ7BNI5TCroB6zY8vjY20rU(i);
                                    }
                                });
                                NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda242
                                    @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
                                    public final void onValueChange(NumberPicker numberPicker4, int i, int i2) {
                                        AlertsCreator.checkScheduleDate(null, null, 0, numberPicker, numberPicker2, numberPicker3);
                                    }
                                };
                                numberPicker.setOnValueChangedListener(onValueChangeListener);
                                numberPicker2.setMinValue(0);
                                numberPicker2.setMaxValue(23);
                                linearLayout.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.2f));
                                numberPicker2.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda243
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i) {
                                        return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i));
                                    }
                                });
                                numberPicker2.setOnValueChangedListener(onValueChangeListener);
                                numberPicker3.setMinValue(0);
                                numberPicker3.setMaxValue(59);
                                numberPicker3.setValue(0);
                                numberPicker3.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda244
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i) {
                                        return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i));
                                    }
                                });
                                linearLayout.addView(numberPicker3, LayoutHelper.createLinear(0, 270, 0.3f));
                                numberPicker3.setOnValueChangedListener(onValueChangeListener);
                                if (j <= 0 || j == 2147483646) {
                                    scheduleDatePickerColors = scheduleDatePickerColors2;
                                    f = 34.0f;
                                    r17 = r11;
                                } else {
                                    ?? r172 = r11;
                                    long j2 = j * 1000;
                                    f = 34.0f;
                                    calendar.setTimeInMillis(System.currentTimeMillis());
                                    calendar.set(12, 0);
                                    calendar.set(13, 0);
                                    calendar.set(14, 0);
                                    calendar.set(11, 0);
                                    scheduleDatePickerColors = scheduleDatePickerColors2;
                                    int timeInMillis = (int) ((j2 - calendar.getTimeInMillis()) / DurationKt.MILLIS_IN_DAY);
                                    calendar.setTimeInMillis(j2);
                                    r17 = r172;
                                    if (timeInMillis >= 0) {
                                        numberPicker3.setValue(calendar.get(12));
                                        numberPicker2.setValue(calendar.get(11));
                                        numberPicker.setValue(timeInMillis);
                                        r17 = r172;
                                    }
                                }
                                checkScheduleDate(null, null, 0, numberPicker, numberPicker2, numberPicker3);
                                textView2.setPadding(AndroidUtilities.dp(f), 0, AndroidUtilities.dp(f), 0);
                                textView2.setGravity(17);
                                ScheduleDatePickerColors scheduleDatePickerColors3 = scheduleDatePickerColors;
                                textView2.setTextColor(scheduleDatePickerColors3.buttonTextColor);
                                textView2.setTextSize(1, 14.0f);
                                textView2.setTypeface(AndroidUtilities.bold());
                                textView2.setBackgroundDrawable(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(8.0f), scheduleDatePickerColors3.buttonBackgroundColor, scheduleDatePickerColors3.buttonBackgroundPressedColor));
                                textView2.setText(LocaleController.getString(C2573R.string.SetEmojiStatusUntilButton));
                                ?? r2 = r17;
                                r2.addView(textView2, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
                                textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda245
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        AlertsCreator.m9800$r8$lambda$SKiG87VB4cM3SULTE57OxPwepU(numberPicker, numberPicker2, numberPicker3, calendar, statusUntilDatePickerDelegate, builder, view);
                                    }
                                });
                                builder.setCustomView(r2);
                                BottomSheet bottomSheetShow = builder.show();
                                bottomSheetShow.setBackgroundColor(scheduleDatePickerColors3.backgroundColor);
                                bottomSheetShow.fixNavigationBar(scheduleDatePickerColors3.backgroundColor);
                                return builder;
                            }

                            public static /* synthetic */ boolean $r8$lambda$xKDEoQOzSYNNzqzXH2P1J7k6Inc(View view, MotionEvent motionEvent) {
                                return true;
                            }

                            public static /* synthetic */ String $r8$lambda$Pyb8SQ7BNI5TCroB6zY8vjY20rU(int i) {
                                if (i == 0) {
                                    return LocaleController.getString(C2573R.string.MessageScheduleToday);
                                }
                                Calendar calendar = Calendar.getInstance();
                                int i2 = calendar.get(1);
                                calendar.add(6, i);
                                long timeInMillis = calendar.getTimeInMillis();
                                int i3 = calendar.get(1);
                                if (i3 != i2 || i >= 7) {
                                    if (i3 == i2) {
                                        return LocaleController.getInstance().getFormatterScheduleDay().format(timeInMillis);
                                    }
                                    return LocaleController.getInstance().getFormatterScheduleYear().format(timeInMillis);
                                }
                                return LocaleController.getInstance().getFormatterWeek().format(timeInMillis) + ", " + LocaleController.getInstance().getFormatterScheduleDay().format(timeInMillis);
                            }

                            /* JADX INFO: renamed from: $r8$lambda$SKiG87VB4cM3-SULTE57OxPwepU, reason: not valid java name */
                            public static /* synthetic */ void m9800$r8$lambda$SKiG87VB4cM3SULTE57OxPwepU(NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, Calendar calendar, StatusUntilDatePickerDelegate statusUntilDatePickerDelegate, BottomSheet.Builder builder, View view) {
                                boolean zCheckScheduleDate = checkScheduleDate(null, null, 0, numberPicker, numberPicker2, numberPicker3);
                                calendar.setTimeInMillis(System.currentTimeMillis());
                                calendar.add(6, numberPicker.getValue());
                                calendar.set(11, numberPicker2.getValue());
                                calendar.set(12, numberPicker3.getValue());
                                if (zCheckScheduleDate) {
                                    calendar.set(13, 0);
                                    calendar.set(14, 0);
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
                                final NumberPicker numberPicker = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.45
                                    @Override // org.telegram.ui.Components.NumberPicker
                                    public CharSequence getContentDescription(int i2) {
                                        int i3 = iArr[i2];
                                        if (i3 == 0) {
                                            return LocaleController.getString(C2573R.string.AutoDeleteNever);
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
                                numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda154
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i2) {
                                        return AlertsCreator.$r8$lambda$LiMtNDofYI_wQ00E_vlWgvoAMVc(iArr, i2);
                                    }
                                });
                                LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.46
                                    boolean ignoreLayout = false;

                                    @Override // android.widget.LinearLayout, android.view.View
                                    public void onMeasure(int i2, int i3) {
                                        this.ignoreLayout = true;
                                        Point point = AndroidUtilities.displaySize;
                                        int i4 = point.x > point.y ? 3 : 5;
                                        numberPicker.setItemCount(i4);
                                        numberPicker.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i4;
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
                                textView.setText(LocaleController.getString(C2573R.string.AutoDeleteAfteTitle));
                                textView.setTextColor(scheduleDatePickerColors.textColor);
                                textView.setTextSize(1, 20.0f);
                                textView.setTypeface(AndroidUtilities.bold());
                                frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
                                textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda155
                                    @Override // android.view.View.OnTouchListener
                                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                                        return AlertsCreator.$r8$lambda$Am4aqzrBNrWuGx35tYfMf3dBUkk(view, motionEvent);
                                    }
                                });
                                LinearLayout linearLayout2 = new LinearLayout(context);
                                linearLayout2.setOrientation(0);
                                linearLayout2.setWeightSum(1.0f);
                                linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
                                final AnimatedTextView animatedTextView = new AnimatedTextView(context, z, z, false) { // from class: org.telegram.ui.Components.AlertsCreator.47
                                    @Override // android.view.View
                                    public CharSequence getAccessibilityClassName() {
                                        return Button.class.getName();
                                    }
                                };
                                linearLayout2.addView(numberPicker, LayoutHelper.createLinear(0, 270, 1.0f));
                                animatedTextView.setPadding(0, 0, 0, 0);
                                animatedTextView.setGravity(17);
                                animatedTextView.setTextColor(scheduleDatePickerColors.buttonTextColor);
                                animatedTextView.setTextSize(AndroidUtilities.dp(14.0f));
                                animatedTextView.setTypeface(AndroidUtilities.bold());
                                animatedTextView.setBackgroundDrawable(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(8.0f), scheduleDatePickerColors.buttonBackgroundColor, scheduleDatePickerColors.buttonBackgroundPressedColor));
                                linearLayout.addView(animatedTextView, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
                                animatedTextView.setText(LocaleController.getString(C2573R.string.DisableAutoDeleteTimer));
                                numberPicker.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda156
                                    @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
                                    public final void onValueChange(NumberPicker numberPicker2, int i2, int i3) {
                                        AlertsCreator.m9798$r8$lambda$Rhlm_9WDqGaEyoW1DqFrMvULo(animatedTextView, numberPicker2, i2, i3);
                                    }
                                });
                                animatedTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda157
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        AlertsCreator.$r8$lambda$_nzp2_KeSPjzmK3iynQfljl_Xag(iArr, numberPicker, scheduleDatePickerDelegate, builder, view);
                                    }
                                });
                                builder.setCustomView(linearLayout);
                                BottomSheet bottomSheetShow = builder.show();
                                bottomSheetShow.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
                                bottomSheetShow.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
                                return builder;
                            }

                            public static /* synthetic */ String $r8$lambda$LiMtNDofYI_wQ00E_vlWgvoAMVc(int[] iArr, int i) {
                                int i2 = iArr[i];
                                if (i2 == 0) {
                                    return LocaleController.getString(C2573R.string.AutoDeleteNever);
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

                            public static /* synthetic */ boolean $r8$lambda$Am4aqzrBNrWuGx35tYfMf3dBUkk(View view, MotionEvent motionEvent) {
                                return true;
                            }

                            /* JADX INFO: renamed from: $r8$lambda$Rhlm-_9WDqGaEyoW-1DqFrMvULo, reason: not valid java name */
                            public static /* synthetic */ void m9798$r8$lambda$Rhlm_9WDqGaEyoW1DqFrMvULo(AnimatedTextView animatedTextView, NumberPicker numberPicker, int i, int i2) {
                                try {
                                    if (i2 == 0) {
                                        animatedTextView.setText(LocaleController.getString(C2573R.string.DisableAutoDeleteTimer));
                                    } else {
                                        animatedTextView.setText(LocaleController.getString(C2573R.string.SetAutoDeleteTimer));
                                    }
                                } catch (Exception unused) {
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$_nzp2_KeSPjzmK3iynQfljl_Xag(int[] iArr, NumberPicker numberPicker, ScheduleDatePickerDelegate scheduleDatePickerDelegate, BottomSheet.Builder builder, View view) {
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
                                final NumberPicker numberPicker = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.48
                                    @Override // org.telegram.ui.Components.NumberPicker
                                    public CharSequence getContentDescription(int i3) {
                                        return LocaleController.formatPluralString("Times", i3 + 1, new Object[0]);
                                    }
                                };
                                numberPicker.setMinValue(0);
                                numberPicker.setMaxValue(10);
                                numberPicker.setTextColor(scheduleDatePickerColors.textColor);
                                numberPicker.setValue(i - 1);
                                numberPicker.setWrapSelectorWheel(false);
                                numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda223
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i3) {
                                        return LocaleController.formatPluralString("Times", i3 + 1, new Object[0]);
                                    }
                                });
                                final NumberPicker numberPicker2 = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.49
                                    @Override // org.telegram.ui.Components.NumberPicker
                                    public CharSequence getContentDescription(int i3) {
                                        return LocaleController.formatPluralString("Times", i3 + 1, new Object[0]);
                                    }
                                };
                                numberPicker2.setMinValue(0);
                                numberPicker2.setMaxValue(10);
                                numberPicker2.setTextColor(scheduleDatePickerColors.textColor);
                                numberPicker2.setValue((i2 / 60) - 1);
                                numberPicker2.setWrapSelectorWheel(false);
                                numberPicker2.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda224
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
                                numberPicker3.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda225
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i3) {
                                        return LocaleController.getString(C2573R.string.NotificationsFrequencyDivider);
                                    }
                                });
                                LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.50
                                    boolean ignoreLayout = false;

                                    @Override // android.widget.LinearLayout, android.view.View
                                    public void onMeasure(int i3, int i4) {
                                        this.ignoreLayout = true;
                                        Point point = AndroidUtilities.displaySize;
                                        int i5 = point.x > point.y ? 3 : 5;
                                        numberPicker.setItemCount(i5);
                                        numberPicker.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i5;
                                        numberPicker2.setItemCount(i5);
                                        numberPicker2.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i5;
                                        numberPicker3.setItemCount(i5);
                                        numberPicker3.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i5;
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
                                textView.setText(LocaleController.getString(C2573R.string.NotfificationsFrequencyTitle));
                                textView.setTextColor(scheduleDatePickerColors.textColor);
                                textView.setTextSize(1, 20.0f);
                                textView.setTypeface(AndroidUtilities.bold());
                                frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
                                textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda226
                                    @Override // android.view.View.OnTouchListener
                                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                                        return AlertsCreator.m9856$r8$lambda$zLQoKpXrSKHremMNYhEDNOPaQA(view, motionEvent);
                                    }
                                });
                                LinearLayout linearLayout2 = new LinearLayout(context);
                                linearLayout2.setOrientation(0);
                                linearLayout2.setWeightSum(1.0f);
                                linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
                                TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.51
                                    @Override // android.widget.TextView, android.view.View
                                    public CharSequence getAccessibilityClassName() {
                                        return Button.class.getName();
                                    }
                                };
                                linearLayout2.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.4f));
                                linearLayout2.addView(numberPicker3, LayoutHelper.createLinear(0, -2, 0.2f, 16));
                                linearLayout2.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.4f));
                                textView2.setPadding(AndroidUtilities.dp(34.0f), 0, AndroidUtilities.dp(34.0f), 0);
                                textView2.setGravity(17);
                                textView2.setTextColor(scheduleDatePickerColors.buttonTextColor);
                                textView2.setTextSize(1, 14.0f);
                                textView2.setTypeface(AndroidUtilities.bold());
                                textView2.setBackgroundDrawable(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(8.0f), scheduleDatePickerColors.buttonBackgroundColor, scheduleDatePickerColors.buttonBackgroundPressedColor));
                                textView2.setText(LocaleController.getString(C2573R.string.AutoDeleteConfirm));
                                linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
                                NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda227
                                    @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
                                    public final void onValueChange(NumberPicker numberPicker4, int i3, int i4) {
                                        AlertsCreator.m9840$r8$lambda$oz_1YuJ21i1cZCXS0njAtleOvw(numberPicker4, i3, i4);
                                    }
                                };
                                numberPicker.setOnValueChangedListener(onValueChangeListener);
                                numberPicker2.setOnValueChangedListener(onValueChangeListener);
                                textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda228
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        AlertsCreator.$r8$lambda$FmRRU9Xd6EHNstJ48KoTTJZsWMY(numberPicker, numberPicker2, soundFrequencyDelegate, builder, view);
                                    }
                                });
                                builder.setCustomView(linearLayout);
                                BottomSheet bottomSheetShow = builder.show();
                                bottomSheetShow.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
                                bottomSheetShow.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
                                return builder;
                            }

                            /* JADX INFO: renamed from: $r8$lambda$z-LQoKpXrSKHremMNYhEDNOPaQA, reason: not valid java name */
                            public static /* synthetic */ boolean m9856$r8$lambda$zLQoKpXrSKHremMNYhEDNOPaQA(View view, MotionEvent motionEvent) {
                                return true;
                            }

                            public static /* synthetic */ void $r8$lambda$FmRRU9Xd6EHNstJ48KoTTJZsWMY(NumberPicker numberPicker, NumberPicker numberPicker2, SoundFrequencyDelegate soundFrequencyDelegate, BottomSheet.Builder builder, View view) {
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
                                final NumberPicker numberPicker = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.52
                                    @Override // org.telegram.ui.Components.NumberPicker
                                    public CharSequence getContentDescription(int i) {
                                        int i2 = iArr[i];
                                        if (i2 == 0) {
                                            return LocaleController.getString(C2573R.string.MuteNever);
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
                                numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda127
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i) {
                                        return AlertsCreator.$r8$lambda$HeJlE3m0NqZoCtJgbTlCYDDzOlQ(iArr, i);
                                    }
                                });
                                LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.53
                                    boolean ignoreLayout = false;

                                    @Override // android.widget.LinearLayout, android.view.View
                                    public void onMeasure(int i, int i2) {
                                        this.ignoreLayout = true;
                                        Point point = AndroidUtilities.displaySize;
                                        int i3 = point.x > point.y ? 3 : 5;
                                        numberPicker.setItemCount(i3);
                                        numberPicker.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i3;
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
                                textView.setText(LocaleController.getString(C2573R.string.MuteForAlert));
                                textView.setTextColor(scheduleDatePickerColors.textColor);
                                textView.setTextSize(1, 20.0f);
                                textView.setTypeface(AndroidUtilities.bold());
                                frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
                                textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda128
                                    @Override // android.view.View.OnTouchListener
                                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                                        return AlertsCreator.$r8$lambda$Jjq3hMRIN7eWfFjFhIsF2NznXhU(view, motionEvent);
                                    }
                                });
                                LinearLayout linearLayout2 = new LinearLayout(context);
                                linearLayout2.setOrientation(0);
                                linearLayout2.setWeightSum(1.0f);
                                linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
                                TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.54
                                    @Override // android.widget.TextView, android.view.View
                                    public CharSequence getAccessibilityClassName() {
                                        return Button.class.getName();
                                    }
                                };
                                linearLayout2.addView(numberPicker, LayoutHelper.createLinear(0, 270, 1.0f));
                                numberPicker.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda129
                                    @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
                                    public final void onValueChange(NumberPicker numberPicker2, int i, int i2) {
                                        AlertsCreator.m9794$r8$lambda$P3UZJUdRWFnUu19WlGm7uCAcCM(numberPicker2, i, i2);
                                    }
                                });
                                textView2.setPadding(AndroidUtilities.dp(34.0f), 0, AndroidUtilities.dp(34.0f), 0);
                                textView2.setGravity(17);
                                textView2.setTextColor(scheduleDatePickerColors.buttonTextColor);
                                textView2.setTextSize(1, 14.0f);
                                textView2.setTypeface(AndroidUtilities.bold());
                                textView2.setBackgroundDrawable(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(8.0f), scheduleDatePickerColors.buttonBackgroundColor, scheduleDatePickerColors.buttonBackgroundPressedColor));
                                textView2.setText(LocaleController.getString(C2573R.string.AutoDeleteConfirm));
                                linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
                                textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda130
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        AlertsCreator.$r8$lambda$_VgfRrSENpdQKXDueZ7E_Nhlc04(iArr, numberPicker, scheduleDatePickerDelegate, builder, view);
                                    }
                                });
                                builder.setCustomView(linearLayout);
                                BottomSheet bottomSheetShow = builder.show();
                                bottomSheetShow.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
                                bottomSheetShow.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
                                return builder;
                            }

                            public static /* synthetic */ String $r8$lambda$HeJlE3m0NqZoCtJgbTlCYDDzOlQ(int[] iArr, int i) {
                                int i2 = iArr[i];
                                if (i2 == 0) {
                                    return LocaleController.getString(C2573R.string.MuteNever);
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

                            public static /* synthetic */ boolean $r8$lambda$Jjq3hMRIN7eWfFjFhIsF2NznXhU(View view, MotionEvent motionEvent) {
                                return true;
                            }

                            public static /* synthetic */ void $r8$lambda$_VgfRrSENpdQKXDueZ7E_Nhlc04(int[] iArr, NumberPicker numberPicker, ScheduleDatePickerDelegate scheduleDatePickerDelegate, BottomSheet.Builder builder, View view) {
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
                                numberPicker.setTextOffset(AndroidUtilities.dp(10.0f));
                                numberPicker.setItemCount(5);
                                final NumberPicker numberPicker2 = new NumberPicker(context, resourcesProvider);
                                numberPicker2.setItemCount(5);
                                numberPicker2.setTextOffset(-AndroidUtilities.dp(10.0f));
                                final NumberPicker numberPicker3 = new NumberPicker(context, resourcesProvider);
                                numberPicker3.setItemCount(5);
                                numberPicker3.setTextOffset(-AndroidUtilities.dp(24.0f));
                                LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.55
                                    boolean ignoreLayout = false;

                                    @Override // android.widget.LinearLayout, android.view.View
                                    public void onMeasure(int i, int i2) {
                                        this.ignoreLayout = true;
                                        Point point = AndroidUtilities.displaySize;
                                        int i3 = point.x > point.y ? 3 : 5;
                                        numberPicker.setItemCount(i3);
                                        numberPicker2.setItemCount(i3);
                                        numberPicker3.setItemCount(i3);
                                        numberPicker.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i3;
                                        numberPicker2.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i3;
                                        numberPicker3.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i3;
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
                                textView.setText(LocaleController.getString(C2573R.string.ChooseDate));
                                textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
                                textView.setTextSize(1, 20.0f);
                                textView.setTypeface(AndroidUtilities.bold());
                                frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
                                textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda86
                                    @Override // android.view.View.OnTouchListener
                                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                                        return AlertsCreator.$r8$lambda$VIfLDj9XmFnd8Xat9Z_9HUnqk5M(view, motionEvent);
                                    }
                                });
                                LinearLayout linearLayout2 = new LinearLayout(context);
                                linearLayout2.setOrientation(0);
                                linearLayout2.setWeightSum(1.0f);
                                linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
                                System.currentTimeMillis();
                                TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.56
                                    @Override // android.widget.TextView, android.view.View
                                    public CharSequence getAccessibilityClassName() {
                                        return Button.class.getName();
                                    }
                                };
                                linearLayout2.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.25f));
                                numberPicker.setMinValue(1);
                                numberPicker.setMaxValue(31);
                                numberPicker.setWrapSelectorWheel(false);
                                numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda87
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i) {
                                        return AlertsCreator.m9816$r8$lambda$ZCAVDXBJQnWMBgNpGhHzqJIvZM(i);
                                    }
                                });
                                NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda88
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
                                numberPicker2.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda89
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i) {
                                        return AlertsCreator.$r8$lambda$sjVe6feKAX4CPYaqvACAGlaHRh4(i);
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
                                numberPicker3.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda90
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
                                textView2.setPadding(AndroidUtilities.dp(34.0f), 0, AndroidUtilities.dp(34.0f), 0);
                                textView2.setGravity(17);
                                textView2.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText, resourcesProvider));
                                textView2.setTextSize(1, 14.0f);
                                textView2.setTypeface(AndroidUtilities.bold());
                                textView2.setText(LocaleController.getString(C2573R.string.JumpToDate));
                                textView2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(8.0f), Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider), Theme.getColor(Theme.key_featuredStickers_addButtonPressed, resourcesProvider)));
                                linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
                                textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda91
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        AlertsCreator.m9781$r8$lambda$AVvC_MenWh6xxqWt49ZWzfDP2w(j, numberPicker, numberPicker2, numberPicker3, calendar, intCallback, builder, view);
                                    }
                                });
                                builder.setCustomView(linearLayout);
                                return builder;
                            }

                            public static /* synthetic */ boolean $r8$lambda$VIfLDj9XmFnd8Xat9Z_9HUnqk5M(View view, MotionEvent motionEvent) {
                                return true;
                            }

                            /* JADX INFO: renamed from: $r8$lambda$ZCAVDXBJQn-WMBgNpGhHzqJIvZM, reason: not valid java name */
                            public static /* synthetic */ String m9816$r8$lambda$ZCAVDXBJQnWMBgNpGhHzqJIvZM(int i) {
                                return _UrlKt.FRAGMENT_ENCODE_SET + i;
                            }

                            public static /* synthetic */ String $r8$lambda$sjVe6feKAX4CPYaqvACAGlaHRh4(int i) {
                                switch (i) {
                                    case 0:
                                        return LocaleController.getString(C2573R.string.January);
                                    case 1:
                                        return LocaleController.getString(C2573R.string.February);
                                    case 2:
                                        return LocaleController.getString(C2573R.string.March);
                                    case 3:
                                        return LocaleController.getString(C2573R.string.April);
                                    case 4:
                                        return LocaleController.getString(C2573R.string.May);
                                    case 5:
                                        return LocaleController.getString(C2573R.string.June);
                                    case 6:
                                        return LocaleController.getString(C2573R.string.July);
                                    case 7:
                                        return LocaleController.getString(C2573R.string.August);
                                    case 8:
                                        return LocaleController.getString(C2573R.string.September);
                                    case 9:
                                        return LocaleController.getString(C2573R.string.October);
                                    case 10:
                                        return LocaleController.getString(C2573R.string.November);
                                    default:
                                        return LocaleController.getString(C2573R.string.December);
                                }
                            }

                            /* JADX INFO: renamed from: $r8$lambda$AVvC_MenWh6xxqWt49ZWzfDP-2w, reason: not valid java name */
                            public static /* synthetic */ void m9781$r8$lambda$AVvC_MenWh6xxqWt49ZWzfDP2w(long j, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, Calendar calendar, MessagesStorage.IntCallback intCallback, BottomSheet.Builder builder, View view) {
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
                                builder.setTitle(LocaleController.getString(C2573R.string.Notifications), true);
                                builder.setItems(new CharSequence[]{LocaleController.formatString("MuteFor", C2573R.string.MuteFor, LocaleController.formatPluralString("Hours", 1, new Object[0])), LocaleController.formatString("MuteFor", C2573R.string.MuteFor, LocaleController.formatPluralString("Hours", 8, new Object[0])), LocaleController.formatString("MuteFor", C2573R.string.MuteFor, LocaleController.formatPluralString("Days", 2, new Object[0])), LocaleController.getString(C2573R.string.MuteDisable)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda85
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i) {
                                        AlertsCreator.$r8$lambda$quNn0HX6yvVOzV5WH_pInasU_3A(j, j2, baseFragment, resourcesProvider, dialogInterface, i);
                                    }
                                });
                                return builder.create();
                            }

                            public static /* synthetic */ void $r8$lambda$quNn0HX6yvVOzV5WH_pInasU_3A(long j, long j2, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider, DialogInterface dialogInterface, int i) {
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

                            public static BottomSheet createMuteAlert(final BaseFragment baseFragment, final ArrayList<Long> arrayList, final int i, final Theme.ResourcesProvider resourcesProvider) {
                                if (baseFragment == null || baseFragment.getParentActivity() == null) {
                                    return null;
                                }
                                BottomSheet.Builder builder = new BottomSheet.Builder(baseFragment.getParentActivity(), false, resourcesProvider);
                                builder.setTitle(LocaleController.getString(C2573R.string.Notifications), true);
                                builder.setItems(new CharSequence[]{LocaleController.formatString("MuteFor", C2573R.string.MuteFor, LocaleController.formatPluralString("Hours", 1, new Object[0])), LocaleController.formatString("MuteFor", C2573R.string.MuteFor, LocaleController.formatPluralString("Hours", 8, new Object[0])), LocaleController.formatString("MuteFor", C2573R.string.MuteFor, LocaleController.formatPluralString("Days", 2, new Object[0])), LocaleController.getString(C2573R.string.MuteDisable)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda131
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i2) {
                                        AlertsCreator.$r8$lambda$FObFRL5WEdlClqr70Mr7_ZYI7S8(arrayList, i, baseFragment, resourcesProvider, dialogInterface, i2);
                                    }
                                });
                                return builder.create();
                            }

                            public static /* synthetic */ void $r8$lambda$FObFRL5WEdlClqr70Mr7_ZYI7S8(ArrayList arrayList, int i, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider, DialogInterface dialogInterface, int i2) {
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
                                final Utilities.Callback2 callback2 = new Utilities.Callback2() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda72
                                    @Override // org.telegram.messenger.Utilities.Callback2
                                    public final void run(Object obj, Object obj2) {
                                        AlertsCreator.m9847$r8$lambda$ry1PicWvO88M1rZD53DUmoPJM(i, j, photo, context, resourcesProvider, (Integer) obj, (String) obj2);
                                    }
                                };
                                BottomSheet.Builder builder = new BottomSheet.Builder(context, true, resourcesProvider);
                                builder.setTitle(LocaleController.getString(C2573R.string.ReportProfilePhoto), true);
                                final int[] iArr = {0, 6, 1, 2, 3, 4, 5, 100};
                                builder.setItems(new CharSequence[]{LocaleController.getString(C2573R.string.ReportChatSpam), LocaleController.getString(C2573R.string.ReportChatFakeAccount), LocaleController.getString(C2573R.string.ReportChatViolence), LocaleController.getString(C2573R.string.ReportChatChild), LocaleController.getString(C2573R.string.ReportChatIllegalDrugs), LocaleController.getString(C2573R.string.ReportChatPersonalDetails), LocaleController.getString(C2573R.string.ReportChatPornography), LocaleController.getString(C2573R.string.ReportChatOther)}, new int[]{C2573R.drawable.msg_clearcache, C2573R.drawable.msg_report_fake, C2573R.drawable.msg_report_violence, C2573R.drawable.msg_block2, C2573R.drawable.msg_report_drugs, C2573R.drawable.msg_report_personal, C2573R.drawable.msg_report_xxx, C2573R.drawable.msg_report_other}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda73
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i2) {
                                        AlertsCreator.m9843$r8$lambda$qtgXQWVVuTfjmRipXSim1E8P8(iArr, context, resourcesProvider, callback2, dialogInterface, i2);
                                    }
                                });
                                builder.show();
                            }

                            /* JADX INFO: renamed from: $r8$lambda$ry1PicW-vO88M1rZD53DUmoPJ-M, reason: not valid java name */
                            public static /* synthetic */ void m9847$r8$lambda$ry1PicWvO88M1rZD53DUmoPJM(int i, long j, TLRPC.Photo photo, Context context, Theme.ResourcesProvider resourcesProvider, Integer num, String str) {
                                TL_account.reportProfilePhoto reportprofilephoto = new TL_account.reportProfilePhoto();
                                reportprofilephoto.peer = MessagesController.getInstance(i).getInputPeer(j);
                                TLRPC.TL_inputPhoto tL_inputPhoto = new TLRPC.TL_inputPhoto();
                                tL_inputPhoto.id = photo.id;
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
                                BulletinFactory.of(Bulletin.BulletinWindow.make(context), resourcesProvider).createReportSent(resourcesProvider).show();
                            }

                            /* JADX INFO: renamed from: $r8$lambda$q-tgXQWVVuTfjmRipXSim1E8P-8, reason: not valid java name */
                            public static /* synthetic */ void m9843$r8$lambda$qtgXQWVVuTfjmRipXSim1E8P8(int[] iArr, Context context, Theme.ResourcesProvider resourcesProvider, final Utilities.Callback2 callback2, DialogInterface dialogInterface, int i) {
                                int i2 = iArr[i];
                                if (i2 == 100) {
                                    new ReportAlert(context, i2, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.57
                                        @Override // org.telegram.ui.Components.ReportAlert
                                        public void onSend(int i3, String str) {
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
                                return LocaleController.formatString("FloodWaitTime", C2573R.string.FloodWaitTime, pluralString);
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
                                builder.setTitle(LocaleController.getString(C2573R.string.AppName));
                                builder.setMessage(LocaleController.formatString("FloodWaitTime", C2573R.string.FloodWaitTime, pluralString));
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.OK), null);
                                baseFragment.showDialog(builder.create(), true, null);
                            }

                            public static void showSendMediaAlert(int i, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider) {
                                if (i == 0 || baseFragment == null || baseFragment.getParentActivity() == null) {
                                    return;
                                }
                                AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity(), resourcesProvider);
                                builder.setTitle(LocaleController.getString(C2573R.string.UnableForward));
                                if (i == 1) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedStickers));
                                } else if (i == 2) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedMedia));
                                } else if (i == 3) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedPolls));
                                } else if (i == 4) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedStickersAll));
                                } else if (i == 5) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedMediaAll));
                                } else if (i == 6) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedPollsAll));
                                } else if (i == 7) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedPrivacyVoiceMessages));
                                } else if (i == 8) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedPrivacyVideoMessages));
                                } else if (i == 9) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedVideoAll));
                                } else if (i == 10) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedPhotoAll));
                                } else if (i == 11) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedVideo));
                                } else if (i == 12) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedPhoto));
                                } else if (i == 13) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedVoiceAll));
                                } else if (i == 14) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedVoice));
                                } else if (i == 15) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedRoundAll));
                                } else if (i == 16) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedRound));
                                } else if (i == 17) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedDocumentsAll));
                                } else if (i == 18) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedDocuments));
                                } else if (i == 19) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedMusicAll));
                                } else if (i == 20) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedMusic));
                                } else if (i == 21) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedTodoAll));
                                } else if (i == 22) {
                                    builder.setMessage(LocaleController.getString(C2573R.string.ErrorSendRestrictedTodo));
                                }
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.OK), null);
                                baseFragment.showDialog(builder.create(), true, null);
                            }

                            public static void showAddUserAlert(TLRPC.TL_error tL_error, final BaseFragment baseFragment, boolean z, boolean z2, TLObject tLObject) {
                                AlertDialog.Builder builder;
                                if (tL_error == null || tL_error.code == 406 || tL_error.text == null || baseFragment == null || baseFragment.getParentActivity() == null) {
                                    return;
                                }
                                builder = new AlertDialog.Builder(baseFragment.getParentActivity());
                                builder.setTitle(LocaleController.getString(C2573R.string.AppName));
                                String str = tL_error.text;
                                str.getClass();
                                switch (str) {
                                    case "CHANNELS_ADMIN_LOCATED_TOO_MUCH":
                                        builder.setMessage(LocaleController.getString(C2573R.string.LocatedChannelsTooMuch));
                                        break;
                                    case "CHANNELS_ADMIN_PUBLIC_TOO_MUCH":
                                        builder.setMessage(LocaleController.getString(C2573R.string.PublicChannelsTooMuch));
                                        break;
                                    case "USERS_TOO_FEW":
                                        builder.setMessage(LocaleController.getString(C2573R.string.CreateGroupError));
                                        break;
                                    case "USER_BLOCKED":
                                    case "USER_BOT":
                                    case "USER_ID_INVALID":
                                        if (z) {
                                            builder.setMessage(LocaleController.getString(C2573R.string.ChannelUserCantAdd));
                                            break;
                                        } else {
                                            builder.setMessage(LocaleController.getString(C2573R.string.GroupUserCantAdd));
                                            break;
                                        }
                                        break;
                                    case "USER_RESTRICTED":
                                        builder.setMessage(LocaleController.getString(C2573R.string.UserRestricted));
                                        break;
                                    case "PEER_FLOOD":
                                        builder.setMessage(LocaleController.getString(C2573R.string.NobodyLikesSpam2));
                                        builder.setNegativeButton(LocaleController.getString(C2573R.string.MoreInfo), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda45
                                            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                            public final void onClick(AlertDialog alertDialog, int i) {
                                                BaseFragment baseFragment2 = baseFragment;
                                                MessagesController.getInstance(baseFragment2.getCurrentAccount()).openByUserName("spambot", baseFragment2, 1);
                                            }
                                        });
                                        break;
                                    case "BOTS_TOO_MUCH":
                                        if (z) {
                                            builder.setMessage(LocaleController.getString(C2573R.string.ChannelUserCantBot));
                                            break;
                                        } else {
                                            builder.setMessage(LocaleController.getString(C2573R.string.GroupUserCantBot));
                                            break;
                                        }
                                        break;
                                    case "USER_KICKED":
                                    case "CHAT_ADMIN_BAN_REQUIRED":
                                        if (tLObject instanceof TLRPC.TL_channels_inviteToChannel) {
                                            builder.setMessage(LocaleController.getString(C2573R.string.AddUserErrorBlacklisted));
                                            break;
                                        } else {
                                            builder.setMessage(LocaleController.getString(C2573R.string.AddAdminErrorBlacklisted));
                                            break;
                                        }
                                        break;
                                    case "YOU_BLOCKED_USER":
                                        builder.setMessage(LocaleController.getString(C2573R.string.YouBlockedUser));
                                        break;
                                    case "USER_ADMIN_INVALID":
                                        builder.setMessage(LocaleController.getString(C2573R.string.AddBannedErrorAdmin));
                                        break;
                                    case "USERS_TOO_MUCH":
                                        if (z) {
                                            builder.setMessage(LocaleController.getString(C2573R.string.ChannelUserAddLimit));
                                            break;
                                        } else {
                                            builder.setMessage(LocaleController.getString(C2573R.string.GroupUserAddLimit));
                                            break;
                                        }
                                        break;
                                    case "ADMINS_TOO_MUCH":
                                        if (z) {
                                            builder.setMessage(LocaleController.getString(C2573R.string.ChannelUserCantAdmin));
                                            break;
                                        } else {
                                            builder.setMessage(LocaleController.getString(C2573R.string.GroupUserCantAdmin));
                                            break;
                                        }
                                        break;
                                    case "CHANNELS_TOO_MUCH":
                                        builder.setTitle(LocaleController.getString(C2573R.string.ChannelTooMuchTitle));
                                        if (tLObject instanceof TLRPC.TL_channels_createChannel) {
                                            builder.setMessage(LocaleController.getString(C2573R.string.ChannelTooMuch));
                                            break;
                                        } else {
                                            builder.setMessage(LocaleController.getString(C2573R.string.ChannelTooMuchJoin));
                                            break;
                                        }
                                        break;
                                    case "USER_CHANNELS_TOO_MUCH":
                                        builder.setTitle(LocaleController.getString(C2573R.string.ChannelTooMuchTitle));
                                        builder.setMessage(LocaleController.getString(C2573R.string.UserChannelTooMuchJoin));
                                        break;
                                    case "USER_NOT_MUTUAL_CONTACT":
                                        if (z) {
                                            builder.setMessage(LocaleController.getString(C2573R.string.ChannelUserLeftError));
                                            break;
                                        } else {
                                            builder.setMessage(LocaleController.getString(C2573R.string.GroupUserLeftError));
                                            break;
                                        }
                                        break;
                                    case "CHAT_ADMIN_INVITE_REQUIRED":
                                        builder.setMessage(LocaleController.getString(C2573R.string.AddAdminErrorNotAMember));
                                        break;
                                    case "USER_PRIVACY_RESTRICTED":
                                        if (z2) {
                                            builder.setMessage(LocaleController.getString(C2573R.string.InviteToCommunityError));
                                            break;
                                        } else {
                                            if (z) {
                                                builder.setMessage(LocaleController.getString(C2573R.string.InviteToChannelError));
                                            } else {
                                                builder.setMessage(LocaleController.getString(C2573R.string.InviteToGroupError));
                                            }
                                            break;
                                        }
                                        break;
                                    case "USER_ALREADY_PARTICIPANT":
                                        builder.setTitle(LocaleController.getString(C2573R.string.VoipGroupVoiceChat));
                                        builder.setMessage(LocaleController.getString(C2573R.string.VoipGroupInviteAlreadyParticipant));
                                        break;
                                    default:
                                        builder.setMessage(LocaleController.getString(C2573R.string.ErrorOccurred) + "\n" + tL_error.text);
                                        break;
                                }
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.OK), null);
                                builder.show();
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
                                String[] strArr = {LocaleController.getString(C2573R.string.ColorRed), LocaleController.getString(C2573R.string.ColorOrange), LocaleController.getString(C2573R.string.ColorYellow), LocaleController.getString(C2573R.string.ColorGreen), LocaleController.getString(C2573R.string.ColorCyan), LocaleController.getString(C2573R.string.ColorBlue), LocaleController.getString(C2573R.string.ColorViolet), LocaleController.getString(C2573R.string.ColorPink), LocaleController.getString(C2573R.string.ColorWhite)};
                                final int[] iArr = {i2};
                                for (int i3 = 0; i3 < 9; i3++) {
                                    RadioColorCell radioColorCell = new RadioColorCell(activity, resourcesProvider);
                                    radioColorCell.setPadding(AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f), 0);
                                    radioColorCell.setTag(Integer.valueOf(i3));
                                    int i4 = TextColorCell.colors[i3];
                                    radioColorCell.setCheckColor(i4, i4);
                                    radioColorCell.setTextAndValue(strArr[i3], i2 == TextColorCell.colorsToSave[i3]);
                                    linearLayout.addView(radioColorCell);
                                    radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda145
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            AlertsCreator.$r8$lambda$sGT9GgdPY1J3zfkyfXfof3Kmyww(linearLayout, iArr, view);
                                        }
                                    });
                                }
                                AlertDialog.Builder builder = new AlertDialog.Builder(activity, resourcesProvider);
                                builder.setTitle(LocaleController.getString(C2573R.string.LedColor));
                                builder.setView(linearLayout);
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Set), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda146
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i5) {
                                        AlertsCreator.m9773$r8$lambda$3trxnD_UGCa40FbpnhoNVYDyGw(j, sharedPrefKey, iArr, j2, i, runnable, alertDialog, i5);
                                    }
                                });
                                builder.setNeutralButton(LocaleController.getString(C2573R.string.LedDisabled), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda147
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i5) {
                                        AlertsCreator.$r8$lambda$FzA0nC9sUQ0yyNhRCxcdBjafWKs(j, i, runnable, alertDialog, i5);
                                    }
                                });
                                if (j != 0) {
                                    builder.setNegativeButton(LocaleController.getString(C2573R.string.Default), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda148
                                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                        public final void onClick(AlertDialog alertDialog, int i5) {
                                            AlertsCreator.m9818$r8$lambda$cmvotEQ3apSffGEf_CESxB3SA(sharedPrefKey, runnable, alertDialog, i5);
                                        }
                                    });
                                }
                                return builder.create();
                            }

                            public static /* synthetic */ void $r8$lambda$sGT9GgdPY1J3zfkyfXfof3Kmyww(LinearLayout linearLayout, int[] iArr, View view) {
                                int childCount = linearLayout.getChildCount();
                                for (int i = 0; i < childCount; i++) {
                                    RadioColorCell radioColorCell = (RadioColorCell) linearLayout.getChildAt(i);
                                    radioColorCell.setChecked(radioColorCell == view, true);
                                }
                                iArr[0] = TextColorCell.colorsToSave[((Integer) view.getTag()).intValue()];
                            }

                            /* JADX INFO: renamed from: $r8$lambda$3trxnD-_UGCa40FbpnhoNVYDyGw, reason: not valid java name */
                            public static /* synthetic */ void m9773$r8$lambda$3trxnD_UGCa40FbpnhoNVYDyGw(long j, String str, int[] iArr, long j2, int i, Runnable runnable, AlertDialog alertDialog, int i2) {
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

                            public static /* synthetic */ void $r8$lambda$FzA0nC9sUQ0yyNhRCxcdBjafWKs(long j, int i, Runnable runnable, AlertDialog alertDialog, int i2) {
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

                            /* JADX INFO: renamed from: $r8$lambda$cm-votEQ3apSf-fGEf_CESxB3SA, reason: not valid java name */
                            public static /* synthetic */ void m9818$r8$lambda$cmvotEQ3apSffGEf_CESxB3SA(String str, Runnable runnable, AlertDialog alertDialog, int i) {
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
                                    strArr = new String[]{LocaleController.getString(C2573R.string.VibrationDefault), LocaleController.getString(C2573R.string.Short), LocaleController.getString(C2573R.string.Long), LocaleController.getString(C2573R.string.VibrationDisabled)};
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
                                    strArr = new String[]{LocaleController.getString(C2573R.string.VibrationDisabled), LocaleController.getString(C2573R.string.VibrationDefault), LocaleController.getString(C2573R.string.Short), LocaleController.getString(C2573R.string.Long), LocaleController.getString(C2573R.string.OnlyIfSilent)};
                                }
                                String[] strArr2 = strArr;
                                LinearLayout linearLayout = new LinearLayout(activity);
                                linearLayout.setOrientation(1);
                                final AlertDialog.Builder builder = new AlertDialog.Builder(activity, resourcesProvider);
                                int i3 = 0;
                                while (i3 < strArr2.length) {
                                    RadioColorCell radioColorCell = new RadioColorCell(activity, resourcesProvider);
                                    radioColorCell.setPadding(AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f), 0);
                                    radioColorCell.setTag(Integer.valueOf(i3));
                                    radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground, resourcesProvider), Theme.getColor(Theme.key_dialogRadioBackgroundChecked, resourcesProvider));
                                    radioColorCell.setTextAndValue(strArr2[i3], iArr[0] == i3 ? z : false);
                                    linearLayout.addView(radioColorCell);
                                    radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda153
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            AlertsCreator.$r8$lambda$QbyoH1oSRt3LziKEF7tW6ZMU3NA(iArr, j, str2, j2, builder, runnable, view);
                                        }
                                    });
                                    i3++;
                                    str2 = str;
                                    z = true;
                                }
                                builder.setTitle(LocaleController.getString(C2573R.string.Vibrate));
                                builder.setView(linearLayout);
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Cancel), null);
                                return builder.create();
                            }

                            public static /* synthetic */ void $r8$lambda$QbyoH1oSRt3LziKEF7tW6ZMU3NA(int[] iArr, long j, String str, long j2, AlertDialog.Builder builder, Runnable runnable, View view) {
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
                                String[] strArr = {LocaleController.getString(C2573R.string.SendLiveLocationFor15m), LocaleController.getString(C2573R.string.SendLiveLocationFor1h), LocaleController.getString(C2573R.string.SendLiveLocationFor8h), LocaleController.getString(C2573R.string.SendLiveLocationForever)};
                                final LinearLayout linearLayout = new LinearLayout(activity);
                                linearLayout.setOrientation(1);
                                linearLayout.setPadding(0, 0, 0, AndroidUtilities.dp(4.0f));
                                TextView textView = new TextView(activity);
                                if (z) {
                                    textView.setText(LocaleController.getString(C2573R.string.LiveLocationAlertExpandMessage));
                                } else if (user != null) {
                                    textView.setText(LocaleController.formatString(C2573R.string.LiveLocationAlertPrivate, UserObject.getFirstName(user)));
                                } else {
                                    textView.setText(LocaleController.getString(C2573R.string.LiveLocationAlertGroup));
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
                                    radioColorCell.setPadding(AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f), 0);
                                    radioColorCell.setTag(Integer.valueOf(i2));
                                    int i3 = Theme.key_radioBackground;
                                    int colorOrDefault = resourcesProvider != null ? resourcesProvider.getColorOrDefault(i3) : Theme.getColor(i3);
                                    int i4 = Theme.key_dialogRadioBackgroundChecked;
                                    radioColorCell.setCheckColor(colorOrDefault, resourcesProvider != null ? resourcesProvider.getColorOrDefault(i4) : Theme.getColor(i4));
                                    radioColorCell.setTextAndValue(strArr[i2], iArr[0] == i2);
                                    linearLayout.addView(radioColorCell);
                                    radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda94
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            AlertsCreator.m9820$r8$lambda$d_lz7LU7PzaRqYinKdwmUix4x0(iArr, linearLayout, view);
                                        }
                                    });
                                    i2++;
                                }
                                AlertDialog.Builder builder = new AlertDialog.Builder(activity, resourcesProvider);
                                if (z) {
                                    builder.setTitle(LocaleController.getString(C2573R.string.LiveLocationAlertExpandTitle));
                                } else {
                                    builder.setTopImage(new ShareLocationDrawable(activity, 0), resourcesProvider != null ? resourcesProvider.getColorOrDefault(Theme.key_dialogTopBackground) : Theme.getColor(Theme.key_dialogTopBackground));
                                }
                                builder.setView(linearLayout);
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.ShareFile), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda95
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i5) {
                                        AlertsCreator.$r8$lambda$UUjKrJ6ZjUf0_T77LY4OzU4PxIk(iArr, intCallback, alertDialog, i5);
                                    }
                                });
                                builder.setNeutralButton(LocaleController.getString(C2573R.string.Cancel), null);
                                return builder.create();
                            }

                            /* JADX INFO: renamed from: $r8$lambda$d_lz7LU7PzaRqYinK-dwmUix4x0, reason: not valid java name */
                            public static /* synthetic */ void m9820$r8$lambda$d_lz7LU7PzaRqYinKdwmUix4x0(int[] iArr, LinearLayout linearLayout, View view) {
                                iArr[0] = ((Integer) view.getTag()).intValue();
                                int childCount = linearLayout.getChildCount();
                                for (int i = 0; i < childCount; i++) {
                                    View childAt = linearLayout.getChildAt(i);
                                    if (childAt instanceof RadioColorCell) {
                                        ((RadioColorCell) childAt).setChecked(childAt == view, true);
                                    }
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$UUjKrJ6ZjUf0_T77LY4OzU4PxIk(int[] iArr, MessagesStorage.IntCallback intCallback, AlertDialog alertDialog, int i) {
                                int i2 = iArr[0];
                                intCallback.run(i2 == 0 ? 900 : i2 == 1 ? 3600 : i2 == 2 ? 28800 : Integer.MAX_VALUE);
                            }

                            public static AlertDialog.Builder createBackgroundLocationPermissionDialog(final Activity activity, TLRPC.User user, final Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
                                if (activity == null || Build.VERSION.SDK_INT < 29) {
                                    return null;
                                }
                                AlertDialog.Builder builder = new AlertDialog.Builder(activity, resourcesProvider);
                                String res = AndroidUtilities.readRes(Theme.getCurrentTheme().isDark() ? C2573R.raw.permission_map_dark : C2573R.raw.permission_map);
                                String res2 = AndroidUtilities.readRes(Theme.getCurrentTheme().isDark() ? C2573R.raw.permission_pin_dark : C2573R.raw.permission_pin);
                                FrameLayout frameLayout = new FrameLayout(activity);
                                frameLayout.setClipToOutline(true);
                                frameLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.AlertsCreator.58
                                    @Override // android.view.ViewOutlineProvider
                                    public void getOutline(View view, Outline outline) {
                                        outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight() + AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f));
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
                                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.PermissionBackgroundLocation)));
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Continue), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda141
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i) {
                                        AlertsCreator.m9779$r8$lambda$8l553duIzC18eYQPQBmGhbOFYc(activity, alertDialog, i);
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda142
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i) {
                                        runnable.run();
                                    }
                                });
                                return builder;
                            }

                            /* JADX INFO: renamed from: $r8$lambda$8l55-3duIzC18eYQPQBmGhbOFYc, reason: not valid java name */
                            public static /* synthetic */ void m9779$r8$lambda$8l553duIzC18eYQPQBmGhbOFYc(Activity activity, AlertDialog alertDialog, int i) {
                                if (activity.checkSelfPermission("android.permission.ACCESS_BACKGROUND_LOCATION") != 0) {
                                    activity.requestPermissions(new String[]{"android.permission.ACCESS_BACKGROUND_LOCATION"}, 30);
                                }
                            }

                            public static AlertDialog.Builder createGigagroupConvertAlert(Activity activity, AlertDialog.OnButtonClickListener onButtonClickListener, AlertDialog.OnButtonClickListener onButtonClickListener2) {
                                AlertDialog.Builder builder = new AlertDialog.Builder(activity);
                                String res = AndroidUtilities.readRes(C2573R.raw.gigagroup);
                                FrameLayout frameLayout = new FrameLayout(activity);
                                frameLayout.setClipToOutline(true);
                                frameLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.AlertsCreator.59
                                    @Override // android.view.ViewOutlineProvider
                                    public void getOutline(View view, Outline outline) {
                                        outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight() + AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f));
                                    }
                                });
                                View view = new View(activity);
                                view.setBackground(new BitmapDrawable(SvgHelper.getBitmap(res, AndroidUtilities.dp(320.0f), AndroidUtilities.dp(127.17949f), false)));
                                frameLayout.addView(view, LayoutHelper.createFrame(-1, -1.0f, 0, -1.0f, -1.0f, -1.0f, -1.0f));
                                builder.setTopView(frameLayout);
                                builder.setTopViewAspectRatio(0.3974359f);
                                builder.setTitle(LocaleController.getString(C2573R.string.GigagroupAlertTitle));
                                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.GigagroupAlertText)));
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.GigagroupAlertLearnMore), onButtonClickListener);
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), onButtonClickListener2);
                                return builder;
                            }

                            public static AlertDialog.Builder createDrawOverlayPermissionDialog(Activity activity, AlertDialog.OnButtonClickListener onButtonClickListener) {
                                return createDrawOverlayPermissionDialog(activity, onButtonClickListener, false);
                            }

                            public static AlertDialog.Builder createDrawOverlayPermissionDialog(final Activity activity, AlertDialog.OnButtonClickListener onButtonClickListener, final boolean z) {
                                AlertDialog.Builder builder = new AlertDialog.Builder(activity);
                                String res = AndroidUtilities.readRes(C2573R.raw.pip_video_request);
                                FrameLayout frameLayout = new FrameLayout(activity);
                                frameLayout.setBackground(new GradientDrawable(GradientDrawable.Orientation.BL_TR, new int[]{-14535089, -14527894}));
                                frameLayout.setClipToOutline(true);
                                frameLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.AlertsCreator.60
                                    @Override // android.view.ViewOutlineProvider
                                    public void getOutline(View view, Outline outline) {
                                        outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight() + AndroidUtilities.dp(6.0f), AndroidUtilities.dpf2(6.0f));
                                    }
                                });
                                View view = new View(activity);
                                view.setBackground(new BitmapDrawable(SvgHelper.getBitmap(res, AndroidUtilities.dp(320.0f), AndroidUtilities.dp(161.36752f), false)));
                                frameLayout.addView(view, LayoutHelper.createFrame(-1, -1.0f, 0, -1.0f, -1.0f, -1.0f, -1.0f));
                                builder.setTopView(frameLayout);
                                builder.setTitle(LocaleController.getString(C2573R.string.PermissionDrawAboveOtherAppsTitle));
                                builder.setMessage(LocaleController.getString(C2573R.string.PermissionDrawAboveOtherApps));
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Enable), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda83
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i) {
                                        AlertsCreator.m9846$r8$lambda$q_lygv1hZtxgkUkDmDxbeVm2nU(activity, z, alertDialog, i);
                                    }
                                });
                                builder.notDrawBackgroundOnTopView(true);
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), onButtonClickListener);
                                builder.setTopViewAspectRatio(0.50427353f);
                                return builder;
                            }

                            /* JADX INFO: renamed from: $r8$lambda$q_lygv1hZtxgkUkDm-DxbeVm2nU, reason: not valid java name */
                            public static /* synthetic */ void m9846$r8$lambda$q_lygv1hZtxgkUkDmDxbeVm2nU(Activity activity, boolean z, AlertDialog alertDialog, int i) {
                                if (activity != null) {
                                    if (z && PipUtils.checkPermissions(activity) == -2) {
                                        try {
                                            activity.startActivity(new Intent("android.settings.PICTURE_IN_PICTURE_SETTINGS", Uri.parse("package:" + activity.getPackageName())));
                                            return;
                                        } catch (Exception e) {
                                            FileLog.m898e(e);
                                        }
                                    }
                                    try {
                                        activity.startActivity(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + activity.getPackageName())));
                                    } catch (Exception e2) {
                                        FileLog.m898e(e2);
                                    }
                                }
                            }

                            public static AlertDialog.Builder createDrawOverlayGroupCallPermissionDialog(final Context context) {
                                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                                String res = AndroidUtilities.readRes(C2573R.raw.pip_voice_request);
                                final GroupCallPipButton groupCallPipButton = new GroupCallPipButton(context, 0, true);
                                groupCallPipButton.setImportantForAccessibility(2);
                                FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.61
                                    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
                                    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
                                        super.onLayout(z, i, i2, i3, i4);
                                        groupCallPipButton.setTranslationY((getMeasuredHeight() * 0.28f) - (groupCallPipButton.getMeasuredWidth() / 2.0f));
                                        groupCallPipButton.setTranslationX((getMeasuredWidth() * 0.82f) - (groupCallPipButton.getMeasuredWidth() / 2.0f));
                                    }
                                };
                                frameLayout.setBackground(new GradientDrawable(GradientDrawable.Orientation.BL_TR, new int[]{-15128003, -15118002}));
                                frameLayout.setClipToOutline(true);
                                frameLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.AlertsCreator.62
                                    @Override // android.view.ViewOutlineProvider
                                    public void getOutline(View view, Outline outline) {
                                        outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight() + AndroidUtilities.dp(6.0f), AndroidUtilities.dpf2(6.0f));
                                    }
                                });
                                View view = new View(context);
                                view.setBackground(new BitmapDrawable(SvgHelper.getBitmap(res, AndroidUtilities.dp(320.0f), AndroidUtilities.dp(184.61539f), false)));
                                frameLayout.addView(view, LayoutHelper.createFrame(-1, -1.0f, 0, -1.0f, -1.0f, -1.0f, -1.0f));
                                frameLayout.addView(groupCallPipButton, LayoutHelper.createFrame(117, 117.0f));
                                builder.setTopView(frameLayout);
                                builder.setTitle(LocaleController.getString(C2573R.string.PermissionDrawAboveOtherAppsGroupCallTitle));
                                builder.setMessage(LocaleController.getString(C2573R.string.PermissionDrawAboveOtherAppsGroupCall));
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Enable), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda49
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i) {
                                        AlertsCreator.m9787$r8$lambda$HmNIiD4N49JH4hKLdiE4jUULJ0(context, alertDialog, i);
                                    }
                                });
                                builder.notDrawBackgroundOnTopView(true);
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                builder.setTopViewAspectRatio(0.5769231f);
                                return builder;
                            }

                            /* JADX INFO: renamed from: $r8$lambda$HmNIiD4N49JH4hKLdiE4jUULJ-0, reason: not valid java name */
                            public static /* synthetic */ void m9787$r8$lambda$HmNIiD4N49JH4hKLdiE4jUULJ0(Context context, AlertDialog alertDialog, int i) {
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
                                        FileLog.m898e(e);
                                    }
                                }
                            }

                            public static AlertDialog.Builder createContactsPermissionDialog(Activity activity, final MessagesStorage.IntCallback intCallback) {
                                AlertDialog.Builder builder = new AlertDialog.Builder(activity);
                                builder.setTopAnimation(C2573R.raw.permission_request_contacts, 72, false, Theme.getColor(Theme.key_dialogTopBackground));
                                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.ContactsPermissionAlert)));
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.ContactsPermissionAlertContinue), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda10
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i) {
                                        intCallback.run(1);
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.ContactsPermissionAlertNotNow), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda11
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i) {
                                        intCallback.run(0);
                                    }
                                });
                                return builder;
                            }

                            public static Dialog createFreeSpaceDialog(final LaunchActivity launchActivity) {
                                AlertDialog.Builder builder = new AlertDialog.Builder(launchActivity);
                                builder.setTitle(LocaleController.getString(C2573R.string.LowDiskSpaceTitle));
                                builder.setMessage(LocaleController.getString(C2573R.string.LowDiskSpaceMessage2));
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.LowDiskSpaceButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda144
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i) {
                                        launchActivity.lambda$runLinkRequest$101(new CacheControlActivity());
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
                                    strArr = new String[]{LocaleController.getString(C2573R.string.NotificationsPrioritySettings), LocaleController.getString(C2573R.string.NotificationsPriorityLow), LocaleController.getString(C2573R.string.NotificationsPriorityMedium), LocaleController.getString(C2573R.string.NotificationsPriorityHigh), LocaleController.getString(C2573R.string.NotificationsPriorityUrgent)};
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
                                    strArr = new String[]{LocaleController.getString(C2573R.string.NotificationsPriorityLow), LocaleController.getString(C2573R.string.NotificationsPriorityMedium), LocaleController.getString(C2573R.string.NotificationsPriorityHigh), LocaleController.getString(C2573R.string.NotificationsPriorityUrgent)};
                                }
                                String[] strArr2 = strArr;
                                LinearLayout linearLayout = new LinearLayout(activity);
                                linearLayout.setOrientation(1);
                                final AlertDialog.Builder builder = new AlertDialog.Builder(activity, resourcesProvider);
                                int i5 = 0;
                                while (i5 < strArr2.length) {
                                    RadioColorCell radioColorCell = new RadioColorCell(activity, resourcesProvider);
                                    radioColorCell.setPadding(AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f), 0);
                                    radioColorCell.setTag(Integer.valueOf(i5));
                                    radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground, resourcesProvider), Theme.getColor(Theme.key_dialogRadioBackgroundChecked, resourcesProvider));
                                    radioColorCell.setTextAndValue(strArr2[i5], iArr[0] == i5 ? z : false);
                                    linearLayout.addView(radioColorCell);
                                    radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda158
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            AlertsCreator.$r8$lambda$SPCP6mcmSwdBAjRoQmtw8RM4xYg(iArr, j3, j2, i2, notificationsSettings, builder, runnable, view);
                                        }
                                    });
                                    i5++;
                                    j3 = j;
                                    i2 = i;
                                    z = true;
                                }
                                builder.setTitle(LocaleController.getString(C2573R.string.NotificationsImportance));
                                builder.setView(linearLayout);
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Cancel), null);
                                return builder.create();
                            }

                            public static /* synthetic */ void $r8$lambda$SPCP6mcmSwdBAjRoQmtw8RM4xYg(int[] iArr, long j, long j2, int i, SharedPreferences sharedPreferences, AlertDialog.Builder builder, Runnable runnable, View view) {
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
                                String[] strArr = {LocaleController.getString(C2573R.string.NoPopup), LocaleController.getString(C2573R.string.OnlyWhenScreenOn), LocaleController.getString(C2573R.string.OnlyWhenScreenOff), LocaleController.getString(C2573R.string.AlwaysShowPopup)};
                                LinearLayout linearLayout = new LinearLayout(activity);
                                linearLayout.setOrientation(1);
                                final AlertDialog.Builder builder = new AlertDialog.Builder(activity);
                                int i2 = 0;
                                while (i2 < 4) {
                                    RadioColorCell radioColorCell = new RadioColorCell(activity);
                                    radioColorCell.setTag(Integer.valueOf(i2));
                                    radioColorCell.setPadding(AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f), 0);
                                    radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
                                    radioColorCell.setTextAndValue(strArr[i2], iArr[0] == i2);
                                    linearLayout.addView(radioColorCell);
                                    radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda134
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            AlertsCreator.m9801$r8$lambda$SLSIM7GR4UWnibYXw6kOMgm2wA(iArr, i, builder, runnable, view);
                                        }
                                    });
                                    i2++;
                                }
                                builder.setTitle(LocaleController.getString(C2573R.string.PopupNotification));
                                builder.setView(linearLayout);
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Cancel), null);
                                return builder.create();
                            }

                            /* JADX INFO: renamed from: $r8$lambda$SLSIM7GR4UWn-ibYXw6kOMgm2wA, reason: not valid java name */
                            public static /* synthetic */ void m9801$r8$lambda$SLSIM7GR4UWnibYXw6kOMgm2wA(int[] iArr, int i, AlertDialog.Builder builder, Runnable runnable, View view) {
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
                                    radioColorCell.setPadding(AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f), 0);
                                    radioColorCell.setTag(Integer.valueOf(i2));
                                    radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
                                    radioColorCell.setTextAndValue(strArr[i2], i == i2);
                                    linearLayout.addView(radioColorCell);
                                    radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda143
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            AlertsCreator.$r8$lambda$ehNRQ3J8pcY4QAlewwMylCwG58o(builder, onClickListener, view);
                                        }
                                    });
                                    i2++;
                                }
                                builder.setTitle(str);
                                builder.setView(linearLayout);
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Cancel), null);
                                return builder.create();
                            }

                            public static /* synthetic */ void $r8$lambda$ehNRQ3J8pcY4QAlewwMylCwG58o(AlertDialog.Builder builder, DialogInterface.OnClickListener onClickListener, View view) {
                                int iIntValue = ((Integer) view.getTag()).intValue();
                                builder.getDismissRunnable().run();
                                onClickListener.onClick(null, iIntValue);
                            }

                            public static AlertDialog.Builder createTTLAlert(Context context, final TLRPC.EncryptedChat encryptedChat, Theme.ResourcesProvider resourcesProvider) {
                                AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
                                builder.setTitle(LocaleController.getString(C2573R.string.MessageLifetime));
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
                                numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda47
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i2) {
                                        return AlertsCreator.$r8$lambda$xZJrrEX07ZhPwQAjjR70z5CqeU8(i2);
                                    }
                                });
                                builder.setView(numberPicker);
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Done), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda48
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i2) {
                                        AlertsCreator.m9826$r8$lambda$hMCyO_T3Eby2CzKyFOpV8zJgo(encryptedChat, numberPicker, alertDialog, i2);
                                    }
                                });
                                return builder;
                            }

                            public static /* synthetic */ String $r8$lambda$xZJrrEX07ZhPwQAjjR70z5CqeU8(int i) {
                                if (i == 0) {
                                    return LocaleController.getString(C2573R.string.ShortMessageLifetimeForever);
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

                            /* JADX INFO: renamed from: $r8$lambda$hMC-yO_T3Eby2CzK-yFOpV8zJgo, reason: not valid java name */
                            public static /* synthetic */ void m9826$r8$lambda$hMCyO_T3Eby2CzKyFOpV8zJgo(TLRPC.EncryptedChat encryptedChat, NumberPicker numberPicker, AlertDialog alertDialog, int i) {
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
                                        accountSelectCell.setPadding(AndroidUtilities.dp(14.0f), 0, AndroidUtilities.dp(14.0f), 0);
                                        accountSelectCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                                        linearLayout.addView(accountSelectCell, LayoutHelper.createLinear(-1, 50));
                                        accountSelectCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda31
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                AlertsCreator.$r8$lambda$_B9Ye9x6KLpyJDQ6J4AJrw1n6fI(alertDialogArr, dismissRunnable, accountSelectDelegate, view);
                                            }
                                        });
                                    }
                                }
                                builder.setTitle(LocaleController.getString(C2573R.string.SelectAccount));
                                builder.setView(linearLayout);
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Cancel), null);
                                AlertDialog alertDialogCreate = builder.create();
                                alertDialogArr[0] = alertDialogCreate;
                                return alertDialogCreate;
                            }

                            public static /* synthetic */ void $r8$lambda$_B9Ye9x6KLpyJDQ6J4AJrw1n6fI(AlertDialog[] alertDialogArr, Runnable runnable, AccountSelectDelegate accountSelectDelegate, View view) {
                                AlertDialog alertDialog = alertDialogArr[0];
                                if (alertDialog != null) {
                                    alertDialog.setOnDismissListener(null);
                                }
                                runnable.run();
                                accountSelectDelegate.didSelectAccount(((AccountSelectCell) view).getAccountNumber());
                            }

                            /* JADX WARN: Multi-variable type inference failed */
                            /* JADX WARN: Removed duplicated region for block: B:102:0x0249  */
                            /* JADX WARN: Removed duplicated region for block: B:114:0x027f  */
                            /* JADX WARN: Removed duplicated region for block: B:116:0x0283  */
                            /* JADX WARN: Removed duplicated region for block: B:117:0x028a  */
                            /* JADX WARN: Removed duplicated region for block: B:124:0x02a0  */
                            /* JADX WARN: Removed duplicated region for block: B:128:0x02ae  */
                            /* JADX WARN: Removed duplicated region for block: B:208:0x04eb  */
                            /* JADX WARN: Removed duplicated region for block: B:309:0x069b  */
                            /* JADX WARN: Removed duplicated region for block: B:313:0x06c2  */
                            /* JADX WARN: Removed duplicated region for block: B:318:0x06e8  */
                            /* JADX WARN: Removed duplicated region for block: B:322:0x0700  */
                            /* JADX WARN: Removed duplicated region for block: B:356:0x07b8  */
                            /* JADX WARN: Removed duplicated region for block: B:35:0x0075  */
                            /* JADX WARN: Removed duplicated region for block: B:370:0x07f6  */
                            /* JADX WARN: Removed duplicated region for block: B:394:0x0856  */
                            /* JADX WARN: Removed duplicated region for block: B:395:0x088b  */
                            /* JADX WARN: Removed duplicated region for block: B:406:0x091e  */
                            /* JADX WARN: Removed duplicated region for block: B:409:0x0930  */
                            /* JADX WARN: Removed duplicated region for block: B:438:0x0232 A[SYNTHETIC] */
                            /* JADX WARN: Removed duplicated region for block: B:440:? A[RETURN, SYNTHETIC] */
                            /* JADX WARN: Removed duplicated region for block: B:71:0x01ac  */
                            /* JADX WARN: Removed duplicated region for block: B:82:0x01e1  */
                            /* JADX WARN: Removed duplicated region for block: B:97:0x0229  */
                            /* JADX WARN: Type inference failed for: r0v57 */
                            /* JADX WARN: Type inference failed for: r0v58, types: [int] */
                            /* JADX WARN: Type inference failed for: r0v71 */
                            /* JADX WARN: Type inference failed for: r15v17 */
                            /* JADX WARN: Type inference failed for: r15v18, types: [int] */
                            /* JADX WARN: Type inference failed for: r15v25 */
                            /* JADX WARN: Type inference failed for: r23v8 */
                            /* JADX WARN: Type inference failed for: r2v103 */
                            /* JADX WARN: Type inference failed for: r2v124 */
                            /* JADX WARN: Type inference failed for: r2v125 */
                            /* JADX WARN: Type inference failed for: r2v126 */
                            /* JADX WARN: Type inference failed for: r2v127 */
                            /* JADX WARN: Type inference failed for: r2v2 */
                            /* JADX WARN: Type inference failed for: r2v31 */
                            /* JADX WARN: Type inference failed for: r2v76 */
                            /* JADX WARN: Type inference failed for: r2v79 */
                            /* JADX WARN: Type inference failed for: r2v86 */
                            /* JADX WARN: Type inference failed for: r2v96 */
                            /* JADX WARN: Type inference failed for: r3v32, types: [java.util.ArrayList] */
                            /* JADX WARN: Type inference failed for: r3v34 */
                            /* JADX WARN: Type inference failed for: r3v36 */
                            /* JADX WARN: Type inference failed for: r3v58 */
                            /* JADX WARN: Type inference failed for: r42v0 */
                            /* JADX WARN: Type inference failed for: r43v0, types: [org.telegram.ui.ActionBar.BaseFragment] */
                            /* JADX WARN: Type inference failed for: r8v17 */
                            /* JADX WARN: Type inference failed for: r8v18 */
                            /* JADX WARN: Type inference failed for: r8v19, types: [int] */
                            /* JADX WARN: Type inference failed for: r8v20 */
                            /* JADX WARN: Type inference failed for: r8v21, types: [int] */
                            /* JADX WARN: Type inference failed for: r8v39 */
                            /* JADX WARN: Type inference failed for: r8v40 */
                            /* JADX WARN: Type inference failed for: r8v41 */
                            /* JADX WARN: Type inference failed for: r9v17 */
                            /* JADX WARN: Type inference failed for: r9v18, types: [int] */
                            /* JADX WARN: Type inference failed for: r9v26 */
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                            */
                            public static void createDeleteMessagesAlert(final BaseFragment baseFragment, final TLRPC.User user, final TLRPC.Chat chat, final TLRPC.EncryptedChat encryptedChat, final TLRPC.ChatFull chatFull, final long j, final MessageObject messageObject, final SparseArray<MessageObject>[] sparseArrayArr, final MessageObject.GroupedMessages groupedMessages, final int i, final int i2, TLRPC.ChannelParticipant[] channelParticipantArr, final Runnable runnable, final Runnable runnable2, final Theme.ResourcesProvider resourcesProvider) {
                                Activity parentActivity;
                                int size;
                                TLRPC.Chat chat2;
                                long j2;
                                long jMakeEncryptedDialogId;
                                boolean z;
                                boolean z2;
                                boolean z3;
                                boolean z4;
                                boolean z5;
                                int i3;
                                boolean z6;
                                boolean z7;
                                int i4;
                                boolean z8;
                                boolean z9;
                                long j3;
                                int i5;
                                int i6;
                                ?? r2;
                                boolean z10;
                                int i7;
                                boolean z11;
                                boolean z12;
                                int i8;
                                TLRPC.MessageAction messageAction;
                                ?? r22;
                                boolean z13;
                                final boolean z14;
                                int i9;
                                AlertDialog.Builder builder;
                                int i10;
                                int i11;
                                String str;
                                TextView textView;
                                TextView textView2;
                                ?? r23;
                                int i12;
                                boolean z15;
                                TLRPC.MessageAction messageAction2;
                                int i13;
                                int i14;
                                TLRPC.Message message;
                                boolean z16 = false;
                                boolean z17 = i2 == 1;
                                boolean z18 = i2 == 3;
                                if (baseFragment == 0) {
                                    return;
                                }
                                if ((user == null && chat == null && encryptedChat == null) || (parentActivity = baseFragment.getParentActivity()) == null) {
                                    return;
                                }
                                final int currentAccount = baseFragment.getCurrentAccount();
                                AlertDialog.Builder builder2 = new AlertDialog.Builder(parentActivity, resourcesProvider);
                                builder2.setDimAlpha(runnable2 != null ? 0.5f : 0.6f);
                                if (groupedMessages != null) {
                                    size = groupedMessages.messages.size();
                                } else {
                                    size = messageObject != null ? 1 : sparseArrayArr[0].size() + sparseArrayArr[1].size();
                                }
                                if (encryptedChat != null) {
                                    jMakeEncryptedDialogId = DialogObject.makeEncryptedDialogId(encryptedChat.id);
                                } else if (user != null) {
                                    jMakeEncryptedDialogId = user.id;
                                } else {
                                    chat2 = chat;
                                    j2 = -chat2.id;
                                    if (z17) {
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
                                            String string = LocaleController.formatString(C2573R.string.MessageScheduledRepeatDeletePostponeSeconds, Integer.valueOf(i13));
                                            if (i13 == 31536000) {
                                                string = LocaleController.getString(C2573R.string.MessageScheduledRepeatDeletePostponeYear);
                                            } else if (i13 >= 2592000) {
                                                string = LocaleController.formatPluralString("MessageScheduledRepeatDeletePostponeMonths", i13 / 2592000, new Object[0]);
                                            } else if (i13 >= 604800) {
                                                string = LocaleController.formatPluralString("MessageScheduledRepeatDeletePostponeWeeks", i13 / 604800, new Object[0]);
                                            } else if (i13 >= 86400) {
                                                string = LocaleController.formatPluralString("MessageScheduledRepeatDeletePostponeDays", i13 / 86400, new Object[0]);
                                            }
                                            String str2 = string;
                                            AlertDialog.Builder message2 = new AlertDialog.Builder(parentActivity, resourcesProvider).setTitle(LocaleController.getString(C2573R.string.MessageScheduledRepeatDeleteTitle)).setMessage(LocaleController.getString(C2573R.string.MessageScheduledRepeatDeleteText));
                                            final int i15 = i13;
                                            final int i16 = i14;
                                            final long j4 = j2;
                                            final boolean z19 = z18;
                                            message2.setNegativeButton(str2, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda96
                                                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                                public final void onClick(AlertDialog alertDialog, int i17) {
                                                    AlertsCreator.m9810$r8$lambda$V2mFkNc8sl91jWWCM4aHt1POOc(groupedMessages, currentAccount, baseFragment, i16, i15, messageObject, alertDialog, i17);
                                                }
                                            }).setNeutralButton(LocaleController.getString(C2573R.string.MessageScheduledRepeatDeleteAll), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda103
                                                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                                public final void onClick(AlertDialog alertDialog, int i17) {
                                                    AlertsCreator.$r8$lambda$45Z4lyQdMXhFG_phvhoy7rYTsPo(j4, z19, currentAccount, messageObject, groupedMessages, encryptedChat, j, i, i2, sparseArrayArr, runnable, alertDialog, i17);
                                                }
                                            }).setPositiveButton(LocaleController.getString(C2573R.string.Cancel), null).makeRed(-2).makeRed(-3).setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda104
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    AlertsCreator.$r8$lambda$5W5CEmYNNvBTNCjPrtcFRLDjjOU(runnable2, dialogInterface);
                                                }
                                            }).show();
                                            return;
                                        }
                                    }
                                    final Runnable runnable3 = runnable2;
                                    long j5 = j2;
                                    boolean z20 = z18;
                                    final int i17 = currentAccount;
                                    int currentTime = ConnectionsManager.getInstance(i17).getCurrentTime();
                                    MessagesController.getInstance(i17).config.starsSuggestedPostAgeMin.get(TimeUnit.SECONDS);
                                    if (messageObject == null) {
                                        z2 = !messageObject.isDice() || Math.abs(currentTime - messageObject.messageOwner.date) > 86400;
                                        if (messageObject.isPaidSuggestedPostProtected()) {
                                            TLRPC.Message message3 = messageObject.messageOwner;
                                            z = false;
                                            z16 = message3.paid_suggested_post_stars;
                                            z4 = z20;
                                            z3 = message3.paid_suggested_post_ton;
                                        } else {
                                            z = false;
                                            z4 = z20;
                                            z3 = false;
                                        }
                                    } else {
                                        z = false;
                                        z2 = false;
                                        int i18 = 0;
                                        z16 = false;
                                        z3 = false;
                                        while (i18 < 2) {
                                            int i19 = 0;
                                            while (true) {
                                                z5 = z2;
                                                if (i19 < sparseArrayArr[i18].size()) {
                                                    MessageObject messageObjectValueAt = sparseArrayArr[i18].valueAt(i19);
                                                    if (messageObjectValueAt.isDice()) {
                                                        i3 = i19;
                                                        z6 = z20;
                                                        if (Math.abs(currentTime - messageObjectValueAt.messageOwner.date) > 86400) {
                                                        }
                                                        if (!messageObjectValueAt.isPaidSuggestedPostProtected()) {
                                                            TLRPC.Message message4 = messageObjectValueAt.messageOwner;
                                                            z16 |= message4.paid_suggested_post_stars;
                                                            z3 |= message4.paid_suggested_post_ton;
                                                        }
                                                        i19 = i3 + 1;
                                                        z2 = z5;
                                                        z20 = z6;
                                                    } else {
                                                        i3 = i19;
                                                        z6 = z20;
                                                    }
                                                    z5 = true;
                                                    if (!messageObjectValueAt.isPaidSuggestedPostProtected()) {
                                                    }
                                                    i19 = i3 + 1;
                                                    z2 = z5;
                                                    z20 = z6;
                                                }
                                            }
                                            i18++;
                                            z2 = z5;
                                            z20 = z20;
                                        }
                                        z4 = z20;
                                    }
                                    if (groupedMessages != null) {
                                        for (?? r0 = z; r0 < groupedMessages.messages.size(); r0++) {
                                            MessageObject messageObject2 = groupedMessages.messages.get(r0);
                                            if (messageObject2.isPaidSuggestedPostProtected()) {
                                                TLRPC.Message message5 = messageObject2.messageOwner;
                                                boolean z21 = message5.paid_suggested_post_stars | z16;
                                                z3 |= message5.paid_suggested_post_ton;
                                                z16 = z21;
                                            }
                                        }
                                    }
                                    final boolean[] zArr = new boolean[1];
                                    z7 = (user == null && MessagesController.getInstance(i17).canRevokePmInbox) ? true : z;
                                    if (user == null) {
                                        i4 = MessagesController.getInstance(i17).revokeTimePmLimit;
                                    } else {
                                        i4 = MessagesController.getInstance(i17).revokeTimeLimit;
                                    }
                                    if (encryptedChat == null || user == null || !z7) {
                                        z8 = z7;
                                    } else {
                                        z8 = z7;
                                        if (i4 == Integer.MAX_VALUE) {
                                            z9 = true;
                                        }
                                        boolean z22 = z2;
                                        if (chat2 != null && chat2.megagroup && !z17 && !z4) {
                                            ArrayList arrayList = new ArrayList();
                                            if (messageObject != null) {
                                                TLRPC.MessageAction messageAction3 = messageObject.messageOwner.action;
                                                j3 = j5;
                                                if (messageAction3 == null || (messageAction3 instanceof TLRPC.TL_messageActionEmpty) || (messageAction3 instanceof TLRPC.TL_messageActionChatDeleteUser) || (messageAction3 instanceof TLRPC.TL_messageActionChatJoinedByLink) || (messageAction3 instanceof TLRPC.TL_messageActionChatAddUser)) {
                                                    if (groupedMessages != null) {
                                                        arrayList.addAll(groupedMessages.messages);
                                                    } else {
                                                        arrayList.add(messageObject);
                                                    }
                                                }
                                                r23 = (!messageObject.isSendError() && messageObject.getDialogId() == j && ((messageAction2 = messageObject.messageOwner.action) == null || (messageAction2 instanceof TLRPC.TL_messageActionEmpty)) && messageObject.isOut() && currentTime - messageObject.messageOwner.date <= i4) ? 1 : z;
                                            } else {
                                                j3 = j5;
                                                ?? r8 = z;
                                                int i20 = 1;
                                                while (i20 >= 0) {
                                                    ?? r82 = r8;
                                                    for (?? r9 = z; r9 < sparseArrayArr[i20].size(); r9++) {
                                                        MessageObject messageObjectValueAt2 = sparseArrayArr[i20].valueAt(r9);
                                                        if (i20 == 1 && messageObjectValueAt2.isOut()) {
                                                            TLRPC.Message message6 = messageObjectValueAt2.messageOwner;
                                                            i12 = i20;
                                                            if (message6.action == null && currentTime - message6.date <= i4) {
                                                                r82++;
                                                            }
                                                        } else {
                                                            i12 = i20;
                                                        }
                                                        arrayList.add(messageObjectValueAt2);
                                                        i20 = i12;
                                                        r82 = r82;
                                                    }
                                                    i20--;
                                                    r8 = r82;
                                                }
                                                r23 = r8;
                                            }
                                            final long clientUserId = UserConfig.getInstance(i17).getClientUserId();
                                            ArrayList arrayList2 = (ArrayList) arrayList.stream().filter(new Predicate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda105
                                                @Override // java.util.function.Predicate
                                                public final boolean test(Object obj) {
                                                    return AlertsCreator.m9833$r8$lambda$mGhy7kurAYvV_xmmFNKDR0fsYU((MessageObject) obj);
                                                }
                                            }).mapToLong(new ToLongFunction() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda106
                                                @Override // java.util.function.ToLongFunction
                                                public final long applyAsLong(Object obj) {
                                                    return ((MessageObject) obj).getFromChatId();
                                                }
                                            }).distinct().mapToObj(new LongFunction() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda107
                                                @Override // java.util.function.LongFunction
                                                public final Object apply(long j6) {
                                                    return AlertsCreator.$r8$lambda$pNxJkZUzDcm_ipHqmdNkMgS0GpY(i17, j6);
                                                }
                                            }).filter(new Predicate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda108
                                                @Override // java.util.function.Predicate
                                                public final boolean test(Object obj) {
                                                    return Objects.nonNull((TLObject) obj);
                                                }
                                            }).filter(new Predicate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda109
                                                @Override // java.util.function.Predicate
                                                public final boolean test(Object obj) {
                                                    return AlertsCreator.m9789$r8$lambda$JGVieBwip74p0UURCTN0YHu3po(clientUserId, (TLObject) obj);
                                                }
                                            }).collect(Collectors.toCollection(new ExportMapper$$ExternalSyntheticLambda2()));
                                            if (!arrayList2.isEmpty()) {
                                                if (channelParticipantArr == null) {
                                                    final AlertDialog[] alertDialogArr = {new AlertDialog(parentActivity, 3)};
                                                    final int size2 = arrayList2.size();
                                                    final TLRPC.ChannelParticipant[] channelParticipantArr2 = new TLRPC.ChannelParticipant[size2];
                                                    final int[] iArr = new int[size2];
                                                    final int[] iArr2 = new int[1];
                                                    ?? r15 = z;
                                                    ?? r3 = arrayList2;
                                                    while (r15 < size2) {
                                                        TLRPC.TL_channels_getParticipant tL_channels_getParticipant = new TLRPC.TL_channels_getParticipant();
                                                        tL_channels_getParticipant.channel = MessagesController.getInputChannel(chat);
                                                        tL_channels_getParticipant.participant = MessagesController.getInputPeer((TLObject) r3.get(r15));
                                                        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(i17);
                                                        ?? r232 = r3;
                                                        final Runnable runnable4 = runnable3;
                                                        ?? r32 = r15;
                                                        final int i21 = r32 == true ? 1 : 0;
                                                        RequestDelegate requestDelegate = new RequestDelegate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda110
                                                            @Override // org.telegram.tgnet.RequestDelegate
                                                            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda170
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        AlertsCreator.$r8$lambda$VDlqP2SkH_1STo7Y03mck4jyQhY(iArr, iArr, i, tLObject, channelParticipantArr, i, alertDialogArr, baseFragment, user, chat, encryptedChat, chatFull, j, messageObject, sparseArrayArr, groupedMessages, i, i, runnable, runnable, resourcesProvider);
                                                                    }
                                                                });
                                                            }
                                                        };
                                                        int[] iArr3 = iArr;
                                                        iArr3[r32 == true ? 1 : 0] = connectionsManager.sendRequest(tL_channels_getParticipant, requestDelegate);
                                                        int i22 = (r32 == true ? 1 : 0) + 1;
                                                        runnable3 = runnable2;
                                                        alertDialogArr = alertDialogArr;
                                                        size2 = size2;
                                                        iArr = iArr3;
                                                        iArr2 = iArr2;
                                                        i17 = i17;
                                                        r3 = r232;
                                                        r15 = i22;
                                                    }
                                                    final int[] iArr4 = iArr;
                                                    final AlertDialog[] alertDialogArr2 = alertDialogArr;
                                                    final int i23 = i17;
                                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda97
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            AlertsCreator.$r8$lambda$P8NMOUvbwYK2xHrms1N6B4BMlg0(alertDialogArr2, iArr4, i23, runnable2, baseFragment);
                                                        }
                                                    }, 1000L);
                                                    return;
                                                }
                                                DeleteMessagesBottomSheet deleteMessagesBottomSheet = new DeleteMessagesBottomSheet(baseFragment, chat, arrayList, arrayList2, channelParticipantArr, j, i, i2, false, runnable);
                                                if (runnable3 != null) {
                                                    deleteMessagesBottomSheet.setOnHideListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda98
                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                            runnable3.run();
                                                        }
                                                    });
                                                }
                                                deleteMessagesBottomSheet.show();
                                                return;
                                            }
                                            i5 = i17;
                                            if (r23 <= 0 || !z22) {
                                                z15 = false;
                                            } else {
                                                FrameLayout frameLayout = new FrameLayout(parentActivity);
                                                CheckBoxCell checkBoxCell = new CheckBoxCell(parentActivity, 1, resourcesProvider);
                                                checkBoxCell.setBackgroundDrawable(Theme.getSelectorDrawable(z));
                                                boolean z23 = z;
                                                checkBoxCell.setText(LocaleController.getString(C2573R.string.DeleteMessagesOption), _UrlKt.FRAGMENT_ENCODE_SET, z23, z23);
                                                checkBoxCell.setPadding(LocaleController.isRTL ? AndroidUtilities.dp(16.0f) : AndroidUtilities.dp(8.0f), 0, LocaleController.isRTL ? AndroidUtilities.dp(8.0f) : AndroidUtilities.dp(16.0f), 0);
                                                frameLayout.addView(checkBoxCell, LayoutHelper.createFrame(-1, 48.0f, 51, 0.0f, 0.0f, 0.0f, 0.0f));
                                                zArr[0] = true;
                                                checkBoxCell.setChecked(true, true);
                                                checkBoxCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda99
                                                    @Override // android.view.View.OnClickListener
                                                    public final void onClick(View view) {
                                                        AlertsCreator.$r8$lambda$VN4EyzPPJk4uwHr1LTUCyqxjV80(zArr, view);
                                                    }
                                                });
                                                builder2.setView(frameLayout);
                                                builder2.setCustomViewOffset(9);
                                                z15 = true;
                                            }
                                            z10 = z15;
                                            i6 = 1;
                                            r2 = r23;
                                        } else {
                                            j3 = j5;
                                            i5 = i17;
                                            if (!z17 || z4 || ChatObject.isChannel(chat) || encryptedChat != null) {
                                                i6 = 1;
                                                r2 = 0;
                                                z10 = false;
                                            } else {
                                                if ((user == null || user.id == UserConfig.getInstance(i5).getClientUserId() || (user.bot && !user.support)) && chat == null) {
                                                    i7 = 0;
                                                    z11 = false;
                                                } else if (messageObject != null) {
                                                    int i24 = (messageObject.isSendError() || !((messageAction = messageObject.messageOwner.action) == null || (messageAction instanceof TLRPC.TL_messageActionEmpty) || (messageAction instanceof TLRPC.TL_messageActionPhoneCall) || (messageAction instanceof TLRPC.TL_messageActionPinMessage) || (messageAction instanceof TLRPC.TL_messageActionGeoProximityReached) || (messageAction instanceof TLRPC.TL_messageActionSetChatTheme)) || (!(messageObject.isOut() || z8 || ChatObject.hasAdminRights(chat)) || currentTime - messageObject.messageOwner.date > i4)) ? 0 : 1;
                                                    z11 = !messageObject.isOut();
                                                    i7 = i24;
                                                } else {
                                                    int i25 = 1;
                                                    boolean z24 = false;
                                                    int i26 = 0;
                                                    while (i25 >= 0) {
                                                        int i27 = 0;
                                                        while (true) {
                                                            i8 = i25;
                                                            if (i27 < sparseArrayArr[i25].size()) {
                                                                MessageObject messageObjectValueAt3 = sparseArrayArr[i8].valueAt(i27);
                                                                int i28 = i27;
                                                                TLRPC.MessageAction messageAction4 = messageObjectValueAt3.messageOwner.action;
                                                                if ((messageAction4 == null || (messageAction4 instanceof TLRPC.TL_messageActionEmpty) || (messageAction4 instanceof TLRPC.TL_messageActionPhoneCall) || (messageAction4 instanceof TLRPC.TL_messageActionPinMessage) || (messageAction4 instanceof TLRPC.TL_messageActionGeoProximityReached)) && ((messageObjectValueAt3.isOut() || z8 || (chat != null && ChatObject.canBlockUsers(chat))) && currentTime - messageObjectValueAt3.messageOwner.date <= i4)) {
                                                                    i26++;
                                                                    if (!z24 && !messageObjectValueAt3.isOut()) {
                                                                        z24 = true;
                                                                    }
                                                                }
                                                                i27 = i28 + 1;
                                                                i25 = i8;
                                                            }
                                                        }
                                                        i25 = i8 - 1;
                                                    }
                                                    z11 = z24;
                                                    i7 = i26;
                                                }
                                                if (i7 <= 0 || !z22 || (user != null && UserObject.isDeleted(user))) {
                                                    i6 = 1;
                                                    z12 = z11;
                                                    z10 = false;
                                                    r22 = i7;
                                                } else {
                                                    FrameLayout frameLayout2 = new FrameLayout(parentActivity);
                                                    CheckBoxCell checkBoxCell2 = new CheckBoxCell(parentActivity, 1, resourcesProvider);
                                                    checkBoxCell2.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                                                    if (z9) {
                                                        checkBoxCell2.setText(LocaleController.formatString("DeleteMessagesOptionAlso", C2573R.string.DeleteMessagesOptionAlso, UserObject.getFirstName(user)), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                                                    } else if (chat == null || (!z11 && i7 != size)) {
                                                        checkBoxCell2.setText(LocaleController.getString(C2573R.string.DeleteMessagesOption), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                                                    } else {
                                                        checkBoxCell2.setText(LocaleController.getString(C2573R.string.DeleteForAll), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                                                    }
                                                    checkBoxCell2.setPadding(LocaleController.isRTL ? AndroidUtilities.dp(16.0f) : AndroidUtilities.dp(8.0f), 0, LocaleController.isRTL ? AndroidUtilities.dp(8.0f) : AndroidUtilities.dp(16.0f), 0);
                                                    frameLayout2.addView(checkBoxCell2, LayoutHelper.createFrame(-1, 48.0f, 51, 0.0f, 0.0f, 0.0f, 0.0f));
                                                    zArr[0] = true;
                                                    checkBoxCell2.setChecked(true, true);
                                                    checkBoxCell2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda100
                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view) {
                                                            AlertsCreator.$r8$lambda$RiLWelADiOfH29U0DcSv7bM4Zys(zArr, view);
                                                        }
                                                    });
                                                    builder2.setView(frameLayout2);
                                                    builder2.setCustomViewOffset(9);
                                                    i6 = 1;
                                                    z10 = true;
                                                    z12 = z11;
                                                    r22 = i7;
                                                }
                                                ?? r42 = r22;
                                                final int i29 = i5;
                                                int i30 = size;
                                                z13 = z16;
                                                z14 = z4;
                                                final long j6 = j3;
                                                int i31 = i6;
                                                AlertDialog.OnButtonClickListener onButtonClickListener = new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda101
                                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                                    public final void onClick(AlertDialog alertDialog, int i32) {
                                                        AlertsCreator.m9825$r8$lambda$gcJ6NSv7L58jI0sH0iFXd2WyTU(j6, z14, i29, messageObject, groupedMessages, encryptedChat, j, i, zArr, i2, sparseArrayArr, runnable, alertDialog, i32);
                                                    }
                                                };
                                                if (z14) {
                                                    AlertDialog.Builder builder3 = builder2;
                                                    i9 = i30;
                                                    if (i9 != i31) {
                                                        builder3.setTitle(LocaleController.formatString(C2573R.string.DeleteMessagesTitle, LocaleController.formatPluralString("messages", i9, new Object[0])));
                                                        builder = builder3;
                                                    } else {
                                                        builder3.setTitle(LocaleController.getString(C2573R.string.DeleteSingleMessagesTitle));
                                                        builder = builder3;
                                                    }
                                                } else {
                                                    i9 = i30;
                                                    if (i9 != i31) {
                                                        AlertDialog.Builder builder4 = builder2;
                                                        builder4.setTitle(LocaleController.formatString(C2573R.string.UnsaveMessagesTitle, LocaleController.formatPluralString("messages", i9, new Object[0])));
                                                        builder = builder4;
                                                    } else {
                                                        AlertDialog.Builder builder5 = builder2;
                                                        builder5.setTitle(LocaleController.getString(C2573R.string.UnsaveSingleMessagesTitle));
                                                        builder = builder5;
                                                    }
                                                }
                                                if (z14) {
                                                    if (chat == null || !z12) {
                                                        if (!z10 || z9 || r42 == i9) {
                                                            i10 = 0;
                                                            if (chat == null || !chat.megagroup || z17) {
                                                                if (i9 == i31) {
                                                                    builder.setMessage(LocaleController.getString(C2573R.string.AreYouSureDeleteSingleMessage));
                                                                } else {
                                                                    builder.setMessage(LocaleController.getString(C2573R.string.AreYouSureDeleteFewMessages));
                                                                }
                                                            } else if (i9 == i31) {
                                                                if (messageObject != null && messageObject.isEphemeral()) {
                                                                    i11 = C2573R.string.AreYouSureDeleteSingleMessage;
                                                                } else {
                                                                    i11 = C2573R.string.AreYouSureDeleteSingleMessageMega;
                                                                }
                                                                builder.setMessage(LocaleController.getString(i11));
                                                            } else {
                                                                builder.setMessage(LocaleController.getString(C2573R.string.AreYouSureDeleteFewMessagesMega));
                                                            }
                                                        } else if (chat != null) {
                                                            i10 = 0;
                                                            builder.setMessage(LocaleController.formatString("DeleteMessagesTextGroup", C2573R.string.DeleteMessagesTextGroup, LocaleController.formatPluralString("messages", r42 == true ? 1 : 0, new Object[0])));
                                                        } else {
                                                            i10 = 0;
                                                            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("DeleteMessagesText", C2573R.string.DeleteMessagesText, LocaleController.formatPluralString("messages", r42 == true ? 1 : 0, new Object[0]), UserObject.getFirstName(user))));
                                                        }
                                                        if (messageObject != null) {
                                                            int i32 = (!messageObject.isGiveaway() || messageObject.isForwarded()) ? i10 : i31;
                                                            if (i32 != 0) {
                                                                long j7 = ((long) ((TLRPC.TL_messageMediaGiveaway) messageObject.messageOwner.media).until_date) * 1000;
                                                                String str3 = LocaleController.getInstance().getFormatterGiveawayMonthDayYear().format(new Date(j7));
                                                                if (System.currentTimeMillis() >= j7) {
                                                                    i31 = i10;
                                                                }
                                                                str = str3;
                                                            } else {
                                                                i31 = i32;
                                                                str = null;
                                                            }
                                                        } else if (i9 == i31) {
                                                            int i33 = i10;
                                                            str = null;
                                                            for (int i34 = i31; i34 >= 0; i34--) {
                                                                for (int i35 = i10; i35 < sparseArrayArr[i34].size(); i35++) {
                                                                    MessageObject messageObjectValueAt4 = sparseArrayArr[i34].valueAt(i35);
                                                                    int i36 = (!messageObjectValueAt4.isGiveaway() || messageObjectValueAt4.isForwarded()) ? i10 : i31;
                                                                    if (i36 != 0) {
                                                                        long j8 = ((long) ((TLRPC.TL_messageMediaGiveaway) messageObjectValueAt4.messageOwner.media).until_date) * 1000;
                                                                        str = LocaleController.getInstance().getFormatterGiveawayMonthDayYear().format(new Date(j8));
                                                                        i33 = System.currentTimeMillis() < j8 ? i31 : i10;
                                                                    } else {
                                                                        i33 = i36;
                                                                    }
                                                                }
                                                            }
                                                            i31 = i33;
                                                        } else {
                                                            i31 = i10;
                                                            str = null;
                                                        }
                                                        TimeUnit timeUnit = TimeUnit.HOURS;
                                                        if (z13) {
                                                            int i37 = (int) MessagesController.getInstance(i29).config.starsSuggestedPostAgeMin.get(timeUnit);
                                                            builder.setTitle(LocaleController.getString(C2573R.string.SuggestionStarsWillBeLost));
                                                            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.SuggestionStarsWillBeLostInfo, Integer.valueOf(i37))));
                                                            builder.setPositiveButton(LocaleController.getString(C2573R.string.SuggestionStarsWillBeLostDelete), onButtonClickListener);
                                                        } else if (z3) {
                                                            int i38 = (int) MessagesController.getInstance(i29).config.starsSuggestedPostAgeMin.get(timeUnit);
                                                            builder.setTitle(LocaleController.getString(C2573R.string.SuggestionTONWillBeLost));
                                                            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.SuggestionTONWillBeLostInfo, Integer.valueOf(i38))));
                                                            builder.setPositiveButton(LocaleController.getString(C2573R.string.SuggestionStarsWillBeLostDelete), onButtonClickListener);
                                                        } else if (i31 == 0 || z14) {
                                                            builder.setPositiveButton(LocaleController.getString(z14 ? C2573R.string.Remove : C2573R.string.Delete), onButtonClickListener);
                                                        } else {
                                                            builder.setTitle(LocaleController.getString(C2573R.string.BoostingGiveawayDeleteMsgTitle));
                                                            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.BoostingGiveawayDeleteMsgText, str)));
                                                            builder.setNeutralButton(LocaleController.getString(C2573R.string.Delete), onButtonClickListener);
                                                        }
                                                        builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                                        builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda102
                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                AlertsCreator.m9803$r8$lambda$T6TiM1uGGJA22H59Fb4YK9PtWA(runnable2, dialogInterface);
                                                            }
                                                        });
                                                        AlertDialog alertDialogCreate = builder.create();
                                                        baseFragment.showDialog(alertDialogCreate);
                                                        textView = (TextView) alertDialogCreate.getButton(-1);
                                                        if (textView != null) {
                                                            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                                                        }
                                                        textView2 = (TextView) alertDialogCreate.getButton(-3);
                                                        if (textView2 != null) {
                                                            alertDialogCreate.getButtonsLayout().setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(0.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(12.0f));
                                                            ((ViewGroup.MarginLayoutParams) alertDialogCreate.getButtonsLayout().getLayoutParams()).topMargin = AndroidUtilities.dp(-8.0f);
                                                            textView2.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    if (z10 && r42 != i9) {
                                                        builder.setMessage(LocaleController.formatString(C2573R.string.DeleteMessagesTextGroupPart, LocaleController.formatPluralString("messages", r42 == true ? 1 : 0, new Object[0])));
                                                    } else if (i9 == i31) {
                                                        builder.setMessage(LocaleController.getString(C2573R.string.AreYouSureDeleteSingleMessage));
                                                    } else {
                                                        builder.setMessage(LocaleController.getString(C2573R.string.AreYouSureDeleteFewMessages));
                                                    }
                                                } else if (i9 == i31) {
                                                    builder.setMessage(LocaleController.getString(C2573R.string.AreYouSureUnsaveSingleMessage));
                                                } else {
                                                    builder.setMessage(LocaleController.getString(C2573R.string.AreYouSureUnsaveFewMessages));
                                                }
                                                i10 = 0;
                                                if (messageObject != null) {
                                                }
                                                TimeUnit timeUnit2 = TimeUnit.HOURS;
                                                if (z13) {
                                                }
                                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                                builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda102
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        AlertsCreator.m9803$r8$lambda$T6TiM1uGGJA22H59Fb4YK9PtWA(runnable2, dialogInterface);
                                                    }
                                                });
                                                AlertDialog alertDialogCreate2 = builder.create();
                                                baseFragment.showDialog(alertDialogCreate2);
                                                textView = (TextView) alertDialogCreate2.getButton(-1);
                                                if (textView != null) {
                                                }
                                                textView2 = (TextView) alertDialogCreate2.getButton(-3);
                                                if (textView2 != null) {
                                                }
                                            }
                                        }
                                        z12 = false;
                                        r22 = r2;
                                        ?? r422 = r22;
                                        final int i292 = i5;
                                        int i302 = size;
                                        z13 = z16;
                                        z14 = z4;
                                        final long j62 = j3;
                                        int i312 = i6;
                                        AlertDialog.OnButtonClickListener onButtonClickListener2 = new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda101
                                            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                            public final void onClick(AlertDialog alertDialog, int i322) {
                                                AlertsCreator.m9825$r8$lambda$gcJ6NSv7L58jI0sH0iFXd2WyTU(j62, z14, i292, messageObject, groupedMessages, encryptedChat, j, i, zArr, i2, sparseArrayArr, runnable, alertDialog, i322);
                                            }
                                        };
                                        if (z14) {
                                        }
                                        if (z14) {
                                        }
                                        i10 = 0;
                                        if (messageObject != null) {
                                        }
                                        TimeUnit timeUnit22 = TimeUnit.HOURS;
                                        if (z13) {
                                        }
                                        builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                        builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda102
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                AlertsCreator.m9803$r8$lambda$T6TiM1uGGJA22H59Fb4YK9PtWA(runnable2, dialogInterface);
                                            }
                                        });
                                        AlertDialog alertDialogCreate22 = builder.create();
                                        baseFragment.showDialog(alertDialogCreate22);
                                        textView = (TextView) alertDialogCreate22.getButton(-1);
                                        if (textView != null) {
                                        }
                                        textView2 = (TextView) alertDialogCreate22.getButton(-3);
                                        if (textView2 != null) {
                                        }
                                    }
                                    z9 = z;
                                    boolean z222 = z2;
                                    if (chat2 != null) {
                                        j3 = j5;
                                        i5 = i17;
                                        if (z17) {
                                        }
                                        i6 = 1;
                                        r2 = 0;
                                        z10 = false;
                                        z12 = false;
                                        r22 = r2;
                                    }
                                    ?? r4222 = r22;
                                    final int i2922 = i5;
                                    int i3022 = size;
                                    z13 = z16;
                                    z14 = z4;
                                    final long j622 = j3;
                                    int i3122 = i6;
                                    AlertDialog.OnButtonClickListener onButtonClickListener22 = new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda101
                                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                        public final void onClick(AlertDialog alertDialog, int i322) {
                                            AlertsCreator.m9825$r8$lambda$gcJ6NSv7L58jI0sH0iFXd2WyTU(j622, z14, i2922, messageObject, groupedMessages, encryptedChat, j, i, zArr, i2, sparseArrayArr, runnable, alertDialog, i322);
                                        }
                                    };
                                    if (z14) {
                                    }
                                    if (z14) {
                                    }
                                    i10 = 0;
                                    if (messageObject != null) {
                                    }
                                    TimeUnit timeUnit222 = TimeUnit.HOURS;
                                    if (z13) {
                                    }
                                    builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                    builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda102
                                        @Override // android.content.DialogInterface.OnDismissListener
                                        public final void onDismiss(DialogInterface dialogInterface) {
                                            AlertsCreator.m9803$r8$lambda$T6TiM1uGGJA22H59Fb4YK9PtWA(runnable2, dialogInterface);
                                        }
                                    });
                                    AlertDialog alertDialogCreate222 = builder.create();
                                    baseFragment.showDialog(alertDialogCreate222);
                                    textView = (TextView) alertDialogCreate222.getButton(-1);
                                    if (textView != null) {
                                    }
                                    textView2 = (TextView) alertDialogCreate222.getButton(-3);
                                    if (textView2 != null) {
                                    }
                                }
                                j2 = jMakeEncryptedDialogId;
                                chat2 = chat;
                                if (z17) {
                                }
                                final Runnable runnable32 = runnable2;
                                long j52 = j2;
                                boolean z202 = z18;
                                final int i172 = currentAccount;
                                int currentTime2 = ConnectionsManager.getInstance(i172).getCurrentTime();
                                MessagesController.getInstance(i172).config.starsSuggestedPostAgeMin.get(TimeUnit.SECONDS);
                                if (messageObject == null) {
                                }
                                if (groupedMessages != null) {
                                }
                                final boolean[] zArr2 = new boolean[1];
                                if (user == null) {
                                }
                                if (user == null) {
                                }
                                if (encryptedChat == null) {
                                    z8 = z7;
                                    z9 = z;
                                }
                                boolean z2222 = z2;
                                if (chat2 != null) {
                                }
                                ?? r42222 = r22;
                                final int i29222 = i5;
                                int i30222 = size;
                                z13 = z16;
                                z14 = z4;
                                final long j6222 = j3;
                                int i31222 = i6;
                                AlertDialog.OnButtonClickListener onButtonClickListener222 = new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda101
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i322) {
                                        AlertsCreator.m9825$r8$lambda$gcJ6NSv7L58jI0sH0iFXd2WyTU(j6222, z14, i29222, messageObject, groupedMessages, encryptedChat, j, i, zArr2, i2, sparseArrayArr, runnable, alertDialog, i322);
                                    }
                                };
                                if (z14) {
                                }
                                if (z14) {
                                }
                                i10 = 0;
                                if (messageObject != null) {
                                }
                                TimeUnit timeUnit2222 = TimeUnit.HOURS;
                                if (z13) {
                                }
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda102
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        AlertsCreator.m9803$r8$lambda$T6TiM1uGGJA22H59Fb4YK9PtWA(runnable2, dialogInterface);
                                    }
                                });
                                AlertDialog alertDialogCreate2222 = builder.create();
                                baseFragment.showDialog(alertDialogCreate2222);
                                textView = (TextView) alertDialogCreate2222.getButton(-1);
                                if (textView != null) {
                                }
                                textView2 = (TextView) alertDialogCreate2222.getButton(-3);
                                if (textView2 != null) {
                                }
                            }

                            /* JADX INFO: renamed from: $r8$lambda$V2mFkNc8sl91jWWCM4aH-t1POOc, reason: not valid java name */
                            public static /* synthetic */ void m9810$r8$lambda$V2mFkNc8sl91jWWCM4aHt1POOc(MessageObject.GroupedMessages groupedMessages, int i, BaseFragment baseFragment, int i2, int i3, MessageObject messageObject, AlertDialog alertDialog, int i4) {
                                if (groupedMessages != null && !groupedMessages.messages.isEmpty()) {
                                    SendMessagesHelper.getInstance(i).editMessage(groupedMessages.messages.get(0), null, false, baseFragment, null, i2 + i3, i3);
                                } else {
                                    SendMessagesHelper.getInstance(i).editMessage(messageObject, null, false, baseFragment, null, i2 + i3, i3);
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$45Z4lyQdMXhFG_phvhoy7rYTsPo(long j, boolean z, int i, MessageObject messageObject, MessageObject.GroupedMessages groupedMessages, TLRPC.EncryptedChat encryptedChat, long j2, int i2, int i3, SparseArray[] sparseArrayArr, Runnable runnable, AlertDialog alertDialog, int i4) {
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

                            public static /* synthetic */ void $r8$lambda$5W5CEmYNNvBTNCjPrtcFRLDjjOU(Runnable runnable, DialogInterface dialogInterface) {
                                if (runnable != null) {
                                    runnable.run();
                                }
                            }

                            /* JADX INFO: renamed from: $r8$lambda$mGhy7kurAYvV_xmmFNKDR0fs-YU, reason: not valid java name */
                            public static /* synthetic */ boolean m9833$r8$lambda$mGhy7kurAYvV_xmmFNKDR0fsYU(MessageObject messageObject) {
                                return !messageObject.isEphemeral();
                            }

                            public static /* synthetic */ TLObject $r8$lambda$pNxJkZUzDcm_ipHqmdNkMgS0GpY(int i, long j) {
                                if (j > 0) {
                                    return MessagesController.getInstance(i).getUser(Long.valueOf(j));
                                }
                                return MessagesController.getInstance(i).getChat(Long.valueOf(-j));
                            }

                            /* JADX INFO: renamed from: $r8$lambda$JGVieBwip74p0UURCTN0-YHu3po, reason: not valid java name */
                            public static /* synthetic */ boolean m9789$r8$lambda$JGVieBwip74p0UURCTN0YHu3po(long j, TLObject tLObject) {
                                if (tLObject instanceof TLRPC.User) {
                                    return ((TLRPC.User) tLObject).id != j;
                                }
                                if (tLObject instanceof TLRPC.Chat) {
                                    return !ChatObject.hasAdminRights((TLRPC.Chat) tLObject);
                                }
                                return false;
                            }

                            public static /* synthetic */ void $r8$lambda$VDlqP2SkH_1STo7Y03mck4jyQhY(int[] iArr, int[] iArr2, int i, TLObject tLObject, TLRPC.ChannelParticipant[] channelParticipantArr, int i2, AlertDialog[] alertDialogArr, BaseFragment baseFragment, TLRPC.User user, TLRPC.Chat chat, TLRPC.EncryptedChat encryptedChat, TLRPC.ChatFull chatFull, long j, MessageObject messageObject, SparseArray[] sparseArrayArr, MessageObject.GroupedMessages groupedMessages, int i3, int i4, Runnable runnable, Runnable runnable2, Theme.ResourcesProvider resourcesProvider) {
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

                            public static /* synthetic */ void $r8$lambda$P8NMOUvbwYK2xHrms1N6B4BMlg0(AlertDialog[] alertDialogArr, final int[] iArr, final int i, final Runnable runnable, BaseFragment baseFragment) {
                                AlertDialog alertDialog = alertDialogArr[0];
                                if (alertDialog == null) {
                                    return;
                                }
                                alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda168
                                    @Override // android.content.DialogInterface.OnCancelListener
                                    public final void onCancel(DialogInterface dialogInterface) {
                                        AlertsCreator.m9830$r8$lambda$jnkOl_OsrQkRLE41YhnkYJ23zk(iArr, i, runnable, dialogInterface);
                                    }
                                });
                                baseFragment.showDialog(alertDialogArr[0]);
                            }

                            /* JADX INFO: renamed from: $r8$lambda$jn-kOl_OsrQkRLE41YhnkYJ23zk, reason: not valid java name */
                            public static /* synthetic */ void m9830$r8$lambda$jnkOl_OsrQkRLE41YhnkYJ23zk(int[] iArr, int i, Runnable runnable, DialogInterface dialogInterface) {
                                for (int i2 : iArr) {
                                    if (i2 != 0) {
                                        ConnectionsManager.getInstance(i).cancelRequest(i2, true);
                                    }
                                }
                                if (runnable != null) {
                                    runnable.run();
                                }
                            }

                            public static /* synthetic */ void $r8$lambda$VN4EyzPPJk4uwHr1LTUCyqxjV80(boolean[] zArr, View view) {
                                boolean z = !zArr[0];
                                zArr[0] = z;
                                ((CheckBoxCell) view).setChecked(z, true);
                            }

                            public static /* synthetic */ void $r8$lambda$RiLWelADiOfH29U0DcSv7bM4Zys(boolean[] zArr, View view) {
                                boolean z = !zArr[0];
                                zArr[0] = z;
                                ((CheckBoxCell) view).setChecked(z, true);
                            }

                            /* JADX INFO: renamed from: $r8$lambda$gcJ6NSv7L5-8jI0sH0iFXd2WyTU, reason: not valid java name */
                            public static /* synthetic */ void m9825$r8$lambda$gcJ6NSv7L58jI0sH0iFXd2WyTU(long j, boolean z, int i, MessageObject messageObject, MessageObject.GroupedMessages groupedMessages, TLRPC.EncryptedChat encryptedChat, long j2, int i2, boolean[] zArr, int i3, SparseArray[] sparseArrayArr, Runnable runnable, AlertDialog alertDialog, int i4) {
                                ArrayList<Long> arrayList;
                                long j3;
                                TLRPC.Peer peer;
                                long clientUserId = z ? UserConfig.getInstance(i).getClientUserId() : j;
                                ArrayList<Long> arrayList2 = null;
                                int i5 = 0;
                                if (messageObject != null) {
                                    ArrayList arrayList3 = new ArrayList();
                                    ArrayList<Integer> arrayList4 = new ArrayList<>();
                                    if (groupedMessages != null) {
                                        for (int i6 = 0; i6 < groupedMessages.messages.size(); i6++) {
                                            MessageObject messageObject2 = groupedMessages.messages.get(i6);
                                            if (messageObject2.isEphemeral()) {
                                                arrayList3.add(messageObject2);
                                            } else {
                                                arrayList4.add(Integer.valueOf(messageObject2.getId()));
                                                if (encryptedChat != null) {
                                                    if (messageObject2.messageOwner.random_id != 0 && messageObject2.type != 10) {
                                                        if (arrayList2 == null) {
                                                            arrayList2 = new ArrayList<>();
                                                        }
                                                        arrayList2.add(Long.valueOf(messageObject2.messageOwner.random_id));
                                                    }
                                                }
                                            }
                                        }
                                        j3 = 0;
                                    } else {
                                        j3 = 0;
                                        if (messageObject.isEphemeral()) {
                                            arrayList3.add(messageObject);
                                        } else {
                                            arrayList4.add(Integer.valueOf(messageObject.getId()));
                                            if (encryptedChat != null && messageObject.messageOwner.random_id != 0 && messageObject.type != 10) {
                                                arrayList2 = new ArrayList<>();
                                                arrayList2.add(Long.valueOf(messageObject.messageOwner.random_id));
                                            }
                                        }
                                    }
                                    ArrayList<Long> arrayList5 = arrayList2;
                                    long j4 = (j2 == j3 || (peer = messageObject.messageOwner.peer_id) == null || peer.chat_id != (-j2)) ? clientUserId : j2;
                                    if (!arrayList4.isEmpty()) {
                                        MessagesController.getInstance(i).deleteMessages(arrayList4, arrayList5, encryptedChat, j4, i2, zArr[0], i3);
                                    }
                                    long j5 = j4;
                                    int size = arrayList3.size();
                                    while (i5 < size) {
                                        Object obj = arrayList3.get(i5);
                                        i5++;
                                        MessagesController.getInstance(i).deleteEphemeralMessage(j5, i2, (MessageObject) obj);
                                    }
                                } else {
                                    int i7 = i2;
                                    int i8 = 1;
                                    while (i8 >= 0) {
                                        ArrayList<Integer> arrayList6 = new ArrayList<>();
                                        for (int i9 = 0; i9 < sparseArrayArr[i8].size(); i9++) {
                                            arrayList6.add(Integer.valueOf(sparseArrayArr[i8].keyAt(i9)));
                                        }
                                        if (encryptedChat != null) {
                                            ArrayList<Long> arrayList7 = new ArrayList<>();
                                            for (int i10 = 0; i10 < sparseArrayArr[i8].size(); i10++) {
                                                MessageObject messageObject3 = (MessageObject) sparseArrayArr[i8].valueAt(i10);
                                                long j6 = messageObject3.messageOwner.random_id;
                                                if (j6 != 0 && messageObject3.type != 10) {
                                                    arrayList7.add(Long.valueOf(j6));
                                                }
                                            }
                                            arrayList = arrayList7;
                                        } else {
                                            arrayList = null;
                                        }
                                        MessagesController.getInstance(i).deleteMessages(arrayList6, arrayList, encryptedChat, (i8 != 1 || j2 == 0) ? clientUserId : j2, i7, zArr[0], i3);
                                        sparseArrayArr[i8].clear();
                                        i8--;
                                        i7 = i2;
                                    }
                                }
                                if (runnable != null) {
                                    runnable.run();
                                }
                            }

                            /* JADX INFO: renamed from: $r8$lambda$T6TiM1uGGJA-22H59Fb4YK9PtWA, reason: not valid java name */
                            public static /* synthetic */ void m9803$r8$lambda$T6TiM1uGGJA22H59Fb4YK9PtWA(Runnable runnable, DialogInterface dialogInterface) {
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
                                builder.setTitle(LocaleController.getString(C2573R.string.NewTheme));
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Create), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda123
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i2) {
                                        AlertsCreator.m9853$r8$lambda$vKtI7mBYB6fypztloZfGvH05hI(alertDialog, i2);
                                    }
                                });
                                LinearLayout linearLayout = new LinearLayout(parentActivity);
                                linearLayout.setOrientation(1);
                                builder.setView(linearLayout);
                                TextView textView = new TextView(parentActivity);
                                if (i != 0) {
                                    textView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.EnterThemeNameEdit)));
                                } else {
                                    textView.setText(LocaleController.getString(C2573R.string.EnterThemeName));
                                }
                                textView.setTextSize(1, 16.0f);
                                textView.setPadding(AndroidUtilities.dp(23.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(23.0f), AndroidUtilities.dp(6.0f));
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
                                editTextBoldCursor.setCursorSize(AndroidUtilities.dp(20.0f));
                                editTextBoldCursor.setCursorWidth(1.5f);
                                editTextBoldCursor.setPadding(0, AndroidUtilities.dp(4.0f), 0, 0);
                                linearLayout.addView(editTextBoldCursor, LayoutHelper.createLinear(-1, 36, 51, 24, 6, 24, 0));
                                editTextBoldCursor.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda124
                                    @Override // android.widget.TextView.OnEditorActionListener
                                    public final boolean onEditorAction(TextView textView2, int i3, KeyEvent keyEvent) {
                                        return AlertsCreator.m9808$r8$lambda$UZvcDYS92eiNSMw8mxIgDsd4pI(textView2, i3, keyEvent);
                                    }
                                });
                                editTextBoldCursor.setText(generateThemeName(themeAccent));
                                editTextBoldCursor.setSelection(editTextBoldCursor.length());
                                final AlertDialog alertDialogCreate = builder.create();
                                alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda125
                                    @Override // android.content.DialogInterface.OnShowListener
                                    public final void onShow(DialogInterface dialogInterface) {
                                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda193
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                AlertsCreator.m9778$r8$lambda$7amHu8URFBNRD36GrkRf5MKr8I(editTextBoldCursor);
                                            }
                                        });
                                    }
                                });
                                baseFragment.showDialog(alertDialogCreate);
                                editTextBoldCursor.requestFocus();
                                alertDialogCreate.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda126
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) throws Throwable {
                                        AlertsCreator.m9782$r8$lambda$B32SYB81IKGaTCy4ZjWiasBWcw(baseFragment, editTextBoldCursor, themeAccent, themeInfo, alertDialogCreate, view);
                                    }
                                });
                            }

                            /* JADX INFO: renamed from: $r8$lambda$UZvcDYS92eiNS-Mw8mxIgDsd4pI, reason: not valid java name */
                            public static /* synthetic */ boolean m9808$r8$lambda$UZvcDYS92eiNSMw8mxIgDsd4pI(TextView textView, int i, KeyEvent keyEvent) {
                                AndroidUtilities.hideKeyboard(textView);
                                return false;
                            }

                            /* JADX INFO: renamed from: $r8$lambda$7amHu8URFBNRD36GrkRf5M-Kr8I, reason: not valid java name */
                            public static /* synthetic */ void m9778$r8$lambda$7amHu8URFBNRD36GrkRf5MKr8I(EditTextBoldCursor editTextBoldCursor) {
                                editTextBoldCursor.requestFocus();
                                AndroidUtilities.showKeyboard(editTextBoldCursor);
                            }

                            /* JADX INFO: renamed from: $r8$lambda$B32SY-B81IKGaTCy4ZjWiasBWcw, reason: not valid java name */
                            public static /* synthetic */ void m9782$r8$lambda$B32SYB81IKGaTCy4ZjWiasBWcw(final BaseFragment baseFragment, final EditTextBoldCursor editTextBoldCursor, Theme.ThemeAccent themeAccent, Theme.ThemeInfo themeInfo, final AlertDialog alertDialog, View view) throws Throwable {
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
                                    themeInfo.setCurrentAccentId(themeAccent.id);
                                    Theme.refreshThemeColors();
                                    Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda169
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda204
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
                                    Toast.makeText(baseFragment.getParentActivity(), LocaleController.getString(C2573R.string.CreateNewThemeHelp), 1).show();
                                } catch (Exception e) {
                                    FileLog.m898e(e);
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

                            public static void showDeclineSuggestedPostDialog(BaseFragment baseFragment, long j, boolean z, final Utilities.Callback<String> callback) {
                                final Context context = baseFragment.getContext();
                                AlertDialog.Builder builder = z ? new AlertDialogDecor.Builder(context) : new AlertDialog.Builder(context);
                                builder.setTitle(LocaleController.getString(C2573R.string.SuggestedMessageDecline));
                                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.SuggestedMessageDeclineInfo, MessagesController.getInstance(UserConfig.selectedAccount).getPeerName(j))));
                                FrameLayout frameLayout = new FrameLayout(context);
                                frameLayout.setClipChildren(false);
                                final EditText editText = new EditText(context);
                                editText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
                                editText.setHint(LocaleController.getString(C2573R.string.SuggestedMessageDeclineReasonHint));
                                editText.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText));
                                editText.setTextSize(1, 16.0f);
                                editText.setBackground(Theme.createEditTextDrawable(context, true));
                                editText.setMaxLines(4);
                                editText.setRawInputType(147457);
                                editText.setImeOptions(6);
                                editText.setFilters(new InputFilter[]{new CodepointsLengthInputFilter(255) { // from class: org.telegram.ui.Components.AlertsCreator.63
                                    @Override // org.telegram.ui.Components.CodepointsLengthInputFilter, android.text.InputFilter
                                    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                                        Vibrator vibrator;
                                        CharSequence charSequenceFilter = super.filter(charSequence, i, i2, spanned, i3, i4);
                                        if (charSequenceFilter != null && charSequence != null && charSequenceFilter.length() != charSequence.length() && (vibrator = (Vibrator) context.getSystemService("vibrator")) != null) {
                                            vibrator.vibrate(200L);
                                        }
                                        return charSequenceFilter;
                                    }
                                }});
                                editText.setPadding(LocaleController.isRTL ? AndroidUtilities.dp(24.0f) : 0, AndroidUtilities.dp(8.0f), LocaleController.isRTL ? 0 : AndroidUtilities.dp(24.0f), AndroidUtilities.dp(8.0f));
                                editText.setSelection(editText.getText().toString().length());
                                builder.setView(frameLayout);
                                builder.setPositiveButton(LocaleController.getString(C2573R.string.Decline), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda188
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i) {
                                        AlertsCreator.$r8$lambda$8RQ9EXD23RcWTImIAoCrrgBN7RE(callback, editText, alertDialog, i);
                                    }
                                });
                                builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                                builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda189
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        AndroidUtilities.hideKeyboard(editText);
                                    }
                                });
                                frameLayout.addView(editText, LayoutHelper.createFrame(-1, -2.0f, 0, 23.0f, 0.0f, 23.0f, 21.0f));
                                editText.requestFocus();
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda190
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

                            public static /* synthetic */ void $r8$lambda$8RQ9EXD23RcWTImIAoCrrgBN7RE(Utilities.Callback callback, EditText editText, AlertDialog alertDialog, int i) {
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
                                numberPicker.setTextOffset(AndroidUtilities.dp(10.0f));
                                numberPicker.setItemCount(5);
                                final NumberPicker numberPicker2 = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.64
                                    @Override // org.telegram.ui.Components.NumberPicker
                                    public CharSequence getContentDescription(int i2) {
                                        return LocaleController.formatPluralString("Hours", i2, new Object[0]);
                                    }
                                };
                                numberPicker2.setWrapSelectorWheel(true);
                                numberPicker2.setAllItemsCount(24);
                                numberPicker2.setItemCount(5);
                                numberPicker2.setTextColor(scheduleDatePickerColors.textColor);
                                numberPicker2.setTextOffset(-AndroidUtilities.dp(10.0f));
                                final NumberPicker numberPicker3 = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.65
                                    @Override // org.telegram.ui.Components.NumberPicker
                                    public CharSequence getContentDescription(int i2) {
                                        return LocaleController.formatPluralString("Minutes", i2, new Object[0]);
                                    }
                                };
                                numberPicker3.setWrapSelectorWheel(true);
                                numberPicker3.setAllItemsCount(60);
                                numberPicker3.setItemCount(5);
                                numberPicker3.setTextColor(scheduleDatePickerColors.textColor);
                                numberPicker3.setTextOffset(-AndroidUtilities.dp(34.0f));
                                LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.66
                                    boolean ignoreLayout = false;

                                    @Override // android.widget.LinearLayout, android.view.View
                                    public void onMeasure(int i2, int i3) {
                                        this.ignoreLayout = true;
                                        Point point = AndroidUtilities.displaySize;
                                        int i4 = point.x > point.y ? 3 : 5;
                                        numberPicker.setItemCount(i4);
                                        numberPicker2.setItemCount(i4);
                                        numberPicker3.setItemCount(i4);
                                        numberPicker.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i4;
                                        numberPicker2.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i4;
                                        numberPicker3.getLayoutParams().height = AndroidUtilities.dp(42.0f) * i4;
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
                                textView.setText(LocaleController.getString(i == 1 ? C2573R.string.SuggestedPostAcceptTitle : C2573R.string.PostSuggestionsAddTime));
                                textView.setTextColor(scheduleDatePickerColors.textColor);
                                textView.setTextSize(1, 20.0f);
                                textView.setTypeface(AndroidUtilities.bold());
                                linearLayout2.addView(textView, LayoutHelper.createLinear(-2, -2, 51, 0, 12, 0, 0));
                                textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda212
                                    @Override // android.view.View.OnTouchListener
                                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                                        return AlertsCreator.m9785$r8$lambda$EiHl3Zc5r3GSKGa2a_fenpvjJ8(view, motionEvent);
                                    }
                                });
                                TextView textView2 = new TextView(context);
                                textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
                                textView2.setTextSize(1, 14.0f);
                                textView2.setText(LocaleController.getString(C2573R.string.PostSuggestionsAddTimeHint));
                                linearLayout2.addView(textView2, LayoutHelper.createLinear(-2, -2, 51, 0, 2, 0, 0));
                                textView2.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda213
                                    @Override // android.view.View.OnTouchListener
                                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                                        return AlertsCreator.$r8$lambda$OanBZlfmFL8_qN6PlxbHZsAgpE4(view, motionEvent);
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
                                final TextView textView3 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.67
                                    @Override // android.widget.TextView, android.view.View
                                    public CharSequence getAccessibilityClassName() {
                                        return Button.class.getName();
                                    }
                                };
                                linearLayout3.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.5f));
                                numberPicker.setMinValue(0);
                                numberPicker.setMaxValue(365);
                                numberPicker.setWrapSelectorWheel(false);
                                numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda214
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i3) {
                                        return AlertsCreator.$r8$lambda$dw6kvGO8A76LcoIhvS4csIpZYYc(i2, i3);
                                    }
                                });
                                final int i3 = i == 1 ? 5 : 3;
                                NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda215
                                    @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
                                    public final void onValueChange(NumberPicker numberPicker4, int i4, int i5) {
                                        AlertsCreator.checkScheduleDate(textView3, null, j3, j4, i3, numberPicker, numberPicker2, numberPicker3);
                                    }
                                };
                                numberPicker.setOnValueChangedListener(onValueChangeListener);
                                numberPicker2.setMinValue(0);
                                numberPicker2.setMaxValue(23);
                                linearLayout3.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.2f));
                                numberPicker2.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda216
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i4) {
                                        return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i4));
                                    }
                                });
                                numberPicker2.setOnValueChangedListener(onValueChangeListener);
                                numberPicker3.setMinValue(0);
                                numberPicker3.setMaxValue(59);
                                numberPicker3.setValue(0);
                                numberPicker3.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda217
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
                                    int timeInMillis = (int) ((j5 - calendar.getTimeInMillis()) / DurationKt.MILLIS_IN_DAY);
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
                                textView3.setPadding(AndroidUtilities.dp(34.0f), 0, AndroidUtilities.dp(34.0f), 0);
                                textView3.setGravity(17);
                                textView3.setTextColor(scheduleDatePickerColors.buttonTextColor);
                                textView3.setTextSize(1, 14.0f);
                                textView3.setTypeface(AndroidUtilities.bold());
                                textView3.setBackground(Theme.AdaptiveRipple.filledRect(scheduleDatePickerColors.buttonBackgroundColor, 8.0f));
                                linearLayout.addView(textView3, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 4));
                                final Calendar calendar3 = calendar;
                                textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda218
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        AlertsCreator.$r8$lambda$WuqArnhWtKBQT8rKRmxrsbcEqXQ(zArr, j6, j4, i3, numberPicker, numberPicker2, numberPicker3, calendar3, scheduleDatePickerDelegate, builder, view);
                                    }
                                });
                                ScaleStateListAnimator.apply(textView3, 0.02f, 1.2f);
                                TextView textView4 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.68
                                    @Override // android.widget.TextView, android.view.View
                                    public CharSequence getAccessibilityClassName() {
                                        return Button.class.getName();
                                    }
                                };
                                textView4.setPadding(AndroidUtilities.dp(34.0f), 0, AndroidUtilities.dp(34.0f), 0);
                                textView4.setGravity(17);
                                textView4.setText(LocaleController.getString(i == 1 ? C2573R.string.MessageSuggestionPublishNow : C2573R.string.PostSuggestionsAnytime));
                                textView4.setTextColor(scheduleDatePickerColors.buttonBackgroundColor);
                                textView4.setTextSize(1, 14.0f);
                                textView4.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(8.0f), Theme.getColor(Theme.key_windowBackgroundWhite), Theme.getColor(Theme.key_listSelector)));
                                linearLayout.addView(textView4, LayoutHelper.createLinear(-1, 48, 83, 16, 0, 16, 16));
                                textView4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda219
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        AlertsCreator.m9797$r8$lambda$QbYgsw9uEcknAJJYYuEhlAgBZ0(zArr, scheduleDatePickerDelegate, builder, view);
                                    }
                                });
                                ScaleStateListAnimator.apply(textView4, 0.02f, 1.2f);
                                builder.setCustomView(linearLayout);
                                BottomSheet bottomSheetShow = builder.show();
                                bottomSheetShow.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda220
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        AlertsCreator.$r8$lambda$kgKT1JXfzg6RppDHOqrapNO3uAk(runnable, zArr, dialogInterface);
                                    }
                                });
                                bottomSheetShow.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
                                bottomSheetShow.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
                                return builder;
                            }

                            /* JADX INFO: renamed from: $r8$lambda$EiHl3Zc5r3GSKGa2a_fe-npvjJ8, reason: not valid java name */
                            public static /* synthetic */ boolean m9785$r8$lambda$EiHl3Zc5r3GSKGa2a_fenpvjJ8(View view, MotionEvent motionEvent) {
                                return true;
                            }

                            public static /* synthetic */ boolean $r8$lambda$OanBZlfmFL8_qN6PlxbHZsAgpE4(View view, MotionEvent motionEvent) {
                                return true;
                            }

                            public static /* synthetic */ String $r8$lambda$dw6kvGO8A76LcoIhvS4csIpZYYc(int i, int i2) {
                                if (i2 == 0) {
                                    return LocaleController.getString(C2573R.string.MessageScheduleToday);
                                }
                                LocalDate localDatePlusDays = LocalDate.now().plusDays(i2);
                                int year = localDatePlusDays.getYear();
                                long epochMilli = localDatePlusDays.atStartOfDay().toInstant(ZoneOffset.UTC).toEpochMilli();
                                if (year == i) {
                                    return LocaleController.getInstance().getFormatterWeek().format(epochMilli) + ", " + LocaleController.getInstance().getFormatterScheduleDay().format(epochMilli);
                                }
                                return LocaleController.getInstance().getFormatterScheduleYear().format(epochMilli);
                            }

                            public static /* synthetic */ void $r8$lambda$WuqArnhWtKBQT8rKRmxrsbcEqXQ(boolean[] zArr, long j, long j2, int i, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, Calendar calendar, ScheduleDatePickerDelegate scheduleDatePickerDelegate, BottomSheet.Builder builder, View view) {
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

                            /* JADX INFO: renamed from: $r8$lambda$QbYgsw9-uEcknAJJYYuEhlAgBZ0, reason: not valid java name */
                            public static /* synthetic */ void m9797$r8$lambda$QbYgsw9uEcknAJJYYuEhlAgBZ0(boolean[] zArr, ScheduleDatePickerDelegate scheduleDatePickerDelegate, BottomSheet.Builder builder, View view) {
                                zArr[0] = false;
                                scheduleDatePickerDelegate.didSelectDate(true, -1, 0);
                                builder.getDismissRunnable().run();
                            }

                            public static /* synthetic */ void $r8$lambda$kgKT1JXfzg6RppDHOqrapNO3uAk(Runnable runnable, boolean[] zArr, DialogInterface dialogInterface) {
                                if (runnable == null || !zArr[0]) {
                                    return;
                                }
                                runnable.run();
                            }

                            public static void showCallsForbidden(Context context, final int i, final long j, final Theme.ResourcesProvider resourcesProvider) {
                                BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
                                LinearLayout linearLayout = new LinearLayout(context);
                                linearLayout.setOrientation(1);
                                linearLayout.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(8.0f));
                                FrameLayout frameLayout = new FrameLayout(context);
                                frameLayout.setClipChildren(false);
                                frameLayout.setClipToPadding(false);
                                linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, 92, 17, 0, 0, 0, 0));
                                FrameLayout frameLayout2 = new FrameLayout(context);
                                ImageView imageView = new ImageView(context);
                                imageView.setScaleType(ImageView.ScaleType.CENTER);
                                imageView.setImageResource(C2573R.drawable.story_link);
                                imageView.setScaleX(2.0f);
                                imageView.setScaleY(2.0f);
                                frameLayout2.addView(imageView, LayoutHelper.createFrame(-1, -1, 17));
                                frameLayout2.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(80.0f), Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider)));
                                frameLayout.addView(frameLayout2, LayoutHelper.createFrame(80, 80.0f, 1, 0.0f, 12.0f, 0.0f, 0.0f));
                                TextView textView = new TextView(context);
                                int i2 = Theme.key_windowBackgroundWhiteBlackText;
                                textView.setTextColor(Theme.getColor(i2, resourcesProvider));
                                textView.setTextSize(1, 20.0f);
                                textView.setTypeface(AndroidUtilities.bold());
                                textView.setText(LocaleController.getString(C2573R.string.CallForbiddenInviteLinkTitle));
                                textView.setGravity(17);
                                linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 32.0f, 16.0f, 32.0f, 8.0f));
                                TextView textView2 = new TextView(context);
                                textView2.setTextColor(Theme.getColor(i2, resourcesProvider));
                                textView2.setTextSize(1, 14.0f);
                                textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.CallForbiddenInviteLinkText, DialogObject.getName(i, j))));
                                textView2.setGravity(17);
                                linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 32.0f, 0.0f, 32.0f, 18.0f));
                                final ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
                                buttonWithCounterView.setText(LocaleController.getString(C2573R.string.CallForbiddenInviteLinkButton), false);
                                linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 0.0f, 0.0f, 0.0f, 0.0f));
                                builder.setCustomView(linearLayout);
                                final BottomSheet bottomSheetCreate = builder.create();
                                buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda17
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        AlertsCreator.$r8$lambda$dMO7qOaCKniG93cClqpFwXznWxo(i, buttonWithCounterView, bottomSheetCreate, j, resourcesProvider, view);
                                    }
                                });
                                bottomSheetCreate.fixNavigationBar();
                                bottomSheetCreate.show();
                            }

                            public static /* synthetic */ void $r8$lambda$dMO7qOaCKniG93cClqpFwXznWxo(final int i, final ButtonWithCounterView buttonWithCounterView, final BottomSheet bottomSheet, final long j, final Theme.ResourcesProvider resourcesProvider, View view) {
                                TL_phone.createConferenceCall createconferencecall = new TL_phone.createConferenceCall();
                                createconferencecall.random_id = Utilities.random.nextInt();
                                ConnectionsManager.getInstance(i).sendRequest(createconferencecall, new RequestDelegate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda46
                                    @Override // org.telegram.tgnet.RequestDelegate
                                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda93
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                AlertsCreator.m9814$r8$lambda$Wz_ES5UyWWV5sQsDiw9Ct85x4(tLObject, i, buttonWithCounterView, bottomSheet, j, tL_error, resourcesProvider);
                                            }
                                        });
                                    }
                                });
                            }

                            /* JADX INFO: renamed from: $r8$lambda$Wz_ES5UyWWV5sQsD--iw9Ct85x4, reason: not valid java name */
                            public static /* synthetic */ void m9814$r8$lambda$Wz_ES5UyWWV5sQsDiw9Ct85x4(TLObject tLObject, final int i, ButtonWithCounterView buttonWithCounterView, BottomSheet bottomSheet, long j, TLRPC.TL_error tL_error, Theme.ResourcesProvider resourcesProvider) {
                                if (tLObject instanceof TLRPC.Updates) {
                                    final TLRPC.Updates updates = (TLRPC.Updates) tLObject;
                                    MessagesController.getInstance(i).putUsers(updates.users, false);
                                    MessagesController.getInstance(i).putChats(updates.chats, false);
                                    ArrayList arrayListFindUpdates = MessagesController.findUpdates(updates, TL_update.TL_updateGroupCall.class);
                                    int size = arrayListFindUpdates.size();
                                    TLRPC.GroupCall groupCall = null;
                                    int i2 = 0;
                                    while (i2 < size) {
                                        Object obj = arrayListFindUpdates.get(i2);
                                        i2++;
                                        groupCall = ((TL_update.TL_updateGroupCall) obj).call;
                                    }
                                    Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda171
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
                                    SendMessagesHelper.getInstance(i).sendMessage(SendMessagesHelper.SendMessageParams.of(groupCall.invite_link, j));
                                    BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                                    if (safeLastFragment != null) {
                                        if (safeLastFragment instanceof ChatActivity) {
                                            ChatActivity chatActivity = (ChatActivity) safeLastFragment;
                                            if (chatActivity.getDialogId() == j && chatActivity.getChatMode() == 0) {
                                                return;
                                            }
                                        }
                                        safeLastFragment.presentFragment(ChatActivity.of(j));
                                        return;
                                    }
                                    return;
                                }
                                if (!(tLObject instanceof TL_phone.groupCall)) {
                                    if (tL_error != null) {
                                        BulletinFactory.of(bottomSheet.topBulletinContainer, resourcesProvider).showForError(tL_error);
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
                                tL_inputGroupCall.id = groupCall2.id;
                                tL_inputGroupCall.access_hash = groupCall2.access_hash;
                                bottomSheet.lambda$new$0();
                                VoIPHelper.joinConference(LaunchActivity.instance, i, tL_inputGroupCall, false, groupcall.call, null);
                                SendMessagesHelper.getInstance(i).sendMessage(SendMessagesHelper.SendMessageParams.of(groupcall.call.invite_link, j));
                            }

                            public static void showGiftThemeApplyConfirm(Context context, Theme.ResourcesProvider resourcesProvider, int i, TL_stars.StarGift starGift, long j, final Runnable runnable) {
                                TLObject userOrChat = MessagesController.getInstance(i).getUserOrChat(j);
                                LinearLayout linearLayout = new LinearLayout(context);
                                linearLayout.setOrientation(1);
                                linearLayout.addView(new StarGiftSheet.GiftThemeReuseTopView(context, starGift, userOrChat), LayoutHelper.createLinear(-1, -2, 48, 0, -4, 0, 0));
                                TextView textView = new TextView(context);
                                textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
                                textView.setTextSize(1, 16.0f);
                                textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.GiftThemesSetInReuseInfo, DialogObject.getDialogTitle(userOrChat))));
                                linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 48, 24, 0, 24, 4));
                                new AlertDialog.Builder(context, resourcesProvider).setView(linearLayout).setPositiveButton(LocaleController.getString(C2573R.string.GiftThemesSetInReuseConfirm), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda199
                                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                    public final void onClick(AlertDialog alertDialog, int i2) {
                                        runnable.run();
                                    }
                                }).setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null).show();
                            }

                            public static BottomSheet createCustomPicker(Context context, String str, int i, final String[] strArr, final Utilities.Callback<Integer> callback) {
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
                                numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda262
                                    @Override // org.telegram.ui.Components.NumberPicker.Formatter
                                    public final String format(int i2) {
                                        return AlertsCreator.$r8$lambda$Un4hjSam3yQ0I6lTJPG4yyeqxPE(strArr, i2);
                                    }
                                });
                                LinearLayout linearLayout2 = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.69
                                    boolean ignoreLayout = false;

                                    @Override // android.widget.LinearLayout, android.view.View
                                    public void onMeasure(int i2, int i3) {
                                        this.ignoreLayout = true;
                                        numberPicker.getLayoutParams().height = AndroidUtilities.dp(42.0f) * 8;
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
                                textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda263
                                    @Override // android.view.View.OnTouchListener
                                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                                        return AlertsCreator.m9841$r8$lambda$p3mXhtmyDGsLzASOXiFJSLjZi0(view, motionEvent);
                                    }
                                });
                                linearLayout2.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
                                linearLayout2.addView(linearLayout, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
                                ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, null);
                                buttonWithCounterView.setText(LocaleController.getString(C2573R.string.Select), false);
                                buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda264
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        bottomSheetArr[0].lambda$new$0();
                                    }
                                });
                                linearLayout2.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 0, 16, 12, 16, 12));
                                builder.setCustomView(linearLayout2);
                                BottomSheet bottomSheetShow = builder.show();
                                bottomSheetShow.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda265
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

                            public static /* synthetic */ String $r8$lambda$Un4hjSam3yQ0I6lTJPG4yyeqxPE(String[] strArr, int i) {
                                return strArr[i];
                            }

                            /* JADX INFO: renamed from: $r8$lambda$p3mXhtmyDGsLzASOXiF-JSLjZi0, reason: not valid java name */
                            public static /* synthetic */ boolean m9841$r8$lambda$p3mXhtmyDGsLzASOXiFJSLjZi0(View view, MotionEvent motionEvent) {
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
                                rLottieImageView.setAnimation(C2573R.raw.raised_hand, 110, 110);
                                rLottieImageView.setAutoRepeat(false);
                                rLottieImageView.playAnimation();
                                TextView textView = new TextView(context);
                                textView.setTypeface(AndroidUtilities.bold());
                                textView.setGravity(17);
                                textView.setText(LocaleController.getString(C2573R.string.DisableSharingInfoHeader));
                                textView.setTextSize(1, 20.0f);
                                int i = Theme.key_windowBackgroundWhiteBlackText;
                                textView.setTextColor(Theme.getColor(i, resourcesProvider));
                                linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 17, 20, 0, 20, 14));
                                PremiumFeatureCell premiumFeatureCell = new PremiumFeatureCell(context, resourcesProvider);
                                premiumFeatureCell.title.setText(LocaleController.getString(C2573R.string.DisableSharingInfoHeader1));
                                premiumFeatureCell.description.setText(LocaleController.getString(C2573R.string.DisableSharingInfoText1));
                                premiumFeatureCell.nextIcon.setVisibility(8);
                                premiumFeatureCell.imageView.setImageResource(C2573R.drawable.menu_photo_off_24);
                                premiumFeatureCell.imageView.setColorFilter(Theme.getColor(i, resourcesProvider));
                                linearLayout.addView(premiumFeatureCell, LayoutHelper.createLinear(-1, -2, 6.0f, 0.0f, 6.0f, -2.0f));
                                PremiumFeatureCell premiumFeatureCell2 = new PremiumFeatureCell(context, resourcesProvider);
                                premiumFeatureCell2.title.setText(LocaleController.getString(C2573R.string.DisableSharingInfoHeader2));
                                premiumFeatureCell2.description.setText(LocaleController.getString(C2573R.string.DisableSharingInfoText2));
                                premiumFeatureCell2.nextIcon.setVisibility(8);
                                premiumFeatureCell2.imageView.setImageResource(C2573R.drawable.menu_share_off_24);
                                premiumFeatureCell2.imageView.setColorFilter(Theme.getColor(i, resourcesProvider));
                                linearLayout.addView(premiumFeatureCell2, LayoutHelper.createLinear(-1, -2, 6.0f, 0.0f, 6.0f, -2.0f));
                                PremiumFeatureCell premiumFeatureCell3 = new PremiumFeatureCell(context, resourcesProvider);
                                premiumFeatureCell3.title.setText(LocaleController.getString(C2573R.string.DisableSharingInfoHeader3));
                                premiumFeatureCell3.description.setText(LocaleController.getString(C2573R.string.DisableSharingInfoText3));
                                premiumFeatureCell3.nextIcon.setVisibility(8);
                                premiumFeatureCell3.imageView.setImageResource(C2573R.drawable.menu_download_off_24);
                                premiumFeatureCell3.imageView.setColorFilter(Theme.getColor(i, resourcesProvider));
                                linearLayout.addView(premiumFeatureCell3, LayoutHelper.createLinear(-1, -2, 6.0f, 0.0f, 6.0f, 8.0f));
                                ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
                                buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda70
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        AlertsCreator.m9771$r8$lambda$2ShZuRUm6f3MBR0x0ROyKEMYM8(zArr, dismissRunnable, view);
                                    }
                                });
                                buttonWithCounterView.setRound();
                                buttonWithCounterView.setText(LocaleController.getString(C2573R.string.DisableSharingInfoButton), false);
                                linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 16.0f, 10.0f, 16.0f, 8.0f));
                                builder.setCustomView(linearLayout);
                                builder.show().setOnDismissListener(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda71
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AlertsCreator.$r8$lambda$7QqWO7kKX_hCREqJN28fu7I9nAo(zArr, runnable);
                                    }
                                });
                            }

                            /* JADX INFO: renamed from: $r8$lambda$2ShZuR-Um6f3MBR0x0ROyKEMYM8, reason: not valid java name */
                            public static /* synthetic */ void m9771$r8$lambda$2ShZuRUm6f3MBR0x0ROyKEMYM8(boolean[] zArr, Runnable runnable, View view) {
                                zArr[0] = true;
                                runnable.run();
                            }

                            public static /* synthetic */ void $r8$lambda$7QqWO7kKX_hCREqJN28fu7I9nAo(boolean[] zArr, Runnable runnable) {
                                if (!zArr[0] || runnable == null) {
                                    return;
                                }
                                runnable.run();
                            }
                        }
