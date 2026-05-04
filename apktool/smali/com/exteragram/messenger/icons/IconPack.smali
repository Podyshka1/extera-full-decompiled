.class public final Lcom/exteragram/messenger/icons/IconPack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/icons/IconPack$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/exteragram/messenger/icons/IconPack$Companion;


# instance fields
.field private final author:Ljava/lang/String;

.field private final icons:Ljava/util/Map;

.field private final id:Ljava/lang/String;

.field private final location:Ljava/io/File;

.field private final name:Ljava/lang/String;

.field private final preinstalledMap:Landroid/util/SparseIntArray;

.field private final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/exteragram/messenger/icons/IconPack$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/icons/IconPack$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/exteragram/messenger/icons/IconPack;->Companion:Lcom/exteragram/messenger/icons/IconPack$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/SparseIntArray;Ljava/io/File;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "author"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "version"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icons"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/exteragram/messenger/icons/IconPack;->id:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/exteragram/messenger/icons/IconPack;->name:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/exteragram/messenger/icons/IconPack;->author:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/exteragram/messenger/icons/IconPack;->version:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/exteragram/messenger/icons/IconPack;->icons:Ljava/util/Map;

    .line 13
    iput-object p6, p0, Lcom/exteragram/messenger/icons/IconPack;->preinstalledMap:Landroid/util/SparseIntArray;

    .line 14
    iput-object p7, p0, Lcom/exteragram/messenger/icons/IconPack;->location:Ljava/io/File;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/SparseIntArray;Ljava/io/File;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    .line 11
    const-string p4, "1.0"

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p8, 0x10

    if-eqz p4, :cond_1

    .line 12
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p5

    :cond_1
    move-object v5, p5

    and-int/lit8 p4, p8, 0x20

    const/4 p5, 0x0

    if-eqz p4, :cond_2

    move-object v6, p5

    goto :goto_0

    :cond_2
    move-object v6, p6

    :goto_0
    and-int/lit8 p4, p8, 0x40

    if-eqz p4, :cond_3

    move-object v7, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    goto :goto_2

    :cond_3
    move-object v7, p7

    goto :goto_1

    .line 7
    :goto_2
    invoke-direct/range {v0 .. v7}, Lcom/exteragram/messenger/icons/IconPack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/SparseIntArray;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/exteragram/messenger/icons/IconPack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/SparseIntArray;Ljava/io/File;ILjava/lang/Object;)Lcom/exteragram/messenger/icons/IconPack;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/exteragram/messenger/icons/IconPack;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/exteragram/messenger/icons/IconPack;->name:Ljava/lang/String;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-object p3, p0, Lcom/exteragram/messenger/icons/IconPack;->author:Ljava/lang/String;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget-object p4, p0, Lcom/exteragram/messenger/icons/IconPack;->version:Ljava/lang/String;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget-object p5, p0, Lcom/exteragram/messenger/icons/IconPack;->icons:Ljava/util/Map;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    iget-object p6, p0, Lcom/exteragram/messenger/icons/IconPack;->preinstalledMap:Landroid/util/SparseIntArray;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    iget-object p7, p0, Lcom/exteragram/messenger/icons/IconPack;->location:Ljava/io/File;

    :cond_6
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/exteragram/messenger/icons/IconPack;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/SparseIntArray;Ljava/io/File;)Lcom/exteragram/messenger/icons/IconPack;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/SparseIntArray;Ljava/io/File;)Lcom/exteragram/messenger/icons/IconPack;
    .locals 9

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "author"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "version"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icons"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/icons/IconPack;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/exteragram/messenger/icons/IconPack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/SparseIntArray;Ljava/io/File;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/exteragram/messenger/icons/IconPack;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/exteragram/messenger/icons/IconPack;

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/exteragram/messenger/icons/IconPack;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/exteragram/messenger/icons/IconPack;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->author:Ljava/lang/String;

    iget-object v3, p1, Lcom/exteragram/messenger/icons/IconPack;->author:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/exteragram/messenger/icons/IconPack;->version:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->icons:Ljava/util/Map;

    iget-object v3, p1, Lcom/exteragram/messenger/icons/IconPack;->icons:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->preinstalledMap:Landroid/util/SparseIntArray;

    iget-object v3, p1, Lcom/exteragram/messenger/icons/IconPack;->preinstalledMap:Landroid/util/SparseIntArray;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->location:Ljava/io/File;

    iget-object p1, p1, Lcom/exteragram/messenger/icons/IconPack;->location:Ljava/io/File;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getAuthor()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconPack;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final getIcons()Ljava/util/Map;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconPack;->icons:Ljava/util/Map;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconPack;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocation()Ljava/io/File;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconPack;->location:Ljava/io/File;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconPack;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreinstalledMap()Landroid/util/SparseIntArray;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconPack;->preinstalledMap:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconPack;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconPack;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->author:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->icons:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->preinstalledMap:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->location:Ljava/io/File;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isBase()Z
    .locals 5

    .line 16
    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconPack;->id:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "base."

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IconPack(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->icons:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", preinstalledMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->preinstalledMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconPack;->location:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
