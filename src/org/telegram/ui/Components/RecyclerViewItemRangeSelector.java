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
    private float lastTouchX;
    private float lastTouchY;
    private RecyclerView recyclerView;
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
                RecyclerViewItemRangeSelector.this.applySelectionAtTouchPosition();
                AndroidUtilities.runOnUIThread(this);
            } else if (recyclerViewItemRangeSelector.inBottomHotspot) {
                RecyclerViewItemRangeSelector.this.recyclerView.scrollBy(0, RecyclerViewItemRangeSelector.this.autoScrollVelocity);
                RecyclerViewItemRangeSelector.this.applySelectionAtTouchPosition();
                AndroidUtilities.runOnUIThread(this);
            }
        }
    };

    public interface RecyclerViewItemRangeSelectorDelegate {
        int getItemCount();

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
        this.lastTouchX = motionEvent.getX();
        this.lastTouchY = motionEvent.getY();
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
                this.autoScrollVelocity = ((int) ((i - r2) - (y - this.hotspotTopBoundStart))) / 2;
            } else if (y >= this.hotspotBottomBoundStart && y <= this.hotspotBottomBoundEnd) {
                this.inTopHotspot = false;
                if (!this.inBottomHotspot) {
                    this.inBottomHotspot = true;
                    AndroidUtilities.cancelRunOnUIThread(this.autoScrollRunnable);
                    AndroidUtilities.runOnUIThread(this.autoScrollRunnable);
                }
                this.autoScrollVelocity = ((int) ((y + this.hotspotBottomBoundEnd) - (this.hotspotBottomBoundStart + r7))) / 2;
            } else if (this.inTopHotspot || this.inBottomHotspot) {
                AndroidUtilities.cancelRunOnUIThread(this.autoScrollRunnable);
                this.inTopHotspot = false;
                this.inBottomHotspot = false;
            }
        }
        if (childAdapterPosition == -1 || this.lastDraggedIndex == childAdapterPosition || !isSelectableIndex(childAdapterPosition)) {
            return;
        }
        applyRangeSelection(childAdapterPosition);
        this.lastDraggedIndex = childAdapterPosition;
    }

    public boolean startSelection(View view, int i) {
        if (this.dragSelectActive) {
            return false;
        }
        this.lastDraggedIndex = -1;
        this.initialSelection = -1;
        this.currentSelection = -1;
        this.initialSelectedStates.clear();
        AndroidUtilities.cancelRunOnUIThread(this.autoScrollRunnable);
        this.inTopHotspot = false;
        this.inBottomHotspot = false;
        if (!isSelectableIndex(i)) {
            this.dragSelectActive = false;
            return false;
        }
        this.delegate.onStartStopSelection(true);
        this.dragSelectActive = true;
        this.currentSelection = i;
        this.initialSelection = i;
        this.lastDraggedIndex = i;
        setIndexSelected(view, i, !getInitialSelected(i));
        return true;
    }

    private void applyRangeSelection(int i) {
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
            toggleRangeSelected(iMin2, iMin - 1);
        }
        if (iMax2 > iMax) {
            toggleRangeSelected(iMax + 1, iMax2);
        }
        if (iMin < iMin2) {
            restoreRangeSelected(iMin, iMin2 - 1);
        }
        if (iMax > iMax2) {
            restoreRangeSelected(iMax2 + 1, iMax);
        }
        this.currentSelection = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applySelectionAtTouchPosition() {
        View viewFindChildViewUnder;
        int childAdapterPosition;
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null || (viewFindChildViewUnder = recyclerView.findChildViewUnder(this.lastTouchX, this.lastTouchY)) == null || (childAdapterPosition = this.recyclerView.getChildAdapterPosition(viewFindChildViewUnder)) == -1 || childAdapterPosition == this.lastDraggedIndex || !isSelectableIndex(childAdapterPosition)) {
            return;
        }
        applyRangeSelection(childAdapterPosition);
        this.lastDraggedIndex = childAdapterPosition;
    }

    private void setIndexSelected(int i, boolean z) {
        RecyclerView recyclerView = this.recyclerView;
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = recyclerView != null ? recyclerView.findViewHolderForAdapterPosition(i) : null;
        setIndexSelected(viewHolderFindViewHolderForAdapterPosition != null ? viewHolderFindViewHolderForAdapterPosition.itemView : null, i, z);
    }

    private void setIndexSelected(View view, int i, boolean z) {
        if (isSelectableIndex(i) && this.delegate.isSelected(i) != z) {
            this.delegate.setSelected(view, i, z);
        }
    }

    private void toggleRangeSelected(int i, int i2) {
        while (i <= i2) {
            if (isSelectableIndex(i)) {
                setIndexSelected(i, !getInitialSelected(i));
            }
            i++;
        }
    }

    private void restoreRangeSelected(int i, int i2) {
        while (i <= i2) {
            if (isSelectableIndex(i)) {
                setIndexSelected(i, getInitialSelected(i));
            }
            i++;
        }
    }

    private boolean getInitialSelected(int i) {
        if (this.initialSelectedStates.indexOfKey(i) < 0) {
            this.initialSelectedStates.put(i, this.delegate.isSelected(i));
        }
        return this.initialSelectedStates.get(i);
    }

    private boolean isSelectableIndex(int i) {
        return i >= 0 && i < this.delegate.getItemCount() && this.delegate.isIndexSelectable(i);
    }

    private void onDragSelectionStop() {
        if (this.dragSelectActive) {
            this.dragSelectActive = false;
            this.lastDraggedIndex = -1;
            this.initialSelection = -1;
            this.currentSelection = -1;
            this.initialSelectedStates.clear();
            this.inTopHotspot = false;
            this.inBottomHotspot = false;
            AndroidUtilities.cancelRunOnUIThread(this.autoScrollRunnable);
            this.delegate.onStartStopSelection(false);
        }
    }
}
