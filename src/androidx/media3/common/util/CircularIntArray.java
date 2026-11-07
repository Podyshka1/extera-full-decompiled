package androidx.media3.common.util;

/* JADX INFO: loaded from: classes3.dex */
public final class CircularIntArray {
    private int capacityBitmask = 7;
    private int[] elements = new int[8];
    private int head;
    private int tail;

    public void addLast(int i) {
        int[] iArr = this.elements;
        int i2 = this.tail;
        iArr[i2] = i;
        int i3 = this.capacityBitmask & (i2 + 1);
        this.tail = i3;
        if (i3 == this.head) {
            doubleCapacity();
        }
    }

    public int popFirst() {
        int i = this.head;
        if (i == this.tail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i2 = this.elements[i];
        this.head = (i + 1) & this.capacityBitmask;
        return i2;
    }

    public void clear() {
        this.tail = this.head;
    }

    public boolean isEmpty() {
        return this.head == this.tail;
    }

    private void doubleCapacity() {
        int[] iArr = this.elements;
        int length = iArr.length;
        int i = this.head;
        int i2 = length - i;
        int i3 = length << 1;
        int[] iArr2 = new int[i3];
        System.arraycopy(iArr, i, iArr2, 0, i2);
        System.arraycopy(this.elements, 0, iArr2, i2, this.head);
        this.elements = iArr2;
        this.head = 0;
        this.tail = length;
        this.capacityBitmask = i3 - 1;
    }
}
