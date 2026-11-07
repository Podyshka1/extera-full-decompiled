package androidx.car.app.model.constraints;

import android.annotation.SuppressLint;
import androidx.car.app.model.Action;
import androidx.car.app.model.CarColor;
import androidx.car.app.model.CarText;
import com.sun.jna.Native$$ExternalSyntheticBUOutline5;
import com.sun.jna.Structure$$ExternalSyntheticBUOutline2;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public final class ActionsConstraints {
    public static final ActionsConstraints ACTIONS_CONSTRAINTS_BODY;
    public static final ActionsConstraints ACTIONS_CONSTRAINTS_BODY_WITH_PRIMARY_ACTION;
    private static final ActionsConstraints ACTIONS_CONSTRAINTS_CONSERVATIVE;
    public static final ActionsConstraints ACTIONS_CONSTRAINTS_CONVERSATION_ITEM;

    @SuppressLint({"UnsafeOptInUsageError"})
    public static final ActionsConstraints ACTIONS_CONSTRAINTS_FAB;
    public static final ActionsConstraints ACTIONS_CONSTRAINTS_HEADER;
    public static final ActionsConstraints ACTIONS_CONSTRAINTS_MAP;
    public static final ActionsConstraints ACTIONS_CONSTRAINTS_MULTI_HEADER;
    public static final ActionsConstraints ACTIONS_CONSTRAINTS_NAVIGATION;
    public static final ActionsConstraints ACTIONS_CONSTRAINTS_ROW;
    public static final ActionsConstraints ACTIONS_CONSTRAINTS_SIMPLE;
    public static final ActionsConstraints ACTIONS_CONSTRAINTS_TABS;
    private final Set<Integer> mAllowedActionTypes;
    private final Set<Integer> mDisallowedActionTypes;
    private final int mMaxActions;
    private final int mMaxCustomTitles;
    private final int mMaxPrimaryActions;
    private final boolean mOnClickListenerAllowed;
    private final boolean mRequireActionBackgroundColor;
    private final boolean mRequireActionIcons;
    private final Set<Integer> mRequiredActionTypes;
    private final boolean mRestrictBackgroundColorToPrimaryAction;
    private final CarTextConstraints mTitleTextConstraints;

    static {
        ActionsConstraints actionsConstraintsBuild = new Builder().setMaxActions(1).setRequireActionIcons(true).setOnClickListenerAllowed(false).build();
        ACTIONS_CONSTRAINTS_HEADER = actionsConstraintsBuild;
        ACTIONS_CONSTRAINTS_MULTI_HEADER = new Builder().setMaxActions(2).setRequireActionIcons(true).setOnClickListenerAllowed(true).build();
        ActionsConstraints actionsConstraintsBuild2 = new Builder().setTitleTextConstraints(CarTextConstraints.CONSERVATIVE).setMaxActions(2).build();
        ACTIONS_CONSTRAINTS_CONSERVATIVE = actionsConstraintsBuild2;
        Builder builder = new Builder(actionsConstraintsBuild2);
        CarTextConstraints carTextConstraints = CarTextConstraints.COLOR_ONLY;
        ACTIONS_CONSTRAINTS_BODY = builder.setTitleTextConstraints(carTextConstraints).setMaxCustomTitles(2).setOnClickListenerAllowed(true).build();
        ACTIONS_CONSTRAINTS_BODY_WITH_PRIMARY_ACTION = new Builder(actionsConstraintsBuild2).setTitleTextConstraints(carTextConstraints).setMaxCustomTitles(2).setMaxPrimaryActions(1).setOnClickListenerAllowed(true).build();
        ACTIONS_CONSTRAINTS_SIMPLE = new Builder(actionsConstraintsBuild2).setMaxCustomTitles(1).setTitleTextConstraints(CarTextConstraints.TEXT_ONLY).setOnClickListenerAllowed(true).setRestrictBackgroundColorToPrimaryAction(true).build();
        ACTIONS_CONSTRAINTS_NAVIGATION = new Builder(actionsConstraintsBuild2).setMaxActions(4).setMaxCustomTitles(4).setMaxPrimaryActions(1).setTitleTextConstraints(CarTextConstraints.TEXT_AND_ICON).setOnClickListenerAllowed(true).setRestrictBackgroundColorToPrimaryAction(true).build();
        ACTIONS_CONSTRAINTS_MAP = new Builder(actionsConstraintsBuild2).setMaxActions(4).setMaxPrimaryActions(1).setOnClickListenerAllowed(true).setRestrictBackgroundColorToPrimaryAction(true).build();
        ACTIONS_CONSTRAINTS_ROW = new Builder().setMaxActions(1).setMaxCustomTitles(1).addAllowedActionType(1).setRequireActionIcons(true).setOnClickListenerAllowed(true).build();
        ACTIONS_CONSTRAINTS_CONVERSATION_ITEM = new Builder().setMaxActions(1).setMaxCustomTitles(1).addAllowedActionType(1).setRequireActionIcons(true).setOnClickListenerAllowed(true).build();
        ACTIONS_CONSTRAINTS_FAB = new Builder().setMaxActions(2).addAllowedActionType(1).addAllowedActionType(Action.TYPE_COMPOSE_MESSAGE).setRequireActionIcons(true).setRequireActionBackgroundColor(true).setOnClickListenerAllowed(true).build();
        ACTIONS_CONSTRAINTS_TABS = new Builder(actionsConstraintsBuild).addRequiredActionType(65538).build();
    }

    public ActionsConstraints(Builder builder) {
        int i = builder.mMaxActions;
        this.mMaxActions = i;
        this.mMaxPrimaryActions = builder.mMaxPrimaryActions;
        this.mMaxCustomTitles = builder.mMaxCustomTitles;
        this.mTitleTextConstraints = builder.mTitleTextConstraints;
        this.mRequireActionIcons = builder.mRequireActionIcons;
        this.mRequireActionBackgroundColor = builder.mRequireActionBackgroundColor;
        this.mOnClickListenerAllowed = builder.mOnClickListenerAllowed;
        this.mRestrictBackgroundColorToPrimaryAction = builder.mRestrictBackgroundColorToPrimaryAction;
        HashSet hashSet = new HashSet(builder.mRequiredActionTypes);
        this.mRequiredActionTypes = hashSet;
        HashSet hashSet2 = new HashSet(builder.mAllowedActionTypes);
        this.mAllowedActionTypes = hashSet2;
        HashSet hashSet3 = new HashSet(builder.mDisallowedActionTypes);
        hashSet3.retainAll(hashSet);
        if (!hashSet3.isEmpty()) {
            f$$ExternalSyntheticBUOutline1.m215m("Disallowed action types cannot also be in the required set");
            throw null;
        }
        if (!builder.mDisallowedActionTypes.isEmpty() && !hashSet2.isEmpty()) {
            f$$ExternalSyntheticBUOutline1.m215m("Both disallowed and allowed action type set cannot be defined.");
            throw null;
        }
        this.mDisallowedActionTypes = new HashSet(builder.mDisallowedActionTypes);
        if (hashSet.size() <= i) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m215m("Required action types exceeded max allowed actions");
        throw null;
    }

    public int getMaxActions() {
        return this.mMaxActions;
    }

    public int getMaxPrimaryActions() {
        return this.mMaxPrimaryActions;
    }

    public int getMaxCustomTitles() {
        return this.mMaxCustomTitles;
    }

    public CarTextConstraints getTitleTextConstraints() {
        return this.mTitleTextConstraints;
    }

    public Set<Integer> getRequiredActionTypes() {
        return this.mRequiredActionTypes;
    }

    public Set<Integer> getDisallowedActionTypes() {
        return this.mDisallowedActionTypes;
    }

    public Set<Integer> getAllowedActionTypes() {
        return this.mAllowedActionTypes;
    }

    public boolean areActionIconsRequired() {
        return this.mRequireActionIcons;
    }

    public boolean isActionBackgroundColorRequired() {
        return this.mRequireActionBackgroundColor;
    }

    public boolean isOnClickListenerAllowed() {
        return this.mOnClickListenerAllowed;
    }

    public boolean restrictBackgroundColorToPrimaryAction() {
        return this.mRestrictBackgroundColorToPrimaryAction;
    }

    public void validateOrThrow(List<Action> list) {
        Set hashSet;
        int i = this.mMaxActions;
        int i2 = this.mMaxPrimaryActions;
        int i3 = this.mMaxCustomTitles;
        if (this.mRequiredActionTypes.isEmpty()) {
            hashSet = Collections.EMPTY_SET;
        } else {
            hashSet = new HashSet(this.mRequiredActionTypes);
        }
        for (Action action : list) {
            if (!this.mDisallowedActionTypes.isEmpty() && this.mDisallowedActionTypes.contains(Integer.valueOf(action.getType()))) {
                throw new IllegalArgumentException(Action.typeToString(action.getType()) + " is disallowed");
            }
            if (!this.mAllowedActionTypes.isEmpty() && !this.mAllowedActionTypes.contains(Integer.valueOf(action.getType()))) {
                throw new IllegalArgumentException(Action.typeToString(action.getType()) + " is not allowed");
            }
            hashSet.remove(Integer.valueOf(action.getType()));
            CarText title = action.getTitle();
            if (title != null && !title.isEmpty()) {
                i3--;
                if (i3 < 0) {
                    Structure$$ExternalSyntheticBUOutline2.m520m("Action list exceeded max number of ", this.mMaxCustomTitles, " actions with custom titles");
                    return;
                }
                this.mTitleTextConstraints.validateOrThrow(title);
            }
            i--;
            if (i < 0) {
                Structure$$ExternalSyntheticBUOutline2.m520m("Action list exceeded max number of ", this.mMaxActions, " actions");
                return;
            }
            if ((action.getFlags() & 1) != 0 && i2 - 1 < 0) {
                Structure$$ExternalSyntheticBUOutline2.m520m("Action list exceeded max number of ", this.mMaxPrimaryActions, " primary actions");
                return;
            }
            if (this.mRequireActionIcons && action.getIcon() == null && !action.isStandard()) {
                f$$ExternalSyntheticBUOutline1.m215m("Non-standard actions without an icon are disallowed");
                return;
            }
            if (this.mRequireActionBackgroundColor && ((action.getBackgroundColor() == null || CarColor.DEFAULT.equals(action.getBackgroundColor())) && !action.isStandard())) {
                f$$ExternalSyntheticBUOutline1.m215m("Non-standard actions without a background color are disallowed");
                return;
            }
            if (!this.mRequireActionBackgroundColor && !CarColor.DEFAULT.equals(action.getBackgroundColor()) && this.mRestrictBackgroundColorToPrimaryAction && (action.getFlags() & 1) == 0) {
                f$$ExternalSyntheticBUOutline1.m215m("Background color can only be set for primary actions");
                return;
            } else if (!this.mOnClickListenerAllowed && action.getOnClickDelegate() != null && !action.isStandard()) {
                f$$ExternalSyntheticBUOutline1.m215m("Setting a click listener for a custom action is disallowed");
                return;
            }
        }
        if (hashSet.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            sb.append(Action.typeToString(((Integer) it.next()).intValue()));
            sb.append(",");
        }
        Native$$ExternalSyntheticBUOutline5.m517m("Missing required action types: ", sb);
    }

    public static final class Builder {
        final Set<Integer> mAllowedActionTypes;
        final Set<Integer> mDisallowedActionTypes;
        int mMaxActions;
        int mMaxCustomTitles;
        int mMaxPrimaryActions;
        boolean mOnClickListenerAllowed;
        boolean mRequireActionBackgroundColor;
        boolean mRequireActionIcons;
        final Set<Integer> mRequiredActionTypes;
        boolean mRestrictBackgroundColorToPrimaryAction;
        CarTextConstraints mTitleTextConstraints;

        public Builder() {
            this.mRequiredActionTypes = new HashSet();
            this.mDisallowedActionTypes = new HashSet();
            this.mAllowedActionTypes = new HashSet();
            this.mMaxActions = Integer.MAX_VALUE;
            this.mMaxPrimaryActions = 0;
            this.mRestrictBackgroundColorToPrimaryAction = false;
            this.mTitleTextConstraints = CarTextConstraints.UNCONSTRAINED;
        }

        public Builder(ActionsConstraints actionsConstraints) {
            HashSet hashSet = new HashSet();
            this.mRequiredActionTypes = hashSet;
            HashSet hashSet2 = new HashSet();
            this.mDisallowedActionTypes = hashSet2;
            HashSet hashSet3 = new HashSet();
            this.mAllowedActionTypes = hashSet3;
            this.mMaxActions = Integer.MAX_VALUE;
            this.mMaxPrimaryActions = 0;
            this.mRestrictBackgroundColorToPrimaryAction = false;
            this.mTitleTextConstraints = CarTextConstraints.UNCONSTRAINED;
            Objects.requireNonNull(actionsConstraints);
            this.mMaxActions = actionsConstraints.getMaxActions();
            this.mMaxPrimaryActions = actionsConstraints.getMaxPrimaryActions();
            this.mMaxCustomTitles = actionsConstraints.getMaxCustomTitles();
            this.mTitleTextConstraints = actionsConstraints.getTitleTextConstraints();
            hashSet.addAll(actionsConstraints.getRequiredActionTypes());
            hashSet2.addAll(actionsConstraints.getDisallowedActionTypes());
            hashSet3.addAll(actionsConstraints.getAllowedActionTypes());
            this.mRequireActionIcons = actionsConstraints.areActionIconsRequired();
            this.mRequireActionBackgroundColor = actionsConstraints.isActionBackgroundColorRequired();
            this.mOnClickListenerAllowed = actionsConstraints.isOnClickListenerAllowed();
            this.mRestrictBackgroundColorToPrimaryAction = actionsConstraints.restrictBackgroundColorToPrimaryAction();
        }

        public Builder setMaxActions(int i) {
            this.mMaxActions = i;
            return this;
        }

        public Builder setRequireActionIcons(boolean z) {
            this.mRequireActionIcons = z;
            return this;
        }

        public Builder setRequireActionBackgroundColor(boolean z) {
            this.mRequireActionBackgroundColor = z;
            return this;
        }

        public Builder setOnClickListenerAllowed(boolean z) {
            this.mOnClickListenerAllowed = z;
            return this;
        }

        public Builder setRestrictBackgroundColorToPrimaryAction(boolean z) {
            this.mRestrictBackgroundColorToPrimaryAction = z;
            return this;
        }

        public Builder setMaxPrimaryActions(int i) {
            this.mMaxPrimaryActions = i;
            return this;
        }

        public Builder setMaxCustomTitles(int i) {
            this.mMaxCustomTitles = i;
            return this;
        }

        public Builder setTitleTextConstraints(CarTextConstraints carTextConstraints) {
            this.mTitleTextConstraints = carTextConstraints;
            return this;
        }

        public Builder addRequiredActionType(int i) {
            this.mRequiredActionTypes.add(Integer.valueOf(i));
            return this;
        }

        public Builder addAllowedActionType(int i) {
            this.mAllowedActionTypes.add(Integer.valueOf(i));
            return this;
        }

        public ActionsConstraints build() {
            return new ActionsConstraints(this);
        }
    }
}
