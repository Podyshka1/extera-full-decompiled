package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class DiffUtil {
    private static final Comparator SNAKE_COMPARATOR = new Comparator() { // from class: androidx.recyclerview.widget.DiffUtil.1
        @Override // java.util.Comparator
        public int compare(Snake snake, Snake snake2) {
            int i = snake.f63x - snake2.f63x;
            return i == 0 ? snake.f64y - snake2.f64y : i;
        }
    };

    public static abstract class Callback {
        public abstract boolean areContentsTheSame(int i, int i2);

        public abstract boolean areItemsTheSame(int i, int i2);

        public Object getChangePayload(int i, int i2) {
            return null;
        }

        public abstract int getNewListSize();

        public abstract int getOldListSize();
    }

    public static DiffResult calculateDiff(Callback callback) {
        return calculateDiff(callback, true);
    }

    public static DiffResult calculateDiff(Callback callback, boolean z) {
        int oldListSize = callback.getOldListSize();
        int newListSize = callback.getNewListSize();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new Range(0, oldListSize, 0, newListSize));
        int iAbs = oldListSize + newListSize + Math.abs(oldListSize - newListSize);
        int i = iAbs * 2;
        int[] iArr = new int[i];
        int[] iArr2 = new int[i];
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            Range range = (Range) arrayList2.remove(arrayList2.size() - 1);
            int[] iArr3 = iArr2;
            int[] iArr4 = iArr;
            Callback callback2 = callback;
            Snake snakeDiffPartial = diffPartial(callback2, range.oldListStart, range.oldListEnd, range.newListStart, range.newListEnd, iArr4, iArr3, iAbs);
            iArr = iArr4;
            if (snakeDiffPartial != null) {
                if (snakeDiffPartial.size > 0) {
                    arrayList.add(snakeDiffPartial);
                }
                snakeDiffPartial.f63x += range.oldListStart;
                snakeDiffPartial.f64y += range.newListStart;
                Range range2 = arrayList3.isEmpty() ? new Range() : (Range) arrayList3.remove(arrayList3.size() - 1);
                range2.oldListStart = range.oldListStart;
                range2.newListStart = range.newListStart;
                if (snakeDiffPartial.reverse) {
                    range2.oldListEnd = snakeDiffPartial.f63x;
                    range2.newListEnd = snakeDiffPartial.f64y;
                } else if (snakeDiffPartial.removal) {
                    range2.oldListEnd = snakeDiffPartial.f63x - 1;
                    range2.newListEnd = snakeDiffPartial.f64y;
                } else {
                    range2.oldListEnd = snakeDiffPartial.f63x;
                    range2.newListEnd = snakeDiffPartial.f64y - 1;
                }
                arrayList2.add(range2);
                if (snakeDiffPartial.reverse) {
                    if (snakeDiffPartial.removal) {
                        int i2 = snakeDiffPartial.f63x;
                        int i3 = snakeDiffPartial.size;
                        range.oldListStart = i2 + i3 + 1;
                        range.newListStart = snakeDiffPartial.f64y + i3;
                    } else {
                        int i4 = snakeDiffPartial.f63x;
                        int i5 = snakeDiffPartial.size;
                        range.oldListStart = i4 + i5;
                        range.newListStart = snakeDiffPartial.f64y + i5 + 1;
                    }
                } else {
                    int i6 = snakeDiffPartial.f63x;
                    int i7 = snakeDiffPartial.size;
                    range.oldListStart = i6 + i7;
                    range.newListStart = snakeDiffPartial.f64y + i7;
                }
                arrayList2.add(range);
            } else {
                arrayList3.add(range);
            }
            callback = callback2;
            iArr2 = iArr3;
        }
        Callback callback3 = callback;
        Collections.sort(arrayList, SNAKE_COMPARATOR);
        return new DiffResult(callback3, arrayList, iArr, iArr2, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Snake diffPartial(Callback callback, int i, int i2, int i3, int i4, int[] iArr, int[] iArr2, int i5) {
        int i6;
        boolean z;
        int i7;
        boolean z2;
        int i8;
        int[] iArr3 = iArr;
        int i9 = i2 - i;
        int i10 = i4 - i3;
        int i11 = 1;
        if (i9 < 1 || i10 < 1) {
            return null;
        }
        int i12 = i9 - i10;
        int i13 = ((i9 + i10) + 1) / 2;
        int i14 = (i5 - i13) - 1;
        int i15 = i5 + i13 + 1;
        boolean z3 = false;
        Arrays.fill(iArr3, i14, i15, 0);
        Arrays.fill(iArr2, i14 + i12, i15 + i12, i9);
        boolean z4 = i12 % 2 != 0;
        int i16 = 0;
        while (i16 <= i13) {
            int i17 = -i16;
            int i18 = i17;
            while (i18 <= i16) {
                if (i18 == i17) {
                    i7 = iArr3[i5 + i18 + i11];
                    z2 = z3;
                } else {
                    if (i18 != i16) {
                        int i19 = i5 + i18;
                        if (iArr3[i19 - 1] < iArr3[i19 + i11]) {
                        }
                    }
                    i7 = iArr3[(i5 + i18) - i11] + i11;
                    z2 = i11;
                }
                int i20 = i7 - i18;
                while (i7 < i9 && i20 < i10) {
                    i8 = i11;
                    if (!callback.areItemsTheSame(i + i7, i3 + i20)) {
                        break;
                    }
                    i7++;
                    i20++;
                    i11 = i8;
                }
                i8 = i11;
                int i21 = i5 + i18;
                iArr3[i21] = i7;
                if (z4 && i18 >= (i12 - i16) + 1 && i18 <= (i12 + i16) - 1 && i7 >= iArr2[i21]) {
                    Snake snake = new Snake();
                    int i22 = iArr2[i21];
                    snake.f63x = i22;
                    snake.f64y = i22 - i18;
                    snake.size = iArr3[i21] - i22;
                    snake.removal = z2;
                    snake.reverse = false;
                    return snake;
                }
                i18 += 2;
                z3 = false;
                i11 = i8;
            }
            int i23 = i11;
            boolean z5 = z3;
            int i24 = i17;
            while (i24 <= i16) {
                int i25 = i24 + i12;
                if (i25 == i16 + i12) {
                    i6 = iArr2[(i5 + i25) - 1];
                    z = z5;
                } else {
                    if (i25 != i17 + i12) {
                        int i26 = i5 + i25;
                        if (iArr2[i26 - 1] < iArr2[i26 + 1]) {
                        }
                    }
                    i6 = iArr2[(i5 + i25) + 1] - 1;
                    z = i23;
                }
                for (int i27 = i6 - i25; i6 > 0 && i27 > 0 && callback.areItemsTheSame((i + i6) - 1, (i3 + i27) - 1); i27--) {
                    i6--;
                }
                int i28 = i5 + i25;
                iArr2[i28] = i6;
                if (!z4 && i25 >= i17 && i25 <= i16 && iArr[i28] >= i6) {
                    Snake snake2 = new Snake();
                    int i29 = iArr2[i28];
                    snake2.f63x = i29;
                    snake2.f64y = i29 - i25;
                    snake2.size = iArr[i28] - i29;
                    snake2.removal = z;
                    snake2.reverse = i23;
                    return snake2;
                }
                i24 += 2;
                i23 = i23;
                z5 = false;
            }
            i16++;
            i11 = i23;
            z3 = false;
            iArr3 = iArr;
        }
        throw new IllegalStateException("DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation.");
    }

    static class Snake {
        boolean removal;
        boolean reverse;
        int size;

        /* JADX INFO: renamed from: x */
        int f63x;

        /* JADX INFO: renamed from: y */
        int f64y;

        Snake() {
        }
    }

    static class Range {
        int newListEnd;
        int newListStart;
        int oldListEnd;
        int oldListStart;

        public Range() {
        }

        public Range(int i, int i2, int i3, int i4) {
            this.oldListStart = i;
            this.oldListEnd = i2;
            this.newListStart = i3;
            this.newListEnd = i4;
        }
    }

    public static class DiffResult {
        private final Callback mCallback;
        private final boolean mDetectMoves;
        private final int[] mNewItemStatuses;
        private final int mNewListSize;
        private final int[] mOldItemStatuses;
        private final int mOldListSize;
        private final List mSnakes;

        DiffResult(Callback callback, List list, int[] iArr, int[] iArr2, boolean z) {
            this.mSnakes = list;
            this.mOldItemStatuses = iArr;
            this.mNewItemStatuses = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.mCallback = callback;
            this.mOldListSize = callback.getOldListSize();
            this.mNewListSize = callback.getNewListSize();
            this.mDetectMoves = z;
            addRootSnake();
            findMatchingItems();
        }

        private void addRootSnake() {
            Snake snake = this.mSnakes.isEmpty() ? null : (Snake) this.mSnakes.get(0);
            if (snake != null && snake.f63x == 0 && snake.f64y == 0) {
                return;
            }
            Snake snake2 = new Snake();
            snake2.f63x = 0;
            snake2.f64y = 0;
            snake2.removal = false;
            snake2.size = 0;
            snake2.reverse = false;
            this.mSnakes.add(0, snake2);
        }

        private void findMatchingItems() {
            int i = this.mOldListSize;
            int i2 = this.mNewListSize;
            for (int size = this.mSnakes.size() - 1; size >= 0; size--) {
                Snake snake = (Snake) this.mSnakes.get(size);
                int i3 = snake.f63x;
                int i4 = snake.size;
                int i5 = i3 + i4;
                int i6 = snake.f64y + i4;
                if (this.mDetectMoves) {
                    while (i > i5) {
                        findAddition(i, i2, size);
                        i--;
                    }
                    while (i2 > i6) {
                        findRemoval(i, i2, size);
                        i2--;
                    }
                }
                for (int i7 = 0; i7 < snake.size; i7++) {
                    int i8 = snake.f63x + i7;
                    int i9 = snake.f64y + i7;
                    int i10 = this.mCallback.areContentsTheSame(i8, i9) ? 1 : 2;
                    this.mOldItemStatuses[i8] = (i9 << 5) | i10;
                    this.mNewItemStatuses[i9] = (i8 << 5) | i10;
                }
                i = snake.f63x;
                i2 = snake.f64y;
            }
        }

        private void findAddition(int i, int i2, int i3) {
            if (this.mOldItemStatuses[i - 1] != 0) {
                return;
            }
            findMatchingItem(i, i2, i3, false);
        }

        private void findRemoval(int i, int i2, int i3) {
            if (this.mNewItemStatuses[i2 - 1] != 0) {
                return;
            }
            findMatchingItem(i, i2, i3, true);
        }

        private boolean findMatchingItem(int i, int i2, int i3, boolean z) {
            int i4;
            int i5;
            int i6;
            if (z) {
                i2--;
                i5 = i;
                i4 = i2;
            } else {
                i4 = i - 1;
                i5 = i4;
            }
            while (i3 >= 0) {
                Snake snake = (Snake) this.mSnakes.get(i3);
                int i7 = snake.f63x;
                int i8 = snake.size;
                int i9 = i7 + i8;
                int i10 = snake.f64y + i8;
                if (z) {
                    for (int i11 = i5 - 1; i11 >= i9; i11--) {
                        if (this.mCallback.areItemsTheSame(i11, i4)) {
                            i6 = this.mCallback.areContentsTheSame(i11, i4) ? 8 : 4;
                            this.mNewItemStatuses[i4] = (i11 << 5) | 16;
                            this.mOldItemStatuses[i11] = (i4 << 5) | i6;
                            return true;
                        }
                    }
                } else {
                    for (int i12 = i2 - 1; i12 >= i10; i12--) {
                        if (this.mCallback.areItemsTheSame(i4, i12)) {
                            i6 = this.mCallback.areContentsTheSame(i4, i12) ? 8 : 4;
                            int i13 = i - 1;
                            this.mOldItemStatuses[i13] = (i12 << 5) | 16;
                            this.mNewItemStatuses[i12] = (i13 << 5) | i6;
                            return true;
                        }
                    }
                }
                i5 = snake.f63x;
                i2 = snake.f64y;
                i3--;
            }
            return false;
        }

        public void dispatchUpdatesTo(RecyclerView.Adapter adapter) {
            dispatchUpdatesTo(new AdapterListUpdateCallback(adapter));
        }

        public void dispatchUpdatesTo(ListUpdateCallback listUpdateCallback) {
            BatchingListUpdateCallback batchingListUpdateCallback;
            DiffResult diffResult;
            if (listUpdateCallback instanceof BatchingListUpdateCallback) {
                batchingListUpdateCallback = (BatchingListUpdateCallback) listUpdateCallback;
            } else {
                batchingListUpdateCallback = new BatchingListUpdateCallback(listUpdateCallback);
            }
            ArrayList arrayList = new ArrayList();
            int i = this.mOldListSize;
            int i2 = this.mNewListSize;
            for (int size = this.mSnakes.size() - 1; size >= 0; size--) {
                Snake snake = (Snake) this.mSnakes.get(size);
                int i3 = snake.size;
                int i4 = snake.f63x + i3;
                int i5 = snake.f64y + i3;
                if (i4 < i) {
                    dispatchRemovals(arrayList, batchingListUpdateCallback, i4, i - i4, i4);
                }
                if (i5 < i2) {
                    diffResult = this;
                    diffResult.dispatchAdditions(arrayList, batchingListUpdateCallback, i4, i2 - i5, i5);
                } else {
                    diffResult = this;
                }
                for (int i6 = i3 - 1; i6 >= 0; i6--) {
                    int[] iArr = diffResult.mOldItemStatuses;
                    int i7 = snake.f63x;
                    if ((iArr[i7 + i6] & 31) == 2) {
                        batchingListUpdateCallback.onChanged(i7 + i6, 1, diffResult.mCallback.getChangePayload(i7 + i6, snake.f64y + i6));
                    }
                }
                i = snake.f63x;
                i2 = snake.f64y;
            }
            batchingListUpdateCallback.dispatchLastEvent();
        }

        private static PostponedUpdate removePostponedUpdate(List list, int i, boolean z) {
            int size = list.size() - 1;
            while (size >= 0) {
                PostponedUpdate postponedUpdate = (PostponedUpdate) list.get(size);
                if (postponedUpdate.posInOwnerList == i && postponedUpdate.removal == z) {
                    list.remove(size);
                    while (size < list.size()) {
                        ((PostponedUpdate) list.get(size)).currentPos += z ? 1 : -1;
                        size++;
                    }
                    return postponedUpdate;
                }
                size--;
            }
            return null;
        }

        private void dispatchAdditions(List list, ListUpdateCallback listUpdateCallback, int i, int i2, int i3) {
            if (!this.mDetectMoves) {
                listUpdateCallback.onInserted(i, i2);
                return;
            }
            for (int i4 = i2 - 1; i4 >= 0; i4--) {
                int i5 = i3 + i4;
                int i6 = this.mNewItemStatuses[i5];
                int i7 = i6 & 31;
                if (i7 == 0) {
                    listUpdateCallback.onInserted(i, 1);
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((PostponedUpdate) it.next()).currentPos++;
                    }
                } else if (i7 == 4 || i7 == 8) {
                    int i8 = i6 >> 5;
                    listUpdateCallback.onMoved(removePostponedUpdate(list, i8, true).currentPos, i);
                    if (i7 == 4) {
                        listUpdateCallback.onChanged(i, 1, this.mCallback.getChangePayload(i8, i5));
                    }
                } else if (i7 == 16) {
                    list.add(new PostponedUpdate(i5, i, false));
                } else {
                    throw new IllegalStateException("unknown flag for pos " + i5 + " " + Long.toBinaryString(i7));
                }
            }
        }

        private void dispatchRemovals(List list, ListUpdateCallback listUpdateCallback, int i, int i2, int i3) {
            if (!this.mDetectMoves) {
                listUpdateCallback.onRemoved(i, i2);
                return;
            }
            for (int i4 = i2 - 1; i4 >= 0; i4--) {
                int i5 = i3 + i4;
                int i6 = this.mOldItemStatuses[i5];
                int i7 = i6 & 31;
                if (i7 == 0) {
                    listUpdateCallback.onRemoved(i + i4, 1);
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((PostponedUpdate) it.next()).currentPos--;
                    }
                } else if (i7 == 4 || i7 == 8) {
                    int i8 = i6 >> 5;
                    PostponedUpdate postponedUpdateRemovePostponedUpdate = removePostponedUpdate(list, i8, false);
                    listUpdateCallback.onMoved(i + i4, postponedUpdateRemovePostponedUpdate.currentPos - 1);
                    if (i7 == 4) {
                        listUpdateCallback.onChanged(postponedUpdateRemovePostponedUpdate.currentPos - 1, 1, this.mCallback.getChangePayload(i5, i8));
                    }
                } else if (i7 == 16) {
                    list.add(new PostponedUpdate(i5, i + i4, true));
                } else {
                    throw new IllegalStateException("unknown flag for pos " + i5 + " " + Long.toBinaryString(i7));
                }
            }
        }
    }

    private static class PostponedUpdate {
        int currentPos;
        int posInOwnerList;
        boolean removal;

        public PostponedUpdate(int i, int i2, boolean z) {
            this.posInOwnerList = i;
            this.currentPos = i2;
            this.removal = z;
        }
    }
}
