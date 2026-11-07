package androidx.work.impl.utils;

import androidx.work.impl.WorkDatabase;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/work/impl/utils/IdGenerator;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/work/impl/WorkDatabase;", "workDatabase", "<init>", "(Landroidx/work/impl/WorkDatabase;)V", _UrlKt.FRAGMENT_ENCODE_SET, "minInclusive", "maxInclusive", "nextJobSchedulerIdWithRange", "(II)I", "Landroidx/work/impl/WorkDatabase;", "work-runtime_release"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class IdGenerator {
    private final WorkDatabase workDatabase;

    public IdGenerator(WorkDatabase workDatabase) {
        this.workDatabase = workDatabase;
    }

    public final int nextJobSchedulerIdWithRange(final int minInclusive, final int maxInclusive) {
        return ((Number) this.workDatabase.runInTransaction(new Callable() { // from class: androidx.work.impl.utils.IdGenerator$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return IdGenerator.$r8$lambda$JQr7FK7MZ2bSJyfHKiwoJ9vBWDc(this.f$0, minInclusive, maxInclusive);
            }
        })).intValue();
    }

    public static Integer $r8$lambda$JQr7FK7MZ2bSJyfHKiwoJ9vBWDc(IdGenerator idGenerator, int i, int i2) {
        int iNextId = IdGeneratorKt.nextId(idGenerator.workDatabase, "next_job_scheduler_id");
        if (i > iNextId || iNextId > i2) {
            IdGeneratorKt.updatePreference(idGenerator.workDatabase, "next_job_scheduler_id", i + 1);
        } else {
            i = iNextId;
        }
        return Integer.valueOf(i);
    }
}
