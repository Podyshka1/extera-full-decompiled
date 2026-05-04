package com.exteragram.messenger.adblock.interop;

import com.exteragram.messenger.adblock.backend.ScriptletsManager;
import com.exteragram.messenger.adblock.backend.SubscriptionsManager;
import com.exteragram.messenger.adblock.data.BlockResult;
import com.exteragram.messenger.adblock.data.UrlCosmeticResources;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.telegram.messenger.DispatchQueue;

/* JADX INFO: loaded from: classes.dex */
public class AdBlock {
    private static final DispatchQueue queue = new DispatchQueue("adblock");
    private static final Object lock = new Object();
    private static long enginePtr = 0;
    private static long filterSetPtr = 0;

    public static void initialize() {
        queue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.adblock.interop.AdBlock$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                AdBlock.$r8$lambda$izUs8blSAW4dbII3p0uS4hFwS4A();
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$izUs8blSAW4dbII3p0uS4hFwS4A() {
        synchronized (lock) {
            try {
                if (enginePtr == 0) {
                    initializeInner();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void destroy() {
        queue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.adblock.interop.AdBlock$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AdBlock.$r8$lambda$SrkwfasH49b3Koy0_f99c2F0mmE();
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$SrkwfasH49b3Koy0_f99c2F0mmE() {
        synchronized (lock) {
            try {
                long j = enginePtr;
                if (j != 0) {
                    NativeAdBlock.destroyEngine(j);
                    enginePtr = 0L;
                }
                if (filterSetPtr != 0) {
                    filterSetPtr = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void reload() {
        destroy();
        initialize();
    }

    private static void initializeInner() {
        filterSetPtr = NativeAdBlock.createFilterSet(new String[0]);
        for (String str : SubscriptionsManager.getInstance().iterSubscriptions()) {
            ArrayList arrayList = new ArrayList();
            int length = str.length();
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                if (str.charAt(i2) == '\n') {
                    arrayList.add(str.substring(i, i2));
                    i = i2 + 1;
                    if (arrayList.size() >= 2000) {
                        NativeAdBlock.addFilters(filterSetPtr, (String[]) arrayList.toArray(new String[0]));
                        arrayList.clear();
                    }
                }
            }
            if (i < length) {
                arrayList.add(str.substring(i));
            }
            if (!arrayList.isEmpty()) {
                NativeAdBlock.addFilters(filterSetPtr, (String[]) arrayList.toArray(new String[0]));
            }
        }
        long jCreateEngine = NativeAdBlock.createEngine(filterSetPtr);
        Collection<ScriptletsManager.Scriptlet> collectionIterScriptlets = ScriptletsManager.getInstance().iterScriptlets();
        int size = collectionIterScriptlets.size();
        String[] strArr = new String[size];
        String[][] strArr2 = new String[size][];
        String[] strArr3 = new String[size];
        String[] strArr4 = new String[size];
        int i3 = 0;
        for (ScriptletsManager.Scriptlet scriptlet : collectionIterScriptlets) {
            strArr[i3] = scriptlet.filename;
            List list = scriptlet.aliases;
            strArr2[i3] = list != null ? (String[]) list.toArray(new String[0]) : new String[0];
            strArr3[i3] = ScriptletsManager.getExtension(scriptlet.filename);
            strArr4[i3] = scriptlet.content;
            i3++;
        }
        NativeAdBlock.useResources(jCreateEngine, strArr, strArr2, strArr3, strArr4);
        enginePtr = jCreateEngine;
    }

    public static BlockResult getBlockResult(String str, String str2, String str3) {
        long j = enginePtr;
        if (j == 0) {
            return null;
        }
        return NativeAdBlock.shouldBlock(j, str, str2, str3);
    }

    public static UrlCosmeticResources getCosmeticResources(String str) {
        long j = enginePtr;
        if (j == 0) {
            return null;
        }
        return NativeAdBlock.getCosmeticResources(j, str);
    }

    public static String[] getHiddenSelectors(String[] strArr, String[] strArr2, String[] strArr3) {
        long j = enginePtr;
        if (j == 0) {
            return null;
        }
        return NativeAdBlock.getHiddenSelectors(j, strArr, strArr2, strArr3);
    }
}
