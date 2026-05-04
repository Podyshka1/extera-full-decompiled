.class final Landroidx/collection/ArraySet$ElementIterator;
.super Landroidx/collection/IndexBasedArrayIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/ArraySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ElementIterator"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/collection/ArraySet;


# direct methods
.method public constructor <init>(Landroidx/collection/ArraySet;)V
    .locals 0

    .line 234
    iput-object p1, p0, Landroidx/collection/ArraySet$ElementIterator;->this$0:Landroidx/collection/ArraySet;

    invoke-virtual {p1}, Landroidx/collection/ArraySet;->get_size$collection()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/collection/IndexBasedArrayIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected elementAt(I)Ljava/lang/Object;
    .locals 1

    .line 235
    iget-object v0, p0, Landroidx/collection/ArraySet$ElementIterator;->this$0:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected removeAt(I)V
    .locals 1

    .line 238
    iget-object v0, p0, Landroidx/collection/ArraySet$ElementIterator;->this$0:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    return-void
.end method
