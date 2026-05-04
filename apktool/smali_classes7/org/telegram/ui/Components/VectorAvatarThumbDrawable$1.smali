.class Lorg/telegram/ui/Components/VectorAvatarThumbDrawable$1;
.super Lorg/telegram/messenger/ImageReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$VideoSize;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable$1;->this$0:Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    invoke-direct {p0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable$1;->this$0:Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->invalidate()V

    return-void
.end method
