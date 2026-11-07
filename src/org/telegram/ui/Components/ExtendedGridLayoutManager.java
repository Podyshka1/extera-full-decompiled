package org.telegram.ui.Components;

import android.content.Context;
import android.util.SparseIntArray;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes7.dex */
public class ExtendedGridLayoutManager extends GridLayoutManager {
    private int calculatedWidth;
    private final boolean firstRowFullWidth;
    private int firstRowMax;
    private SparseIntArray itemSpans;
    private SparseIntArray itemsToRow;
    private int lastItemCount;
    private final boolean lastRowFullWidth;
    private int lastSpanCount;
    private int rowsCount;

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getColumnCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return 1;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return false;
    }

    public ExtendedGridLayoutManager(Context context, int i) {
        this(context, i, false);
    }

    public ExtendedGridLayoutManager(Context context, int i, boolean z) {
        this(context, i, z, false);
    }

    public ExtendedGridLayoutManager(Context context, int i, boolean z, boolean z2) {
        super(context, i);
        this.itemSpans = new SparseIntArray();
        this.itemsToRow = new SparseIntArray();
        this.lastItemCount = -1;
        this.lastRowFullWidth = z;
        this.firstRowFullWidth = z2;
    }

    private void prepareLayout(float f) {
        int iMin;
        int i;
        float f2 = f == 0.0f ? 100.0f : f;
        this.itemSpans.clear();
        this.itemsToRow.clear();
        int i2 = 0;
        this.rowsCount = 0;
        this.firstRowMax = 0;
        int flowItemCount = getFlowItemCount();
        this.lastSpanCount = getSpanCount();
        this.lastItemCount = flowItemCount;
        if (flowItemCount == 0) {
            return;
        }
        int iDp = AndroidUtilities.dp(100.0f);
        int spanCount = getSpanCount();
        int i3 = (this.lastRowFullWidth ? 1 : 0) + flowItemCount;
        int i4 = 0;
        int i5 = 0;
        int i6 = spanCount;
        while (i4 < i3) {
            if (i4 == 0 && this.firstRowFullWidth) {
                SparseIntArray sparseIntArray = this.itemSpans;
                sparseIntArray.put(i4, sparseIntArray.get(i4) + spanCount);
                this.itemsToRow.put(i2, this.rowsCount);
                this.rowsCount++;
            } else {
                Size sizeSizeForItem = i4 < flowItemCount ? sizeForItem(i4) : null;
                if (sizeSizeForItem == null) {
                    i = i5 != 0 ? 1 : i2;
                    iMin = spanCount;
                } else {
                    iMin = Math.min(spanCount, (int) Math.floor(spanCount * (((sizeSizeForItem.width / sizeSizeForItem.height) * iDp) / f2)));
                    int i7 = (i6 < iMin || (iMin > 33 && i6 < iMin + (-15))) ? 1 : i2;
                    if (sizeSizeForItem.full) {
                        this.itemSpans.put(i4, i6);
                        this.rowsCount++;
                    } else {
                        i = i7;
                    }
                }
                if (i != 0) {
                    if (i6 != 0 && i5 != 0) {
                        int i8 = i6 / i5;
                        int i9 = i4 - i5;
                        int i10 = i9;
                        while (true) {
                            int i11 = i9 + i5;
                            if (i10 >= i11) {
                                break;
                            }
                            int i12 = i11 - 1;
                            SparseIntArray sparseIntArray2 = this.itemSpans;
                            if (i10 == i12) {
                                sparseIntArray2.put(i10, sparseIntArray2.get(i10) + i6);
                            } else {
                                sparseIntArray2.put(i10, sparseIntArray2.get(i10) + i8);
                            }
                            i6 -= i8;
                            i10++;
                        }
                        this.itemsToRow.put(i4 - 1, this.rowsCount);
                    }
                    if (i4 == flowItemCount) {
                        break;
                    }
                    this.rowsCount++;
                    i6 = spanCount;
                    i5 = 0;
                } else if (i6 < iMin) {
                    iMin = i6;
                }
                if (this.rowsCount == 0) {
                    this.firstRowMax = Math.max(this.firstRowMax, i4);
                }
                if (i4 == flowItemCount - 1 && !this.lastRowFullWidth) {
                    this.itemsToRow.put(i4, this.rowsCount);
                }
                i5++;
                i6 -= iMin;
                this.itemSpans.put(i4, iMin);
                i4++;
                i2 = 0;
            }
            i5 = i2;
            i6 = spanCount;
            i4++;
            i2 = 0;
        }
        this.rowsCount++;
    }

    private Size sizeForItem(int i) {
        return fixSize(getSizeForItem(i));
    }

    public Size fixSize(Size size) {
        if (size == null) {
            return null;
        }
        if (size.width == 0.0f) {
            size.width = 100.0f;
        }
        if (size.height == 0.0f) {
            size.height = 100.0f;
        }
        float f = size.width;
        float f2 = size.height;
        float f3 = f / f2;
        if (f3 <= 4.0f && f3 >= 0.2f) {
            return size;
        }
        float fMax = Math.max(f, f2);
        size.width = fMax;
        size.height = fMax;
        return size;
    }

    public Size getSizeForItem(int i) {
        return new Size(100.0f, 100.0f);
    }

    private void checkLayout() {
        if (this.lastItemCount == getFlowItemCount() && this.calculatedWidth == getWidth() && this.lastSpanCount == getSpanCount()) {
            return;
        }
        this.calculatedWidth = getWidth();
        prepareLayout(getWidth());
    }

    public int getSpanSizeForItem(int i) {
        checkLayout();
        return this.itemSpans.get(i);
    }

    public boolean isLastInRow(int i) {
        checkLayout();
        return this.itemsToRow.get(i, Integer.MAX_VALUE) != Integer.MAX_VALUE;
    }

    public boolean isFirstRow(int i) {
        checkLayout();
        return i <= this.firstRowMax;
    }

    public int getFlowItemCount() {
        return getItemCount();
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        super.onItemsChanged(recyclerView);
        this.lastItemCount = -1;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        super.onItemsAdded(recyclerView, i, i2);
        this.lastItemCount = -1;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        super.onItemsRemoved(recyclerView, i, i2);
        this.lastItemCount = -1;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        super.onItemsUpdated(recyclerView, i, i2, obj);
        this.lastItemCount = -1;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        super.onItemsMoved(recyclerView, i, i2, i3);
        this.lastItemCount = -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        super.onAdapterChanged(adapter, adapter2);
        this.lastItemCount = -1;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getRowCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return state.getItemCount();
    }
}
