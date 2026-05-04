.class public final synthetic Lorg/telegram/ui/ChatActivity$70$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity$70;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$70;ZLjava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$70$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ChatActivity$70;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$70$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$70$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$70$$ExternalSyntheticLambda0;->f$3:Ljava/util/ArrayList;

    iput p5, p0, Lorg/telegram/ui/ChatActivity$70$$ExternalSyntheticLambda0;->f$4:I

    iput p6, p0, Lorg/telegram/ui/ChatActivity$70$$ExternalSyntheticLambda0;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$70$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ChatActivity$70;

    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$70$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$70$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$70$$ExternalSyntheticLambda0;->f$3:Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/ui/ChatActivity$70$$ExternalSyntheticLambda0;->f$4:I

    iget v5, p0, Lorg/telegram/ui/ChatActivity$70$$ExternalSyntheticLambda0;->f$5:I

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity$70;->$r8$lambda$iH9o_kAmFOHkCYzB3lhYV5sa0Hk(Lorg/telegram/ui/ChatActivity$70;ZLjava/util/ArrayList;Ljava/util/ArrayList;II)V

    return-void
.end method
