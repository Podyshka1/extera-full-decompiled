.class public final Lcom/google/android/exoplayer2/Player$Events;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# instance fields
.field private final flags:Lcom/google/android/exoplayer2/util/FlagSet;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/FlagSet;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;->contains(I)Z

    move-result p1

    return p1
.end method

.method public varargs containsAny([I)Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;->containsAny([I)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 139
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/Player$Events;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 142
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/Player$Events;

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/FlagSet;->hashCode()I

    move-result v0

    return v0
.end method
