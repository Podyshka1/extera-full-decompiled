.class public abstract Lcom/sun/jna/PointerType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/jna/NativeMapped;


# instance fields
.field private pointer:Lcom/sun/jna/Pointer;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    iput-object v0, p0, Lcom/sun/jna/PointerType;->pointer:Lcom/sun/jna/Pointer;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/sun/jna/PointerType;->pointer:Lcom/sun/jna/Pointer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 104
    :cond_0
    instance-of v1, p1, Lcom/sun/jna/PointerType;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 105
    check-cast p1, Lcom/sun/jna/PointerType;

    invoke-virtual {p1}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    .line 106
    iget-object v1, p0, Lcom/sun/jna/PointerType;->pointer:Lcom/sun/jna/Pointer;

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2

    .line 109
    :cond_2
    invoke-virtual {v1, p1}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v2
.end method

.method public fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 83
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/sun/jna/Klass;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sun/jna/PointerType;

    .line 84
    check-cast p1, Lcom/sun/jna/Pointer;

    iput-object p1, p2, Lcom/sun/jna/PointerType;->pointer:Lcom/sun/jna/Pointer;

    return-object p2
.end method

.method public getPointer()Lcom/sun/jna/Pointer;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sun/jna/PointerType;->pointer:Lcom/sun/jna/Pointer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sun/jna/PointerType;->pointer:Lcom/sun/jna/Pointer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/jna/Pointer;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nativeType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 51
    const-class v0, Lcom/sun/jna/Pointer;

    return-object v0
.end method

.method public setPointer(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/sun/jna/PointerType;->pointer:Lcom/sun/jna/Pointer;

    return-void
.end method

.method public toNative()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/sun/jna/PointerType;->pointer:Lcom/sun/jna/Pointer;

    if-nez v0, :cond_0

    const-string v0, "NULL"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/jna/PointerType;->pointer:Lcom/sun/jna/Pointer;

    invoke-virtual {v1}, Lcom/sun/jna/Pointer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
