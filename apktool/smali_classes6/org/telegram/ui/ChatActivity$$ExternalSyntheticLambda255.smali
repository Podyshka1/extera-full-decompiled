.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda255;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:J

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;JZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda255;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-wide p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda255;->f$1:J

    iput-boolean p4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda255;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda255;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-wide v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda255;->f$1:J

    iget-boolean v3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda255;->f$2:Z

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$1YAS4yjvUABVUobQk4FK4_uHqyI(Lorg/telegram/ui/ChatActivity;JZ)V

    return-void
.end method
