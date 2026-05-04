.class public final Landroidx/room/util/TableInfo$Column;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/util/TableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Column"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/util/TableInfo$Column$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/room/util/TableInfo$Column$Companion;


# instance fields
.field public final affinity:I

.field public final createdFrom:I

.field public final defaultValue:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final notNull:Z

.field public final primaryKeyPosition:I

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/util/TableInfo$Column$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/util/TableInfo$Column$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/util/TableInfo$Column;->Companion:Landroidx/room/util/TableInfo$Column$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Landroidx/room/util/TableInfo$Column;->type:Ljava/lang/String;

    .line 113
    iput-boolean p3, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    .line 114
    iput p4, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    .line 115
    iput-object p5, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 116
    iput p6, p0, Landroidx/room/util/TableInfo$Column;->createdFrom:I

    .line 124
    invoke-static {p2}, Landroidx/room/util/SchemaInfoUtilKt;->findAffinity(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 148
    invoke-static {p0, p1}, Landroidx/room/util/TableInfoKt;->equalsCommon(Landroidx/room/util/TableInfo$Column;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 150
    invoke-static {p0}, Landroidx/room/util/TableInfoKt;->hashCodeCommon(Landroidx/room/util/TableInfo$Column;)I

    move-result v0

    return v0
.end method

.method public final isPrimaryKey()Z
    .locals 1

    .line 132
    iget v0, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 152
    invoke-static {p0}, Landroidx/room/util/TableInfoKt;->toStringCommon(Landroidx/room/util/TableInfo$Column;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
