package okhttp3.internal.connection;

import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Address;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public interface RoutePlanner {

    public interface Plan {
        /* JADX INFO: renamed from: cancel */
        void mo3882cancel();

        /* JADX INFO: renamed from: connectTcp */
        ConnectResult mo3886connectTcp();

        /* JADX INFO: renamed from: connectTlsEtc */
        ConnectResult mo3887connectTlsEtc();

        /* JADX INFO: renamed from: handleSuccess */
        RealConnection mo3883handleSuccess();

        boolean isReady();

        /* JADX INFO: renamed from: retry */
        Plan mo3884retry();
    }

    Address getAddress();

    ArrayDeque getDeferredPlans();

    boolean hasNext(RealConnection realConnection);

    boolean isCanceled();

    Plan plan();

    boolean sameHostAndPort(HttpUrl httpUrl);

    /* JADX INFO: renamed from: okhttp3.internal.connection.RoutePlanner$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static /* synthetic */ boolean hasNext$default(RoutePlanner routePlanner, RealConnection realConnection, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: hasNext");
            }
            if ((i & 1) != 0) {
                realConnection = null;
            }
            return routePlanner.hasNext(realConnection);
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class DefaultImpls {
    }

    public static final class ConnectResult {
        private final Plan nextPlan;
        private final Plan plan;
        private final Throwable throwable;

        public static /* synthetic */ ConnectResult copy$default(ConnectResult connectResult, Plan plan, Plan plan2, Throwable th, int i, Object obj) {
            if ((i & 1) != 0) {
                plan = connectResult.plan;
            }
            if ((i & 2) != 0) {
                plan2 = connectResult.nextPlan;
            }
            if ((i & 4) != 0) {
                th = connectResult.throwable;
            }
            return connectResult.copy(plan, plan2, th);
        }

        public final Plan component1() {
            return this.plan;
        }

        public final Plan component2() {
            return this.nextPlan;
        }

        public final Throwable component3() {
            return this.throwable;
        }

        public final ConnectResult copy(Plan plan, Plan plan2, Throwable th) {
            Intrinsics.checkNotNullParameter(plan, "plan");
            return new ConnectResult(plan, plan2, th);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ConnectResult)) {
                return false;
            }
            ConnectResult connectResult = (ConnectResult) obj;
            return Intrinsics.areEqual(this.plan, connectResult.plan) && Intrinsics.areEqual(this.nextPlan, connectResult.nextPlan) && Intrinsics.areEqual(this.throwable, connectResult.throwable);
        }

        public int hashCode() {
            int iHashCode = this.plan.hashCode() * 31;
            Plan plan = this.nextPlan;
            int iHashCode2 = (iHashCode + (plan == null ? 0 : plan.hashCode())) * 31;
            Throwable th = this.throwable;
            return iHashCode2 + (th != null ? th.hashCode() : 0);
        }

        public String toString() {
            return "ConnectResult(plan=" + this.plan + ", nextPlan=" + this.nextPlan + ", throwable=" + this.throwable + ')';
        }

        public ConnectResult(Plan plan, Plan plan2, Throwable th) {
            Intrinsics.checkNotNullParameter(plan, "plan");
            this.plan = plan;
            this.nextPlan = plan2;
            this.throwable = th;
        }

        public /* synthetic */ ConnectResult(Plan plan, Plan plan2, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(plan, (i & 2) != 0 ? null : plan2, (i & 4) != 0 ? null : th);
        }

        public final Plan getPlan() {
            return this.plan;
        }

        public final Plan getNextPlan() {
            return this.nextPlan;
        }

        public final Throwable getThrowable() {
            return this.throwable;
        }

        public final boolean isSuccess() {
            return this.nextPlan == null && this.throwable == null;
        }
    }
}
