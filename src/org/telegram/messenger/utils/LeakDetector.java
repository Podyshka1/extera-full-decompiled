package org.telegram.messenger.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import me.vkryl.core.reference.ReferenceMap;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes5.dex */
public final class LeakDetector {
    private static volatile LeakDetector instance;
    private boolean running;
    private final ReferenceMap<Class<?>, Object> registry = new ReferenceMap<>(false);
    private final Set<Class<?>> reportedLeaks = new HashSet();
    private final Map<Class<?>, Integer> pendingRecheck = new HashMap();
    private final Runnable checkRunnable = new Runnable() { // from class: org.telegram.messenger.utils.LeakDetector.1
        @Override // java.lang.Runnable
        public void run() {
            LeakDetector.this.check();
            if (LeakDetector.this.running) {
                AndroidUtilities.runOnUIThread(this, 1000L);
            }
        }
    };

    public static LeakDetector getInstance() {
        if (instance == null) {
            synchronized (LeakDetector.class) {
                try {
                    if (instance == null) {
                        instance = new LeakDetector();
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    private LeakDetector() {
    }

    public void start() {
        if (this.running) {
            return;
        }
        this.running = true;
        AndroidUtilities.runOnUIThread(this.checkRunnable, 1000L);
    }

    public void stop() {
        if (this.running) {
            this.running = false;
            AndroidUtilities.cancelRunOnUIThread(this.checkRunnable);
        }
    }

    public <T> void add(T t) {
        this.registry.add(t.getClass(), t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void check() {
        Set<Class<?>> setKeySetUnchecked = this.registry.keySetUnchecked();
        if (setKeySetUnchecked == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(setKeySetUnchecked);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            final Class<?> cls = (Class) obj;
            if (!this.reportedLeaks.contains(cls)) {
                int iCountLiveInstances = countLiveInstances(cls);
                Map<Class<?>, Integer> map = this.pendingRecheck;
                if (iCountLiveInstances >= 5) {
                    if (!map.containsKey(cls)) {
                        this.pendingRecheck.put(cls, Integer.valueOf(iCountLiveInstances));
                        System.gc();
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.utils.LeakDetector$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$check$0(cls);
                            }
                        }, 2000L);
                    }
                } else {
                    map.remove(cls);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: confirmLeak, reason: merged with bridge method [inline-methods] */
    public void lambda$check$0(Class<?> cls) {
        this.pendingRecheck.remove(cls);
        if (!this.reportedLeaks.contains(cls) && countLiveInstances(cls) >= 5) {
            this.reportedLeaks.add(cls);
        }
    }

    private int countLiveInstances(Class<?> cls) {
        Iterator<Object> it = this.registry.iterator(cls);
        int i = 0;
        if (it == null) {
            return 0;
        }
        while (it.hasNext()) {
            it.next();
            i++;
        }
        return i;
    }
}
