package com.android.p003dx.dex.file;

import com.android.dex.util.ExceptionWithContext;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.Hex;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public final class MixedItemSection extends Section {
    private static final Comparator<OffsettedItem> TYPE_SORTER = new Comparator<OffsettedItem>() { // from class: com.android.dx.dex.file.MixedItemSection.1
        @Override // java.util.Comparator
        public int compare(OffsettedItem offsettedItem, OffsettedItem offsettedItem2) {
            return offsettedItem.itemType().compareTo(offsettedItem2.itemType());
        }
    };
    private final HashMap<OffsettedItem, OffsettedItem> interns;
    private final ArrayList<OffsettedItem> items;
    private final SortType sort;
    private int writeSize;

    enum SortType {
        NONE,
        TYPE,
        INSTANCE
    }

    public MixedItemSection(String str, DexFile dexFile, int i, SortType sortType) {
        super(str, dexFile, i);
        this.items = new ArrayList<>(100);
        this.interns = new HashMap<>(100);
        this.sort = sortType;
        this.writeSize = -1;
    }

    @Override // com.android.p003dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.items;
    }

    @Override // com.android.p003dx.dex.file.Section
    public int writeSize() {
        throwIfNotPrepared();
        return this.writeSize;
    }

    @Override // com.android.p003dx.dex.file.Section
    public int getAbsoluteItemOffset(Item item) {
        return ((OffsettedItem) item).getAbsoluteOffset();
    }

    public int size() {
        return this.items.size();
    }

    public void writeHeaderPart(AnnotatedOutput annotatedOutput) {
        throwIfNotPrepared();
        int i = this.writeSize;
        if (i == -1) {
            throw new RuntimeException("write size not yet set");
        }
        int fileOffset = i == 0 ? 0 : getFileOffset();
        String name = getName();
        if (name == null) {
            name = "<unnamed>";
        }
        char[] cArr = new char[15 - name.length()];
        Arrays.fill(cArr, ' ');
        String str = new String(cArr);
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(4, name + "_size:" + str + Hex.m214u4(i));
            annotatedOutput.annotate(4, name + "_off: " + str + Hex.m214u4(fileOffset));
        }
        annotatedOutput.writeInt(i);
        annotatedOutput.writeInt(fileOffset);
    }

    public void add(OffsettedItem offsettedItem) {
        throwIfPrepared();
        try {
            if (offsettedItem.getAlignment() > getAlignment()) {
                throw new IllegalArgumentException("incompatible item alignment");
            }
            this.items.add(offsettedItem);
        } catch (NullPointerException unused) {
            throw new NullPointerException("item == null");
        }
    }

    public synchronized <T extends OffsettedItem> T intern(T t) {
        throwIfPrepared();
        T t2 = (T) this.interns.get(t);
        if (t2 != null) {
            return t2;
        }
        add(t);
        this.interns.put(t, t);
        return t;
    }

    public <T extends OffsettedItem> T get(T t) {
        throwIfNotPrepared();
        T t2 = (T) this.interns.get(t);
        if (t2 != null) {
            return t2;
        }
        throw new NoSuchElementException(t.toString());
    }

    public void writeIndexAnnotation(AnnotatedOutput annotatedOutput, ItemType itemType, String str) {
        throwIfNotPrepared();
        TreeMap treeMap = new TreeMap();
        ArrayList<OffsettedItem> arrayList = this.items;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            OffsettedItem offsettedItem = arrayList.get(i);
            i++;
            OffsettedItem offsettedItem2 = offsettedItem;
            if (offsettedItem2.itemType() == itemType) {
                treeMap.put(offsettedItem2.toHuman(), offsettedItem2);
            }
        }
        if (treeMap.size() == 0) {
            return;
        }
        annotatedOutput.annotate(0, str);
        for (Map.Entry entry : treeMap.entrySet()) {
            annotatedOutput.annotate(0, ((OffsettedItem) entry.getValue()).offsetString() + ' ' + ((String) entry.getKey()) + '\n');
        }
    }

    @Override // com.android.p003dx.dex.file.Section
    protected void prepare0() {
        DexFile file = getFile();
        int i = 0;
        while (true) {
            int size = this.items.size();
            if (i >= size) {
                return;
            }
            while (i < size) {
                this.items.get(i).addContents(file);
                i++;
            }
        }
    }

    public void placeItems() {
        throwIfNotPrepared();
        int i = C09212.$SwitchMap$com$android$dx$dex$file$MixedItemSection$SortType[this.sort.ordinal()];
        if (i == 1) {
            Collections.sort(this.items);
        } else if (i == 2) {
            Collections.sort(this.items, TYPE_SORTER);
        }
        int size = this.items.size();
        int iWriteSize = 0;
        for (int i2 = 0; i2 < size; i2++) {
            OffsettedItem offsettedItem = this.items.get(i2);
            try {
                int iPlace = offsettedItem.place(this, iWriteSize);
                if (iPlace < iWriteSize) {
                    throw new RuntimeException("bogus place() result for " + offsettedItem);
                }
                iWriteSize = offsettedItem.writeSize() + iPlace;
            } catch (RuntimeException e) {
                throw ExceptionWithContext.withContext(e, "...while placing " + offsettedItem);
            }
        }
        this.writeSize = iWriteSize;
    }

    /* JADX INFO: renamed from: com.android.dx.dex.file.MixedItemSection$2 */
    static /* synthetic */ class C09212 {
        static final /* synthetic */ int[] $SwitchMap$com$android$dx$dex$file$MixedItemSection$SortType;

        static {
            int[] iArr = new int[SortType.values().length];
            $SwitchMap$com$android$dx$dex$file$MixedItemSection$SortType = iArr;
            try {
                iArr[SortType.INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$dx$dex$file$MixedItemSection$SortType[SortType.TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.android.p003dx.dex.file.Section
    protected void writeTo0(AnnotatedOutput annotatedOutput) {
        boolean zAnnotates = annotatedOutput.annotates();
        DexFile file = getFile();
        ArrayList<OffsettedItem> arrayList = this.items;
        int size = arrayList.size();
        boolean z = true;
        int iWriteSize = 0;
        int i = 0;
        while (i < size) {
            OffsettedItem offsettedItem = arrayList.get(i);
            i++;
            OffsettedItem offsettedItem2 = offsettedItem;
            if (zAnnotates) {
                if (z) {
                    z = false;
                } else {
                    annotatedOutput.annotate(0, "\n");
                }
            }
            int alignment = offsettedItem2.getAlignment() - 1;
            int i2 = (~alignment) & (iWriteSize + alignment);
            if (iWriteSize != i2) {
                annotatedOutput.writeZeroes(i2 - iWriteSize);
                iWriteSize = i2;
            }
            offsettedItem2.writeTo(file, annotatedOutput);
            iWriteSize += offsettedItem2.writeSize();
        }
        if (iWriteSize != this.writeSize) {
            throw new RuntimeException("output size mismatch");
        }
    }
}
