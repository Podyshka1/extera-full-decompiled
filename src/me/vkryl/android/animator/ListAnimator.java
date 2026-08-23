package me.vkryl.android.animator;

import android.graphics.RectF;
import android.view.animation.Interpolator;
import androidx.core.math.MathUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import me.vkryl.android.animator.FactorAnimator;
import me.vkryl.core.ArrayUtils;
import me.vkryl.core.lambda.Destroyable;
import okio.Segment$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
public final class ListAnimator<T> implements Iterable<Entry<T>> {
    private final FactorAnimator animator;
    private final Callback callback;
    private boolean foundListChanges;
    private final Metadata metadata;
    private final ArrayList<Entry<T>> entries = new ArrayList<>();
    private final ArrayList<Entry<T>> actualList = new ArrayList<>();

    public interface Callback extends MetadataCallback {
        void onItemsChanged(ListAnimator<?> listAnimator);
    }

    public interface Measurable {
        int getHeight();

        default int getSpacingEnd(boolean z) {
            return 0;
        }

        default int getSpacingStart(boolean z) {
            return 0;
        }

        int getWidth();
    }

    public interface MetadataCallback {
        default boolean hasChanges(ListAnimator<?> listAnimator) {
            return false;
        }

        default boolean onApplyMetadataAnimation(ListAnimator<?> listAnimator, float f) {
            return false;
        }

        default void onFinishMetadataAnimation(ListAnimator<?> listAnimator, boolean z) {
        }

        default void onForceApplyChanges(ListAnimator<?> listAnimator) {
        }

