package com.googlecode.mp4parser.util;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class Matrix {

    /* JADX INFO: renamed from: a */
    double f441a;

    /* JADX INFO: renamed from: b */
    double f442b;

    /* JADX INFO: renamed from: c */
    double f443c;

    /* JADX INFO: renamed from: d */
    double f444d;
    double tx;
    double ty;

    /* JADX INFO: renamed from: u */
    double f445u;

    /* JADX INFO: renamed from: v */
    double f446v;

    /* JADX INFO: renamed from: w */
    double f447w;
    public static final Matrix ROTATE_0 = new Matrix(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_90 = new Matrix(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_180 = new Matrix(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_270 = new Matrix(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    public Matrix(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.f445u = d5;
        this.f446v = d6;
        this.f447w = d7;
        this.f441a = d;
        this.f442b = d2;
        this.f443c = d3;
        this.f444d = d4;
        this.tx = d8;
        this.ty = d9;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Matrix matrix = (Matrix) obj;
        return Double.compare(matrix.f441a, this.f441a) == 0 && Double.compare(matrix.f442b, this.f442b) == 0 && Double.compare(matrix.f443c, this.f443c) == 0 && Double.compare(matrix.f444d, this.f444d) == 0 && Double.compare(matrix.tx, this.tx) == 0 && Double.compare(matrix.ty, this.ty) == 0 && Double.compare(matrix.f445u, this.f445u) == 0 && Double.compare(matrix.f446v, this.f446v) == 0 && Double.compare(matrix.f447w, this.f447w) == 0;
    }

    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.f445u);
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.f446v);
        int i = (((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)));
        long jDoubleToLongBits3 = Double.doubleToLongBits(this.f447w);
        int i2 = (i * 31) + ((int) (jDoubleToLongBits3 ^ (jDoubleToLongBits3 >>> 32)));
        long jDoubleToLongBits4 = Double.doubleToLongBits(this.f441a);
        int i3 = (i2 * 31) + ((int) (jDoubleToLongBits4 ^ (jDoubleToLongBits4 >>> 32)));
        long jDoubleToLongBits5 = Double.doubleToLongBits(this.f442b);
        int i4 = (i3 * 31) + ((int) (jDoubleToLongBits5 ^ (jDoubleToLongBits5 >>> 32)));
        long jDoubleToLongBits6 = Double.doubleToLongBits(this.f443c);
        int i5 = (i4 * 31) + ((int) (jDoubleToLongBits6 ^ (jDoubleToLongBits6 >>> 32)));
        long jDoubleToLongBits7 = Double.doubleToLongBits(this.f444d);
        int i6 = (i5 * 31) + ((int) (jDoubleToLongBits7 ^ (jDoubleToLongBits7 >>> 32)));
        long jDoubleToLongBits8 = Double.doubleToLongBits(this.tx);
        int i7 = (i6 * 31) + ((int) (jDoubleToLongBits8 ^ (jDoubleToLongBits8 >>> 32)));
        long jDoubleToLongBits9 = Double.doubleToLongBits(this.ty);
        return (i7 * 31) + ((int) ((jDoubleToLongBits9 >>> 32) ^ jDoubleToLongBits9));
    }

    public String toString() {
        if (equals(ROTATE_0)) {
            return "Rotate 0°";
        }
        if (equals(ROTATE_90)) {
            return "Rotate 90°";
        }
        if (equals(ROTATE_180)) {
            return "Rotate 180°";
        }
        if (equals(ROTATE_270)) {
            return "Rotate 270°";
        }
        return "Matrix{u=" + this.f445u + ", v=" + this.f446v + ", w=" + this.f447w + ", a=" + this.f441a + ", b=" + this.f442b + ", c=" + this.f443c + ", d=" + this.f444d + ", tx=" + this.tx + ", ty=" + this.ty + '}';
    }

    public static Matrix fromFileOrder(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        return new Matrix(d, d2, d4, d5, d3, d6, d9, d7, d8);
    }

    public static Matrix fromByteBuffer(ByteBuffer byteBuffer) {
        return fromFileOrder(IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer));
    }

    public void getContent(ByteBuffer byteBuffer) {
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f441a);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f442b);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f445u);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f443c);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f444d);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f446v);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.tx);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.ty);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f447w);
    }
}
