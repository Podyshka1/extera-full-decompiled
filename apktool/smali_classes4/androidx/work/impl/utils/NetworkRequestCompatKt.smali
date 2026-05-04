.class public abstract Landroidx/work/impl/utils/NetworkRequestCompatKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final defaultCapabilities:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    const/16 v1, 0xe

    const/16 v2, 0xd

    .line 105
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    .line 102
    sput-object v0, Landroidx/work/impl/utils/NetworkRequestCompatKt;->defaultCapabilities:[I

    return-void
.end method

.method public static final synthetic access$getDefaultCapabilities$p()[I
    .locals 1

    .line 1
    sget-object v0, Landroidx/work/impl/utils/NetworkRequestCompatKt;->defaultCapabilities:[I

    return-object v0
.end method

.method public static final getCapabilitiesCompat(Landroid/net/NetworkRequest;)[I
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 61
    sget-object v0, Landroidx/work/impl/utils/NetworkRequest31;->INSTANCE:Landroidx/work/impl/utils/NetworkRequest31;

    invoke-virtual {v0, p0}, Landroidx/work/impl/utils/NetworkRequest31;->capabilities(Landroid/net/NetworkRequest;)[I

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x1e

    .line 93
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 3856
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 4374
    aget v4, v1, v3

    .line 95
    sget-object v5, Landroidx/work/impl/utils/NetworkRequest28;->INSTANCE:Landroidx/work/impl/utils/NetworkRequest28;

    invoke-virtual {v5, p0, v4}, Landroidx/work/impl/utils/NetworkRequest28;->hasCapability$work_runtime_release(Landroid/net/NetworkRequest;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4374
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x11
        0x5
        0x2
        0xa
        0x1d
        0x13
        0x3
        0x20
        0x7
        0x4
        0xc
        0x24
        0x17
        0x0
        0x21
        0x14
        0xb
        0xd
        0x12
        0x15
        0xf
        0x23
        0x22
        0x8
        0x1
        0x19
        0xe
        0x10
        0x6
        0x9
    .end array-data
.end method

.method public static final getTransportTypesCompat(Landroid/net/NetworkRequest;)[I
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 39
    sget-object v0, Landroidx/work/impl/utils/NetworkRequest31;->INSTANCE:Landroidx/work/impl/utils/NetworkRequest31;

    invoke-virtual {v0, p0}, Landroidx/work/impl/utils/NetworkRequest31;->transportTypes(Landroid/net/NetworkRequest;)[I

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0xa

    .line 51
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 3856
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 4374
    aget v4, v1, v3

    .line 53
    sget-object v5, Landroidx/work/impl/utils/NetworkRequest28;->INSTANCE:Landroidx/work/impl/utils/NetworkRequest28;

    invoke-virtual {v5, p0, v4}, Landroidx/work/impl/utils/NetworkRequest28;->hasTransport$work_runtime_release(Landroid/net/NetworkRequest;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4374
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x2
        0x0
        0x3
        0x6
        0xa
        0x9
        0x8
        0x4
        0x1
        0x5
    .end array-data
.end method
