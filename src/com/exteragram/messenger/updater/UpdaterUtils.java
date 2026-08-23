package com.exteragram.messenger.updater;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInstaller;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.arch.core.util.Function;
import androidx.core.app.NotificationChannelCompat;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.utils.AppUtils;
import com.exteragram.messenger.utils.network.RemoteUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.XiaomiUtilities;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.StickerImageView;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes.dex */
public abstract class UpdaterUtils {
    private static AlertDialog dialog;

    public static void getAppUpdate(final Utilities.Callback2 callback2) {
        RemoteUtils.getMessages(new Utilities.Callback2() { // from class: com.exteragram.messenger.updater.UpdaterUtils$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                UpdaterUtils.$r8$lambda$2UAZ2HqXxk8Nz7zqmbeCwTKXcr0(callback2, (TLRPC.messages_Messages) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$2UAZ2HqXxk8Nz7zqmbeCwTKXcr0(Utilities.Callback2 callback2, TLRPC.messages_Messages messages_messages, TLRPC.TL_error tL_error) {
        if (tL_error != null || messages_messages == null) {
            callback2.run(null, tL_error);
            return;
        }
        TLRPC.TL_help_appUpdate updateResponse = parseUpdateResponse(messages_messages);
        if (updateResponse.f1725id > 0) {
            callback2.run(updateResponse, null);
            return;
        }
        TLRPC.TL_error tL_error2 = new TLRPC.TL_error();
        tL_error2.text = "NO_UPDATE_METADATA";
        callback2.run(updateResponse, tL_error2);
    }

    private static TLRPC.TL_help_appUpdate parseUpdateResponse(TLRPC.messages_Messages messages_messages) {
        int i;
        int i2;
        int i3;
        String strTrim;
        TLRPC.TL_help_appUpdate tL_help_appUpdate = new TLRPC.TL_help_appUpdate();
        ArrayList arrayList = messages_messages.messages;
        int size = arrayList.size();
        int i4 = 0;
        while (true) {
            i = -1;
            if (i4 >= size) {
                i2 = -1;
                i3 = -1;
                break;
            }
            Object obj = arrayList.get(i4);
            i4++;
            TLRPC.Message message = (TLRPC.Message) obj;
            if ((message instanceof TLRPC.TL_message) && ((message.message.startsWith("update_test") && BadgesController.INSTANCE.isDeveloper()) || ((message.message.startsWith("update_lite_beta") && BuildVars.isBetaApp() && BuildVars.IS_LITE_VERSION) || ((message.message.startsWith("update_lite_stable") && !BuildVars.isBetaApp() && BuildVars.IS_LITE_VERSION) || ((message.message.startsWith("update_beta") && BuildVars.isBetaApp() && !BuildVars.IS_LITE_VERSION) || (message.message.startsWith("update_stable") && !BuildVars.isBetaApp() && !BuildVars.IS_LITE_VERSION)))))) {
                String[] strArrSplit = message.message.split("\n");
                if (strArrSplit.length >= 6) {
                    int i5 = -1;
                    i2 = -1;
                    i3 = -1;
                    for (String str : strArrSplit) {
                        String[] strArrSplit2 = str.split("=", 2);
                        if (strArrSplit2.length == 2) {
                            String strTrim2 = strArrSplit2[0].trim();
                            strTrim = strArrSplit2[1].trim();
                            strTrim2.getClass();
                            switch (strTrim2) {
                                case "sticker":
                                    i2 = Integer.parseInt(strTrim);
                                    break;
                                case "can_not_skip":
                                    tL_help_appUpdate.can_not_skip = Boolean.parseBoolean(strTrim);
                                    break;
                                case "text":
                                    i3 = Integer.parseInt(strTrim);
                                    break;
                                case "version":
                                    tL_help_appUpdate.version = strTrim;
                                    break;
                                case "document":
                                    i5 = Integer.parseInt(strTrim);
                                    break;
                            }
                        }
                    }
                    tL_help_appUpdate.f1725id = message.f1686id;
                    i = i5;
                }
            }
        }
        ArrayList arrayList2 = messages_messages.messages;
        int size2 = arrayList2.size();
        int i6 = 0;
        while (i6 < size2) {
            Object obj2 = arrayList2.get(i6);
            i6++;
            TLRPC.Message message2 = (TLRPC.Message) obj2;
            if (message2 instanceof TLRPC.TL_message) {
                if (message2.f1686id == i3) {
                    tL_help_appUpdate.entities = message2.entities;
                    tL_help_appUpdate.text = message2.message;
                } else {
                    TLRPC.MessageMedia messageMedia = message2.media;
                    if (messageMedia != null) {
                        TLRPC.Document document = messageMedia.getDocument();
                        if (message2.f1686id == i && !document.attributes.isEmpty() && document.attributes.get(0).file_name.endsWith(".apk")) {
                            tL_help_appUpdate.document = document;
                            tL_help_appUpdate.flags |= 2;
                        } else if (message2.f1686id == i2 && MessageObject.isStickerDocument(document)) {
                            tL_help_appUpdate.sticker = document;
                            tL_help_appUpdate.flags |= 8;
                        }
                    }
                }
            }
        }
        return tL_help_appUpdate;
    }

    public static void installUpdate(final Activity activity, TLRPC.Document document) {
        if (activity == null || document == null) {
            return;
        }
        if (XiaomiUtilities.isMIUI()) {
            AndroidUtilities.openForView(document, activity);
            return;
        }
        final File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(document, true);
        if (pathToAttach == null) {
            return;
        }
        AlertDialog alertDialog = dialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            showInstallDialog(activity);
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.updater.UpdaterUtils$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    UpdaterUtils.$r8$lambda$zEBo0VGo0yW4IXbbAahjubhZI0U(activity, pathToAttach);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$zEBo0VGo0yW4IXbbAahjubhZI0U(Activity activity, File file) {
        InstallReceiver installReceiverRegister = register(activity, new Runnable() { // from class: com.exteragram.messenger.updater.UpdaterUtils$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                UpdaterUtils.$r8$lambda$QoJtvgafGFst_6huPKkX41WQHeM();
            }
        });
        installApk(activity, file);
        Intent intentWaitIntent = installReceiverRegister.waitIntent();
        if (intentWaitIntent != null) {
            activity.startActivity(intentWaitIntent);
        }
    }

    public static /* synthetic */ void $r8$lambda$QoJtvgafGFst_6huPKkX41WQHeM() {
        AlertDialog alertDialog = dialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
            dialog = null;
        }
    }

    private static void showInstallDialog(Activity activity) {
        String string;
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(LayoutHelper.createFrame(-1, -2.0f, 51, 4.0f, 4.0f, 4.0f, 4.0f));
        StickerImageView stickerImageView = new StickerImageView(activity, UserConfig.selectedAccount);
        stickerImageView.setStickerPackName("UtyaDuckFull");
        stickerImageView.setStickerNum(0);
        stickerImageView.getImageReceiver().setAutoRepeat(1);
        linearLayout.addView(stickerImageView, LayoutHelper.createLinear(160, 160, 49, 17, 24, 17, 0));
        TextView textView = new TextView(activity);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setTextSize(1, 16.0f);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setText(LocaleController.getString(C2888R.string.UpdateInstalling));
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 49, 17, 20, 17, 0));
        TextView textView2 = new TextView(activity);
        textView2.setGravity(17);
        textView2.setTextSize(1, 13.0f);
        textView2.setTextColor(Theme.getColor(Theme.key_dialogTextGray));
        if (Build.VERSION.SDK_INT < 29 || Settings.canDrawOverlays(activity)) {
            string = LocaleController.getString(C2888R.string.UpdateInstallingRelaunch);
        } else {
            string = LocaleController.getString(C2888R.string.UpdateInstallingNotification);
        }
        textView2.setText(string);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-2, -2, 49, 17, 4, 17, 24));
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(linearLayout);
        AlertDialog alertDialogCreate = builder.create();
        dialog = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        dialog.setCancelable(false);
        dialog.show();
    }

    private static void installApk(Activity activity, File file) {
        PackageInstaller.Session sessionOpenSession;
        OutputStream outputStreamOpenWrite;
        PendingIntent broadcast = PendingIntent.getBroadcast(activity, 0, new Intent(UpdaterUtils.class.getName()).setPackage(activity.getPackageName()), 167772160);
        PackageInstaller packageInstaller = activity.getPackageManager().getPackageInstaller();
        PackageInstaller.SessionParams sessionParams = new PackageInstaller.SessionParams(1);
        if (Build.VERSION.SDK_INT >= 31) {
            sessionParams.setRequireUserAction(2);
        }
        try {
            sessionOpenSession = packageInstaller.openSession(packageInstaller.createSession(sessionParams));
            try {
                outputStreamOpenWrite = sessionOpenSession.openWrite(file.getName(), 0L, file.length());
            } finally {
            }
        } catch (IOException e) {
            FileLog.m1136e(e);
            handleInstallError(activity, file, e);
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                transfer(fileInputStream, outputStreamOpenWrite);
                fileInputStream.close();
                if (outputStreamOpenWrite != null) {
                    outputStreamOpenWrite.close();
                }
                sessionOpenSession.commit(broadcast.getIntentSender());
                sessionOpenSession.close();
            } finally {
            }
        } finally {
            FileLog.m1136e(e);
            handleInstallError(activity, file, e);
        }
    }

    private static void handleInstallError(Activity activity, File file, IOException iOException) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.updater.UpdaterUtils$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                UpdaterUtils.m2791$r8$lambda$JrnIHfIWjS4z_PFGN622PKVTCU();
            }
        });
        AlertsCreator.createSimpleAlert(activity, LocaleController.getString(C2888R.string.ErrorOccurred) + "\n" + iOException.getLocalizedMessage()).show();
        AndroidUtilities.openForView(file, "install.apk", "application/vnd.android.package-archive", activity, null, false);
    }

    /* JADX INFO: renamed from: $r8$lambda$J-rnIHfIWjS4z_PFGN622PKVTCU, reason: not valid java name */
    public static /* synthetic */ void m2791$r8$lambda$JrnIHfIWjS4z_PFGN622PKVTCU() {
        AlertDialog alertDialog = dialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
            dialog = null;
        }
    }

    private static void transfer(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        while (true) {
            int i = inputStream.read(bArr, 0, 8192);
            if (i < 0) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        }
    }

    private static InstallReceiver register(Context context, Runnable runnable) {
        InstallReceiver installReceiver = new InstallReceiver(context, ApplicationLoader.getApplicationId(), runnable);
        ContextCompat.registerReceiver(context, installReceiver, new IntentFilter(UpdaterUtils.class.getName()), 4);
        return installReceiver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes4.dex */
    static class InstallReceiver extends BroadcastReceiver {
        private final Context context;
        private Intent intent;
        private final CountDownLatch latch;
        private final Runnable onSuccess;
        private final String packageName;

        private InstallReceiver(Context context, String str, Runnable runnable) {
            this.latch = new CountDownLatch(1);
            this.intent = null;
            this.context = context;
            this.packageName = str;
            this.onSuccess = runnable;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.PACKAGE_ADDED".equals(intent.getAction())) {
                Uri data = intent.getData();
                if (data == null || this.onSuccess == null || !data.getSchemeSpecificPart().equals(this.packageName)) {
                    return;
                }
                this.onSuccess.run();
                this.context.unregisterReceiver(this);
                return;
            }
            handlePackageInstallerResult(intent);
        }

        private void handlePackageInstallerResult(Intent intent) {
            int intExtra = intent.getIntExtra("android.content.pm.extra.STATUS", 4);
            if (intExtra == -1) {
                this.intent = (Intent) intent.getParcelableExtra("android.intent.extra.INTENT");
            } else {
                if (intExtra == 1 || intExtra == 2 || intExtra == 4 || intExtra == 5 || intExtra == 6 || intExtra == 7) {
                    handleFailure(intent);
                }
                Runnable runnable = this.onSuccess;
                if (runnable != null) {
                    runnable.run();
                }
                this.context.unregisterReceiver(this);
            }
            this.latch.countDown();
        }

        private void handleFailure(final Intent intent) {
            PackageInstaller packageInstaller;
            PackageInstaller.SessionInfo sessionInfo;
            int intExtra = intent.getIntExtra("android.content.pm.extra.SESSION_ID", 0);
            if (intExtra > 0 && (sessionInfo = (packageInstaller = this.context.getPackageManager().getPackageInstaller()).getSessionInfo(intExtra)) != null) {
                packageInstaller.abandonSession(sessionInfo.getSessionId());
            }
            Context context = this.context;
            if (context instanceof LaunchActivity) {
                ((LaunchActivity) context).showBulletin(new Function() { // from class: com.exteragram.messenger.updater.UpdaterUtils$InstallReceiver$$ExternalSyntheticLambda0
                    @Override // androidx.arch.core.util.Function
                    public final Object apply(Object obj) {
                        return ((BulletinFactory) obj).createErrorBulletin(LocaleController.formatString(C2888R.string.UpdateFailedToInstall, Integer.valueOf(intent.getIntExtra("android.content.pm.extra.STATUS", 1))));
                    }
                });
            }
        }

        public Intent waitIntent() {
            try {
                this.latch.await(5L, TimeUnit.SECONDS);
            } catch (Exception unused) {
            }
            return this.intent;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class UpdateReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.MY_PACKAGE_REPLACED".equals(intent.getAction())) {
                String packageName = context.getPackageName();
                if (packageName.equals(context.getPackageManager().getInstallerPackageName(packageName))) {
                    launchApp(context);
                }
            }
        }

        private void launchApp(Context context) {
            Intent flags = new Intent(context, (Class<?>) LaunchActivity.class).setFlags(268435456);
            if (Build.VERSION.SDK_INT < 29 || Settings.canDrawOverlays(context)) {
                context.startActivity(flags);
            } else {
                showNotification(context, flags);
            }
        }

        private void showNotification(Context context, Intent intent) {
            NotificationChannelCompat notificationChannelCompatBuild = new NotificationChannelCompat.Builder("updated", 4).setName(LocaleController.getString(C2888R.string.UpdateApp)).setLightsEnabled(false).setVibrationEnabled(false).setSound(null, null).build();
            NotificationManagerCompat notificationManagerCompatFrom = NotificationManagerCompat.from(context);
            notificationManagerCompatFrom.createNotificationChannel(notificationChannelCompatBuild);
            notificationManagerCompatFrom.notify(8732833, new NotificationCompat.Builder(context, "updated").setSmallIcon(C2888R.drawable.notification).setColor(AppUtils.getNotificationColor()).setShowWhen(false).setContentText(LocaleController.getString(C2888R.string.UpdateInstalledNotification)).setCategory("status").setContentIntent(PendingIntent.getActivity(context, 0, intent, 201326592)).build());
        }
    }
}
