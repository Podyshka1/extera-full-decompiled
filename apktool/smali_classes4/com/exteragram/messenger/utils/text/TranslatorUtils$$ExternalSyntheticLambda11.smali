.class public final synthetic Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$CallbackReturn;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/messenger/MessageObject;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/messenger/MessageObject;

    check-cast p1, Landroid/text/style/URLSpan;

    invoke-static {v0, v1, p1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->$r8$lambda$U_6tsGn7Rfja4H7xsuJ40kLqVJQ(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Landroid/text/style/URLSpan;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
