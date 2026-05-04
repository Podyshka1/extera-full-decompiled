.class public final Lokio/FileMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final createdAtMillis:Ljava/lang/Long;

.field private final extras:Ljava/util/Map;

.field private final isDirectory:Z

.field private final isRegularFile:Z

.field private final lastAccessedAtMillis:Ljava/lang/Long;

.field private final lastModifiedAtMillis:Ljava/lang/Long;

.field private final size:Ljava/lang/Long;

.field private final symlinkTarget:Lokio/Path;


# direct methods
.method public constructor <init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 1

    const-string v0, "extras"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean p1, p0, Lokio/FileMetadata;->isRegularFile:Z

    .line 66
    iput-boolean p2, p0, Lokio/FileMetadata;->isDirectory:Z

    .line 72
    iput-object p3, p0, Lokio/FileMetadata;->symlinkTarget:Lokio/Path;

    .line 79
    iput-object p4, p0, Lokio/FileMetadata;->size:Ljava/lang/Long;

    .line 86
    iput-object p5, p0, Lokio/FileMetadata;->createdAtMillis:Ljava/lang/Long;

    .line 95
    iput-object p6, p0, Lokio/FileMetadata;->lastModifiedAtMillis:Ljava/lang/Long;

    .line 104
    iput-object p7, p0, Lokio/FileMetadata;->lastAccessedAtMillis:Ljava/lang/Long;

    .line 115
    invoke-static {p8}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lokio/FileMetadata;->extras:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p10, p9, 0x4

    const/4 v0, 0x0

    if-eqz p10, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    .line 106
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p8

    :cond_7
    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 55
    invoke-direct/range {p1 .. p9}, Lokio/FileMetadata;-><init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic copy$default(Lokio/FileMetadata;ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILjava/lang/Object;)Lokio/FileMetadata;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    .line 124
    iget-boolean p1, p0, Lokio/FileMetadata;->isRegularFile:Z

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    .line 125
    iget-boolean p2, p0, Lokio/FileMetadata;->isDirectory:Z

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    .line 126
    iget-object p3, p0, Lokio/FileMetadata;->symlinkTarget:Lokio/Path;

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    .line 127
    iget-object p4, p0, Lokio/FileMetadata;->size:Ljava/lang/Long;

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    .line 128
    iget-object p5, p0, Lokio/FileMetadata;->createdAtMillis:Ljava/lang/Long;

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    .line 129
    iget-object p6, p0, Lokio/FileMetadata;->lastModifiedAtMillis:Ljava/lang/Long;

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    .line 130
    iget-object p7, p0, Lokio/FileMetadata;->lastAccessedAtMillis:Ljava/lang/Long;

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    .line 131
    iget-object p8, p0, Lokio/FileMetadata;->extras:Ljava/util/Map;

    :cond_7
    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    .line 123
    invoke-virtual/range {p2 .. p10}, Lokio/FileMetadata;->copy(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)Lokio/FileMetadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)Lokio/FileMetadata;
    .locals 10

    const-string v0, "extras"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v1, Lokio/FileMetadata;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lokio/FileMetadata;-><init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V

    return-object v1
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 1

    .line 79
    iget-object v0, p0, Lokio/FileMetadata;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSymlinkTarget()Lokio/Path;
    .locals 1

    .line 72
    iget-object v0, p0, Lokio/FileMetadata;->symlinkTarget:Lokio/Path;

    return-object v0
.end method

.method public final isDirectory()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lokio/FileMetadata;->isDirectory:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    iget-boolean v1, p0, Lokio/FileMetadata;->isRegularFile:Z

    if-eqz v1, :cond_0

    const-string v1, "isRegularFile"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    iget-boolean v1, p0, Lokio/FileMetadata;->isDirectory:Z

    if-eqz v1, :cond_1

    const-string v1, "isDirectory"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    iget-object v1, p0, Lokio/FileMetadata;->size:Ljava/lang/Long;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokio/FileMetadata;->size:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_2
    iget-object v1, p0, Lokio/FileMetadata;->createdAtMillis:Ljava/lang/Long;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createdAt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokio/FileMetadata;->createdAtMillis:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_3
    iget-object v1, p0, Lokio/FileMetadata;->lastModifiedAtMillis:Ljava/lang/Long;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastModifiedAt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokio/FileMetadata;->lastModifiedAtMillis:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_4
    iget-object v1, p0, Lokio/FileMetadata;->lastAccessedAtMillis:Ljava/lang/Long;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastAccessedAt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokio/FileMetadata;->lastAccessedAtMillis:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_5
    iget-object v1, p0, Lokio/FileMetadata;->extras:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokio/FileMetadata;->extras:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    const/16 v7, 0x38

    const/4 v8, 0x0

    .line 154
    const-string v1, ", "

    const-string v2, "FileMetadata("

    const-string v3, ")"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
