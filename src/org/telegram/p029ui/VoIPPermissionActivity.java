package org.telegram.p029ui;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import java.util.ArrayList;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.voip.VoIPPreNotificationService;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.p029ui.Components.voip.VoIPHelper;
import org.telegram.tgnet.p028tl.TL_phone;

/* JADX INFO: loaded from: classes6.dex */
@TargetApi(23)
public class VoIPPermissionActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        boolean zIsVideo;
        super.onCreate(bundle);
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            TL_phone.PhoneCall phoneCall = sharedInstance.privateCall;
            zIsVideo = phoneCall != null && phoneCall.video;
        } else {
            zIsVideo = VoIPPreNotificationService.isVideo();
        }
        ArrayList arrayList = new ArrayList();
        if (checkSelfPermission("android.permission.RECORD_AUDIO") != 0) {
            arrayList.add("android.permission.RECORD_AUDIO");
        }
        if (zIsVideo && checkSelfPermission("android.permission.CAMERA") != 0) {
            arrayList.add("android.permission.CAMERA");
        }
        if (Build.VERSION.SDK_INT >= 31 && checkSelfPermission("android.permission.BLUETOOTH_CONNECT") != 0 && !shouldShowRequestPermissionRationale("android.permission.BLUETOOTH_CONNECT")) {
            arrayList.add("android.permission.BLUETOOTH_CONNECT");
        }
        if (arrayList.isEmpty()) {
            return;
        }
        try {
            requestPermissions((String[]) arrayList.toArray(new String[0]), zIsVideo ? 102 : 101);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 101 || i == 102) {
            boolean z = false;
            int i2 = 0;
            while (true) {
                if (i2 >= iArr.length) {
                    z = true;
                    break;
                } else if (iArr[i2] != 0) {
                    break;
                } else {
                    i2++;
                }
            }
            if (iArr.length > 0 && z) {
                if (VoIPService.getSharedInstance() != null) {
                    VoIPService.getSharedInstance().acceptIncomingCall();
                } else {
                    VoIPPreNotificationService.answer(this);
                }
                finish();
                startActivity(new Intent(this, (Class<?>) LaunchActivity.class).setAction("voip"));
                return;
            }
            if (!shouldShowRequestPermissionRationale("android.permission.RECORD_AUDIO")) {
                if (VoIPService.getSharedInstance() != null) {
                    VoIPService.getSharedInstance().declineIncomingCall();
                } else {
                    VoIPPreNotificationService.decline(this, 1);
                }
                VoIPHelper.permissionDenied(this, new Runnable() { // from class: org.telegram.ui.VoIPPermissionActivity$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.finish();
                    }
                }, i);
                return;
            }
            finish();
        }
    }
}
