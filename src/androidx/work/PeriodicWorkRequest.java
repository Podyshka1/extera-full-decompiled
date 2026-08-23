package androidx.work;

import androidx.work.WorkRequest;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00072\u00020\u0001:\u0002\u0006\u0007B\u0011\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Landroidx/work/PeriodicWorkRequest;", "Landroidx/work/WorkRequest;", "builder", "Landroidx/work/PeriodicWorkRequest$Builder;", "<init>", "(Landroidx/work/PeriodicWorkRequest$Builder;)V", "Builder", "Companion", "work-runtime_release"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class PeriodicWorkRequest extends WorkRequest {
    public PeriodicWorkRequest(Builder builder) {
        super(builder.getId(), builder.getWorkSpec(), builder.getTags$work_runtime_release());
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001B+\b\u0016\u0012\u0010\u0010\u0005\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\u0002H\u0010¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u00008PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Landroidx/work/PeriodicWorkRequest$Builder;", "Landroidx/work/WorkRequest$Builder;", "Landroidx/work/PeriodicWorkRequest;", "Ljava/lang/Class;", "Landroidx/work/ListenableWorker;", "workerClass", _UrlKt.FRAGMENT_ENCODE_SET, "repeatInterval", "Ljava/util/concurrent/TimeUnit;", "repeatIntervalTimeUnit", "<init>", "(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V", "buildInternal$work_runtime_release", "()Landroidx/work/PeriodicWorkRequest;", "buildInternal", "getThisObject$work_runtime_release", "()Landroidx/work/PeriodicWorkRequest$Builder;", "thisObject", "work-runtime_release"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nPeriodicWorkRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PeriodicWorkRequest.kt\nandroidx/work/PeriodicWorkRequest$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,416:1\n1#2:417\n*E\n"})
    public static final class Builder extends WorkRequest.Builder<Builder, PeriodicWorkRequest> {
        @Override // androidx.work.WorkRequest.Builder
        public Builder getThisObject$work_runtime_release() {
            return this;
        }

        public Builder(Class<? extends ListenableWorker> cls, long j, TimeUnit timeUnit) {
            super(cls);
            getWorkSpec().setPeriodic(timeUnit.toMillis(j));
        }

        @Override // androidx.work.WorkRequest.Builder
        public PeriodicWorkRequest buildInternal$work_runtime_release() {
            if (getBackoffCriteriaSet() && getWorkSpec().constraints.getRequiresDeviceIdle()) {
                f$$ExternalSyntheticBUOutline1.m178m("Cannot set backoff criteria on an idle mode job");
                return null;
            }
            if (getWorkSpec().expedited) {
                f$$ExternalSyntheticBUOutline1.m178m("PeriodicWorkRequests cannot be expedited");
                return null;
            }
            return new PeriodicWorkRequest(this);
        }
    }
}
