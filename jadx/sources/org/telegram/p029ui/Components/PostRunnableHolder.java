package org.telegram.p029ui.Components;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes3.dex */
public class PostRunnableHolder {
    private final HashMap wrappedRunnable = new HashMap();

    public void post(final Runnable runnable, long j) {
        cancel(runnable);
        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.PostRunnableHolder$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$post$0(runnable);
            }
        };
        this.wrappedRunnable.put(runnable, runnable2);
        if (j > 0) {
            AndroidUtilities.runOnUIThread(runnable2, j);
        } else {
            AndroidUtilities.runOnUIThread(runnable2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$post$0(Runnable runnable) {
        runnable.run();
        this.wrappedRunnable.remove(runnable);
    }

    public void cancel(Runnable runnable) {
        Runnable runnable2 = (Runnable) this.wrappedRunnable.remove(runnable);
        if (runnable2 != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable2);
        }
    }

    public void clear() {
        Iterator it = this.wrappedRunnable.entrySet().iterator();
        while (it.hasNext()) {
            AndroidUtilities.cancelRunOnUIThread((Runnable) ((Map.Entry) it.next()).getValue());
        }
        this.wrappedRunnable.clear();
    }
}
