.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda234;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/telegram/messenger/browser/Browser$Progress;

.field public final synthetic f$4:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda234;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda234;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda234;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda234;->f$3:Lorg/telegram/messenger/browser/Browser$Progress;

    iput-object p5, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda234;->f$4:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda234;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda234;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda234;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda234;->f$3:Lorg/telegram/messenger/browser/Browser$Progress;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda234;->f$4:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$v140LiF1KNxdKC_7DkFByEYbHfk(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method
