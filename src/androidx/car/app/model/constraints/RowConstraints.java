package androidx.car.app.model.constraints;

import androidx.car.app.model.CarIcon;
import androidx.car.app.model.Row;
import com.sun.jna.IntegerType$$ExternalSyntheticBUOutline0;
import java.util.Objects;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public final class RowConstraints {
    public static final RowConstraints ROW_CONSTRAINTS_FULL_LIST;
    public static final RowConstraints ROW_CONSTRAINTS_SIMPLE;
    private final CarIconConstraints mCarIconConstraints;
    private final boolean mIsImageAllowed;
    private final boolean mIsOnClickListenerAllowed;
    private final boolean mIsToggleAllowed;
    private final int mMaxActionsExclusive;
    private final int mMaxTextLinesPerRow;
    public static final RowConstraints UNCONSTRAINED = new Builder().build();
    public static final RowConstraints ROW_CONSTRAINTS_CONSERVATIVE = new Builder().setMaxActionsExclusive(0).setImageAllowed(false).setMaxTextLinesPerRow(1).setOnClickListenerAllowed(true).setToggleAllowed(false).build();
    public static final RowConstraints ROW_CONSTRAINTS_PANE = new Builder().setMaxActionsExclusive(2).setImageAllowed(true).setMaxTextLinesPerRow(2).setToggleAllowed(true).setOnClickListenerAllowed(false).build();

    static {
        RowConstraints rowConstraintsBuild = new Builder().setMaxActionsExclusive(0).setImageAllowed(true).setMaxTextLinesPerRow(2).setToggleAllowed(true).setOnClickListenerAllowed(true).build();
        ROW_CONSTRAINTS_SIMPLE = rowConstraintsBuild;
        ROW_CONSTRAINTS_FULL_LIST = new Builder(rowConstraintsBuild).setToggleAllowed(true).build();
    }

    public boolean isOnClickListenerAllowed() {
        return this.mIsOnClickListenerAllowed;
    }

    public int getMaxTextLinesPerRow() {
        return this.mMaxTextLinesPerRow;
    }

    public int getMaxActionsExclusive() {
        return this.mMaxActionsExclusive;
    }

    public boolean isToggleAllowed() {
        return this.mIsToggleAllowed;
    }

    public boolean isImageAllowed() {
        return this.mIsImageAllowed;
    }

    public CarIconConstraints getCarIconConstraints() {
        return this.mCarIconConstraints;
    }

    public void validateOrThrow(Row row) {
        if (!this.mIsOnClickListenerAllowed && row.getOnClickDelegate() != null) {
            f$$ExternalSyntheticBUOutline1.m212m("A click listener is not allowed on the row");
            return;
        }
        if (!this.mIsToggleAllowed && row.getToggle() != null) {
            f$$ExternalSyntheticBUOutline1.m212m("A toggle is not allowed on the row");
            return;
        }
        CarIcon image = row.getImage();
        if (image != null) {
            if (!this.mIsImageAllowed) {
                f$$ExternalSyntheticBUOutline1.m212m("An image is not allowed on the row");
                return;
            }
            this.mCarIconConstraints.validateOrThrow(image);
        }
        if (row.getTexts().size() <= this.mMaxTextLinesPerRow) {
            return;
        }
        IntegerType$$ExternalSyntheticBUOutline0.m486m("The number of lines of texts for the row exceeded the supported max of ", this.mMaxTextLinesPerRow);
    }

    public RowConstraints(Builder builder) {
        this.mIsOnClickListenerAllowed = builder.mIsOnClickListenerAllowed;
        this.mMaxTextLinesPerRow = builder.mMaxTextLines;
        this.mMaxActionsExclusive = builder.mMaxActionsExclusive;
        this.mIsToggleAllowed = builder.mIsToggleAllowed;
        this.mIsImageAllowed = builder.mIsImageAllowed;
        this.mCarIconConstraints = builder.mCarIconConstraints;
    }

    public static final class Builder {
        CarIconConstraints mCarIconConstraints;
        boolean mIsImageAllowed;
        boolean mIsOnClickListenerAllowed;
        boolean mIsToggleAllowed;
        int mMaxActionsExclusive;
        int mMaxTextLines;

        public Builder setOnClickListenerAllowed(boolean z) {
            this.mIsOnClickListenerAllowed = z;
            return this;
        }

        public Builder setMaxTextLinesPerRow(int i) {
            this.mMaxTextLines = i;
            return this;
        }

        public Builder setMaxActionsExclusive(int i) {
            this.mMaxActionsExclusive = i;
            return this;
        }

        public Builder setImageAllowed(boolean z) {
            this.mIsImageAllowed = z;
            return this;
        }

        public Builder setToggleAllowed(boolean z) {
            this.mIsToggleAllowed = z;
            return this;
        }

        public RowConstraints build() {
            return new RowConstraints(this);
        }

        public Builder() {
            this.mIsOnClickListenerAllowed = true;
            this.mIsToggleAllowed = true;
            this.mMaxTextLines = Integer.MAX_VALUE;
            this.mMaxActionsExclusive = Integer.MAX_VALUE;
            this.mIsImageAllowed = true;
            this.mCarIconConstraints = CarIconConstraints.UNCONSTRAINED;
        }

        public Builder(RowConstraints rowConstraints) {
            this.mIsOnClickListenerAllowed = true;
            this.mIsToggleAllowed = true;
            this.mMaxTextLines = Integer.MAX_VALUE;
            this.mMaxActionsExclusive = Integer.MAX_VALUE;
            this.mIsImageAllowed = true;
            this.mCarIconConstraints = CarIconConstraints.UNCONSTRAINED;
            Objects.requireNonNull(rowConstraints);
            this.mIsOnClickListenerAllowed = rowConstraints.isOnClickListenerAllowed();
            this.mMaxTextLines = rowConstraints.getMaxTextLinesPerRow();
            this.mMaxActionsExclusive = rowConstraints.getMaxActionsExclusive();
            this.mIsToggleAllowed = rowConstraints.isToggleAllowed();
            this.mIsImageAllowed = rowConstraints.isImageAllowed();
            this.mCarIconConstraints = rowConstraints.getCarIconConstraints();
        }
    }
}
