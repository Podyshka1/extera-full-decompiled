package androidx.media3.exoplayer.upstream;

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
