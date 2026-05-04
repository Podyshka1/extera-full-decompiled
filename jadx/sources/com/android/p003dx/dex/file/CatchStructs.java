package com.android.p003dx.dex.file;

import com.android.p003dx.dex.code.CatchHandlerList;
import com.android.p003dx.dex.code.CatchTable;
import com.android.p003dx.dex.code.DalvCode;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.ByteArrayAnnotatedOutput;
import com.android.p003dx.util.Hex;
import java.io.PrintWriter;
import java.util.Map;
import java.util.TreeMap;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class CatchStructs {
    private static final int TRY_ITEM_WRITE_SIZE = 8;
    private final DalvCode code;
    private CatchTable table = null;
    private byte[] encodedHandlers = null;
    private int encodedHandlerHeaderSize = 0;
    private TreeMap<CatchHandlerList, Integer> handlerOffsets = null;

    public CatchStructs(DalvCode dalvCode) {
        this.code = dalvCode;
    }

    private void finishProcessingIfNecessary() {
        if (this.table == null) {
            this.table = this.code.getCatches();
        }
    }

    public int triesSize() {
        finishProcessingIfNecessary();
        return this.table.size();
    }

    public void debugPrint(PrintWriter printWriter, String str) {
        annotateEntries(str, printWriter, null);
    }

    public void encode(DexFile dexFile) {
        finishProcessingIfNecessary();
        TypeIdsSection typeIds = dexFile.getTypeIds();
        int size = this.table.size();
        this.handlerOffsets = new TreeMap<>();
        for (int i = 0; i < size; i++) {
            this.handlerOffsets.put(this.table.get(i).getHandlers(), null);
        }
        if (this.handlerOffsets.size() > 65535) {
            throw new UnsupportedOperationException("too many catch handlers");
        }
        ByteArrayAnnotatedOutput byteArrayAnnotatedOutput = new ByteArrayAnnotatedOutput();
        this.encodedHandlerHeaderSize = byteArrayAnnotatedOutput.writeUleb128(this.handlerOffsets.size());
        for (Map.Entry<CatchHandlerList, Integer> entry : this.handlerOffsets.entrySet()) {
            CatchHandlerList key = entry.getKey();
            int size2 = key.size();
            boolean zCatchesAll = key.catchesAll();
            entry.setValue(Integer.valueOf(byteArrayAnnotatedOutput.getCursor()));
            if (zCatchesAll) {
                byteArrayAnnotatedOutput.writeSleb128(-(size2 - 1));
                size2--;
            } else {
                byteArrayAnnotatedOutput.writeSleb128(size2);
            }
            for (int i2 = 0; i2 < size2; i2++) {
                CatchHandlerList.Entry entry2 = key.get(i2);
                byteArrayAnnotatedOutput.writeUleb128(typeIds.indexOf(entry2.getExceptionType()));
                byteArrayAnnotatedOutput.writeUleb128(entry2.getHandler());
            }
            if (zCatchesAll) {
                byteArrayAnnotatedOutput.writeUleb128(key.get(size2).getHandler());
            }
        }
        this.encodedHandlers = byteArrayAnnotatedOutput.toByteArray();
    }

    public int writeSize() {
        return (triesSize() * 8) + this.encodedHandlers.length;
    }

    public void writeTo(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        finishProcessingIfNecessary();
        if (annotatedOutput.annotates()) {
            annotateEntries("  ", null, annotatedOutput);
        }
        int size = this.table.size();
        for (int i = 0; i < size; i++) {
            CatchTable.Entry entry = this.table.get(i);
            int start = entry.getStart();
            int end = entry.getEnd();
            int i2 = end - start;
            if (i2 >= 65536) {
                throw new UnsupportedOperationException("bogus exception range: " + Hex.m214u4(start) + ".." + Hex.m214u4(end));
            }
            annotatedOutput.writeInt(start);
            annotatedOutput.writeShort(i2);
            annotatedOutput.writeShort(this.handlerOffsets.get(entry.getHandlers()).intValue());
        }
        annotatedOutput.write(this.encodedHandlers);
    }

    private void annotateEntries(String str, PrintWriter printWriter, AnnotatedOutput annotatedOutput) {
        String str2;
        PrintWriter printWriter2 = printWriter;
        AnnotatedOutput annotatedOutput2 = annotatedOutput;
        finishProcessingIfNecessary();
        boolean z = annotatedOutput2 != null;
        int i = z ? 6 : 0;
        int i2 = z ? 2 : 0;
        int size = this.table.size();
        String str3 = str + "  ";
        if (z) {
            annotatedOutput2.annotate(0, str + "tries:");
        } else {
            printWriter2.println(str + "tries:");
        }
        for (int i3 = 0; i3 < size; i3++) {
            CatchTable.Entry entry = this.table.get(i3);
            CatchHandlerList handlers = entry.getHandlers();
            String str4 = str3 + "try " + Hex.u2or4(entry.getStart()) + ".." + Hex.u2or4(entry.getEnd());
            String human = handlers.toHuman(str3, _UrlKt.FRAGMENT_ENCODE_SET);
            if (z) {
                annotatedOutput2.annotate(i, str4);
                annotatedOutput2.annotate(i2, human);
            } else {
                printWriter2.println(str4);
                printWriter2.println(human);
            }
        }
        if (z) {
            annotatedOutput2.annotate(0, str + "handlers:");
            annotatedOutput2.annotate(this.encodedHandlerHeaderSize, str3 + "size: " + Hex.m212u2(this.handlerOffsets.size()));
            int i4 = 0;
            CatchHandlerList catchHandlerList = null;
            for (Map.Entry<CatchHandlerList, Integer> entry2 : this.handlerOffsets.entrySet()) {
                CatchHandlerList key = entry2.getKey();
                int iIntValue = entry2.getValue().intValue();
                if (catchHandlerList != null) {
                    str2 = str3;
                    annotateAndConsumeHandlers(catchHandlerList, i4, iIntValue - i4, str2, printWriter2, annotatedOutput2);
                } else {
                    str2 = str3;
                }
                printWriter2 = printWriter;
                annotatedOutput2 = annotatedOutput;
                str3 = str2;
                catchHandlerList = key;
                i4 = iIntValue;
            }
            annotateAndConsumeHandlers(catchHandlerList, i4, this.encodedHandlers.length - i4, str3, printWriter, annotatedOutput);
        }
    }

    private static void annotateAndConsumeHandlers(CatchHandlerList catchHandlerList, int i, int i2, String str, PrintWriter printWriter, AnnotatedOutput annotatedOutput) {
        String human = catchHandlerList.toHuman(str, Hex.m212u2(i) + ": ");
        if (printWriter != null) {
            printWriter.println(human);
        }
        annotatedOutput.annotate(i2, human);
    }
}
