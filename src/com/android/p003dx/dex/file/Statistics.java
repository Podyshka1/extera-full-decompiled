package com.android.p003dx.dex.file;

import com.android.p003dx.util.AnnotatedOutput;
import java.util.HashMap;
import java.util.Iterator;
import java.util.TreeMap;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class Statistics {
    private final HashMap<String, Data> dataMap = new HashMap<>(50);

    public void add(Item item) {
        String strTypeName = item.typeName();
        Data data = this.dataMap.get(strTypeName);
        if (data == null) {
            this.dataMap.put(strTypeName, new Data(item, strTypeName));
        } else {
            data.add(item);
        }
    }

    public void addAll(Section section) {
        Iterator<? extends Item> it = section.items().iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }

    public final void writeAnnotation(AnnotatedOutput annotatedOutput) {
        if (this.dataMap.size() == 0) {
            return;
        }
        annotatedOutput.annotate(0, "\nstatistics:\n");
        TreeMap treeMap = new TreeMap();
        for (Data data : this.dataMap.values()) {
            treeMap.put(data.name, data);
        }
        Iterator it = treeMap.values().iterator();
        while (it.hasNext()) {
            ((Data) it.next()).writeAnnotation(annotatedOutput);
        }
    }

    public String toHuman() {
        StringBuilder sb = new StringBuilder();
        sb.append("Statistics:\n");
        TreeMap treeMap = new TreeMap();
        for (Data data : this.dataMap.values()) {
            treeMap.put(data.name, data);
        }
        Iterator it = treeMap.values().iterator();
        while (it.hasNext()) {
            sb.append(((Data) it.next()).toHuman());
        }
        return sb.toString();
    }

    private static class Data {
        private int count;
        private int largestSize;
        private final String name;
        private int smallestSize;
        private int totalSize;

        public Data(Item item, String str) {
            int iWriteSize = item.writeSize();
            this.name = str;
            this.count = 1;
            this.totalSize = iWriteSize;
            this.largestSize = iWriteSize;
            this.smallestSize = iWriteSize;
        }

        public void add(Item item) {
            int iWriteSize = item.writeSize();
            this.count++;
            this.totalSize += iWriteSize;
            if (iWriteSize > this.largestSize) {
                this.largestSize = iWriteSize;
            }
            if (iWriteSize < this.smallestSize) {
                this.smallestSize = iWriteSize;
            }
        }

        public void writeAnnotation(AnnotatedOutput annotatedOutput) {
            annotatedOutput.annotate(toHuman());
        }

        public String toHuman() {
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("  ");
            sb2.append(this.name);
            sb2.append(": ");
            sb2.append(this.count);
            sb2.append(" item");
            sb2.append(this.count == 1 ? _UrlKt.FRAGMENT_ENCODE_SET : "s");
            sb2.append("; ");
            sb2.append(this.totalSize);
            sb2.append(" bytes total\n");
            sb.append(sb2.toString());
            if (this.smallestSize == this.largestSize) {
                sb.append("    " + this.smallestSize + " bytes/item\n");
            } else {
                sb.append("    " + this.smallestSize + ".." + this.largestSize + " bytes/item; average " + (this.totalSize / this.count) + "\n");
            }
            return sb.toString();
        }
    }
}
