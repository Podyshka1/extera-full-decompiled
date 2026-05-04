.class public abstract Landroidx/work/Data_Kt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 845
    const-string v0, "Data"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$convertPrimitiveArray([Z)[Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/work/Data_Kt;->convertPrimitiveArray([Z)[Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$convertPrimitiveArray([B)[Ljava/lang/Byte;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/work/Data_Kt;->convertPrimitiveArray([B)[Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$convertPrimitiveArray([D)[Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/work/Data_Kt;->convertPrimitiveArray([D)[Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$convertPrimitiveArray([F)[Ljava/lang/Float;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/work/Data_Kt;->convertPrimitiveArray([F)[Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$convertPrimitiveArray([I)[Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/work/Data_Kt;->convertPrimitiveArray([I)[Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$convertPrimitiveArray([J)[Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/work/Data_Kt;->convertPrimitiveArray([J)[Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static final convertPrimitiveArray([Z)[Ljava/lang/Boolean;
    .locals 4

    .line 829
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-boolean v3, p0, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static final convertPrimitiveArray([B)[Ljava/lang/Byte;
    .locals 4

    .line 832
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Byte;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static final convertPrimitiveArray([D)[Ljava/lang/Double;
    .locals 5

    .line 843
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Double;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static final convertPrimitiveArray([F)[Ljava/lang/Float;
    .locals 4

    .line 840
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Float;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static final convertPrimitiveArray([I)[Ljava/lang/Integer;
    .locals 4

    .line 834
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static final convertPrimitiveArray([J)[Ljava/lang/Long;
    .locals 5

    .line 837
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Long;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
