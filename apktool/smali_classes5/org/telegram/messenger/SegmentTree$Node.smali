.class Lorg/telegram/messenger/SegmentTree$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SegmentTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation


# instance fields
.field from:I

.field max:J

.field min:J

.field pendingVal:Ljava/lang/Integer;

.field sum:J

.field to:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lorg/telegram/messenger/SegmentTree$Node;->pendingVal:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method size()I
    .locals 2

    .line 148
    iget v0, p0, Lorg/telegram/messenger/SegmentTree$Node;->to:I

    iget v1, p0, Lorg/telegram/messenger/SegmentTree$Node;->from:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
