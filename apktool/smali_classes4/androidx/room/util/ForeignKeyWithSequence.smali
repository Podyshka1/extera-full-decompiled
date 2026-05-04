.class final Landroidx/room/util/ForeignKeyWithSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final from:Ljava/lang/String;

.field private final id:I

.field private final sequence:I

.field private final to:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "from"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p1, p0, Landroidx/room/util/ForeignKeyWithSequence;->id:I

    .line 120
    iput p2, p0, Landroidx/room/util/ForeignKeyWithSequence;->sequence:I

    .line 121
    iput-object p3, p0, Landroidx/room/util/ForeignKeyWithSequence;->from:Ljava/lang/String;

    .line 122
    iput-object p4, p0, Landroidx/room/util/ForeignKeyWithSequence;->to:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/room/util/ForeignKeyWithSequence;)I
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget v0, p0, Landroidx/room/util/ForeignKeyWithSequence;->id:I

    iget v1, p1, Landroidx/room/util/ForeignKeyWithSequence;->id:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 127
    iget v0, p0, Landroidx/room/util/ForeignKeyWithSequence;->sequence:I

    iget p1, p1, Landroidx/room/util/ForeignKeyWithSequence;->sequence:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 118
    check-cast p1, Landroidx/room/util/ForeignKeyWithSequence;

    invoke-virtual {p0, p1}, Landroidx/room/util/ForeignKeyWithSequence;->compareTo(Landroidx/room/util/ForeignKeyWithSequence;)I

    move-result p1

    return p1
.end method

.method public final getFrom()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Landroidx/room/util/ForeignKeyWithSequence;->from:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 119
    iget v0, p0, Landroidx/room/util/ForeignKeyWithSequence;->id:I

    return v0
.end method

.method public final getTo()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Landroidx/room/util/ForeignKeyWithSequence;->to:Ljava/lang/String;

    return-object v0
.end method
