.class public Lorg/telegram/ui/ChatActivity$SparseArrayWithTouch;
.super Landroid/util/SparseArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SparseArrayWithTouch"
.end annotation


# instance fields
.field public withTouch:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1509
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 1510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$SparseArrayWithTouch;->withTouch:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1514
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SparseArrayWithTouch;->withTouch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1515
    invoke-super {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
