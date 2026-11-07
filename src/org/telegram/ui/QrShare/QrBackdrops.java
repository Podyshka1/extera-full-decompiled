package org.telegram.ui.QrShare;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public final class QrBackdrops {
    private static final QrBackdrops[] instances = new QrBackdrops[16];
    private final int account;
    private TLRPC.TL_shareThemeBackdrops backdrops;
    private final ArrayList<Runnable> callbacks = new ArrayList<>();
    private boolean loading;
    private boolean refreshed;

    public static QrBackdrops get(int i) {
        QrBackdrops[] qrBackdropsArr = instances;
        if (qrBackdropsArr[i] == null) {
            qrBackdropsArr[i] = new QrBackdrops(i);
        }
        return qrBackdropsArr[i];
    }

    private QrBackdrops(int i) {
        this.account = i;
        String string = getPrefs().getString("qrBackdrops", null);
        if (TextUtils.isEmpty(string)) {
            return;
        }
        try {
            SerializedData serializedData = new SerializedData(Utilities.hexToBytes(string));
            TLRPC.ShareThemeBackdrops shareThemeBackdropsTLdeserialize = TLRPC.ShareThemeBackdrops.TLdeserialize(serializedData, serializedData.readInt32(false), false);
            if (shareThemeBackdropsTLdeserialize instanceof TLRPC.TL_shareThemeBackdrops) {
                this.backdrops = (TLRPC.TL_shareThemeBackdrops) shareThemeBackdropsTLdeserialize;
            }
            serializedData.cleanup();
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    private SharedPreferences getPrefs() {
        return MessagesController.getMainSettings(this.account);
    }

    public List<TLRPC.TL_shareThemeBackdropOption> getList() {
        TLRPC.TL_shareThemeBackdrops tL_shareThemeBackdrops = this.backdrops;
        if (tL_shareThemeBackdrops != null) {
            return tL_shareThemeBackdrops.backdrops;
        }
        return null;
    }

    public void load(Runnable runnable) {
        if (this.refreshed) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        if (runnable != null) {
            this.callbacks.add(runnable);
        }
        if (this.loading) {
            return;
        }
        this.loading = true;
        TLRPC.TL_messages_getShareThemeBackdrops tL_messages_getShareThemeBackdrops = new TLRPC.TL_messages_getShareThemeBackdrops();
        TLRPC.TL_shareThemeBackdrops tL_shareThemeBackdrops = this.backdrops;
        tL_messages_getShareThemeBackdrops.hash = tL_shareThemeBackdrops != null ? tL_shareThemeBackdrops.hash : 0;
        ConnectionsManager.getInstance(this.account).sendRequestTyped(tL_messages_getShareThemeBackdrops, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.QrShare.QrBackdrops$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$load$0((TLRPC.ShareThemeBackdrops) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$0(TLRPC.ShareThemeBackdrops shareThemeBackdrops, TLRPC.TL_error tL_error) {
        int i = 0;
        this.loading = false;
        if (shareThemeBackdrops instanceof TLRPC.TL_shareThemeBackdrops) {
            this.backdrops = (TLRPC.TL_shareThemeBackdrops) shareThemeBackdrops;
            save();
        }
        this.refreshed = shareThemeBackdrops != null;
        ArrayList arrayList = new ArrayList(this.callbacks);
        this.callbacks.clear();
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((Runnable) obj).run();
        }
    }

    private void save() {
        try {
            SerializedData serializedData = new SerializedData(this.backdrops.getObjectSize());
            this.backdrops.serializeToStream(serializedData);
            getPrefs().edit().putString("qrBackdrops", Utilities.bytesToHex(serializedData.toByteArray())).apply();
            serializedData.cleanup();
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }
}
