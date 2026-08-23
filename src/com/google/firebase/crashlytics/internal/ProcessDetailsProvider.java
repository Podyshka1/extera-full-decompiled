package com.google.firebase.crashlytics.internal;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessDetailsProvider {
    public static final ProcessDetailsProvider INSTANCE = new ProcessDetailsProvider();

    public final CrashlyticsReport.Session.Event.Application.ProcessDetails buildProcessDetails(String processName, int i, int i2) {
        Intrinsics.checkNotNullParameter(processName, "processName");
        return buildProcessDetails$default(this, processName, i, i2, false, 8, null);
    }

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
            arrayList2.add(CrashlyticsReport.Session.Event.Application.ProcessDetails.builder().setProcessName(runningAppProcessInfo.processName).setPid(runningAppProcessInfo.pid).setImportance(runningAppProcessInfo.importance).setDefaultProcess(Intrinsics.areEqual(runningAppProcessInfo.processName, str)).build());
        }
        return arrayList2;
    }

    public final CrashlyticsReport.Session.Event.Application.ProcessDetails getCurrentProcessDetails(Context context) {
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
            if (((CrashlyticsReport.Session.Event.Application.ProcessDetails) next).getPid() == iMyPid) {
                break;
            }
        }
        CrashlyticsReport.Session.Event.Application.ProcessDetails processDetails = (CrashlyticsReport.Session.Event.Application.ProcessDetails) next;
        return processDetails == null ? buildProcessDetails$default(this, getProcessName(), iMyPid, 0, false, 12, null) : processDetails;
    }

    public static /* synthetic */ CrashlyticsReport.Session.Event.Application.ProcessDetails buildProcessDetails$default(ProcessDetailsProvider processDetailsProvider, String str, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        if ((i3 & 8) != 0) {
            z = false;
        }
        return processDetailsProvider.buildProcessDetails(str, i, i2, z);
    }

    public final CrashlyticsReport.Session.Event.Application.ProcessDetails buildProcessDetails(String processName, int i, int i2, boolean z) {
        Intrinsics.checkNotNullParameter(processName, "processName");
        CrashlyticsReport.Session.Event.Application.ProcessDetails processDetailsBuild = CrashlyticsReport.Session.Event.Application.ProcessDetails.builder().setProcessName(processName).setPid(i).setImportance(i2).setDefaultProcess(z).build();
        Intrinsics.checkNotNullExpressionValue(processDetailsBuild, "build(...)");
        return processDetailsBuild;
    }

    private final String getProcessName() {
        String processName;
        int i = Build.VERSION.SDK_INT;
        if (i <= 33) {
            return (i < 28 || (processName = Application.getProcessName()) == null) ? _UrlKt.FRAGMENT_ENCODE_SET : processName;
        }
        String strMyProcessName = Process.myProcessName();
        Intrinsics.checkNotNull(strMyProcessName);
        return strMyProcessName;
    }
}
