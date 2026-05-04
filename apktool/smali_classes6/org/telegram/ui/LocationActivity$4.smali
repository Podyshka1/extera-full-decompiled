.class Lorg/telegram/ui/LocationActivity$4;
.super Lorg/telegram/ui/Adapters/LocationActivityAdapter;
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
.field private firstSet:Z

.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;IJZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZ)V
    .locals 0

    .line 933
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$4;->this$0:Lorg/telegram/ui/LocationActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p10}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;-><init>(Landroid/content/Context;IJZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZ)V

    const/4 p2, 0x1

    .line 939
    iput-boolean p2, p1, Lorg/telegram/ui/LocationActivity$4;->firstSet:Z

    return-void
.end method


# virtual methods
.method protected onDirectionClick()V
    .locals 2

    .line 936
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$4;->this$0:Lorg/telegram/ui/LocationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LocationActivity;->-$$Nest$mopenDirections(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/LocationActivity$LiveLocation;)V

    return-void
.end method

.method public setLiveLocations(Ljava/util/ArrayList;)V
    .locals 6

    .line 943
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$4;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetmessageObject(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$4;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetmessageObject(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move v1, v0

    move v2, v1

    .line 946
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 947
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/LocationActivity$LiveLocation;

    if-eqz v3, :cond_0

    .line 948
    iget-object v3, v3, Lorg/telegram/ui/LocationActivity$LiveLocation;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 953
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/LocationActivity$4;->firstSet:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-ne v2, v3, :cond_3

    .line 954
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$4;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/LocationActivity$LiveLocation;

    iget-wide v4, v4, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    invoke-static {v1, v4, v5}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fputselectedMarkerId(Lorg/telegram/ui/LocationActivity;J)V

    .line 956
    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity$4;->firstSet:Z

    .line 957
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$4;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetotherItem(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 959
    :cond_5
    invoke-super {p0, p1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setLiveLocations(Ljava/util/ArrayList;)V

    return-void
.end method
