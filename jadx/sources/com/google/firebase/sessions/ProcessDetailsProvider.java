package com.google.firebase.sessions;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import com.google.android.gms.common.util.ProcessUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessDetailsProvider {
    public static final ProcessDetailsProvider INSTANCE = new ProcessDetailsProvider();

    private ProcessDetailsProvider() {
    }

    public final List getAppProcessDetails(Context context) {
        List<ActivityManager.RunningAppProcessInfo> listEmptyList;
        Intrinsics.checkNotNullParameter(context, "context");
        int i = context.getApplicationInfo().uid;
        String str = context.getApplicationInfo().processName;
        Object systemService = context.getSystemService("activity");
        ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
        if (activityManager == null || (listEmptyList = activityManager.getRunningAppProcesses()) == null) {
            listEmptyList = CollectionsKt.emptyList();
        }
        List listFilterNotNull = CollectionsKt.filterNotNull(listEmptyList);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listFilterNotNull) {
            if (((ActivityManager.RunningAppProcessInfo) obj).uid == i) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj2 = arrayList.get(i2);
            i2++;
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = (ActivityManager.RunningAppProcessInfo) obj2;
            String processName = runningAppProcessInfo.processName;
            Intrinsics.checkNotNullExpressionValue(processName, "processName");
            arrayList2.add(new ProcessDetails(processName, runningAppProcessInfo.pid, runningAppProcessInfo.importance, Intrinsics.areEqual(runningAppProcessInfo.processName, str)));
        }
        return arrayList2;
    }

    public final ProcessDetails getMyProcessDetails(Context context) {
        Object next;
        Intrinsics.checkNotNullParameter(context, "context");
        int iMyPid = Process.myPid();
        Iterator it = getAppProcessDetails(context).iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((ProcessDetails) next).getPid() == iMyPid) {
                break;
            }
        }
        ProcessDetails processDetails = (ProcessDetails) next;
        return processDetails == null ? new ProcessDetails(getProcessName(), iMyPid, 0, false) : processDetails;
    }

    private final String getProcessName() throws Throwable {
        String processName;
        int i = Build.VERSION.SDK_INT;
        if (i > 33) {
            String strMyProcessName = Process.myProcessName();
            Intrinsics.checkNotNullExpressionValue(strMyProcessName, "myProcessName(...)");
            return strMyProcessName;
        }
        if (i >= 28 && (processName = Application.getProcessName()) != null) {
            return processName;
        }
        String myProcessName = ProcessUtils.getMyProcessName();
        return myProcessName != null ? myProcessName : _UrlKt.FRAGMENT_ENCODE_SET;
    }
}
