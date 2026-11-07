package com.android.dx.dex.file;

import com.android.dx.util.AnnotatedOutput;
import java.util.Collection;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
public abstract class Section {
    private final int alignment;
    private final DexFile file;
    private int fileOffset;
    private final String name;
    private boolean prepared;

    public abstract int getAbsoluteItemOffset(Item item);

    public abstract Collection<? extends Item> items();

    public abstract void prepare0();

    public abstract int writeSize();

    public abstract void writeTo0(AnnotatedOutput annotatedOutput);

    public static void validateAlignment(int i) {
        if (i <= 0 || (i & (i - 1)) != 0) {
            f$$ExternalSyntheticBUOutline1.m212m("invalid alignment");
        }
    }

    public Section(String str, DexFile dexFile, int i) {
        if (dexFile == null) {
            f$$ExternalSyntheticBUOutline2.m213m("file == null");
            throw null;
        }
        validateAlignment(i);
        this.name = str;
        this.file = dexFile;
        this.alignment = i;
        this.fileOffset = -1;
        this.prepared = false;
    }

    public final DexFile getFile() {
        return this.file;
    }

    public final int getAlignment() {
        return this.alignment;
    }

    public final int getFileOffset() {
        int i = this.fileOffset;
        if (i >= 0) {
            return i;
        }
        GlShader$$ExternalSyntheticBUOutline1.m1056m("fileOffset not set");
        return 0;
    }

    public final int setFileOffset(int i) {
        if (i < 0) {
            f$$ExternalSyntheticBUOutline1.m212m("fileOffset < 0");
            return 0;
        }
        if (this.fileOffset >= 0) {
            GlShader$$ExternalSyntheticBUOutline1.m1056m("fileOffset already set");
            return 0;
        }
        int i2 = this.alignment - 1;
        int i3 = (i + i2) & (~i2);
        this.fileOffset = i3;
        return i3;
    }

    public final void writeTo(AnnotatedOutput annotatedOutput) {
        throwIfNotPrepared();
        align(annotatedOutput);
        int cursor = annotatedOutput.getCursor();
        int i = this.fileOffset;
        if (i < 0) {
            this.fileOffset = cursor;
        } else if (i != cursor) {
            StringBuilder sb = new StringBuilder("alignment mismatch: for ");
            sb.append(this);
            int i2 = this.fileOffset;
            sb.append(", at ");
            sb.append(cursor);
            sb.append(", but expected ");
            sb.append(i2);
            throw new RuntimeException(sb.toString());
        }
        if (annotatedOutput.annotates()) {
            if (this.name != null) {
                annotatedOutput.annotate(0, "\n" + this.name + ":");
            } else if (cursor != 0) {
                annotatedOutput.annotate(0, "\n");
            }
        }
        writeTo0(annotatedOutput);
    }

    public final int getAbsoluteOffset(int i) {
        if (i < 0) {
            f$$ExternalSyntheticBUOutline1.m212m("relative < 0");
            return 0;
        }
        int i2 = this.fileOffset;
        if (i2 >= 0) {
            return i2 + i;
        }
        GlShader$$ExternalSyntheticBUOutline1.m1056m("fileOffset not yet set");
        return 0;
    }

    public final void prepare() {
        throwIfPrepared();
        prepare0();
        this.prepared = true;
    }

    public final void throwIfNotPrepared() {
        if (this.prepared) {
            return;
        }
        GlShader$$ExternalSyntheticBUOutline1.m1056m("not prepared");
    }

    public final void throwIfPrepared() {
        if (this.prepared) {
            GlShader$$ExternalSyntheticBUOutline1.m1056m("already prepared");
        }
    }

    public final void align(AnnotatedOutput annotatedOutput) {
        annotatedOutput.alignTo(this.alignment);
    }

    public final String getName() {
        return this.name;
    }
}
