package androidx.work;

import android.os.Build;
import androidx.work.impl.model.WorkSpec;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class WorkRequest {
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: renamed from: id */
    private final UUID f73id;
    private final Set tags;
    private final WorkSpec workSpec;

    public WorkRequest(UUID id, WorkSpec workSpec, Set tags) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        Intrinsics.checkNotNullParameter(tags, "tags");
        this.f73id = id;
        this.workSpec = workSpec;
        this.tags = tags;
    }

    public UUID getId() {
        return this.f73id;
    }

    public final WorkSpec getWorkSpec() {
        return this.workSpec;
    }

    public final Set getTags() {
        return this.tags;
    }

    public final String getStringId() {
        String string = getId().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public static abstract class Builder {
        private boolean backoffCriteriaSet;

        /* JADX INFO: renamed from: id */
        private UUID f74id;
        private final Set tags;
        private WorkSpec workSpec;
        private final Class workerClass;

        public abstract WorkRequest buildInternal$work_runtime_release();

        public abstract Builder getThisObject$work_runtime_release();

        public Builder(Class workerClass) {
            Intrinsics.checkNotNullParameter(workerClass, "workerClass");
            this.workerClass = workerClass;
            UUID uuidRandomUUID = UUID.randomUUID();
            Intrinsics.checkNotNullExpressionValue(uuidRandomUUID, "randomUUID(...)");
            this.f74id = uuidRandomUUID;
            String string = this.f74id.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            String name = workerClass.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            this.workSpec = new WorkSpec(string, name);
            String name2 = workerClass.getName();
            Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
            this.tags = SetsKt.mutableSetOf(name2);
        }

        public final boolean getBackoffCriteriaSet$work_runtime_release() {
            return this.backoffCriteriaSet;
        }

        public final UUID getId$work_runtime_release() {
            return this.f74id;
        }

        public final WorkSpec getWorkSpec$work_runtime_release() {
            return this.workSpec;
        }

        public final Set getTags$work_runtime_release() {
            return this.tags;
        }

        public final Builder setId(UUID id) {
            Intrinsics.checkNotNullParameter(id, "id");
            this.f74id = id;
            String string = id.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            this.workSpec = new WorkSpec(string, this.workSpec);
            return getThisObject$work_runtime_release();
        }

        public final Builder setConstraints(Constraints constraints) {
            Intrinsics.checkNotNullParameter(constraints, "constraints");
            this.workSpec.constraints = constraints;
            return getThisObject$work_runtime_release();
        }

        public final WorkRequest build() {
            WorkRequest workRequestBuildInternal$work_runtime_release = buildInternal$work_runtime_release();
            Constraints constraints = this.workSpec.constraints;
            boolean z = (Build.VERSION.SDK_INT >= 24 && constraints.hasContentUriTriggers()) || constraints.requiresBatteryNotLow() || constraints.requiresCharging() || constraints.requiresDeviceIdle();
            WorkSpec workSpec = this.workSpec;
            if (workSpec.expedited) {
                if (z) {
                    throw new IllegalArgumentException("Expedited jobs only support network and storage constraints");
                }
                if (workSpec.initialDelay > 0) {
                    throw new IllegalArgumentException("Expedited jobs cannot be delayed");
                }
            }
            String traceTag = workSpec.getTraceTag();
            if (traceTag == null) {
                WorkSpec workSpec2 = this.workSpec;
                workSpec2.setTraceTag(WorkRequest.Companion.deriveTraceTagFromClassName(workSpec2.workerClassName));
            } else if (traceTag.length() > 127) {
                this.workSpec.setTraceTag(StringsKt.take(traceTag, 127));
            }
            UUID uuidRandomUUID = UUID.randomUUID();
            Intrinsics.checkNotNullExpressionValue(uuidRandomUUID, "randomUUID(...)");
            setId(uuidRandomUUID);
            return workRequestBuildInternal$work_runtime_release;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String deriveTraceTagFromClassName(String str) {
            String str2;
            List listSplit$default = StringsKt.split$default((CharSequence) str, new String[]{"."}, false, 0, 6, (Object) null);
            if (listSplit$default.size() == 1) {
                str2 = (String) listSplit$default.get(0);
            } else {
                str2 = (String) CollectionsKt.last(listSplit$default);
            }
            return str2.length() <= 127 ? str2 : StringsKt.take(str2, 127);
        }
    }
}
