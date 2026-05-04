.class public final synthetic Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/ResultCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

.field public final synthetic f$1:Lorg/telegram/ui/Components/MotionBackgroundDrawable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda7;->f$1:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda7;->f$1:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->$r8$lambda$EPHLzg2PI2yOQxHWs6uej__6DJc(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroid/util/Pair;)V

    return-void
.end method

.method public synthetic onError(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/tgnet/ResultCallback$-CC;->$default$onError(Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
