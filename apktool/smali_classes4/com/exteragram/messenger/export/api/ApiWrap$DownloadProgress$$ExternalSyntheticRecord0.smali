.class public abstract synthetic Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress$$ExternalSyntheticRecord0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic m(IJJJLjava/lang/Object;)I
    .locals 0

    .line 0
    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p1, p2}, Landroidx/camera/camera2/pipe/CameraTimestamp$$ExternalSyntheticBackport0;->m(J)I

    move-result p1

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p3, p4}, Landroidx/camera/camera2/pipe/CameraTimestamp$$ExternalSyntheticBackport0;->m(J)I

    move-result p1

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p5, p6}, Landroidx/camera/camera2/pipe/CameraTimestamp$$ExternalSyntheticBackport0;->m(J)I

    move-result p1

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p7}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method
