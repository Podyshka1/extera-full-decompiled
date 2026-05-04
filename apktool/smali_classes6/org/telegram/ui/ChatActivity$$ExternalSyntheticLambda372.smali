.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda372;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$CallbackReturn;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda372;->f$0:Lorg/telegram/ui/ChatActivity;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda372;->f$0:Lorg/telegram/ui/ChatActivity;

    check-cast p1, Landroid/text/style/URLSpan;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$3k_Nj8ZyVeaoOyYVIs3D5ooX4Ak(Lorg/telegram/ui/ChatActivity;Landroid/text/style/URLSpan;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
