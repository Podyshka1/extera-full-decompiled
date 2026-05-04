.class public Lorg/telegram/ui/Components/blur3/Blur3HashImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;


# instance fields
.field private hash:J

.field private unsupported:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 2

    .line 25
    iget-wide v0, p0, Lorg/telegram/ui/Components/blur3/Blur3HashImpl;->hash:J

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/blur3/Blur3HashImpl;->hash:J

    return-void
.end method

.method public synthetic add(Landroid/graphics/ColorMatrix;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash$-CC;->$default$add(Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public synthetic add(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash$-CC;->$default$add(Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;Landroid/view/View;)V

    return-void
.end method

.method public synthetic add(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash$-CC;->$default$add(Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;Z)V

    return-void
.end method

.method public synthetic add([F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash$-CC;->$default$add(Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;[F)V

    return-void
.end method

.method public synthetic addF(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash$-CC;->$default$addF(Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;F)V

    return-void
.end method

.method public get()J
    .locals 2

    .line 16
    iget-boolean v0, p0, Lorg/telegram/ui/Components/blur3/Blur3HashImpl;->unsupported:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Components/blur3/Blur3HashImpl;->hash:J

    return-wide v0
.end method

.method public isUnsupported()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lorg/telegram/ui/Components/blur3/Blur3HashImpl;->unsupported:Z

    return v0
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lorg/telegram/ui/Components/blur3/Blur3HashImpl;->hash:J

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lorg/telegram/ui/Components/blur3/Blur3HashImpl;->unsupported:Z

    return-void
.end method

.method public unsupported()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lorg/telegram/ui/Components/blur3/Blur3HashImpl;->unsupported:Z

    return-void
.end method
