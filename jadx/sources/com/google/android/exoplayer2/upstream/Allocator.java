package com.google.android.exoplayer2.upstream;

/* JADX INFO: loaded from: classes4.dex */
public interface Allocator {

    public interface AllocationNode {
        Allocation getAllocation();

        AllocationNode next();
    }

    Allocation allocate();

    int getIndividualAllocationLength();

    void release(Allocation allocation);

    void release(AllocationNode allocationNode);

    void trim();
}
