.class Lorg/telegram/tgnet/TLObject$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/telegram/tgnet/TLObject$1;->initialValue()Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/telegram/tgnet/NativeByteBuffer;
    .locals 2

    .line 64
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(Z)V

    return-object v0
.end method
