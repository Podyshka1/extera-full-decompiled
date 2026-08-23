package org.telegram.ui.Components.poll;

import androidx.collection.LongSparseArray;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;

/* JADX INFO: loaded from: classes7.dex */
public class WebPageLoader {
    private final int currentAccount;
    private final HashMap<String, TLRPC.WebPage> pages = new HashMap<>();
    private final HashMap<String, ArrayList<Utilities.Callback2<TLRPC.WebPage, TLObject>>> callbacks = new HashMap<>();

    public WebPageLoader(int i) {
        this.currentAccount = i;
    }

    public boolean isLoading(String str) {
        return this.callbacks.containsKey(str);
    }

    public TLRPC.WebPage getWebPage(String str) {
        return this.pages.get(str);
    }

    public void get(final String str, Utilities.Callback2<TLRPC.WebPage, TLObject> callback2) {
        if (this.pages.containsKey(str)) {
            callback2.run(this.pages.get(str), null);
            return;
        }
        boolean zContainsKey = this.callbacks.containsKey(str);
        ArrayList<Utilities.Callback2<TLRPC.WebPage, TLObject>> arrayList = this.callbacks.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.callbacks.put(str, arrayList);
        }
        arrayList.add(callback2);
        if (zContainsKey) {
            return;
        }
        TL_account.getWebPagePreview getwebpagepreview = new TL_account.getWebPagePreview();
        getwebpagepreview.message = str;
        ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(getwebpagepreview, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Components.poll.WebPageLoader$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$get$0(str, (TL_account.webPagePreview) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$get$0(String str, TL_account.webPagePreview webpagepreview, TLRPC.TL_error tL_error) {
        TLRPC.WebPage webPage;
        int i = 0;
        if (webpagepreview != null) {
            MessagesController.getInstance(this.currentAccount).putUsers(webpagepreview.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(webpagepreview.chats, false);
            TLRPC.MessageMedia messageMedia = webpagepreview.media;
            webPage = messageMedia != null ? messageMedia.webpage : null;
        }
        this.pages.put(str, webPage);
        ArrayList<Utilities.Callback2<TLRPC.WebPage, TLObject>> arrayListRemove = this.callbacks.remove(str);
        if (arrayListRemove != null) {
            int size = arrayListRemove.size();
            while (i < size) {
                Utilities.Callback2<TLRPC.WebPage, TLObject> callback2 = arrayListRemove.get(i);
                i++;
                callback2.run(webPage, tL_error);
            }
        }
    }

    public void apply(LongSparseArray<TLRPC.WebPage> longSparseArray) {
        TLRPC.WebPage webPage;
        for (Map.Entry<String, TLRPC.WebPage> entry : this.pages.entrySet()) {
            if (entry.getValue() != null && (webPage = longSparseArray.get(entry.getValue().id)) != null) {
                entry.setValue(webPage);
            }
        }
    }
}
