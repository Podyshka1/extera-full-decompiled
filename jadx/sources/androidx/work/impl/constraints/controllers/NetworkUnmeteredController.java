package androidx.work.impl.constraints.controllers;

import android.os.Build;
import androidx.work.NetworkType;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.model.WorkSpec;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class NetworkUnmeteredController extends BaseConstraintController {
    private final int reason;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkUnmeteredController(ConstraintTracker tracker) {
        super(tracker);
        Intrinsics.checkNotNullParameter(tracker, "tracker");
        this.reason = 7;
    }

    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    protected int getReason() {
        return this.reason;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public boolean hasConstraint(WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        NetworkType requiredNetworkType = workSpec.constraints.getRequiredNetworkType();
        if (requiredNetworkType != NetworkType.UNMETERED) {
            return Build.VERSION.SDK_INT >= 30 && requiredNetworkType == NetworkType.TEMPORARILY_UNMETERED;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    public boolean isConstrained(NetworkState value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return !value.isConnected() || value.isMetered() || value.isBlocked();
    }
}
