package androidx.work.impl.constraints;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ConstraintsState {
    public /* synthetic */ ConstraintsState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static final class ConstraintsMet extends ConstraintsState {
        public static final ConstraintsMet INSTANCE = new ConstraintsMet();

        private ConstraintsMet() {
            super(null);
        }
    }

    private ConstraintsState() {
    }

    public static final class ConstraintsNotMet extends ConstraintsState {
        private final int reason;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ConstraintsNotMet) && this.reason == ((ConstraintsNotMet) obj).reason;
        }

        public int hashCode() {
            return this.reason;
        }

        public String toString() {
            return "ConstraintsNotMet(reason=" + this.reason + ')';
        }

        public ConstraintsNotMet(int i) {
            super(null);
            this.reason = i;
        }

        public final int getReason() {
            return this.reason;
        }
    }
}
