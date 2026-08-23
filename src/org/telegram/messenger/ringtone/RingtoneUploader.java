package org.telegram.messenger.ringtone;

import java.io.File;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;

/* JADX INFO: loaded from: classes5.dex */
public class RingtoneUploader implements NotificationCenter.NotificationCenterDelegate {
    private boolean canceled;
    private int currentAccount;
    public final String filePath;

    public RingtoneUploader(String str, int i) {
        this.currentAccount = i;
        this.filePath = str;
        subscribe();
        FileLoader.getInstance(i).uploadFile(str, false, true, ConnectionsManager.FileTypeAudio);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.fileUploaded) {
            String str = (String) objArr[0];
            if (!this.canceled && str.equals(this.filePath)) {
                TLRPC.InputFile inputFile = (TLRPC.InputFile) objArr[1];
                TL_account.uploadRingtone uploadringtone = new TL_account.uploadRingtone();
                uploadringtone.file = inputFile;
                uploadringtone.file_name = inputFile.name;
                String fileExtension = FileLoader.getFileExtension(new File(inputFile.name));
                uploadringtone.mime_type = fileExtension;
                if ("ogg".equals(fileExtension)) {
                    uploadringtone.mime_type = "audio/ogg";
                } else {
                    uploadringtone.mime_type = "audio/mpeg";
                }
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(uploadringtone, new RequestDelegate() { // from class: org.telegram.messenger.ringtone.RingtoneUploader$$ExternalSyntheticLambda0
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$didReceivedNotification$1(tLObject, tL_error);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$1(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ringtone.RingtoneUploader$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$didReceivedNotification$0(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$0(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            onComplete((TLRPC.Document) tLObject);
        } else {
            error(tL_error);
        }
        unsubscribe();
    }

    private void subscribe() {
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileUploaded);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileUploadFailed);
    }

    private void unsubscribe() {
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileUploaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileUploadFailed);
    }

    private void onComplete(TLRPC.Document document) {
        MediaDataController.getInstance(this.currentAccount).onRingtoneUploaded(this.filePath, document, false);
    }

    public void cancel() {
        this.canceled = true;
        unsubscribe();
        FileLoader.getInstance(this.currentAccount).cancelFileUpload(this.filePath, false);
        MediaDataController.getInstance(this.currentAccount).onRingtoneUploaded(this.filePath, null, true);
    }

    public void error(final TLRPC.TL_error tL_error) {
        unsubscribe();
        MediaDataController.getInstance(this.currentAccount).onRingtoneUploaded(this.filePath, null, true);
        if (tL_error != null) {
            NotificationCenter.getInstance(this.currentAccount).doOnIdle(new Runnable() { // from class: org.telegram.messenger.ringtone.RingtoneUploader$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$error$2(tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$error$2(TLRPC.TL_error tL_error) {
        if (tL_error.text.equals("RINGTONE_DURATION_TOO_LONG")) {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 4, LocaleController.formatString("TooLongError", C2888R.string.TooLongError, new Object[0]), LocaleController.formatString("ErrorRingtoneDurationTooLong", C2888R.string.ErrorRingtoneDurationTooLong, Integer.valueOf(MessagesController.getInstance(this.currentAccount).ringtoneDurationMax)));
        } else if (tL_error.text.equals("RINGTONE_SIZE_TOO_BIG")) {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 4, LocaleController.formatString("TooLargeError", C2888R.string.TooLargeError, new Object[0]), LocaleController.formatString("ErrorRingtoneSizeTooBig", C2888R.string.ErrorRingtoneSizeTooBig, Integer.valueOf(MessagesController.getInstance(this.currentAccount).ringtoneSizeMax / 1024)));
        } else {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 4, LocaleController.formatString("InvalidFormatError", C2888R.string.InvalidFormatError, new Object[0]), LocaleController.getString(C2888R.string.ErrorRingtoneInvalidFormat));
        }
    }
}
