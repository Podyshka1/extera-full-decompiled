.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda459;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:[J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;[J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda459;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda459;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda459;->f$2:[J

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda459;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda459;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda459;->f$2:[J

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$yios78KJumpVVH3zFuYpLufrH7c(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;[JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
