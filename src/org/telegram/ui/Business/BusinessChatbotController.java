package org.telegram.ui.Business;

import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;

/* JADX INFO: loaded from: classes6.dex */
public class BusinessChatbotController {
    private static volatile BusinessChatbotController[] Instance = new BusinessChatbotController[16];
    private static final Object[] lockObjects = new Object[16];
    private ArrayList<Utilities.Callback<TL_account.connectedBots>> callbacks = new ArrayList<>();
    private final int currentAccount;
    private long lastTime;
    private boolean loaded;
    private boolean loading;
    private TL_account.connectedBots value;

    static {
        for (int i = 0; i < 16; i++) {
            lockObjects[i] = new Object();
        }
    }

    public static BusinessChatbotController getInstance(int i) {
        BusinessChatbotController businessChatbotController;
        BusinessChatbotController businessChatbotController2 = Instance[i];
        if (businessChatbotController2 != null) {
            return businessChatbotController2;
        }
        synchronized (lockObjects[i]) {
            try {
                businessChatbotController = Instance[i];
                if (businessChatbotController == null) {
                    BusinessChatbotController[] businessChatbotControllerArr = Instance;
                    BusinessChatbotController businessChatbotController3 = new BusinessChatbotController(i);
                    businessChatbotControllerArr[i] = businessChatbotController3;
                    businessChatbotController = businessChatbotController3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return businessChatbotController;
    }

    private BusinessChatbotController(int i) {
        this.currentAccount = i;
    }

    public TL_account.connectedBots getValue() {
        return this.value;
    }

    public void load(Utilities.Callback<TL_account.connectedBots> callback) {
        boolean z;
        if (callback != null) {
            this.callbacks.add(callback);
        }
        if (this.loading) {
            return;
        }
        if (System.currentTimeMillis() - this.lastTime > 60000 || !(z = this.loaded)) {
            this.loading = true;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account.getConnectedBots(), new RequestDelegate() { // from class: org.telegram.ui.Business.BusinessChatbotController$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$load$1(tLObject, tL_error);
                }
            });
        } else if (z) {
            notifyUpdate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$1(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.BusinessChatbotController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$load$0(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$0(TLObject tLObject) {
        this.loading = false;
        TL_account.connectedBots connectedbots = tLObject instanceof TL_account.connectedBots ? (TL_account.connectedBots) tLObject : null;
        this.value = connectedbots;
        if (connectedbots != null) {
            MessagesController.getInstance(this.currentAccount).putUsers(this.value.users, false);
        }
        this.lastTime = System.currentTimeMillis();
        this.loaded = true;
        notifyUpdate();
    }

    public void notifyUpdate() {
        int i = 0;
        while (true) {
            int size = this.callbacks.size();
            ArrayList<Utilities.Callback<TL_account.connectedBots>> arrayList = this.callbacks;
            if (i < size) {
                if (arrayList.get(i) != null) {
                    this.callbacks.get(i).run(this.value);
                }
                i++;
            } else {
                arrayList.clear();
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updatedChatbot, new Object[0]);
                return;
            }
        }
    }

    public void invalidate(boolean z) {
        this.loaded = false;
        if (z) {
            load(null);
        }
    }
}
