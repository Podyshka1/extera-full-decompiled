package org.telegram.ui.Components;

import android.util.SparseBooleanArray;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes7.dex */
public class RecyclerViewItemRangeSelector implements RecyclerView.OnItemTouchListener {
    private int autoScrollVelocity;
    private RecyclerViewItemRangeSelectorDelegate delegate;
    private boolean dragSelectActive;
    private int hotspotBottomBoundEnd;
    private int hotspotBottomBoundStart;
    private int hotspotOffsetBottom;
    private int hotspotOffsetTop;
    private int hotspotTopBoundEnd;
    private int hotspotTopBoundStart;
    private boolean inBottomHotspot;
    private boolean inTopHotspot;
    private RecyclerView recyclerView;
    private boolean targetSelectionState;
    private int lastDraggedIndex = -1;
    private int initialSelection = -1;
    private int currentSelection = -1;
    private final SparseBooleanArray initialSelectedStates = new SparseBooleanArray();
    private int hotspotHeight = AndroidUtilities.dp(80.0f);
    private Runnable autoScrollRunnable = new Runnable() { // from class: org.telegram.ui.Components.RecyclerViewItemRangeSelector.1
        @Override // java.lang.Runnable
        public void run() {
            if (RecyclerViewItemRangeSelector.this.recyclerView == null) {
                return;
            }
            boolean z = RecyclerViewItemRangeSelector.this.inTopHotspot;
            RecyclerViewItemRangeSelector recyclerViewItemRangeSelector = RecyclerViewItemRangeSelector.this;
            if (z) {
                recyclerViewItemRangeSelector.recyclerView.scrollBy(0, -RecyclerViewItemRangeSelector.this.autoScrollVelocity);
                AndroidUtilities.runOnUIThread(this);
            } else if (recyclerViewItemRangeSelector.inBottomHotspot) {
                RecyclerViewItemRangeSelector.this.recyclerView.scrollBy(0, RecyclerViewItemRangeSelector.this.autoScrollVelocity);
                AndroidUtilities.runOnUIThread(this);
            }
        }
    };

    public interface RecyclerViewItemRangeSelectorDelegate {
        boolean isIndexSelectable(int i);

        boolean isSelected(int i);

        void onStartStopSelection(boolean z);

        void setSelected(View view, int i, boolean z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    public RecyclerViewItemRangeSelector(RecyclerViewItemRangeSelectorDelegate recyclerViewItemRangeSelectorDelegate) {
        this.delegate = recyclerViewItemRangeSelectorDelegate;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        boolean z = false;
        boolean z2 = recyclerView.getAdapter() == null || recyclerView.getAdapter().getItemCount() == 0;
        if (this.dragSelectActive && !z2) {
            z = true;
        }
        if (z) {
            this.recyclerView = recyclerView;
            int i = this.hotspotHeight;
            if (i > -1) {
                int i2 = this.hotspotOffsetTop;
                this.hotspotTopBoundStart = i2;
                this.hotspotTopBoundEnd = i2 + i;
                this.hotspotBottomBoundStart = (recyclerView.getMeasuredHeight() - this.hotspotHeight) - this.hotspotOffsetBottom;
                this.hotspotBottomBoundEnd = recyclerView.getMeasuredHeight() - this.hotspotOffsetBottom;
            }
        }
        if (z && (motionEvent.getAction() == 1 || motionEvent.getAction() == 3)) {
            onDragSelectionStop();
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        View viewFindChildViewUnder = recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY());
        int childAdapterPosition = viewFindChildViewUnder != null ? recyclerView.getChildAdapterPosition(viewFindChildViewUnder) : -1;
        float y = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 1) {
            onDragSelectionStop();
            return;
        }
        if (action != 2) {
            if (action != 3) {
                return;
            }
            onDragSelectionStop();
            return;
        }
        if (this.hotspotHeight > -1) {
            if (y >= this.hotspotTopBoundStart && y <= this.hotspotTopBoundEnd) {
                this.inBottomHotspot = false;
                if (!this.inTopHotspot) {
                    this.inTopHotspot = true;
                    AndroidUtilities.cancelRunOnUIThread(this.autoScrollRunnable);
                    AndroidUtilities.runOnUIThread(this.autoScrollRunnable);
                }
                int i = this.hotspotTopBoundEnd;
                this.autoScrollVelocity = ((int) ((i - r3) - (y - this.hotspotTopBoundStart))) / 2;
            } else if (y >= this.hotspotBottomBoundStart && y <= this.hotspotBottomBoundEnd) {
                this.inTopHotspot = false;
                if (!this.inBottomHotspot) {
                    this.inBottomHotspot = true;
                    AndroidUtilities.cancelRunOnUIThread(this.autoScrollRunnable);
                    AndroidUtilities.runOnUIThread(this.autoScrollRunnable);
                }
                this.autoScrollVelocity = ((int) ((y + this.hotspotBottomBoundEnd) - (this.hotspotBottomBoundStart + r8))) / 2;
            } else if (this.inTopHotspot || this.inBottomHotspot) {
                AndroidUtilities.cancelRunOnUIThread(this.autoScrollRunnable);
                this.inTopHotspot = false;
                this.inBottomHotspot = false;
            }
        }
        if (childAdapterPosition == -1 || this.lastDraggedIndex == childAdapterPosition || !this.delegate.isIndexSelectable(childAdapterPosition)) {
            return;
        }
        this.lastDraggedIndex = childAdapterPosition;
        applyRangeSelection(recyclerView, childAdapterPosition);
    }

