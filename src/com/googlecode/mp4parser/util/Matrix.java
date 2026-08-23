package com.googlecode.mp4parser.util;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class Matrix {

    /* JADX INFO: renamed from: a */
    double f600a;

    /* JADX INFO: renamed from: b */
    double f601b;

    /* JADX INFO: renamed from: c */
    double f602c;

    /* JADX INFO: renamed from: d */
    double f603d;

    /* JADX INFO: renamed from: tx */
    double f604tx;

    /* JADX INFO: renamed from: ty */
    double f605ty;

    /* JADX INFO: renamed from: u */
    double f606u;

    /* JADX INFO: renamed from: v */
    double f607v;

    /* JADX INFO: renamed from: w */
    double f608w;
    public static final Matrix ROTATE_0 = new Matrix(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_90 = new Matrix(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_180 = new Matrix(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_270 = new Matrix(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    public Matrix(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.f606u = d5;
        this.f607v = d6;
        this.f608w = d7;
        this.f600a = d;
        this.f601b = d2;
        this.f602c = d3;
        this.f603d = d4;
        this.f604tx = d8;
        this.f605ty = d9;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Matrix matrix = (Matrix) obj;
        return Double.compare(matrix.f600a, this.f600a) == 0 && Double.compare(matrix.f601b, this.f601b) == 0 && Double.compare(matrix.f602c, this.f602c) == 0 && Double.compare(matrix.f603d, this.f603d) == 0 && Double.compare(matrix.f604tx, this.f604tx) == 0 && Double.compare(matrix.f605ty, this.f605ty) == 0 && Double.compare(matrix.f606u, this.f606u) == 0 && Double.compare(matrix.f607v, this.f607v) == 0 && Double.compare(matrix.f608w, this.f608w) == 0;
    }

    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.f606u);
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.f607v);
        int i = (((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)));
        long jDoubleToLongBits3 = Double.doubleToLongBits(this.f608w);
        int i2 = (i * 31) + ((int) (jDoubleToLongBits3 ^ (jDoubleToLongBits3 >>> 32)));
        long jDoubleToLongBits4 = Double.doubleToLongBits(this.f600a);
        int i3 = (i2 * 31) + ((int) (jDoubleToLongBits4 ^ (jDoubleToLongBits4 >>> 32)));
        long jDoubleToLongBits5 = Double.doubleToLongBits(this.f601b);
        int i4 = (i3 * 31) + ((int) (jDoubleToLongBits5 ^ (jDoubleToLongBits5 >>> 32)));
        long jDoubleToLongBits6 = Double.doubleToLongBits(this.f602c);
        int i5 = (i4 * 31) + ((int) (jDoubleToLongBits6 ^ (jDoubleToLongBits6 >>> 32)));
        long jDoubleToLongBits7 = Double.doubleToLongBits(this.f603d);
        int i6 = (i5 * 31) + ((int) (jDoubleToLongBits7 ^ (jDoubleToLongBits7 >>> 32)));
        long jDoubleToLongBits8 = Double.doubleToLongBits(this.f604tx);
        int i7 = (i6 * 31) + ((int) (jDoubleToLongBits8 ^ (jDoubleToLongBits8 >>> 32)));
        long jDoubleToLongBits9 = Double.doubleToLongBits(this.f605ty);
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
        return "Matrix{u=" + this.f606u + ", v=" + this.f607v + ", w=" + this.f608w + ", a=" + this.f600a + ", b=" + this.f601b + ", c=" + this.f602c + ", d=" + this.f603d + ", tx=" + this.f604tx + ", ty=" + this.f605ty + '}';
    }

    public static Matrix fromFileOrder(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        return new Matrix(d, d2, d4, d5, d3, d6, d9, d7, d8);
    }

    public static Matrix fromByteBuffer(ByteBuffer byteBuffer) {
        return fromFileOrder(IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer));
    }

    public void getContent(ByteBuffer byteBuffer) {
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f600a);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f601b);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f606u);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f602c);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f603d);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f607v);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f604tx);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f605ty);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f608w);
    }
}
