package androidx.camera.core;

import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.List;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes3.dex */
public final class FocusMeteringAction {
    private final long mAutoCancelDurationInMillis;
    private final List mMeteringPointsAe;
    private final List mMeteringPointsAf;
    private final List mMeteringPointsAwb;

    FocusMeteringAction(Builder builder) {
        this.mMeteringPointsAf = DesugarCollections.unmodifiableList(builder.mMeteringPointsAf);
        this.mMeteringPointsAe = DesugarCollections.unmodifiableList(builder.mMeteringPointsAe);
        this.mMeteringPointsAwb = DesugarCollections.unmodifiableList(builder.mMeteringPointsAwb);
        this.mAutoCancelDurationInMillis = builder.mAutoCancelDurationInMillis;
    }

    public long getAutoCancelDurationInMillis() {
        return this.mAutoCancelDurationInMillis;
    }

    public List getMeteringPointsAf() {
        return this.mMeteringPointsAf;
    }

    public List getMeteringPointsAe() {
        return this.mMeteringPointsAe;
    }

    public List getMeteringPointsAwb() {
        return this.mMeteringPointsAwb;
    }

    public boolean isAutoCancelEnabled() {
        return this.mAutoCancelDurationInMillis > 0;
    }

    public static class Builder {
        long mAutoCancelDurationInMillis;
        final List mMeteringPointsAe;
        final List mMeteringPointsAf;
        final List mMeteringPointsAwb;

        public Builder(MeteringPoint meteringPoint, int i) {
            this.mMeteringPointsAf = new ArrayList();
            this.mMeteringPointsAe = new ArrayList();
            this.mMeteringPointsAwb = new ArrayList();
            this.mAutoCancelDurationInMillis = 5000L;
            addPoint(meteringPoint, i);
        }

        public Builder(FocusMeteringAction focusMeteringAction) {
            ArrayList arrayList = new ArrayList();
            this.mMeteringPointsAf = arrayList;
            ArrayList arrayList2 = new ArrayList();
            this.mMeteringPointsAe = arrayList2;
            ArrayList arrayList3 = new ArrayList();
            this.mMeteringPointsAwb = arrayList3;
            this.mAutoCancelDurationInMillis = 5000L;
            arrayList.addAll(focusMeteringAction.getMeteringPointsAf());
            arrayList2.addAll(focusMeteringAction.getMeteringPointsAe());
            arrayList3.addAll(focusMeteringAction.getMeteringPointsAwb());
            this.mAutoCancelDurationInMillis = focusMeteringAction.getAutoCancelDurationInMillis();
        }

        public Builder addPoint(MeteringPoint meteringPoint, int i) {
            boolean z = false;
            Preconditions.checkArgument(meteringPoint != null, "Point cannot be null.");
            if (i >= 1 && i <= 7) {
                z = true;
            }
            Preconditions.checkArgument(z, "Invalid metering mode " + i);
            if ((i & 1) != 0) {
                this.mMeteringPointsAf.add(meteringPoint);
            }
            if ((i & 2) != 0) {
                this.mMeteringPointsAe.add(meteringPoint);
            }
            if ((i & 4) != 0) {
                this.mMeteringPointsAwb.add(meteringPoint);
            }
            return this;
        }

        public Builder removePoints(int i) {
            if ((i & 1) != 0) {
                this.mMeteringPointsAf.clear();
            }
            if ((i & 2) != 0) {
                this.mMeteringPointsAe.clear();
            }
            if ((i & 4) != 0) {
                this.mMeteringPointsAwb.clear();
            }
            return this;
        }

        public FocusMeteringAction build() {
            return new FocusMeteringAction(this);
        }
    }
}
