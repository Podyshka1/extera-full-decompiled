package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.HandlerExecutor;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class ListenerHolder<L> {
    private final Executor zaa;
    private volatile Object zab;
    private volatile ListenerKey zac;

    public static final class ListenerKey<L> {
        private final Object zaa;
        private final String zab;

        public ListenerKey(L l, String str) {
            this.zaa = l;
            this.zab = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListenerKey)) {
                return false;
            }
            ListenerKey listenerKey = (ListenerKey) obj;
            return this.zaa == listenerKey.zaa && this.zab.equals(listenerKey.zab);
        }

        public int hashCode() {
            return (System.identityHashCode(this.zaa) * 31) + this.zab.hashCode();
        }

        public String toIdString() {
            int iIdentityHashCode = System.identityHashCode(this.zaa);
            String str = this.zab;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(iIdentityHashCode).length());
            sb.append(str);
            sb.append("@");
            sb.append(iIdentityHashCode);
            return sb.toString();
        }
    }

    public interface Notifier<L> {
        void notifyListener(L l);

        void onNotifyListenerFailed();
    }

    public ListenerHolder(Looper looper, L l, String str) {
        this.zaa = new HandlerExecutor(looper);
        this.zab = Preconditions.checkNotNull(l, "Listener must not be null");
        this.zac = new ListenerKey(l, Preconditions.checkNotEmpty(str));
    }

    public void clear() {
        this.zab = null;
        this.zac = null;
    }

    public ListenerKey<L> getListenerKey() {
        return this.zac;
    }

    public void notifyListener(final Notifier<? super L> notifier) {
        Preconditions.checkNotNull(notifier, "Notifier must not be null");
        this.zaa.execute(new Runnable() { // from class: com.google.android.gms.common.api.internal.zabw
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zaa.zaa(notifier);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void zaa(Notifier notifier) {
        Object obj = this.zab;
        if (obj == null) {
            notifier.onNotifyListenerFailed();
            return;
        }
        try {
            notifier.notifyListener(obj);
        } catch (RuntimeException e) {
            notifier.onNotifyListenerFailed();
            throw e;
        }
    }
}
