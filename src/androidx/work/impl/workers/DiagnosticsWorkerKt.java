package androidx.work.impl.workers;

import androidx.work.Logger;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.model.WorkTagDao;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DiagnosticsWorkerKt {
    private static final String TAG;

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("DiagnosticsWrkr");
        Intrinsics.checkNotNullExpressionValue(strTagWithPrefix, "tagWithPrefix(...)");
        TAG = strTagWithPrefix;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String workSpecRows(WorkNameDao workNameDao, WorkTagDao workTagDao, SystemIdInfoDao systemIdInfoDao, List list) {
        StringBuilder sb = new StringBuilder();
        sb.append("\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            WorkSpec workSpec = (WorkSpec) it.next();
            SystemIdInfo systemIdInfo = systemIdInfoDao.getSystemIdInfo(WorkSpecKt.generationalId(workSpec));
            sb.append(workSpecRow(workSpec, CollectionsKt.joinToString$default(workNameDao.getNamesForWorkSpecId(workSpec.f76id), ",", null, null, 0, null, null, 62, null), systemIdInfo != null ? Integer.valueOf(systemIdInfo.systemId) : null, CollectionsKt.joinToString$default(workTagDao.getTagsForWorkSpecId(workSpec.f76id), ",", null, null, 0, null, null, 62, null)));
        }
        return sb.toString();
    }

    private static final String workSpecRow(WorkSpec workSpec, String str, Integer num, String str2) {
        return '\n' + workSpec.f76id + "\t " + workSpec.workerClassName + "\t " + num + "\t " + workSpec.state.name() + "\t " + str + "\t " + str2 + '\t';
    }
}
