.class public abstract Landroidx/collection/IndexBasedArrayIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field private canRemove:Z

.field private index:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Landroidx/collection/IndexBasedArrayIterator;->size:I

    return-void
.end method


# virtual methods
.method protected abstract elementAt(I)Ljava/lang/Object;
.end method

.method public hasNext()Z
    .locals 2

    .line 30
    iget v0, p0, Landroidx/collection/IndexBasedArrayIterator;->index:I

    iget v1, p0, Landroidx/collection/IndexBasedArrayIterator;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 33
    invoke-virtual {p0}, Landroidx/collection/IndexBasedArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget v0, p0, Landroidx/collection/IndexBasedArrayIterator;->index:I

    invoke-virtual {p0, v0}, Landroidx/collection/IndexBasedArrayIterator;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 38
    iget v1, p0, Landroidx/collection/IndexBasedArrayIterator;->index:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/collection/IndexBasedArrayIterator;->index:I

    .line 39
    iput-boolean v2, p0, Landroidx/collection/IndexBasedArrayIterator;->canRemove:Z

    return-object v0

    .line 34
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 44
    iget-boolean v0, p0, Landroidx/collection/IndexBasedArrayIterator;->canRemove:Z

    if-nez v0, :cond_0

    const-string v0, "Call next() before removing an element."

    .line 47
    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 46
    :cond_0
    iget v0, p0, Landroidx/collection/IndexBasedArrayIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/IndexBasedArrayIterator;->index:I

    invoke-virtual {p0, v0}, Landroidx/collection/IndexBasedArrayIterator;->removeAt(I)V

    .line 47
    iget v0, p0, Landroidx/collection/IndexBasedArrayIterator;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/IndexBasedArrayIterator;->size:I

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Landroidx/collection/IndexBasedArrayIterator;->canRemove:Z

    return-void
.end method

.method protected abstract removeAt(I)V
.end method
