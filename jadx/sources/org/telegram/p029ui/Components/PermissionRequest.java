package org.telegram.p029ui.Components;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.LaunchActivity;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PermissionRequest {
    private static int lastId = 1500;

    public static void ensurePermission(int i, int i2, String str, Utilities.Callback callback) {
        ensureEitherPermission(i, i2, new String[]{str}, new String[]{str}, callback);
    }

    public static void ensureEitherPermission(int i, int i2, String[] strArr, final String[] strArr2, final Utilities.Callback callback) {
        final Activity activityFindActivity = LaunchActivity.instance;
        if (activityFindActivity == null) {
            activityFindActivity = AndroidUtilities.findActivity(ApplicationLoader.applicationContext);
        }
        if (activityFindActivity == null) {
            return;
        }
        for (String str : strArr) {
            if (activityFindActivity.checkSelfPermission(str) == 0) {
                if (callback != null) {
                    callback.run(Boolean.TRUE);
                    return;
                }
                return;
            }
        }
        for (String str2 : strArr) {
            if (!activityFindActivity.shouldShowRequestPermissionRationale(str2)) {
                new AlertDialog.Builder(activityFindActivity, null).setTopAnimation(i, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).setMessage(AndroidUtilities.replaceTags(LocaleController.getString(i2))).setPositiveButton(LocaleController.getString(C2888R.string.PermissionOpenSettings), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.PermissionRequest$$ExternalSyntheticLambda1
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i3) {
                        PermissionRequest.$r8$lambda$q0hX_pJpuHZP4mTkT6vEQnDXWEE(activityFindActivity, alertDialog, i3);
                    }
                }).setNegativeButton(LocaleController.getString(C2888R.string.ContactsPermissionAlertNotNow), null).create().show();
                if (callback != null) {
                    callback.run(Boolean.FALSE);
                    return;
                }
                return;
            }
        }
        requestPermissions(strArr2, new Utilities.Callback() { // from class: org.telegram.ui.Components.PermissionRequest$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                PermissionRequest.$r8$lambda$q9ATOAOAN4Qvrdb6vy7_1KuGHfs(strArr2, activityFindActivity, callback, (int[]) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$q0hX_pJpuHZP4mTkT6vEQnDXWEE(Activity activity, AlertDialog alertDialog, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            activity.startActivity(intent);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public static /* synthetic */ void $r8$lambda$q9ATOAOAN4Qvrdb6vy7_1KuGHfs(String[] strArr, Activity activity, Utilities.Callback callback, int[] iArr) {
        int length = strArr.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            if (activity.checkSelfPermission(strArr[i]) == 0) {
                z = true;
                break;
            }
            i++;
        }
        if (callback != null) {
            callback.run(Boolean.valueOf(z));
        }
    }

    public static void ensureAllPermissions(int i, int i2, String[] strArr, Utilities.Callback callback) {
        ensureAllPermissions(i, i2, strArr, strArr, callback);
    }

    public static void ensureAllPermissions(int i, int i2, String[] strArr, final String[] strArr2, final Utilities.Callback callback) {
        final Activity activityFindActivity = LaunchActivity.instance;
        if (activityFindActivity == null) {
            activityFindActivity = AndroidUtilities.findActivity(ApplicationLoader.applicationContext);
        }
        if (activityFindActivity == null) {
            return;
        }
        for (String str : strArr) {
            if (activityFindActivity.checkSelfPermission(str) != 0) {
                for (String str2 : strArr) {
                    if (activityFindActivity.shouldShowRequestPermissionRationale(str2)) {
                        new AlertDialog.Builder(activityFindActivity, null).setTopAnimation(i, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).setMessage(AndroidUtilities.replaceTags(LocaleController.getString(i2))).setPositiveButton(LocaleController.getString(C2888R.string.PermissionOpenSettings), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.PermissionRequest$$ExternalSyntheticLambda3
                            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                            public final void onClick(AlertDialog alertDialog, int i3) {
                                PermissionRequest.m11248$r8$lambda$rqSIchz3KrqjwF9F5tplg1vFfk(activityFindActivity, alertDialog, i3);
                            }
                        }).setNegativeButton(LocaleController.getString(C2888R.string.ContactsPermissionAlertNotNow), null).create().show();
                        if (callback != null) {
                            callback.run(Boolean.FALSE);
                            return;
                        }
                        return;
                    }
                }
                requestPermissions(strArr2, new Utilities.Callback() { // from class: org.telegram.ui.Components.PermissionRequest$$ExternalSyntheticLambda4
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        PermissionRequest.$r8$lambda$xa6dWFIyXHQ433VJXZn8tMIv4bE(strArr2, activityFindActivity, callback, (int[]) obj);
                    }
                });
                return;
            }
        }
        if (callback != null) {
            callback.run(Boolean.TRUE);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$rqSIchz3-KrqjwF9F5tplg1vFfk, reason: not valid java name */
    public static /* synthetic */ void m11248$r8$lambda$rqSIchz3KrqjwF9F5tplg1vFfk(Activity activity, AlertDialog alertDialog, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            activity.startActivity(intent);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public static /* synthetic */ void $r8$lambda$xa6dWFIyXHQ433VJXZn8tMIv4bE(String[] strArr, Activity activity, Utilities.Callback callback, int[] iArr) {
        int length = strArr.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = true;
                break;
            } else if (activity.checkSelfPermission(strArr[i]) != 0) {
                break;
            } else {
                i++;
            }
        }
        if (callback != null) {
            callback.run(Boolean.valueOf(z));
        }
    }

    public static void requestPermission(String str, final Utilities.Callback callback) {
        requestPermissions(new String[]{str}, callback != null ? new Utilities.Callback() { // from class: org.telegram.ui.Components.PermissionRequest$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                PermissionRequest.m11247$r8$lambda$iRU0goqpimQBvdfDKQXDlUe4eE(callback, (int[]) obj);
            }
        } : null);
    }

    /* JADX INFO: renamed from: $r8$lambda$iRU0goqpim-QBvdfDKQXDlUe4eE, reason: not valid java name */
    public static /* synthetic */ void m11247$r8$lambda$iRU0goqpimQBvdfDKQXDlUe4eE(Utilities.Callback callback, int[] iArr) {
        boolean z = false;
        if (iArr.length >= 1 && iArr[0] == 0) {
            z = true;
        }
        callback.run(Boolean.valueOf(z));
    }

    public static void requestPermissions(String[] strArr, final Utilities.Callback callback) {
        Activity activityFindActivity = LaunchActivity.instance;
        if (activityFindActivity == null) {
            activityFindActivity = AndroidUtilities.findActivity(ApplicationLoader.applicationContext);
        }
        if (activityFindActivity == null) {
            return;
        }
        final int i = lastId;
        lastId = i + 1;
        final NotificationCenter.NotificationCenterDelegate[] notificationCenterDelegateArr = new NotificationCenter.NotificationCenterDelegate[1];
        notificationCenterDelegateArr[0] = new NotificationCenter.NotificationCenterDelegate() { // from class: org.telegram.ui.Components.PermissionRequest.1
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public void didReceivedNotification(int i2, int i3, Object... objArr) {
                int i4 = NotificationCenter.activityPermissionsGranted;
                if (i2 == i4) {
                    int iIntValue = ((Integer) objArr[0]).intValue();
                    int[] iArr = (int[]) objArr[2];
                    if (iIntValue == i) {
                        Utilities.Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.run(iArr);
                        }
                        NotificationCenter.getGlobalInstance().removeObserver(notificationCenterDelegateArr[0], i4);
                    }
                }
            }
        };
        NotificationCenter.getGlobalInstance().addObserver(notificationCenterDelegateArr[0], NotificationCenter.activityPermissionsGranted);
        activityFindActivity.requestPermissions(strArr, i);
    }

    public static boolean hasPermission(String str) {
        Context contextFindActivity = LaunchActivity.instance;
        if (contextFindActivity == null) {
            contextFindActivity = AndroidUtilities.findActivity(ApplicationLoader.applicationContext);
        }
        return contextFindActivity != null && contextFindActivity.checkSelfPermission(str) == 0;
    }

    public static boolean canAskPermission(String str) {
        Activity activityFindActivity = LaunchActivity.instance;
        if (activityFindActivity == null) {
            activityFindActivity = AndroidUtilities.findActivity(ApplicationLoader.applicationContext);
        }
        if (activityFindActivity == null) {
            return false;
        }
        return activityFindActivity.shouldShowRequestPermissionRationale(str);
    }

    public static void showPermissionSettings(String str) {
        Activity activityFindActivity = LaunchActivity.instance;
        if (activityFindActivity == null) {
            activityFindActivity = AndroidUtilities.findActivity(ApplicationLoader.applicationContext);
        }
        if (activityFindActivity == null) {
            return;
        }
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
        try {
            activityFindActivity.startActivity(intent);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }
}