    public boolean setIsActive(View view, boolean z, int i, boolean z2) {
        if (z && this.dragSelectActive) {
            return false;
        }
        this.lastDraggedIndex = -1;
        this.currentSelection = -1;
        this.initialSelectedStates.clear();
        AndroidUtilities.cancelRunOnUIThread(this.autoScrollRunnable);
        this.inTopHotspot = false;
        this.inBottomHotspot = false;
        if (!z) {
            this.initialSelection = -1;
            this.dragSelectActive = false;
            return false;
        }
        if (!this.delegate.isIndexSelectable(i)) {
            this.dragSelectActive = false;
            this.initialSelection = -1;
            return false;
        }
        this.delegate.onStartStopSelection(true);
        this.dragSelectActive = z;
        this.targetSelectionState = z2;
        this.currentSelection = i;
        this.initialSelection = i;
        this.lastDraggedIndex = i;
        setIndexSelected(view, i, z2);
        return true;
    }

    private void applyRangeSelection(RecyclerView recyclerView, int i) {
        int i2;
        int i3 = this.initialSelection;
        if (i3 == -1 || (i2 = this.currentSelection) == -1) {
            return;
        }
        int iMin = Math.min(i3, i2);
        int iMax = Math.max(this.initialSelection, this.currentSelection);
        int iMin2 = Math.min(this.initialSelection, i);
        int iMax2 = Math.max(this.initialSelection, i);
        if (iMin2 < iMin) {
            setRangeSelected(recyclerView, iMin2, iMin - 1, this.targetSelectionState);
        }
        if (iMax2 > iMax) {
            setRangeSelected(recyclerView, iMax + 1, iMax2, this.targetSelectionState);
        }
        if (iMin < iMin2) {
            restoreRangeSelected(recyclerView, iMin, iMin2 - 1);
        }
        if (iMax > iMax2) {
            restoreRangeSelected(recyclerView, iMax2 + 1, iMax);
        }
        this.currentSelection = i;
    }

    private void setRangeSelected(RecyclerView recyclerView, int i, int i2, boolean z) {
        while (i <= i2) {
            setIndexSelected(recyclerView, i, z);
            i++;
        }
    }

    private void restoreRangeSelected(RecyclerView recyclerView, int i, int i2) {
        while (i <= i2) {
            setIndexSelected(recyclerView, i, getInitialSelected(i));
            i++;
        }
    }

    private void setIndexSelected(RecyclerView recyclerView, int i, boolean z) {
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(i);
        setIndexSelected(viewHolderFindViewHolderForAdapterPosition != null ? viewHolderFindViewHolderForAdapterPosition.itemView : null, i, z);
    }

    private void setIndexSelected(View view, int i, boolean z) {
        if (this.delegate.isIndexSelectable(i)) {
            rememberInitialSelected(i);
            if (view == null || this.delegate.isSelected(i) == z) {
                return;
            }
            this.delegate.setSelected(view, i, z);
        }
    }

    private boolean getInitialSelected(int i) {
        rememberInitialSelected(i);
        return this.initialSelectedStates.get(i);
    }

    private void rememberInitialSelected(int i) {
        if (this.initialSelectedStates.indexOfKey(i) < 0) {
            this.initialSelectedStates.put(i, this.delegate.isSelected(i));
        }
    }

    private void onDragSelectionStop() {
        if (this.dragSelectActive) {
            this.dragSelectActive = false;
            this.initialSelection = -1;
            this.currentSelection = -1;
            this.lastDraggedIndex = -1;
            this.initialSelectedStates.clear();
            this.inTopHotspot = false;
            this.inBottomHotspot = false;
            AndroidUtilities.cancelRunOnUIThread(this.autoScrollRunnable);
            this.delegate.onStartStopSelection(false);
        }
    }
}
