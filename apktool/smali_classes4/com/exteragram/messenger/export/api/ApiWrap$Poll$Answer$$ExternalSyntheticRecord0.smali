.class public abstract synthetic Lcom/exteragram/messenger/export/api/ApiWrap$Poll$Answer$$ExternalSyntheticRecord0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic m(ZILjava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p2}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p3}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method
