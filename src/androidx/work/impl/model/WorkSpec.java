package androidx.work.impl.model;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.arch.core.util.Function;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.OverwritingInputMerger;
import androidx.work.WorkInfo$State;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0002\n\u0002\b/\b\u0087\b\u0018\u0000 X2\u00020\u0001:\u0002YXB\u0081\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0003\u0010\u0012\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0019\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u001b\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u000b\u0012\b\b\u0002\u0010 \u001a\u00020\u0011\u0012\b\b\u0002\u0010!\u001a\u00020\u0011\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b$\u0010%B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010&\u001a\u00020\u0002¢\u0006\u0004\b$\u0010'B\u0019\b\u0016\u0012\u0006\u0010(\u001a\u00020\u0002\u0012\u0006\u0010)\u001a\u00020\u0000¢\u0006\u0004\b$\u0010*J\u0015\u0010,\u001a\u00020+2\u0006\u0010\u0015\u001a\u00020\u000b¢\u0006\u0004\b,\u0010-J\u0015\u0010.\u001a\u00020+2\u0006\u0010\r\u001a\u00020\u000b¢\u0006\u0004\b.\u0010-J\u001d\u0010.\u001a\u00020+2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b.\u0010/J\r\u00100\u001a\u00020\u000b¢\u0006\u0004\b0\u00101J\r\u00102\u001a\u00020\u0019¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u0002H\u0016¢\u0006\u0004\b4\u00105J\u008e\u0002\u00106\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\u000b2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0003\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u000b2\b\b\u0002\u0010\u0016\u001a\u00020\u000b2\b\b\u0002\u0010\u0017\u001a\u00020\u000b2\b\b\u0002\u0010\u0018\u001a\u00020\u000b2\b\b\u0002\u0010\u001a\u001a\u00020\u00192\b\b\u0002\u0010\u001c\u001a\u00020\u001b2\b\b\u0002\u0010\u001d\u001a\u00020\u00112\b\b\u0002\u0010\u001e\u001a\u00020\u00112\b\b\u0002\u0010\u001f\u001a\u00020\u000b2\b\b\u0002\u0010 \u001a\u00020\u00112\b\b\u0002\u0010!\u001a\u00020\u00112\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0019HÆ\u0001¢\u0006\u0004\b6\u00107J\u0010\u00108\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b8\u00109J\u001a\u0010:\u001a\u00020\u00192\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b:\u0010;R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010<R\u0016\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010=R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010<R\u0016\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010<R\u0016\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\t\u0010>R\u0016\u0010\n\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\n\u0010>R\u0016\u0010\f\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\f\u0010?R\u0016\u0010\r\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\r\u0010?R\u0016\u0010\u000e\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010?R\u0016\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010@R\u0016\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010AR\u0016\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010BR\u0016\u0010\u0015\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010?R\u0016\u0010\u0016\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010?R\u0016\u0010\u0017\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010?R\u0016\u0010\u0018\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010?R\u0016\u0010\u001a\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010CR\u0016\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010DR\"\u0010\u001d\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010A\u001a\u0004\bE\u00109\"\u0004\bF\u0010GR\u001a\u0010\u001e\u001a\u00020\u00118\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001e\u0010A\u001a\u0004\bH\u00109R\"\u0010\u001f\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010?\u001a\u0004\bI\u00101\"\u0004\bJ\u0010-R\"\u0010 \u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b \u0010A\u001a\u0004\bK\u00109\"\u0004\bL\u0010GR\u001a\u0010!\u001a\u00020\u00118\u0006X\u0087\u0004¢\u0006\f\n\u0004\b!\u0010A\u001a\u0004\bM\u00109R$\u0010\"\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\"\u0010<\u001a\u0004\bN\u00105\"\u0004\bO\u0010PR$\u0010#\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b#\u0010Q\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR\u0011\u0010V\u001a\u00020\u00198F¢\u0006\u0006\u001a\u0004\bV\u00103R\u0011\u0010W\u001a\u00020\u00198F¢\u0006\u0006\u001a\u0004\bW\u00103¨\u0006Z"}, d2 = {"Landroidx/work/impl/model/WorkSpec;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "id", "Landroidx/work/WorkInfo$State;", "state", "workerClassName", "inputMergerClassName", "Landroidx/work/Data;", "input", "output", _UrlKt.FRAGMENT_ENCODE_SET, "initialDelay", "intervalDuration", "flexDuration", "Landroidx/work/Constraints;", "constraints", _UrlKt.FRAGMENT_ENCODE_SET, "runAttemptCount", "Landroidx/work/BackoffPolicy;", "backoffPolicy", "backoffDelayDuration", "lastEnqueueTime", "minimumRetentionDuration", "scheduleRequestedAt", _UrlKt.FRAGMENT_ENCODE_SET, "expedited", "Landroidx/work/OutOfQuotaPolicy;", "outOfQuotaPolicy", "periodCount", "generation", "nextScheduleTimeOverride", "nextScheduleTimeOverrideGeneration", "stopReason", "traceTag", "backOffOnSystemInterruptions", "<init>", "(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V", "workerClassName_", "(Ljava/lang/String;Ljava/lang/String;)V", "newId", "other", "(Ljava/lang/String;Landroidx/work/impl/model/WorkSpec;)V", _UrlKt.FRAGMENT_ENCODE_SET, "setBackoffDelayDuration", "(J)V", "setPeriodic", "(JJ)V", "calculateNextRunTime", "()J", "hasConstraints", "()Z", "toString", "()Ljava/lang/String;", "copy", "(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)Landroidx/work/impl/model/WorkSpec;", "hashCode", "()I", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "Landroidx/work/WorkInfo$State;", "Landroidx/work/Data;", "J", "Landroidx/work/Constraints;", "I", "Landroidx/work/BackoffPolicy;", "Z", "Landroidx/work/OutOfQuotaPolicy;", "getPeriodCount", "setPeriodCount", "(I)V", "getGeneration", "getNextScheduleTimeOverride", "setNextScheduleTimeOverride", "getNextScheduleTimeOverrideGeneration", "setNextScheduleTimeOverrideGeneration", "getStopReason", "getTraceTag", "setTraceTag", "(Ljava/lang/String;)V", "Ljava/lang/Boolean;", "getBackOffOnSystemInterruptions", "()Ljava/lang/Boolean;", "setBackOffOnSystemInterruptions", "(Ljava/lang/Boolean;)V", "isPeriodic", "isBackedOff", "Companion", "IdAndState", "work-runtime_release"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nWorkSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkSpec.kt\nandroidx/work/impl/model/WorkSpec\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,467:1\n1563#2:468\n1634#2,3:469\n*S KotlinDebug\n*F\n+ 1 WorkSpec.kt\nandroidx/work/impl/model/WorkSpec\n*L\n406#1:468\n406#1:469,3\n*E\n"})
public final /* data */ class WorkSpec {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = Logger.tagWithPrefix("WorkSpec");

    @JvmField
    public static final Function<List<Object>, List<Object>> WORK_INFO_MAPPER = new Function() { // from class: androidx.work.impl.model.WorkSpec$$ExternalSyntheticLambda0
        @Override // androidx.arch.core.util.Function
        public final Object apply(Object obj) {
            return WorkSpec.$r8$lambda$kxU3gfKzoZdfGv8GSpkPecoJFFM((List) obj);
        }
    };
    private Boolean backOffOnSystemInterruptions;

    @JvmField
    public long backoffDelayDuration;

    @JvmField
    public BackoffPolicy backoffPolicy;

    @JvmField
    public Constraints constraints;

    @JvmField
    public boolean expedited;

    @JvmField
    public long flexDuration;
    private final int generation;

    @JvmField
    public final String id;

    @JvmField
    public long initialDelay;

    @JvmField
    public Data input;

    @JvmField
    public String inputMergerClassName;

    @JvmField
    public long intervalDuration;

    @JvmField
    public long lastEnqueueTime;

    @JvmField
    public long minimumRetentionDuration;
    private long nextScheduleTimeOverride;
    private int nextScheduleTimeOverrideGeneration;

    @JvmField
    public OutOfQuotaPolicy outOfQuotaPolicy;

    @JvmField
    public Data output;
    private int periodCount;

    @JvmField
    public int runAttemptCount;

    @JvmField
    public long scheduleRequestedAt;

    @JvmField
    public WorkInfo$State state;
    private final int stopReason;
    private String traceTag;

    @JvmField
    public String workerClassName;

    public static /* synthetic */ WorkSpec copy$default(WorkSpec workSpec, String str, WorkInfo$State workInfo$State, String str2, String str3, Data data, Data data2, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, long j6, long j7, boolean z, OutOfQuotaPolicy outOfQuotaPolicy, int i2, int i3, long j8, int i4, int i5, String str4, Boolean bool, int i6, Object obj) {
        Boolean bool2;
        String str5;
        long j9;
        long j10;
        long j11;
        long j12;
        OutOfQuotaPolicy outOfQuotaPolicy2;
        int i7;
        int i8;
        long j13;
        int i9;
        WorkInfo$State workInfo$State2;
        int i10;
        boolean z2;
        String str6;
        String str7;
        Data data3;
        Data data4;
        long j14;
        long j15;
        long j16;
        Constraints constraints2;
        int i11;
        BackoffPolicy backoffPolicy2;
        String str8 = (i6 & 1) != 0 ? workSpec.id : str;
        WorkInfo$State workInfo$State3 = (i6 & 2) != 0 ? workSpec.state : workInfo$State;
        String str9 = (i6 & 4) != 0 ? workSpec.workerClassName : str2;
        String str10 = (i6 & 8) != 0 ? workSpec.inputMergerClassName : str3;
        Data data5 = (i6 & 16) != 0 ? workSpec.input : data;
        Data data6 = (i6 & 32) != 0 ? workSpec.output : data2;
        long j17 = (i6 & 64) != 0 ? workSpec.initialDelay : j;
        long j18 = (i6 & 128) != 0 ? workSpec.intervalDuration : j2;
        long j19 = (i6 & 256) != 0 ? workSpec.flexDuration : j3;
        Constraints constraints3 = (i6 & 512) != 0 ? workSpec.constraints : constraints;
        int i12 = (i6 & 1024) != 0 ? workSpec.runAttemptCount : i;
        String str11 = str8;
        BackoffPolicy backoffPolicy3 = (i6 & 2048) != 0 ? workSpec.backoffPolicy : backoffPolicy;
        WorkInfo$State workInfo$State4 = workInfo$State3;
        long j20 = (i6 & 4096) != 0 ? workSpec.backoffDelayDuration : j4;
        long j21 = (i6 & 8192) != 0 ? workSpec.lastEnqueueTime : j5;
        long j22 = (i6 & 16384) != 0 ? workSpec.minimumRetentionDuration : j6;
        long j23 = (i6 & 32768) != 0 ? workSpec.scheduleRequestedAt : j7;
        boolean z3 = (i6 & 65536) != 0 ? workSpec.expedited : z;
        long j24 = j23;
        OutOfQuotaPolicy outOfQuotaPolicy3 = (i6 & 131072) != 0 ? workSpec.outOfQuotaPolicy : outOfQuotaPolicy;
        int i13 = (i6 & 262144) != 0 ? workSpec.periodCount : i2;
        OutOfQuotaPolicy outOfQuotaPolicy4 = outOfQuotaPolicy3;
        int i14 = (i6 & 524288) != 0 ? workSpec.generation : i3;
        int i15 = i13;
        long j25 = (i6 & 1048576) != 0 ? workSpec.nextScheduleTimeOverride : j8;
        int i16 = (i6 & TLObject.FLAG_21) != 0 ? workSpec.nextScheduleTimeOverrideGeneration : i4;
        int i17 = (i6 & 4194304) != 0 ? workSpec.stopReason : i5;
        int i18 = i16;
        String str12 = (i6 & 8388608) != 0 ? workSpec.traceTag : str4;
        if ((i6 & 16777216) != 0) {
            str5 = str12;
            bool2 = workSpec.backOffOnSystemInterruptions;
            j10 = j21;
            j11 = j22;
            j12 = j24;
            outOfQuotaPolicy2 = outOfQuotaPolicy4;
            i7 = i15;
            i8 = i14;
            j13 = j25;
            i9 = i18;
            i10 = i17;
            z2 = z3;
            str7 = str10;
            data3 = data5;
            data4 = data6;
            j14 = j17;
            j15 = j18;
            j16 = j19;
            constraints2 = constraints3;
            i11 = i12;
            backoffPolicy2 = backoffPolicy3;
            j9 = j20;
            workInfo$State2 = workInfo$State4;
            str6 = str9;
        } else {
            bool2 = bool;
            str5 = str12;
            j9 = j20;
            j10 = j21;
            j11 = j22;
            j12 = j24;
            outOfQuotaPolicy2 = outOfQuotaPolicy4;
            i7 = i15;
            i8 = i14;
            j13 = j25;
            i9 = i18;
            workInfo$State2 = workInfo$State4;
            i10 = i17;
            z2 = z3;
            str6 = str9;
            str7 = str10;
            data3 = data5;
            data4 = data6;
            j14 = j17;
            j15 = j18;
            j16 = j19;
            constraints2 = constraints3;
            i11 = i12;
            backoffPolicy2 = backoffPolicy3;
        }
        return workSpec.copy(str11, workInfo$State2, str6, str7, data3, data4, j14, j15, j16, constraints2, i11, backoffPolicy2, j9, j10, j11, j12, z2, outOfQuotaPolicy2, i7, i8, j13, i9, i10, str5, bool2);
    }

    public final WorkSpec copy(String id, WorkInfo$State state, String workerClassName, String inputMergerClassName, Data input, Data output, long initialDelay, long intervalDuration, long flexDuration, Constraints constraints, int runAttemptCount, BackoffPolicy backoffPolicy, long backoffDelayDuration, long lastEnqueueTime, long minimumRetentionDuration, long scheduleRequestedAt, boolean expedited, OutOfQuotaPolicy outOfQuotaPolicy, int periodCount, int generation, long nextScheduleTimeOverride, int nextScheduleTimeOverrideGeneration, int stopReason, String traceTag, Boolean backOffOnSystemInterruptions) {
        return new WorkSpec(id, state, workerClassName, inputMergerClassName, input, output, initialDelay, intervalDuration, flexDuration, constraints, runAttemptCount, backoffPolicy, backoffDelayDuration, lastEnqueueTime, minimumRetentionDuration, scheduleRequestedAt, expedited, outOfQuotaPolicy, periodCount, generation, nextScheduleTimeOverride, nextScheduleTimeOverrideGeneration, stopReason, traceTag, backOffOnSystemInterruptions);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WorkSpec)) {
            return false;
        }
        WorkSpec workSpec = (WorkSpec) other;
        return Intrinsics.areEqual(this.id, workSpec.id) && this.state == workSpec.state && Intrinsics.areEqual(this.workerClassName, workSpec.workerClassName) && Intrinsics.areEqual(this.inputMergerClassName, workSpec.inputMergerClassName) && Intrinsics.areEqual(this.input, workSpec.input) && Intrinsics.areEqual(this.output, workSpec.output) && this.initialDelay == workSpec.initialDelay && this.intervalDuration == workSpec.intervalDuration && this.flexDuration == workSpec.flexDuration && Intrinsics.areEqual(this.constraints, workSpec.constraints) && this.runAttemptCount == workSpec.runAttemptCount && this.backoffPolicy == workSpec.backoffPolicy && this.backoffDelayDuration == workSpec.backoffDelayDuration && this.lastEnqueueTime == workSpec.lastEnqueueTime && this.minimumRetentionDuration == workSpec.minimumRetentionDuration && this.scheduleRequestedAt == workSpec.scheduleRequestedAt && this.expedited == workSpec.expedited && this.outOfQuotaPolicy == workSpec.outOfQuotaPolicy && this.periodCount == workSpec.periodCount && this.generation == workSpec.generation && this.nextScheduleTimeOverride == workSpec.nextScheduleTimeOverride && this.nextScheduleTimeOverrideGeneration == workSpec.nextScheduleTimeOverrideGeneration && this.stopReason == workSpec.stopReason && Intrinsics.areEqual(this.traceTag, workSpec.traceTag) && Intrinsics.areEqual(this.backOffOnSystemInterruptions, workSpec.backOffOnSystemInterruptions);
    }

    public int hashCode() {
        int iHashCode = ((((((((((((((((((((((((((((((((((((((((((((this.id.hashCode() * 31) + this.state.hashCode()) * 31) + this.workerClassName.hashCode()) * 31) + this.inputMergerClassName.hashCode()) * 31) + this.input.hashCode()) * 31) + this.output.hashCode()) * 31) + Long.hashCode(this.initialDelay)) * 31) + Long.hashCode(this.intervalDuration)) * 31) + Long.hashCode(this.flexDuration)) * 31) + this.constraints.hashCode()) * 31) + Integer.hashCode(this.runAttemptCount)) * 31) + this.backoffPolicy.hashCode()) * 31) + Long.hashCode(this.backoffDelayDuration)) * 31) + Long.hashCode(this.lastEnqueueTime)) * 31) + Long.hashCode(this.minimumRetentionDuration)) * 31) + Long.hashCode(this.scheduleRequestedAt)) * 31) + Boolean.hashCode(this.expedited)) * 31) + this.outOfQuotaPolicy.hashCode()) * 31) + Integer.hashCode(this.periodCount)) * 31) + Integer.hashCode(this.generation)) * 31) + Long.hashCode(this.nextScheduleTimeOverride)) * 31) + Integer.hashCode(this.nextScheduleTimeOverrideGeneration)) * 31) + Integer.hashCode(this.stopReason)) * 31;
        String str = this.traceTag;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.backOffOnSystemInterruptions;
        return iHashCode2 + (bool != null ? bool.hashCode() : 0);
    }

    public WorkSpec(String str, WorkInfo$State workInfo$State, String str2, String str3, Data data, Data data2, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, long j6, long j7, boolean z, OutOfQuotaPolicy outOfQuotaPolicy, int i2, int i3, long j8, int i4, int i5, String str4, Boolean bool) {
        this.id = str;
        this.state = workInfo$State;
        this.workerClassName = str2;
        this.inputMergerClassName = str3;
        this.input = data;
        this.output = data2;
        this.initialDelay = j;
        this.intervalDuration = j2;
        this.flexDuration = j3;
        this.constraints = constraints;
        this.runAttemptCount = i;
        this.backoffPolicy = backoffPolicy;
        this.backoffDelayDuration = j4;
        this.lastEnqueueTime = j5;
        this.minimumRetentionDuration = j6;
        this.scheduleRequestedAt = j7;
        this.expedited = z;
        this.outOfQuotaPolicy = outOfQuotaPolicy;
        this.periodCount = i2;
        this.generation = i3;
        this.nextScheduleTimeOverride = j8;
        this.nextScheduleTimeOverrideGeneration = i4;
        this.stopReason = i5;
        this.traceTag = str4;
        this.backOffOnSystemInterruptions = bool;
    }

    public /* synthetic */ WorkSpec(String str, WorkInfo$State workInfo$State, String str2, String str3, Data data, Data data2, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, long j6, long j7, boolean z, OutOfQuotaPolicy outOfQuotaPolicy, int i2, int i3, long j8, int i4, int i5, String str4, Boolean bool, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i6 & 2) != 0 ? WorkInfo$State.ENQUEUED : workInfo$State, str2, (i6 & 8) != 0 ? OverwritingInputMerger.class.getName() : str3, (i6 & 16) != 0 ? Data.EMPTY : data, (i6 & 32) != 0 ? Data.EMPTY : data2, (i6 & 64) != 0 ? 0L : j, (i6 & 128) != 0 ? 0L : j2, (i6 & 256) != 0 ? 0L : j3, (i6 & 512) != 0 ? Constraints.NONE : constraints, (i6 & 1024) != 0 ? 0 : i, (i6 & 2048) != 0 ? BackoffPolicy.EXPONENTIAL : backoffPolicy, (i6 & 4096) != 0 ? NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS : j4, (i6 & 8192) != 0 ? -1L : j5, (i6 & 16384) == 0 ? j6 : 0L, (32768 & i6) != 0 ? -1L : j7, (65536 & i6) != 0 ? false : z, (131072 & i6) != 0 ? OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST : outOfQuotaPolicy, (262144 & i6) != 0 ? 0 : i2, (524288 & i6) != 0 ? 0 : i3, (1048576 & i6) != 0 ? Long.MAX_VALUE : j8, (2097152 & i6) != 0 ? 0 : i4, (4194304 & i6) != 0 ? -256 : i5, (8388608 & i6) != 0 ? null : str4, (i6 & 16777216) != 0 ? Boolean.FALSE : bool);
    }

    public final int getPeriodCount() {
        return this.periodCount;
    }

    public final int getGeneration() {
        return this.generation;
    }

    public final long getNextScheduleTimeOverride() {
        return this.nextScheduleTimeOverride;
    }

    public final void setNextScheduleTimeOverride(long j) {
        this.nextScheduleTimeOverride = j;
    }

    public final int getNextScheduleTimeOverrideGeneration() {
        return this.nextScheduleTimeOverrideGeneration;
    }

    public final void setNextScheduleTimeOverrideGeneration(int i) {
        this.nextScheduleTimeOverrideGeneration = i;
    }

    public final int getStopReason() {
        return this.stopReason;
    }

    public final String getTraceTag() {
        return this.traceTag;
    }

    public final void setTraceTag(String str) {
        this.traceTag = str;
    }

    public final Boolean getBackOffOnSystemInterruptions() {
        return this.backOffOnSystemInterruptions;
    }

    public WorkSpec(String str, String str2) {
        this(str, null, str2, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, null, null, 33554426, null);
    }

    public WorkSpec(String str, WorkSpec workSpec) {
        this(str, workSpec.state, workSpec.workerClassName, workSpec.inputMergerClassName, new Data(workSpec.input), new Data(workSpec.output), workSpec.initialDelay, workSpec.intervalDuration, workSpec.flexDuration, new Constraints(workSpec.constraints), workSpec.runAttemptCount, workSpec.backoffPolicy, workSpec.backoffDelayDuration, workSpec.lastEnqueueTime, workSpec.minimumRetentionDuration, workSpec.scheduleRequestedAt, workSpec.expedited, workSpec.outOfQuotaPolicy, workSpec.periodCount, 0, workSpec.nextScheduleTimeOverride, workSpec.nextScheduleTimeOverrideGeneration, workSpec.stopReason, workSpec.traceTag, workSpec.backOffOnSystemInterruptions, 524288, null);
    }

    public final void setBackoffDelayDuration(long backoffDelayDuration) {
        if (backoffDelayDuration > 18000000) {
            Logger.get().warning(TAG, "Backoff delay duration exceeds maximum value");
        }
        if (backoffDelayDuration < 10000) {
            Logger.get().warning(TAG, "Backoff delay duration less than minimum value");
        }
        this.backoffDelayDuration = RangesKt.coerceIn(backoffDelayDuration, 10000L, 18000000L);
    }

    public final boolean isPeriodic() {
        return this.intervalDuration != 0;
    }

    public final boolean isBackedOff() {
        return this.state == WorkInfo$State.ENQUEUED && this.runAttemptCount > 0;
    }

    public final void setPeriodic(long intervalDuration) {
        if (intervalDuration < 900000) {
            Logger.get().warning(TAG, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        setPeriodic(RangesKt.coerceAtLeast(intervalDuration, 900000L), RangesKt.coerceAtLeast(intervalDuration, 900000L));
    }

    public final void setPeriodic(long intervalDuration, long flexDuration) {
        if (intervalDuration < 900000) {
            Logger.get().warning(TAG, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        this.intervalDuration = RangesKt.coerceAtLeast(intervalDuration, 900000L);
        if (flexDuration < 300000) {
            Logger.get().warning(TAG, "Flex duration lesser than minimum allowed value; Changed to 300000");
        }
        if (flexDuration > this.intervalDuration) {
            Logger.get().warning(TAG, "Flex duration greater than interval duration; Changed to " + intervalDuration);
        }
        this.flexDuration = RangesKt.coerceIn(flexDuration, 300000L, this.intervalDuration);
    }

    public final long calculateNextRunTime() {
        return INSTANCE.calculateNextRunTime(isBackedOff(), this.runAttemptCount, this.backoffPolicy, this.backoffDelayDuration, this.lastEnqueueTime, this.periodCount, isPeriodic(), this.initialDelay, this.flexDuration, this.intervalDuration, this.nextScheduleTimeOverride);
    }

    public final boolean hasConstraints() {
        return !Intrinsics.areEqual(Constraints.NONE, this.constraints);
    }

    public String toString() {
        return "{WorkSpec: " + this.id + '}';
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0011R\u0016\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/work/impl/model/WorkSpec$IdAndState;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "id", "Landroidx/work/WorkInfo$State;", "state", "<init>", "(Ljava/lang/String;Landroidx/work/WorkInfo$State;)V", "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "Landroidx/work/WorkInfo$State;", "work-runtime_release"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class IdAndState {

        @JvmField
        public String id;

        @JvmField
        public WorkInfo$State state;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof IdAndState)) {
                return false;
            }
            IdAndState idAndState = (IdAndState) other;
            return Intrinsics.areEqual(this.id, idAndState.id) && this.state == idAndState.state;
        }

        public int hashCode() {
            return (this.id.hashCode() * 31) + this.state.hashCode();
        }

        public String toString() {
            return "IdAndState(id=" + this.id + ", state=" + this.state + ')';
        }

        public IdAndState(String str, WorkInfo$State workInfo$State) {
            this.id = str;
            this.state = workInfo$State;
        }
    }

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003Je\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\n¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R,\u0010\u001c\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u001b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u001b0\u001a8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Landroidx/work/impl/model/WorkSpec$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "isBackedOff", _UrlKt.FRAGMENT_ENCODE_SET, "runAttemptCount", "Landroidx/work/BackoffPolicy;", "backoffPolicy", _UrlKt.FRAGMENT_ENCODE_SET, "backoffDelayDuration", "lastEnqueueTime", "periodCount", "isPeriodic", "initialDelay", "flexDuration", "intervalDuration", "nextScheduleTimeOverride", "calculateNextRunTime", "(ZILandroidx/work/BackoffPolicy;JJIZJJJJ)J", _UrlKt.FRAGMENT_ENCODE_SET, "TAG", "Ljava/lang/String;", "SCHEDULE_NOT_REQUESTED_YET", "J", "Landroidx/arch/core/util/Function;", _UrlKt.FRAGMENT_ENCODE_SET, "WORK_INFO_MAPPER", "Landroidx/arch/core/util/Function;", "work-runtime_release"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final long calculateNextRunTime(boolean isBackedOff, int runAttemptCount, BackoffPolicy backoffPolicy, long backoffDelayDuration, long lastEnqueueTime, int periodCount, boolean isPeriodic, long initialDelay, long flexDuration, long intervalDuration, long nextScheduleTimeOverride) {
            long jCoerceAtMost;
            if (nextScheduleTimeOverride != LongCompanionObject.MAX_VALUE && isPeriodic) {
                return periodCount == 0 ? nextScheduleTimeOverride : RangesKt.coerceAtLeast(nextScheduleTimeOverride, lastEnqueueTime + 900000);
            }
            if (isBackedOff) {
                jCoerceAtMost = RangesKt.coerceAtMost(backoffPolicy == BackoffPolicy.LINEAR ? backoffDelayDuration * ((long) runAttemptCount) : (long) Math.scalb(backoffDelayDuration, runAttemptCount - 1), 18000000L);
            } else {
                if (!isPeriodic) {
                    return lastEnqueueTime == -1 ? LongCompanionObject.MAX_VALUE : lastEnqueueTime + initialDelay;
                }
                lastEnqueueTime = periodCount == 0 ? lastEnqueueTime + initialDelay : lastEnqueueTime + intervalDuration;
                if (flexDuration == intervalDuration || periodCount != 0) {
                    return lastEnqueueTime;
                }
                jCoerceAtMost = intervalDuration - flexDuration;
            }
            return lastEnqueueTime + jCoerceAtMost;
        }
    }

    public static List $r8$lambda$kxU3gfKzoZdfGv8GSpkPecoJFFM(List list) {
        if (list == null) {
            return null;
        }
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        Iterator it = list2.iterator();
        if (!it.hasNext()) {
            return arrayList;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
        throw null;
    }
}
