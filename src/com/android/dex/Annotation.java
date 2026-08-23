package com.android.dex;

import com.android.dex.Dex;

/* JADX INFO: loaded from: classes4.dex */
public final class Annotation implements Comparable<Annotation> {
    private final Dex dex;
    private final EncodedValue encodedAnnotation;
    private final byte visibility;

    public Annotation(Dex dex, byte b2, EncodedValue encodedValue) {
        this.dex = dex;
        this.visibility = b2;
        this.encodedAnnotation = encodedValue;
    }

    public byte getVisibility() {
        return this.visibility;
    }

    public EncodedValueReader getReader() {
        return new EncodedValueReader(this.encodedAnnotation, 29);
    }

    public int getTypeIndex() {
        EncodedValueReader reader = getReader();
        reader.readAnnotation();
        return reader.getAnnotationType();
    }

    public void writeTo(Dex.Section section) {
        section.writeByte(this.visibility);
        this.encodedAnnotation.writeTo(section);
    }

    @Override // java.lang.Comparable
    public int compareTo(Annotation annotation) {
        return this.encodedAnnotation.compareTo(annotation.encodedAnnotation);
    }

    public String toString() {
        Dex dex = this.dex;
        byte b2 = this.visibility;
        if (dex == null) {
            return ((int) b2) + " " + getTypeIndex();
        }
        return ((int) b2) + " " + this.dex.typeNames().get(getTypeIndex());
    }
}
