package androidx.work;

import androidx.work.impl.model.WorkSpec;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u000e\b&\u0018\u0000 \u00152\u00020\u0001:\u0002\u0014\u0015B'\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u00020\u00058G¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0019\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078G¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\b8G¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Landroidx/work/WorkRequest;", _UrlKt.FRAGMENT_ENCODE_SET, "id", "Ljava/util/UUID;", "workSpec", "Landroidx/work/impl/model/WorkSpec;", "tags", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/util/UUID;Landroidx/work/impl/model/WorkSpec;Ljava/util/Set;)V", "getId", "()Ljava/util/UUID;", "getWorkSpec", "()Landroidx/work/impl/model/WorkSpec;", "getTags", "()Ljava/util/Set;", "stringId", "getStringId", "()Ljava/lang/String;", "Builder", "Companion", "work-runtime_release"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class WorkRequest {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final UUID id;
    private final Set<String> tags;
    private final WorkSpec workSpec;

    public WorkRequest(UUID uuid, WorkSpec workSpec, Set<String> set) {
        this.id = uuid;
        this.workSpec = workSpec;
        this.tags = set;
    }

    public UUID getId() {
        return this.id;
    }

    public final WorkSpec getWorkSpec() {
        return this.workSpec;
    }

    public final Set<String> getTags() {
        return this.tags;
    }

    public final String getStringId() {
        return getId().toString();
    }

    @Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\b\b&\u0018\u0000*\u0012\b\u0000\u0010\u0001*\f\u0012\u0004\u0012\u00028\u0000\u0012\u0002\b\u00030\u0000*\b\b\u0001\u0010\u0003*\u00020\u00022\u00020\u0004B\u0019\b\u0000\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\f\u001a\u00028\u00002\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ%\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00028\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u00028\u0001H ¢\u0006\u0004\b\u001c\u0010\u001bR\"\u0010\u0007\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u00058\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u001e\u001a\u0004\b\u001f\u0010 R\"\u0010\"\u001a\u00020!8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u0010\u000b\u001a\u00020\n8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\"\u0010.\u001a\u00020-8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R \u00106\u001a\b\u0012\u0004\u0012\u000205048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\u0014\u0010<\u001a\u00028\u00008 X \u0004¢\u0006\u0006\u001a\u0004\b:\u0010;¨\u0006="}, d2 = {"Landroidx/work/WorkRequest$Builder;", "B", "Landroidx/work/WorkRequest;", "W", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/lang/Class;", "Landroidx/work/ListenableWorker;", "workerClass", "<init>", "(Ljava/lang/Class;)V", "Ljava/util/UUID;", "id", "setId", "(Ljava/util/UUID;)Landroidx/work/WorkRequest$Builder;", "Landroidx/work/BackoffPolicy;", "backoffPolicy", _UrlKt.FRAGMENT_ENCODE_SET, "backoffDelay", "Ljava/util/concurrent/TimeUnit;", "timeUnit", "setBackoffCriteria", "(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;", "Landroidx/work/Constraints;", "constraints", "setConstraints", "(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;", "build", "()Landroidx/work/WorkRequest;", "buildInternal$work_runtime_release", "buildInternal", "Ljava/lang/Class;", "getWorkerClass$work_runtime_release", "()Ljava/lang/Class;", _UrlKt.FRAGMENT_ENCODE_SET, "backoffCriteriaSet", "Z", "getBackoffCriteriaSet$work_runtime_release", "()Z", "setBackoffCriteriaSet$work_runtime_release", "(Z)V", "Ljava/util/UUID;", "getId$work_runtime_release", "()Ljava/util/UUID;", "setId$work_runtime_release", "(Ljava/util/UUID;)V", "Landroidx/work/impl/model/WorkSpec;", "workSpec", "Landroidx/work/impl/model/WorkSpec;", "getWorkSpec$work_runtime_release", "()Landroidx/work/impl/model/WorkSpec;", "setWorkSpec$work_runtime_release", "(Landroidx/work/impl/model/WorkSpec;)V", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "tags", "Ljava/util/Set;", "getTags$work_runtime_release", "()Ljava/util/Set;", "getThisObject$work_runtime_release", "()Landroidx/work/WorkRequest$Builder;", "thisObject", "work-runtime_release"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nWorkRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkRequest.kt\nandroidx/work/WorkRequest$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,418:1\n1#2:419\n*E\n"})
    public static abstract class Builder<B extends Builder<B, ?>, W extends WorkRequest> {
        private boolean backoffCriteriaSet;
        private UUID id = UUID.randomUUID();
        private final Set<String> tags;
        private WorkSpec workSpec;
        private final Class<? extends ListenableWorker> workerClass;

        public abstract W buildInternal$work_runtime_release();

        public abstract B getThisObject$work_runtime_release();

        public Builder(Class<? extends ListenableWorker> cls) {
            this.workerClass = cls;
            this.workSpec = new WorkSpec(this.id.toString(), cls.getName());
            this.tags = SetsKt.mutableSetOf(cls.getName());
        }

        /* JADX INFO: renamed from: getBackoffCriteriaSet$work_runtime_release, reason: from getter */
        public final boolean getBackoffCriteriaSet() {
            return this.backoffCriteriaSet;
        }

        /* JADX INFO: renamed from: getId$work_runtime_release, reason: from getter */
        public final UUID getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: getWorkSpec$work_runtime_release, reason: from getter */
        public final WorkSpec getWorkSpec() {
            return this.workSpec;
        }

        public final Set<String> getTags$work_runtime_release() {
            return this.tags;
        }

        public final B setId(UUID id) {
            this.id = id;
            this.workSpec = new WorkSpec(id.toString(), this.workSpec);
            return (B) getThisObject$work_runtime_release();
        }

        public final B setBackoffCriteria(BackoffPolicy backoffPolicy, long backoffDelay, TimeUnit timeUnit) {
            this.backoffCriteriaSet = true;
            WorkSpec workSpec = this.workSpec;
            workSpec.backoffPolicy = backoffPolicy;
            workSpec.setBackoffDelayDuration(timeUnit.toMillis(backoffDelay));
            return (B) getThisObject$work_runtime_release();
        }

        public final B setConstraints(Constraints constraints) {
            this.workSpec.constraints = constraints;
            return (B) getThisObject$work_runtime_release();
        }

        public final W build() {
            W w = (W) buildInternal$work_runtime_release();
            Constraints constraints = this.workSpec.constraints;
            boolean z = constraints.hasContentUriTriggers() || constraints.getRequiresBatteryNotLow() || constraints.getRequiresCharging() || constraints.getRequiresDeviceIdle();
            WorkSpec workSpec = this.workSpec;
            if (workSpec.expedited) {
                if (z) {
                    f$$ExternalSyntheticBUOutline1.m178m("Expedited jobs only support network and storage constraints");
                    return null;
                }
                if (workSpec.initialDelay > 0) {
                    f$$ExternalSyntheticBUOutline1.m178m("Expedited jobs cannot be delayed");
                    return null;
                }
            }
            String traceTag = workSpec.getTraceTag();
            if (traceTag == null) {
                WorkSpec workSpec2 = this.workSpec;
                workSpec2.setTraceTag(WorkRequest.INSTANCE.deriveTraceTagFromClassName(workSpec2.workerClassName));
            } else if (traceTag.length() > 127) {
                this.workSpec.setTraceTag(StringsKt.take(traceTag, 127));
            }
            setId(UUID.randomUUID());
            return w;
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00058\u0006X\u0087T¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00058\u0006X\u0087T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Landroidx/work/WorkRequest$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "DEFAULT_BACKOFF_DELAY_MILLIS", _UrlKt.FRAGMENT_ENCODE_SET, "MAX_BACKOFF_MILLIS", "MIN_BACKOFF_MILLIS", "MAX_TRACE_SPAN_LENGTH", _UrlKt.FRAGMENT_ENCODE_SET, "deriveTraceTagFromClassName", _UrlKt.FRAGMENT_ENCODE_SET, "workerClassName", "work-runtime_release"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String deriveTraceTagFromClassName(String workerClassName) {
            String str;
            List listSplit$default = StringsKt.split$default((CharSequence) workerClassName, new String[]{"."}, false, 0, 6, (Object) null);
            if (listSplit$default.size() == 1) {
                str = (String) listSplit$default.get(0);
            } else {
                str = (String) CollectionsKt.last(listSplit$default);
            }
            return str.length() <= 127 ? str : StringsKt.take(str, 127);
        }
    }
}