        default void onPrepareMetadataAnimation(ListAnimator<?> listAnimator) {
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface ResetCallback<T> {
        void onItemAdded(T t, boolean z);

        void onItemRemoved(T t);
    }

    public static class Entry<T> implements Comparable<Entry<T>> {
        private int index;
        private boolean isBeingRemoved = false;
        public final T item;
        private final VariableRect measuredPositionRect;
        private final VariableFloat measuredSpacingStart;
        private final VariableFloat position;
        private final VariableFloat visibility;

        public Entry(T t, int i, boolean z) {
            this.item = t;
            this.index = i;
            this.visibility = new VariableFloat(z ? 1.0f : 0.0f);
            this.position = new VariableFloat(i);
            this.measuredPositionRect = new VariableRect();
            this.measuredSpacingStart = new VariableFloat(0.0f);
            finishAnimation(false);
        }

        public boolean isJunk() {
            return getVisibility() == 0.0f && !isAffectingList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onPrepareRemove() {
            this.visibility.setTo(0.0f);
            this.isBeingRemoved = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onPrepareAppear() {
            this.visibility.setTo(1.0f);
            this.isBeingRemoved = false;
        }

        @Override // java.lang.Comparable
        public int compareTo(Entry<T> entry) {
            return Integer.compare(this.index, entry.index);
        }

        public float getPosition() {
            return this.position.get();
        }

        public float getVisibility() {
            return MathUtils.clamp(this.visibility.get(), 0.0f, 1.0f);
        }

        public boolean isAffectingList() {
            return !this.isBeingRemoved;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onRecycled() {
            T t = this.item;
            if (t instanceof Destroyable) {
                ((Destroyable) t).performDestroy();
            }
        }

        public RectF getRectF() {
            return this.measuredPositionRect.toRectF();
        }

        public float getSpacingStart() {
            return this.measuredSpacingStart.get();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void finishAnimation(boolean z) {
            this.position.finishAnimation(z);
            this.visibility.finishAnimation(z);
            this.measuredPositionRect.finishAnimation(z);
            this.measuredSpacingStart.finishAnimation(z);
            T t = this.item;
            if (t instanceof Animatable) {
                ((Animatable) t).finishAnimation(z);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean applyAnimation(float f) {
            boolean z = this.measuredSpacingStart.applyAnimation(f) || (this.measuredPositionRect.applyAnimation(f) || (this.visibility.applyAnimation(f) || this.position.applyAnimation(f)));
            T t = this.item;
            return t instanceof Animatable ? ((Animatable) t).applyAnimation(f) || z : z;
        }
    }

    public static class Metadata {
        private final ListAnimator<?> context;
        private final VariableFloat maxItemHeight;
        private final VariableFloat maxItemWidth;
        private final MetadataCallback metadataCallback;
        private final VariableFloat size;
        private final VariableFloat totalHeight;
        private final VariableFloat totalVisibility;
        private final VariableFloat totalWidth;

        private Metadata(ListAnimator<?> listAnimator, MetadataCallback metadataCallback) {
            this.size = new VariableFloat(0.0f);
            this.totalVisibility = new VariableFloat(0.0f);
            this.maxItemWidth = new VariableFloat(0.0f);
            this.maxItemHeight = new VariableFloat(0.0f);
            this.totalWidth = new VariableFloat(0.0f);
            this.totalHeight = new VariableFloat(0.0f);
            this.context = listAnimator;
            this.metadataCallback = metadataCallback;
        }

        public boolean applyAnimation(float f) {
            return this.metadataCallback.onApplyMetadataAnimation(this.context, f) || (this.totalVisibility.applyAnimation(f) || (this.totalHeight.applyAnimation(f) || (this.totalWidth.applyAnimation(f) || (this.maxItemHeight.applyAnimation(f) || (this.maxItemWidth.applyAnimation(f) || this.size.applyAnimation(f))))));
        }

        public void finishAnimation(boolean z) {
            this.size.finishAnimation(z);
            this.maxItemWidth.finishAnimation(z);
            this.maxItemHeight.finishAnimation(z);
            this.totalWidth.finishAnimation(z);
            this.totalHeight.finishAnimation(z);
            this.totalVisibility.finishAnimation(z);
            this.metadataCallback.onFinishMetadataAnimation(this.context, z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSize(int i, boolean z) {
            VariableFloat variableFloat = this.size;
            if (z) {
                variableFloat.setTo(i);
                this.totalVisibility.setTo(i > 0 ? 1.0f : 0.0f);
            } else {
                variableFloat.set(i);
                this.totalVisibility.set(i > 0 ? 1.0f : 0.0f);
            }
        }

        public float getTotalWidth() {
            return this.totalWidth.get();
        }

        public float getTotalHeight() {
            return this.totalHeight.get();
        }

        public float getTotalVisibility() {
            return this.totalVisibility.get();
        }
    }

    public ListAnimator(Callback callback, Interpolator interpolator, long j) {
        this.callback = callback;
        this.metadata = new Metadata(callback);
        if (interpolator != null && j > 0) {
            this.animator = new FactorAnimator(0, new FactorAnimator.Target() { // from class: me.vkryl.android.animator.ListAnimator.1
                @Override // me.vkryl.android.animator.FactorAnimator.Target
                public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
                    ListAnimator.this.applyAnimation(f);
                }

                @Override // me.vkryl.android.animator.FactorAnimator.Target
                public void onFactorChangeFinished(int i, float f, FactorAnimator factorAnimator) {
                    ListAnimator.this.applyAnimation(f);
                }
            }, interpolator, j);
        } else {
            this.animator = null;
        }
    }

    public int size() {
        return this.entries.size();
    }

    public Entry<T> getEntry(int i) {
        return this.entries.get(i);
    }

    public Metadata getMetadata() {
        return this.metadata;
    }

    public void applyAnimation(float f) {
        boolean zApplyAnimation = this.metadata.applyAnimation(f);
        ArrayList<Entry<T>> arrayList = this.entries;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Entry<T> entry = arrayList.get(i);
            i++;
            zApplyAnimation = entry.applyAnimation(f) || zApplyAnimation;
        }
        if (zApplyAnimation) {
            this.callback.onItemsChanged(this);
            if (f == 1.0f) {
                removeJunk(true);
            }
        }
    }

    @Override // java.lang.Iterable
    public Iterator<Entry<T>> iterator() {
        return this.entries.iterator();
    }

    private void removeJunk(boolean z) {
        boolean z2 = false;
        for (int size = this.entries.size() - 1; size >= 0; size--) {
            Entry<T> entry = this.entries.get(size);
            entry.finishAnimation(z);
            if (entry.isJunk()) {
                this.entries.remove(size);
                entry.onRecycled();
                z2 = true;
            }
        }
        if (z2) {
            this.entries.trimToSize();
        }
        this.metadata.finishAnimation(z);
    }

    public void stopAnimation(boolean z) {
        FactorAnimator factorAnimator = this.animator;
        if (factorAnimator != null) {
            factorAnimator.cancel();
            removeJunk(z);
            this.animator.forceFactor(0.0f);
            return;
        }
        removeJunk(z);
    }

    private int indexOfItem(T t) {
        ArrayList<Entry<T>> arrayList = this.entries;
        int i = 0;
        if (t == null) {
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Entry<T> entry = arrayList.get(i2);
                i2++;
                if (entry.item == null) {
                    return i;
                }
                i++;
            }
            return -1;
        }
        int size2 = arrayList.size();
        int i3 = 0;
        while (i3 < size2) {
            Entry<T> entry2 = arrayList.get(i3);
            i3++;
            if (t.equals(entry2.item)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public void clear(boolean z) {
        reset(null, z);
    }

    private void onBeforeListChanged() {
        if (this.foundListChanges) {
            return;
        }
        this.foundListChanges = true;
        stopAnimation(false);
    }

    private void onApplyListChanges() {
        int i = 0;
        if (this.foundListChanges) {
            this.foundListChanges = false;
            FactorAnimator factorAnimator = this.animator;
            if (factorAnimator != null) {
                factorAnimator.animateTo(1.0f);
                return;
            }
            return;
        }
        if (this.animator == null) {
            ArrayList<Entry<T>> arrayList = this.entries;
            int size = arrayList.size();
            while (i < size) {
                Entry<T> entry = arrayList.get(i);
                i++;
                Entry<T> entry2 = entry;
                ((Entry) entry2).visibility.setFrom(((Entry) entry2).visibility.get());
                ((Entry) entry2).position.setFrom(((Entry) entry2).position.get());
            }
        }
    }

    public void measureImpl(boolean z) {
        ArrayList<Entry<T>> arrayList;
        ArrayList<Entry<T>> arrayList2 = this.actualList;
        int size = arrayList2.size();
        int i = 0;
        int i2 = 0;
        int iMax = 0;
        int iMax2 = 0;
        int i3 = 0;
        while (i3 < size) {
            Entry<T> entry = arrayList2.get(i3);
            i3++;
            Entry<T> entry2 = entry;
            T t = entry2.item;
            if (t instanceof Measurable) {
                Measurable measurable = (Measurable) t;
                boolean z2 = ((Entry) entry2).index == 0;
                boolean z3 = ((Entry) entry2).index + 1 == this.actualList.size();
                int spacingStart = measurable.getSpacingStart(z2);
                int spacingEnd = measurable.getSpacingEnd(z3);
                int width = measurable.getWidth();
                int height = measurable.getHeight();
                int i4 = spacingStart + width + spacingEnd + i;
                int i5 = spacingStart + height + spacingEnd + i2;
                if (z && entry2.getVisibility() > 0.0f) {
                    float f = i;
                    float f2 = i2;
                    float f3 = i4;
                    arrayList = arrayList2;
                    float f4 = i5;
                    if (((Entry) entry2).measuredPositionRect.differs(f, f2, f3, f4)) {
                        onBeforeListChanged();
                        ((Entry) entry2).measuredPositionRect.setTo(f, f2, f3, f4);
                    }
                    float f5 = spacingStart;
                    if (((Entry) entry2).measuredSpacingStart.differs(f5)) {
                        onBeforeListChanged();
                        ((Entry) entry2).measuredSpacingStart.setTo(f5);
                    }
                } else {
                    arrayList = arrayList2;
                    ((Entry) entry2).measuredPositionRect.set(i, i2, i4, i5);
                    ((Entry) entry2).measuredSpacingStart.set(spacingStart);
                }
                iMax = Math.max(iMax, width);
                iMax2 = Math.max(iMax2, height);
                i = i4;
                i2 = i5;
            } else {
                arrayList = arrayList2;
            }
            arrayList2 = arrayList;
        }
        if (z) {
            ArrayList<Entry<T>> arrayList3 = this.entries;
            int size2 = arrayList3.size();
            int i6 = 0;
            while (true) {
                if (i6 >= size2) {
                    break;
                }
                Entry<T> entry3 = arrayList3.get(i6);
                i6++;
                T t2 = entry3.item;
                if ((t2 instanceof Animatable) && ((Animatable) t2).hasChanges()) {
                    onBeforeListChanged();
                    break;
                }
            }
        }
        ArrayList<Entry<T>> arrayList4 = this.entries;
        int size3 = arrayList4.size();
        int i7 = 0;
        while (i7 < size3) {
            Entry<T> entry4 = arrayList4.get(i7);
            i7++;
            T t3 = entry4.item;
            if (t3 instanceof Animatable) {
                Animatable animatable = (Animatable) t3;
                if (z) {
                    if (animatable.hasChanges()) {
                        animatable.prepareChanges();
                    }
                } else {
                    animatable.applyChanges();
                }
            }
        }
        Metadata metadata = this.metadata;
        if (z) {
            float f6 = i;
            if (metadata.totalWidth.differs(f6)) {
                onBeforeListChanged();
                this.metadata.totalWidth.setTo(f6);
            }
            float f7 = i2;
            if (this.metadata.totalHeight.differs(f7)) {
                onBeforeListChanged();
                this.metadata.totalHeight.setTo(f7);
            }
            float f8 = iMax;
            if (this.metadata.maxItemWidth.differs(f8)) {
                onBeforeListChanged();
                this.metadata.maxItemWidth.setTo(f8);
            }
            float f9 = iMax2;
            if (this.metadata.maxItemHeight.differs(f9)) {
                onBeforeListChanged();
                this.metadata.maxItemHeight.setTo(f9);
            }
            if (this.metadata.metadataCallback.hasChanges(this)) {
                onBeforeListChanged();
                this.metadata.metadataCallback.onPrepareMetadataAnimation(this);
                return;
            }
            return;
        }
        metadata.totalWidth.set(i);
        this.metadata.totalHeight.set(i2);
        this.metadata.maxItemWidth.set(iMax);
        this.metadata.maxItemHeight.set(iMax2);
        this.metadata.metadataCallback.onForceApplyChanges(this);
    }

    public void reset(List<T> list, boolean z) {
        reset(list, z, null);
    }

    public boolean compareContents(List<T> list) {
        if (list == null || list.isEmpty()) {
            return this.actualList.isEmpty();
        }
        if (this.actualList.size() != list.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!this.actualList.get(i).equals(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    public void reset(List<T> list, boolean z, ResetCallback<T> resetCallback) {
        ArrayList<Entry<T>> arrayList;
        boolean z2 = false;
        if (!z) {
            stopAnimation(false);
            int size = this.entries.size() - 1;
            while (true) {
                arrayList = this.entries;
                if (size < 0) {
                    break;
                }
                arrayList.get(size).onRecycled();
                size--;
            }
            arrayList.clear();
            this.actualList.clear();
            int size2 = list != null ? list.size() : 0;
            if (size2 > 0) {
                this.entries.ensureCapacity(size2);
                this.actualList.ensureCapacity(size2);
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    Entry<T> entry = new Entry<>(it.next(), this.actualList.size(), true);
                    this.entries.add(entry);
                    this.actualList.add(entry);
                }
                this.entries.trimToSize();
                this.actualList.trimToSize();
            }
            this.metadata.setSize(size2, false);
            measureImpl(false);
            this.callback.onItemsChanged(this);
            return;
        }
        if (compareContents(list)) {
            return;
        }
        onBeforeListChanged();
        if (list != null && !list.isEmpty()) {
            boolean z3 = false;
            int i = 0;
            boolean z4 = false;
            for (int i2 = 0; i2 < this.entries.size(); i2++) {
                Entry<T> entry2 = this.entries.get(i2);
                int iIndexOf = list.indexOf(entry2.item);
                if (iIndexOf != -1) {
                    i++;
                    float f = iIndexOf;
                    if (((Entry) entry2).position.differs(f)) {
                        onBeforeListChanged();
                        ((Entry) entry2).position.setTo(f);
                    }
                    if (((Entry) entry2).index != iIndexOf) {
                        ((Entry) entry2).index = iIndexOf;
                        z3 = z3 || entry2.isAffectingList();
                        z4 = true;
                    }
                    if (((Entry) entry2).visibility.differs(1.0f)) {
                        onBeforeListChanged();
                        entry2.onPrepareAppear();
                        this.actualList.add(entry2);
                        this.metadata.setSize(this.actualList.size(), true);
                        if (resetCallback != null) {
                            resetCallback.onItemAdded(entry2.item, true);
                        }
                        z3 = true;
                    }
                } else if (((Entry) entry2).visibility.differs(0.0f)) {
                    onBeforeListChanged();
                    entry2.onPrepareRemove();
                    ArrayList<Entry<T>> arrayList2 = this.actualList;
                    if (!(z3 ? arrayList2.remove(entry2) : ArrayUtils.removeSorted(arrayList2, entry2))) {
                        Segment$$ExternalSyntheticBUOutline0.m847m();
                        return;
                    } else {
                        this.metadata.setSize(this.actualList.size(), true);
                        if (resetCallback != null) {
                            resetCallback.onItemRemoved(entry2.item);
                        }
                    }
                } else {
                    continue;
                }
            }
            if (z3) {
                Collections.sort(this.actualList);
            }
            if (i < list.size()) {
                ArrayList<Entry<T>> arrayList3 = this.entries;
                arrayList3.ensureCapacity(arrayList3.size() + (list.size() - i));
                int i3 = 0;
                for (T t : list) {
                    if (indexOfItem(t) == -1) {
                        if (i3 != this.entries.size()) {
                            z4 = true;
                        }
                        onBeforeListChanged();
                        Entry<T> entry3 = new Entry<>(t, i3, false);
                        entry3.onPrepareAppear();
                        this.entries.add(entry3);
                        ArrayUtils.addSorted(this.actualList, entry3);
                        this.metadata.setSize(this.actualList.size(), true);
                        if (resetCallback != null) {
                            resetCallback.onItemAdded(entry3.item, false);
                        }
                    }
                    i3++;
                }
            }
            z2 = z4;
        } else {
            if (!this.foundListChanges) {
                ArrayList<Entry<T>> arrayList4 = this.entries;
                int size3 = arrayList4.size();
                int i4 = 0;
                while (true) {
                    if (i4 >= size3) {
                        break;
                    }
                    Entry<T> entry4 = arrayList4.get(i4);
                    i4++;
                    if (((Entry) entry4).visibility.differs(0.0f)) {
                        onBeforeListChanged();
                        break;
                    }
                }
            }
            if (this.foundListChanges) {
                ArrayList<Entry<T>> arrayList5 = this.entries;
                int size4 = arrayList5.size();
                int i5 = 0;
                while (i5 < size4) {
                    Entry<T> entry5 = arrayList5.get(i5);
                    i5++;
                    Entry<T> entry6 = entry5;
                    if (((Entry) entry6).visibility.differs(0.0f)) {
                        onBeforeListChanged();
                        entry6.onPrepareRemove();
                        ArrayUtils.removeSorted(this.actualList, entry6);
                        this.metadata.setSize(this.actualList.size(), true);
                        if (resetCallback != null) {
                            resetCallback.onItemRemoved(entry6.item);
                        }
                    }
                }
            }
        }
        if (z2) {
            Collections.sort(this.entries);
        }
        measureImpl(true);
        onApplyListChanges();
    }
}
