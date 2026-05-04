package com.google.firebase.sessions;

import android.content.Context;
import android.os.Process;
import com.google.firebase.sessions.ProcessDataManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessDataManagerImpl implements ProcessDataManager {
    private final Context appContext;
    private boolean hasGeneratedSession;
    private final int myPid;
    private final Lazy myProcessDetails$delegate;
    private final Lazy myProcessName$delegate;
    private final Lazy myUuid$delegate;

    @Override // com.google.firebase.sessions.ProcessDataManager
    public Map generateProcessDataMap() {
        return ProcessDataManager.DefaultImpls.generateProcessDataMap(this);
    }

    public ProcessDataManagerImpl(Context appContext, final UuidGenerator uuidGenerator) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(uuidGenerator, "uuidGenerator");
        this.appContext = appContext;
        this.myProcessName$delegate = LazyKt.lazy(new Function0() { // from class: com.google.firebase.sessions.ProcessDataManagerImpl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ProcessDataManagerImpl.myProcessName_delegate$lambda$0(this.f$0);
            }
        });
        this.myPid = Process.myPid();
        this.myUuid$delegate = LazyKt.lazy(new Function0() { // from class: com.google.firebase.sessions.ProcessDataManagerImpl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ProcessDataManagerImpl.myUuid_delegate$lambda$1(uuidGenerator);
            }
        });
        this.myProcessDetails$delegate = LazyKt.lazy(new Function0() { // from class: com.google.firebase.sessions.ProcessDataManagerImpl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ProcessDataManagerImpl.myProcessDetails_delegate$lambda$2(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String myProcessName_delegate$lambda$0(ProcessDataManagerImpl processDataManagerImpl) {
        return processDataManagerImpl.getMyProcessDetails().getProcessName();
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public String getMyProcessName() {
        return (String) this.myProcessName$delegate.getValue();
    }

    public int getMyPid() {
        return this.myPid;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String myUuid_delegate$lambda$1(UuidGenerator uuidGenerator) {
        String string = uuidGenerator.next().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public String getMyUuid() {
        return (String) this.myUuid$delegate.getValue();
    }

    private final ProcessDetails getMyProcessDetails() {
        return (ProcessDetails) this.myProcessDetails$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ProcessDetails myProcessDetails_delegate$lambda$2(ProcessDataManagerImpl processDataManagerImpl) {
        return ProcessDetailsProvider.INSTANCE.getMyProcessDetails(processDataManagerImpl.appContext);
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public boolean isColdStart(Map processDataMap) {
        Intrinsics.checkNotNullParameter(processDataMap, "processDataMap");
        if (this.hasGeneratedSession) {
            return false;
        }
        List<ProcessDetails> appProcessDetails = getAppProcessDetails();
        ArrayList arrayList = new ArrayList();
        for (ProcessDetails processDetails : appProcessDetails) {
            ProcessData processData = (ProcessData) processDataMap.get(processDetails.getProcessName());
            Pair pair = processData != null ? new Pair(processDetails, processData) : null;
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        if (arrayList.isEmpty()) {
            return true;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Pair pair2 = (Pair) obj;
            if (!isProcessStale((ProcessDetails) pair2.component1(), (ProcessData) pair2.component2())) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public boolean isMyProcessStale(Map processDataMap) {
        Intrinsics.checkNotNullParameter(processDataMap, "processDataMap");
        ProcessData processData = (ProcessData) processDataMap.get(getMyProcessName());
        return (processData != null && processData.getPid() == getMyPid() && Intrinsics.areEqual(processData.getUuid(), getMyUuid())) ? false : true;
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public void onSessionGenerated() {
        this.hasGeneratedSession = true;
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public Map updateProcessDataMap(Map map) {
        Map mutableMap;
        if (map != null && (mutableMap = MapsKt.toMutableMap(map)) != null) {
            mutableMap.put(getMyProcessName(), new ProcessData(Process.myPid(), getMyUuid()));
            Map map2 = MapsKt.toMap(mutableMap);
            if (map2 != null) {
                return map2;
            }
        }
        return MapsKt.mapOf(TuplesKt.m1081to(getMyProcessName(), new ProcessData(Process.myPid(), getMyUuid())));
    }

    private final List getAppProcessDetails() {
        return ProcessDetailsProvider.INSTANCE.getAppProcessDetails(this.appContext);
    }

    private final boolean isProcessStale(ProcessDetails processDetails, ProcessData processData) {
        return Intrinsics.areEqual(getMyProcessName(), processDetails.getProcessName()) ? (processDetails.getPid() == processData.getPid() && Intrinsics.areEqual(getMyUuid(), processData.getUuid())) ? false : true : processDetails.getPid() != processData.getPid();
    }
}
