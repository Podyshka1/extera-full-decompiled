package androidx.work.impl.constraints.controllers;

import androidx.work.impl.constraints.trackers.BatteryNotLowTracker;
import androidx.work.impl.model.WorkSpec;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class BatteryNotLowController extends BaseConstraintController {
    private final int reason;

    protected boolean isConstrained(boolean z) {
        return !z;
    }

    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    public /* bridge */ /* synthetic */ boolean isConstrained(Object obj) {
        return isConstrained(((Boolean) obj).booleanValue());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BatteryNotLowController(BatteryNotLowTracker tracker) {
        super(tracker);
        Intrinsics.checkNotNullParameter(tracker, "tracker");
        this.reason = 5;
    }

    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    protected int getReason() {
        return this.reason;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public boolean hasConstraint(WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        return workSpec.constraints.requiresBatteryNotLow();
    }
}
