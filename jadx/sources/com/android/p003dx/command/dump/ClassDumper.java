package com.android.p003dx.command.dump;

import com.android.p003dx.p004cf.direct.DirectClassFile;
import com.android.p003dx.p004cf.direct.StdAttributeFactory;
import com.android.p003dx.util.ByteArray;
import java.io.PrintStream;

/* JADX INFO: loaded from: classes4.dex */
public final class ClassDumper extends BaseDumper {
    public static void dump(byte[] bArr, PrintStream printStream, String str, Args args) {
        new ClassDumper(bArr, printStream, str, args).dump();
    }

    private ClassDumper(byte[] bArr, PrintStream printStream, String str, Args args) {
        super(bArr, printStream, str, args);
    }

    public void dump() {
        byte[] bytes = getBytes();
        ByteArray byteArray = new ByteArray(bytes);
        DirectClassFile directClassFile = new DirectClassFile(byteArray, getFilePath(), getStrictParse());
        directClassFile.setAttributeFactory(StdAttributeFactory.THE_ONE);
        directClassFile.setObserver(this);
        directClassFile.getMagic();
        int readBytes = getReadBytes();
        if (readBytes != bytes.length) {
            parsed(byteArray, readBytes, bytes.length - readBytes, "<extra data at end of file>");
        }
    }
}
