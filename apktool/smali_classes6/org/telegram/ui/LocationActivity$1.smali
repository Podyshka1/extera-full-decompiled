.class Lorg/telegram/ui/LocationActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$1;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 9

    .line 571
    const-string v0, ","

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 572
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity$1;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 575
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity$1;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p1}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetmessageObject(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 576
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity$1;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p1}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetmessageObject(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 577
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity$1;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "geo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, "?q="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 579
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 582
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity$1;->this$0:Lorg/telegram/ui/LocationActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lorg/telegram/ui/LocationActivity;->-$$Nest$mopenShareLiveLocation(Lorg/telegram/ui/LocationActivity;ZI)V

    return-void

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 584
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity$1;->this$0:Lorg/telegram/ui/LocationActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/LocationActivity;->-$$Nest$mopenDirections(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/LocationActivity$LiveLocation;)V

    :cond_3
    return-void
.end method
