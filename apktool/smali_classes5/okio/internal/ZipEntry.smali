.class public final Lokio/internal/ZipEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final canonicalPath:Lokio/Path;

.field private final children:Ljava/util/List;

.field private final comment:Ljava/lang/String;

.field private final compressedSize:J

.field private final compressionMethod:I

.field private final crc:J

.field private final dosLastModifiedAtDate:I

.field private final dosLastModifiedAtTime:I

.field private final extendedCreatedAtSeconds:Ljava/lang/Integer;

.field private final extendedLastAccessedAtSeconds:Ljava/lang/Integer;

.field private final extendedLastModifiedAtSeconds:Ljava/lang/Integer;

.field private final isDirectory:Z

.field private final ntfsCreatedAtFiletime:Ljava/lang/Long;

.field private final ntfsLastAccessedAtFiletime:Ljava/lang/Long;

.field private final ntfsLastModifiedAtFiletime:Ljava/lang/Long;

.field private final offset:J

.field private final size:J


# direct methods
.method public constructor <init>(Lokio/Path;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "canonicalPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    .line 33
    iput-boolean p2, p0, Lokio/internal/ZipEntry;->isDirectory:Z

    .line 36
    iput-object p3, p0, Lokio/internal/ZipEntry;->comment:Ljava/lang/String;

    .line 39
    iput-wide p4, p0, Lokio/internal/ZipEntry;->crc:J

    .line 42
    iput-wide p6, p0, Lokio/internal/ZipEntry;->compressedSize:J

    .line 45
    iput-wide p8, p0, Lokio/internal/ZipEntry;->size:J

    .line 48
    iput p10, p0, Lokio/internal/ZipEntry;->compressionMethod:I

    .line 50
    iput-wide p11, p0, Lokio/internal/ZipEntry;->offset:J

    .line 70
    iput p13, p0, Lokio/internal/ZipEntry;->dosLastModifiedAtDate:I

    .line 71
    iput p14, p0, Lokio/internal/ZipEntry;->dosLastModifiedAtTime:I

    move-object/from16 p1, p15

    .line 77
    iput-object p1, p0, Lokio/internal/ZipEntry;->ntfsLastModifiedAtFiletime:Ljava/lang/Long;

    move-object/from16 p1, p16

    .line 78
    iput-object p1, p0, Lokio/internal/ZipEntry;->ntfsLastAccessedAtFiletime:Ljava/lang/Long;

    move-object/from16 p1, p17

    .line 79
    iput-object p1, p0, Lokio/internal/ZipEntry;->ntfsCreatedAtFiletime:Ljava/lang/Long;

    move-object/from16 p1, p18

    .line 85
    iput-object p1, p0, Lokio/internal/ZipEntry;->extendedLastModifiedAtSeconds:Ljava/lang/Integer;

    move-object/from16 p1, p19

    .line 86
    iput-object p1, p0, Lokio/internal/ZipEntry;->extendedLastAccessedAtSeconds:Ljava/lang/Integer;

    move-object/from16 p1, p20

    .line 87
    iput-object p1, p0, Lokio/internal/ZipEntry;->extendedCreatedAtSeconds:Ljava/lang/Integer;

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lokio/internal/ZipEntry;->children:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lokio/Path;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p21

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    .line 36
    const-string v2, ""

    goto :goto_1

    :cond_1
    move-object/from16 v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_2

    move-wide v6, v4

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p4

    :goto_2
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_3

    move-wide v8, v4

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p6

    :goto_3
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_4

    move-wide v10, v4

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p8

    :goto_4
    and-int/lit8 v3, v0, 0x40

    const/4 v12, -0x1

    if-eqz v3, :cond_5

    move v3, v12

    goto :goto_5

    :cond_5
    move/from16 v3, p10

    :goto_5
    and-int/lit16 v13, v0, 0x80

    if-eqz v13, :cond_6

    goto :goto_6

    :cond_6
    move-wide/from16 v4, p11

    :goto_6
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_7

    move v13, v12

    goto :goto_7

    :cond_7
    move/from16 v13, p13

    :goto_7
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v12, p14

    :goto_8
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v14, p15

    :goto_9
    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_a

    const/4 v15, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v15, p16

    :goto_a
    move/from16 p22, v1

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v1, p17

    :goto_b
    move-object/from16 p3, v1

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v1, p18

    :goto_c
    move-object/from16 p4, v1

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v1, p19

    :goto_d
    const v16, 0x8000

    and-int v0, v0, v16

    if-eqz v0, :cond_e

    move-object/from16 p20, p4

    move/from16 p4, p22

    const/16 p22, 0x0

    :goto_e
    move-object/from16 p2, p0

    move-object/from16 p19, p3

    move-object/from16 p21, v1

    move-object/from16 p5, v2

    move/from16 p12, v3

    move-wide/from16 p13, v4

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    move-wide/from16 p10, v10

    move/from16 p16, v12

    move/from16 p15, v13

    move-object/from16 p17, v14

    move-object/from16 p18, v15

    move-object/from16 p3, p1

    goto :goto_f

    :cond_e
    move-object/from16 p2, p20

    move-object/from16 p20, p4

    move/from16 p4, p22

    move-object/from16 p22, p2

    goto :goto_e

    .line 25
    :goto_f
    invoke-direct/range {p2 .. p22}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final copy$okio(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lokio/internal/ZipEntry;
    .locals 22

    move-object/from16 v0, p0

    .line 95
    new-instance v1, Lokio/internal/ZipEntry;

    .line 96
    iget-object v2, v0, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    .line 97
    iget-boolean v3, v0, Lokio/internal/ZipEntry;->isDirectory:Z

    .line 98
    iget-object v4, v0, Lokio/internal/ZipEntry;->comment:Ljava/lang/String;

    .line 99
    iget-wide v5, v0, Lokio/internal/ZipEntry;->crc:J

    .line 100
    iget-wide v7, v0, Lokio/internal/ZipEntry;->compressedSize:J

    .line 101
    iget-wide v9, v0, Lokio/internal/ZipEntry;->size:J

    .line 102
    iget v11, v0, Lokio/internal/ZipEntry;->compressionMethod:I

    .line 103
    iget-wide v12, v0, Lokio/internal/ZipEntry;->offset:J

    .line 104
    iget v14, v0, Lokio/internal/ZipEntry;->dosLastModifiedAtDate:I

    .line 105
    iget v15, v0, Lokio/internal/ZipEntry;->dosLastModifiedAtTime:I

    move-object/from16 v16, v1

    .line 106
    iget-object v1, v0, Lokio/internal/ZipEntry;->ntfsLastModifiedAtFiletime:Ljava/lang/Long;

    move-object/from16 v17, v1

    .line 107
    iget-object v1, v0, Lokio/internal/ZipEntry;->ntfsLastAccessedAtFiletime:Ljava/lang/Long;

    move-object/from16 v18, v1

    .line 108
    iget-object v1, v0, Lokio/internal/ZipEntry;->ntfsCreatedAtFiletime:Ljava/lang/Long;

    move-object/from16 v19, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v19

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move-object/from16 v21, p3

    .line 95
    invoke-direct/range {v1 .. v21}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final getCanonicalPath()Lokio/Path;
    .locals 1

    .line 30
    iget-object v0, p0, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    return-object v0
.end method

.method public final getChildren()Ljava/util/List;
    .locals 1

    .line 89
    iget-object v0, p0, Lokio/internal/ZipEntry;->children:Ljava/util/List;

    return-object v0
.end method

.method public final getCompressedSize()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lokio/internal/ZipEntry;->compressedSize:J

    return-wide v0
.end method

.method public final getCompressionMethod()I
    .locals 1

    .line 48
    iget v0, p0, Lokio/internal/ZipEntry;->compressionMethod:I

    return v0
.end method

.method public final getCreatedAtMillis$okio()Ljava/lang/Long;
    .locals 4

    .line 133
    iget-object v0, p0, Lokio/internal/ZipEntry;->ntfsCreatedAtFiletime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lokio/internal/ZipFilesKt;->filetimeToEpochMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    iget-object v0, p0, Lokio/internal/ZipEntry;->extendedCreatedAtSeconds:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLastAccessedAtMillis$okio()Ljava/lang/Long;
    .locals 4

    .line 116
    iget-object v0, p0, Lokio/internal/ZipEntry;->ntfsLastAccessedAtFiletime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lokio/internal/ZipFilesKt;->filetimeToEpochMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 117
    :cond_0
    iget-object v0, p0, Lokio/internal/ZipEntry;->extendedLastAccessedAtSeconds:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLastModifiedAtMillis$okio()Ljava/lang/Long;
    .locals 4

    .line 123
    iget-object v0, p0, Lokio/internal/ZipEntry;->ntfsLastModifiedAtFiletime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lokio/internal/ZipFilesKt;->filetimeToEpochMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 124
    :cond_0
    iget-object v0, p0, Lokio/internal/ZipEntry;->extendedLastModifiedAtSeconds:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 125
    :cond_1
    iget v0, p0, Lokio/internal/ZipEntry;->dosLastModifiedAtTime:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 126
    iget v1, p0, Lokio/internal/ZipEntry;->dosLastModifiedAtDate:I

    invoke-static {v1, v0}, Lokio/internal/ZipFilesKt;->dosDateTimeToEpochMillis(II)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOffset()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lokio/internal/ZipEntry;->offset:J

    return-wide v0
.end method

.method public final getSize()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lokio/internal/ZipEntry;->size:J

    return-wide v0
.end method

.method public final isDirectory()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lokio/internal/ZipEntry;->isDirectory:Z

    return v0
.end method
