.class public abstract Lokio/internal/_ZlibJvmKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_COMPRESSION:I = -0x1

.field private static final EMPTY_BYTE_ARRAY:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    new-array v0, v0, [B

    sput-object v0, Lokio/internal/_ZlibJvmKt;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public static final datePartsToEpochMillis(IIIIII)J
    .locals 7

    .line 34
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v1, 0xe

    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v2, p1, -0x1

    move v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 36
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 37
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getDEFAULT_COMPRESSION()I
    .locals 1

    .line 22
    sget v0, Lokio/internal/_ZlibJvmKt;->DEFAULT_COMPRESSION:I

    return v0
.end method

.method public static final getEMPTY_BYTE_ARRAY()[B
    .locals 1

    .line 40
    sget-object v0, Lokio/internal/_ZlibJvmKt;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method
