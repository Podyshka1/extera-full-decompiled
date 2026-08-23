package com.carrotsearch.randomizedtesting;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class Xoroshiro128PlusRandom extends Random {

    /* JADX INFO: renamed from: s0 */
    private long f110s0;

    /* JADX INFO: renamed from: s1 */
    private long f111s1;

    public Xoroshiro128PlusRandom(long j) {
        super(0L);
        long jHash = MurmurHash3.hash(j);
        this.f110s0 = jHash;
        long jHash2 = MurmurHash3.hash(jHash);
        this.f111s1 = jHash2;
        if (this.f110s0 == 0 && jHash2 == 0) {
            long jHash3 = MurmurHash3.hash(3735928559L);
            this.f110s0 = jHash3;
            this.f111s1 = MurmurHash3.hash(jHash3);
        }
    }

    @Override // java.util.Random
    public void setSeed(long j) {
        if (this.f110s0 != 0 || this.f111s1 != 0) {
            throw new RuntimeException("No seed set");
        }
    }

    @Override // java.util.Random
    public boolean nextBoolean() {
        return nextLong() >= 0;
    }

    @Override // java.util.Random
    public void nextBytes(byte[] bArr) {
        int length = bArr.length;
        int i = 0;
        while (i < length) {
            long jNextInt = nextInt();
            int iMin = Math.min(length - i, 8);
            while (true) {
                int i2 = iMin - 1;
                if (iMin > 0) {
                    bArr[i] = (byte) jNextInt;
                    jNextInt >>>= 8;
                    i++;
                    iMin = i2;
                }
            }
        }
    }

    @Override // java.util.Random
    public double nextDouble() {
        return (nextLong() >>> 11) * 1.1102230246251565E-16d;
    }

    @Override // java.util.Random
    public float nextFloat() {
        return (nextInt() >>> 8) * 5.9604645E-8f;
    }

    @Override // java.util.Random
    public int nextInt() {
        return (int) nextLong();
    }

    @Override // java.util.Random
    public int nextInt(int i) {
        return super.nextInt(i);
    }

    @Override // java.util.Random
    public double nextGaussian() {
        return super.nextGaussian();
    }

    @Override // java.util.Random
    public long nextLong() {
        long j = this.f110s0;
        long j2 = this.f111s1;
        long j3 = j + j2;
        long j4 = j2 ^ j;
        this.f110s0 = (Long.rotateLeft(j, 55) ^ j4) ^ (j4 << 14);
        this.f111s1 = Long.rotateLeft(j4, 36);
        return j3;
    }

    @Override // java.util.Random
    protected int next(int i) {
        return ((int) nextLong()) >>> (32 - i);
    }
}
